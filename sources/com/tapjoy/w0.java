package com.tapjoy;

import com.tapjoy.internal.q9;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class w0 extends Thread {
    public final /* synthetic */ String a;
    public final /* synthetic */ TJOfferwallDiscoverView b;

    public w0(TJOfferwallDiscoverView tJOfferwallDiscoverView, String str) {
        this.b = tJOfferwallDiscoverView;
        this.a = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        super.run();
        String placementURL = TapjoyConnectCore.getPlacementURL();
        String str = placementURL + "v1/apps/" + TapjoyConnectCore.getAppID() + "/content?";
        j0 j0Var = new j0();
        Map<String, String> genericURLParams = TapjoyConnectCore.getGenericURLParams();
        genericURLParams.putAll(TapjoyConnectCore.getTimeStampAndVerifierParams());
        TapjoyUtil.safePut(genericURLParams, "event_name", this.a, true);
        TapjoyUtil.safePut(genericURLParams, "event_preload", "true", true);
        TapjoyUtil.safePut(genericURLParams, "offerwall_discover", "true", true);
        TapjoyUtil.runOnMainThread(new q9(this, j0Var.d(str, null, null, genericURLParams), placementURL));
    }
}
