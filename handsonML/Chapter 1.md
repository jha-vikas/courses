# Chapter 1

## Q1. How would you define Machine Learning?

* It is a field of study that gives machines/computers ability to learn directly from data without being explicitly programmed for a task.
* A computer program is said to learn from experience *E* with respect to some task *T* and some performance metric _P_, if its performance on *T* as reflected by *P*, improves with experience *E*.

## Q2. Can you name four types of problems where it shines?

Examples of problems it shines are:

* Analyzing tumours
* Sentiment analysis
* Proactive maintenance of industrial tools
* Natural language processing.

## Q3. What is a labeled training set?

Labeled training set refers to training data which has samples and associated label(s) with it, so that it can be used for supervised machine learning tasks.

## Q4. What are the two most common supervised tasks?

Regression and Classification

## Q5. Can you name four common unsupervised tasks?

* Clustering customers in different groups(segmentation)
* Grouping DNA
* Recommender system
* Anomaly detection

## Q6. What type of Machine Learning algorithm would you use to allow a robot to walk in various unknown terrains?

Reinforcement learning supported by image processing

## Q7. What type of algorithm would you use to segment your customers into multiple groups?

Clustering (Unsupervised learning): k-means or agglomerative clustering

## Q8. Would you frame the problem of spam detection as a supervised learning problem or an unsupervised learning problem?

Supervised learning

## Q9. What is an online learning system?



10. What is out-of-core learning?

## Q.11 What type of learning algorithm relies on a similarity measure to make predictions?

Clustering(unsupervised learning)

## Q.12 What is the difference between a model parameter and a learning algorithm’s hyperparameter?

* Model parameters are the properties of the model which are learnt during the training from the data. Eg: Split of the node in a tree.
* Model hyperparameters are the properties of the model which are set beforehand. Eg: Depth of a tree

## Q13. What do model-based learning algorithms search for? What is the most common strategy they use to succeed? How do they make predictions?

The model based learning algorithms try to find the pattern or model the data manifold as a simple model. The prediction is based on the passing the input to the model to get the output.

## Q14. Can you name four of the main challenges in Machine Learning?

## Q15. If your model performs great on the training data but generalizes poorly to new instances, what is happening? Can you name three possible solutions?

It usually means that either the model has overfitted, or the data was insufficient or there has been significant data drift. Possible solutions will be: Look for data stability index to check if the data has significantly changed. Incorporate regularization. Get more data

## Q16. What is a test set, and why would you want to use it?

Test set the part of whole data which is used to check if the model is generalizing or not after hyperparameter tuning. One should use it to identify how the model would perform in the production environment.

## Q17. What is the purpose of a validation set?

It is used to tune the hyperparameters by trying to reduce the possibility of overfit, to get the best possible general solution by choosing the right amount of complexity of the ML model

## Q18. What can go wrong if you tune hyperparameters using the test set?

If the test set is used to tune the hyperparameters, the model can overfit even the test set and might perform poorly in the production environment where the data would be unseen.