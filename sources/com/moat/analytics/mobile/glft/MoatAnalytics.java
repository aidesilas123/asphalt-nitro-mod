package com.moat.analytics.mobile.glft;

import android.app.Application;
import com.moat.analytics.mobile.glft.t;

/* JADX INFO: loaded from: classes4.dex */
public abstract class MoatAnalytics {
    private static MoatAnalytics a;

    public static synchronized MoatAnalytics getInstance() {
        if (a == null) {
            try {
                a = new j();
            } catch (Exception e2) {
                l.a(e2);
                a = new t.a();
            }
        }
        return a;
    }

    public abstract void prepareNativeDisplayTracking(String str);

    public abstract void start(Application application);

    public abstract void start(MoatOptions moatOptions, Application application);
}
