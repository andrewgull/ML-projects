# ML-projects
my code related to machine learning and data analysis in general 

1. `titanic_notebook.ipynb` - classic ML data set from Kaggle. The aim is to predict survival on the Titanic.

Basic model: Random Forest (k-fold cross-validation, k=5, `Age` NaN imputation according to `Sex` and `Pclass`).

Performance on test datset:
 - Accuracy = 0.85
 - Precision = 0.84
 - Recall = 0.78
 - F-score = 0.80
 - AUC = 0.90

2. `gender_voice_recognition.ipynb` - a data set of acoustic properties of 5000+ voices. The aim is to predict a voice's gender and identify the most distinguishing properties as well

Model 1: Random Forest (k-fold CV, k=5).

Performance on test datset:
 - Accuracy = 0.98
 - Precision = 0.98
 - Recall = 0.97
 - F-score = 0.98
 - AUC = 1.00
 
 Model 2: Logistic regression (collinear variables removed).
 
Performance on test datset:
 - Accuracy = 0.97
 - Precision = 0.96
 - Recall = 0.98
 - F-score = 0.97
 - AUC = 0.99
 
 3. `weight_lifting_exercise.Rmd`- a data set from a [course](https://www.coursera.org/learn/practical-machine-learning) by Johns Hopkins University on Coursera

compiled notebooks are in `./compiled`

4. `./medical` notebooks with code for the Central Institute of Gastroenterology

   4.1 `Angiodine.Rmd` - quality of prediction of fibrosis by the blood flowmeter 'Angiodine' compared to biopsy.

    Several logit-regression models were trained:

    - model 1: AUC = 0.68, PCCC = 0.80, Sens = 0.31, Spec = 1
    - model 2: AUC = 0.88, PCCC = 0.90, Sens = 0.71, Spec = 1
    - model 3: AUC = 1.00, PCCC = 0.99, Sens = 1, Spec = 1

   4.2 `covid19_olfactory_loss.Rmd` - diagnostic value of smell loss for the diagnosis of COVID-19

   - model 1: AUC = 0.52, Sens = 0.84, 1 - Spec = 0.88
   - model 2: AUC = 0.56, Sens = 0.88, 1 - Spec = 0.76
   
   4.3 `Fibroscan.Rmd` - diagnostic quality of a method 'FibroScan' for the diagnosis of liver fibrosis.
   
   - model 1: AUC = 0.99 (95% CI=0.98−1.00)
   - model 2: AUC = 0.85 (95% CI=0.77−0.92)
   
  4.4. `MMPs.Rmd` - analysis of factors influencing matrix metalloproteases (MMPs) concentrations in blood for certain diseases.
  
  4.5. `pre-eclampsia.Rmd` - analysis of factors affecting pre-eclampsia (Pre-eclampsia is a condition that affects some pregnant women usually during the second half of pregnancy (from around 20 weeks) or immediately after delivery of their baby. Women with pre-eclampsia have high blood pressure, fluid retention (oedema) and protein in the urine (proteinuria)