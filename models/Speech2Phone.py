#! /usr/bin/python
# -*- encoding: utf-8 -*-

import torch
import torchaudio
import torch.nn as nn
import torch.nn.functional as F
from torch.nn import Parameter
from models.ResNetBlocks import *

class Speech2Phone(nn.Module):
    def __init__(self, nOut = 572, encoder_type='SAP', **kwargs):
        super(Speech2Phone, self).__init__();
        self.torchfb        = torchaudio.transforms.MFCC(sample_rate=22050, n_mfcc=13)
        self.dropout = nn.Dropout(p=0.83)
        self.fc0 = nn.Linear(13*551, 80)
        self.relu = nn.ReLU()
        self.fc = nn.Linear(80*2, nOut)

    def forward(self, x):
        x = self.torchfb(x)+1e-6
        # print(x.shape)
        #x = self.instancenorm(x.log()).detach().transpose(1, 2)
        x = x.reshape(x.size(0), -1)
        x = self.dropout(x)
        x = self.fc0(x)
        # compute CReLU
        x = torch.cat((self.relu(x), self.relu(-x)), 1)
        #print(x.shape)
        x = x.view(x.size()[0], -1)
        #x = self.encoder(x)
        # print(x.shape)
        # print(x.shape)
        x = self.fc(x)
        return x
