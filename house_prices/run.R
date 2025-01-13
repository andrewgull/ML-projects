library(tidymodels)
library(finetune)
library(tidyverse)

data <- readr::read_csv("data/train.csv", show_col_types = FALSE) 

data <- data %>%
  mutate_at(
    vars(
      Alley,
      BsmtQual,
      BsmtCond,
      BsmtExposure,
      BsmtFinType1,
      BsmtFinType2,
      FireplaceQu,
      GarageType,
      GarageCond,
      GarageFinish,
      GarageCars,
      GarageQual,
      PoolQC,
      Fence
    ),
    ~ replace_na(., "No")
  ) %>%
  mutate(across(is_character, ~ as_factor(.x)))

set.seed(124)

data_split <- initial_split(data, prop = 0.8)

df_train <- training(data_split)
df_test <- testing(data_split)

cv_folds <- vfold_cv(df_train, v = 10, repeats = 10) 

cls_metrics <- metric_set(rmse)

base_recipe <- recipe(SalePrice ~ ., data = df_train) %>%
  update_role(Id, new_role = "ID") %>% 
  step_nzv(all_predictors()) %>%
  step_impute_mean(all_numeric_predictors()) %>% 
  step_impute_knn(all_nominal_predictors()) %>% 
  step_normalize(all_numeric_predictors()) %>%
  step_dummy(all_nominal_predictors())

boost_tree_xgboost_spec <-
  boost_tree(
    tree_depth = tune(),
    trees = tune(),
    learn_rate = tune(),
    min_n = tune(),
    loss_reduction = tune(),
    sample_size = tune(),
    stop_iter = tune()
  ) %>%
  set_engine('xgboost', num.threads = 8) %>%
  set_mode('regression')

xgb_wf <- workflow() %>% 
  add_model(boost_tree_xgboost_spec) %>% 
  add_recipe(base_recipe)

param_set <- extract_parameter_set_dials(xgb_wf) %>%
  finalize(x = df_train %>% select(-SalePrice))

xgb_wl_res <- xgb_wf %>%
  tune_race_win_loss(
    param_info = param_set,
    resamples = cv_folds,
    grid = 80,
    control = control_race(
      verbose_elim = TRUE,
      save_pred = TRUE,
      save_workflow = TRUE,
      burn_in = 10
    )
  )

saveRDS("data/xgb_wl_80.rds")

print("Done")
