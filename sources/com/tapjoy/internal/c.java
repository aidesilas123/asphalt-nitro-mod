package com.tapjoy.internal;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes4.dex */
public final class c extends p9 {
    public c(SharedPreferences sharedPreferences, String str) {
        super(sharedPreferences, str);
    }

    public final void b(boolean z) {
        this.a.edit().putBoolean(this.b, z).apply();
    }
}
