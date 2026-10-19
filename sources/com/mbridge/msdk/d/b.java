package com.mbridge.msdk.d;

import com.mbridge.msdk.c.e;
import com.mbridge.msdk.c.f;
import com.mbridge.msdk.d.a;
import com.mbridge.msdk.foundation.tools.aa;

/* JADX INFO: compiled from: TimerController.java */
/* JADX INFO: loaded from: classes4.dex */
public class b {

    /* JADX INFO: compiled from: TimerController.java */
    static class a {
        static b a = new b();
    }

    private b() {
    }

    public static b getInstance() {
        return a.a;
    }

    public void addInterstitialList(String str, String str2) {
        try {
            a.C0392a.a.b(str, str2);
        } catch (Exception e2) {
            aa.d("TimerController", "addInterstitialList error:" + e2.getMessage());
        }
    }

    public void addRewardList(String str, String str2) {
        try {
            a.C0392a.a.a(str, str2);
        } catch (Exception e2) {
            aa.d("TimerController", "addRewardList error:" + e2.getMessage());
        }
    }

    public void start() {
        e eVarB = f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
        if (eVarB == null) {
            eVarB = f.a().b();
        }
        if (eVarB.e() > 0) {
            a.C0392a.a.a(r0 * 1000);
        }
    }
}
