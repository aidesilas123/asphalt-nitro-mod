package com.tapjoy.internal;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes4.dex */
public abstract class p9 {
    public final SharedPreferences a;
    public final String b;

    public p9(SharedPreferences sharedPreferences, String str) {
        this.a = sharedPreferences;
        this.b = str;
    }

    public final void a() {
        this.a.edit().remove(this.b).apply();
    }
}
