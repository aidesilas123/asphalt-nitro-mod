package com.applovin.impl.sdk;

import com.applovin.impl.sdk.e.q;
import com.applovin.impl.sdk.r;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class v {
    private static boolean aFh;

    public static void Fg() {
        aFh = true;
    }

    public static void w(final n nVar) {
        Long l = (Long) nVar.a(com.applovin.impl.sdk.c.a.aKe);
        if (l.longValue() <= 0) {
            return;
        }
        nVar.BO().a(new com.applovin.impl.sdk.e.ab(nVar, true, "submitIntegrationErrorReport", new Runnable() { // from class: com.applovin.impl.sdk.w1
            @Override // java.lang.Runnable
            public final void run() {
                v.x(nVar);
            }
        }), q.b.MAIN, TimeUnit.SECONDS.toMillis(l.longValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void x(n nVar) {
        if (aFh) {
            return;
        }
        nVar.Cs().a(r.a.INTEGRATION_ERROR, "no_ads_loaded", (String) null);
    }
}
