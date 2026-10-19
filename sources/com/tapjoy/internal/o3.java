package com.tapjoy.internal;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes4.dex */
public final class o3 extends p9 {
    public o3(SharedPreferences sharedPreferences, String str) {
        super(sharedPreferences, str);
    }

    public final void b(String str) {
        this.a.edit().putString(this.b, str).apply();
    }

    public final String c() {
        return this.a.getString(this.b, null);
    }
}
