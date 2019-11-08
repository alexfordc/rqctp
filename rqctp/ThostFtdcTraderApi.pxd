# -*- coding: utf-8 -*-
#
# Copyright 2019 Ricequant, Inc
#
# * Commercial Usage: please contact public@ricequant.com
# * Non-Commercial Usage:
#     Licensed under the Apache License, Version 2.0 (the "License");
#     you may not use this file except in compliance with the License.
#     You may obtain a copy of the License at
#
#         http://www.apache.org/licenses/LICENSE-2.0
#
#     Unless required by applicable law or agreed to in writing, software
#     distributed under the License is distributed on an "AS IS" BASIS,
#     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#     See the License for the specific language governing permissions and
#     limitations under the License.

from cpython cimport PyObject
from libc.string cimport const_char

from .ThostFtdcUserApiStruct cimport *

cdef extern from "ThostFtdcTraderApi.h":
    cdef cppclass CTraderApi "CThostFtdcTraderApi":
        void Release() nogil
        void Init() nogil
        int Join() nogil
        void RegisterFront(char *pszFrontAddress) nogil except +
        void RegisterSpi(CTraderSpi *pSpi) nogil except +
        int ReqUserLogin(CThostFtdcReqUserLoginField *pReqUserLoginField, int nRequestID) nogil except +


cdef extern from "ThostFtdcTraderApi.h" namespace "CThostFtdcTraderApi":
    CTraderApi *CreateFtdcTraderApi(const_char *pszFlowPath) nogil except +


cdef extern from "CTraderSpi.h":
    cdef cppclass CTraderSpi:
        CTraderSpi(PyObject *obj)
