package com.tapjoy;

import com.tapjoy.TapjoyErrorMessage;
import org.w3c.dom.Document;

/* JADX INFO: loaded from: classes4.dex */
public final class q0 implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        Document documentBuildDocument;
        String nodeTrimValue;
        TapjoyLog.i("TapjoyConnect", "Setting userID to " + TapjoyConnectCore.x);
        String hostURL = TapjoyConnectCore.getHostURL();
        String str = TapjoyConnectCore.c.c(hostURL + "set_publisher_user_id?", TapjoyConnectCore.getURLParams()).f7843d;
        boolean z = false;
        if (str != null && ((documentBuildDocument = TapjoyUtil.buildDocument(str)) == null || ((nodeTrimValue = TapjoyUtil.getNodeTrimValue(documentBuildDocument.getElementsByTagName("Success"))) != null && nodeTrimValue.equals("true")))) {
            z = true;
        }
        if (!z && !TapjoyConnectCore.f7834g && !hostURL.equalsIgnoreCase(TapjoyConnectCore.getHostURL())) {
            TapjoyConnectCore.f7834g = true;
            TapjoyConnectCore.setUserID(TapjoyConnectCore.x, TapjoyConnectCore.f7832e);
            return;
        }
        if (z) {
            TapjoyLog.i("TapjoyConnect", "Set userID is successful");
            TJSetUserIDListener tJSetUserIDListener = TapjoyConnectCore.f7832e;
            if (tJSetUserIDListener != null) {
                tJSetUserIDListener.onSetUserIDSuccess();
                return;
            }
            return;
        }
        TapjoyLog.e("TapjoyConnect", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.b, "Failed to set userID"));
        TJSetUserIDListener tJSetUserIDListener2 = TapjoyConnectCore.f7832e;
        if (tJSetUserIDListener2 != null) {
            tJSetUserIDListener2.onSetUserIDFailure("Failed to set userID");
        }
        TapjoyConnectCore.f7833f = true;
    }
}
