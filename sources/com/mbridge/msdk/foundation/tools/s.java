package com.mbridge.msdk.foundation.tools;

import android.net.ConnectivityManager;

/* JADX INFO: compiled from: NetManager.java */
/* JADX INFO: loaded from: classes4.dex */
public final class s {
    private static ConnectivityManager a;

    public static synchronized ConnectivityManager a() {
        try {
        } catch (Exception e2) {
            aa.d("NetManager", e2.getMessage());
        }
        if (a != null || com.mbridge.msdk.foundation.controller.b.d().g() == null) {
        } else {
            a = (ConnectivityManager) com.mbridge.msdk.foundation.controller.b.d().g().getSystemService("connectivity");
        }
        return a;
    }
}
