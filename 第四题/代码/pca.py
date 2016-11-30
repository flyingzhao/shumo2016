# -*- coding: utf-8 -*-
"""
Created on Mon Sep 19 19:33:02 2016

@author: Cyq
"""

import scipy.io
from sklearn.decomposition import PCA
from sklearn.ensemble import RandomForestClassifier
import numpy as np


label= scipy.io.loadmat("C:/Users/Cyq/Desktop/data/multilabel.mat")["multilabel"].T
pca = PCA(n_components=2)
pca.fit(label)
r=pca.components_
Y=r.T

np.savetxt("C:/Users/Cyq/Desktop/data/pca/y.txt",Y)