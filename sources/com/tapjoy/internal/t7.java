package com.tapjoy.internal;

import com.tapjoy.TJAwardCurrencyListener;
import com.tapjoy.TapjoyConnectCore;
import com.tapjoy.TapjoyErrorMessage;
import com.tapjoy.TapjoyLog;
import com.tapjoy.TapjoyUtil;
import java.util.Map;
import org.w3c.dom.Document;

/* JADX INFO: loaded from: classes4.dex */
public final class t7 implements Runnable {
    public final /* synthetic */ Map a;
    public final /* synthetic */ TJAwardCurrencyListener b;
    public final /* synthetic */ com.tapjoy.p c;

    public t7(com.tapjoy.p pVar, Map map, TJAwardCurrencyListener tJAwardCurrencyListener) {
        this.c = pVar;
        this.a = map;
        this.b = tJAwardCurrencyListener;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.tapjoy.h0 h0VarC = new com.tapjoy.j0().c(TapjoyConnectCore.getHostURL() + "points/award?", this.a);
        com.tapjoy.p pVar = this.c;
        TJAwardCurrencyListener tJAwardCurrencyListener = this.b;
        synchronized (pVar) {
            String nodeTrimValue = "Failed to award currency";
            String str = h0VarC.f7843d;
            if (str != null) {
                Document documentBuildDocument = TapjoyUtil.buildDocument(str);
                if (documentBuildDocument != null) {
                    String nodeTrimValue2 = TapjoyUtil.getNodeTrimValue(documentBuildDocument.getElementsByTagName("Success"));
                    if (nodeTrimValue2 != null && nodeTrimValue2.equals("true")) {
                        String nodeTrimValue3 = TapjoyUtil.getNodeTrimValue(documentBuildDocument.getElementsByTagName("TapPoints"));
                        String nodeTrimValue4 = TapjoyUtil.getNodeTrimValue(documentBuildDocument.getElementsByTagName("CurrencyName"));
                        if (nodeTrimValue3 == null || nodeTrimValue4 == null) {
                            TapjoyLog.e("TJCurrency", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.c, "awardCurrency response is invalid -- missing tags."));
                        } else {
                            int i = Integer.parseInt(nodeTrimValue3);
                            pVar.e(i);
                            if (tJAwardCurrencyListener != null) {
                                tJAwardCurrencyListener.onAwardCurrencyResponse(nodeTrimValue4, i);
                            }
                        }
                    } else if (nodeTrimValue2 == null || !nodeTrimValue2.endsWith("false")) {
                        TapjoyLog.e("TJCurrency", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.c, "awardCurrency response is invalid -- missing <Success> tag."));
                    } else {
                        nodeTrimValue = TapjoyUtil.getNodeTrimValue(documentBuildDocument.getElementsByTagName("Message"));
                        TapjoyLog.i("TJCurrency", nodeTrimValue);
                    }
                }
            } else {
                TapjoyLog.e("TJCurrency", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.c, "awardCurrency response is NULL"));
            }
            if (tJAwardCurrencyListener != null) {
                tJAwardCurrencyListener.onAwardCurrencyResponseFailure(nodeTrimValue);
            }
        }
    }
}
