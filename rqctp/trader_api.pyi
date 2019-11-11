from .TraderApi import TraderApi as CTraderApi


class TraderApi(CTraderApi):
    def __init__(self, pszFlowPath: str = ""):
        ...

    def Init(self):
        ...

    def Release(self):
        ...

    def RegisterFront(self, pszFrontAddress: str):
        ...

    def SubscribePrivateTopic(self, nResumeType):
        ...

    def SubscribePublicTopic(self, nResumeType):
        ...

    def ReqUserLogin(self, reqUserLoginField, nRequestID):
        ...

    def ReqQrySettlementInfo(self, pQrySettlementInfo, nRequestID):
        ...

    def OnFrontConnected(self):
        ...

    def OnFrontDisconnected(self, nReason: int):
        ...

    def OnRspUserLogin(self, pRspUserLogin, pRspInfo, nRequestID, bIsLast):
        ...

    def OnRtnTrade(self, pTrade):
        ...

    def OnRspQrySettlementInfo(self, pSettlementInfo, pRspInfo, nRequestID, bIsLast):
        ...
