# -*- coding: utf-8 -*-
"""
Created on Mon Sep 19 10:33:52 2016

@author: Cyq
"""


import scipy.io

import numpy as np
from sklearn.ensemble import RandomForestClassifier


X= scipy.io.loadmat("C:/Users/Cyq/Desktop/data/convert2.mat")["final"]

for j in range(1,11):
    Y=scipy.io.loadmat("C:/Users/Cyq/Desktop/data/multilabel/label/"+str(j)+".mat")["b"]
    Y=np.ravel(Y)
    
    #random forest
    for i in range(300):
        
        clf = RandomForestClassifier(n_estimators=30)
        clf = clf.fit(X, Y)
        np.savetxt("C:/Users/Cyq/Desktop/data/multilabel/"+str(j)+"/"+str(i)+".txt",clf.feature_importances_)
        print(i)