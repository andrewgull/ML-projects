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
 
 3. `weight_lifting_exercise.Rmd`- a data set from Coursera

compiled notebooks are in `./compiled`
