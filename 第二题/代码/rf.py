# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

import scipy.io

import numpy as np
from sklearn.ensemble import RandomForestClassifier
from sklearn.linear_model import LogisticRegression


X= scipy.io.loadmat("C:/Users/Cyq/Desktop/data/convert2.mat")["final"]
Y=scipy.io.loadmat("C:/Users/Cyq/Desktop/data/label.mat")["label"]
Y=np.ravel(Y)

#clf=LogisticRegression(C=1)
#
#clf = clf.fit(X, Y)
#
#print(clf.predict(X))
#print(clf.coef_)
#print(np.argmax(clf.coef_))
#np.savetxt("C:/Users/Cyq/Desktop/data/lr.txt",clf.coef_ )

#random forest
for i in range(300):
    clf = RandomForestClassifier(n_estimators=30)
    clf = clf.fit(X, Y)
    np.savetxt("C:/Users/Cyq/Desktop/data/rf/"+str(i)+".txt",clf.feature_importances_)
    print(i)