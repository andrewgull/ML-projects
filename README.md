# ML-projects

Code for my pet-ML-projects

1. Sroke prediction: ongoing project

The data set taken from [Kaggle](https://www.kaggle.com/datasets/fedesoriano/stroke-prediction-dataset)


2. `titanic_notebook.ipynb` - classic ML data set from Kaggle.

Basic model: Random Forest (k-fold cross-validation, k=5, `Age` NaN imputation according to `Sex` and `Pclass`).

Performance on test datset:
 - Accuracy = 0.85
 - Precision = 0.84
 - Recall = 0.78
 - F-score = 0.80
 - AUC = 0.90

3. `gender_voice_recognition.ipynb` - a data set of acoustic properties of 5000+ voices. The aim is to predict a voice's gender and identify the most distinguishing properties as well

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
 
4. `weight_lifting_exercise.Rmd`- a final project from a [course](https://www.coursera.org/learn/practical-machine-learning) by Johns Hopkins University on Coursera
 
 Task description:

 The approach we propose for the Weight Lifting Exercises dataset is to investigate “how (well)” an activity was performed by the wearer.
Six young health participants were asked to perform one set of 10 repetitions of the Unilateral Dumbbell Biceps Curl in five different fashions: 
 exactly according to the specification (Class A), throwing the elbows to the front (Class B), lifting the dumbbell only halfway (Class C), lowering the dumbbell only halfway (Class D) and throwing the hips to the front (Class E).
Class A corresponds to the specified execution of the exercise, while the other 4 classes correspond to common mistakes.

----
HTML versions of the notebooks are in `./compiled`

5. `./medical` notebooks with code for various data analyses I performed for clinicians from the Central Institute of Gastroenterology

   5.1 `Angiodine.Rmd` - quality of prediction of fibrosis by the blood flowmeter 'Angiodine' compared to biopsy.

    Several logit-regression models were trained:

    - model 1: AUC = 0.68, PCCC = 0.80, Sens = 0.31, Spec = 1
    - model 2: AUC = 0.88, PCCC = 0.90, Sens = 0.71, Spec = 1
    - model 3: AUC = 1.00, PCCC = 0.99, Sens = 1, Spec = 1

   5.2 `covid19_olfactory_loss.Rmd` - diagnostic value of smell loss for the diagnosis of COVID-19

   - model 1: AUC = 0.52, Sens = 0.84, 1 - Spec = 0.88
   - model 2: AUC = 0.56, Sens = 0.88, 1 - Spec = 0.76
   
   5.3 `Fibroscan.Rmd` - diagnostic quality of a method 'FibroScan' for the diagnosis of liver fibrosis.
   
   - model 1: AUC = 0.99 (95% CI=0.98−1.00)
   - model 2: AUC = 0.85 (95% CI=0.77−0.92)
   
   5.4. `MMPs.Rmd` - analysis of factors influencing matrix metalloproteases (MMPs) concentrations in blood for certain diseases.
  
   5.5. `pre-eclampsia.Rmd` - analysis of factors affecting pre-eclampsia (Pre-eclampsia is a condition that affects some pregnant women usually during the second half of pregnancy (from around 20 weeks) or immediately after delivery of their baby. Women with pre-eclampsia have high blood pressure, fluid retention (oedema) and protein in the urine (proteinuria)
