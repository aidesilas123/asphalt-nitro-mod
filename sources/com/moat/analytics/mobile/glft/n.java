package com.moat.analytics.mobile.glft;

import android.util.Log;

/* JADX INFO: loaded from: classes4.dex */
class n {
    n() {
    }

    static void a(int i, String str, Object obj, String str2) {
        if (u.d().b()) {
            Log.println(i, str, String.format("id = %s, message = %s", Integer.valueOf(obj.hashCode()), str2));
        }
    }

    static void a(String str, Object obj, String str2, Throwable th) {
        if (u.d().b()) {
            Log.e(str, String.format("id = %s, message = %s", Integer.valueOf(obj.hashCode()), str2), th);
        }
    }

    static void b(int i, String str, Object obj, String str2) {
        if (u.d().e()) {
            Log.println(i, str, String.format("id = %s, message = %s", Integer.valueOf(obj.hashCode()), str2));
        }
    }
}
