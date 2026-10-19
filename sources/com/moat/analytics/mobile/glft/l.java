package com.moat.analytics.mobile.glft;

import android.util.Log;

/* JADX INFO: loaded from: classes4.dex */
class l extends Exception {
    l() {
    }

    static void a(Exception exc) {
        if (u.d().b()) {
            Log.e("MoatException", Log.getStackTraceString(exc));
        }
    }
}
