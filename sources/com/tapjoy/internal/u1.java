package com.tapjoy.internal;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes4.dex */
public final class u1 extends p9 {
    public final int c;

    public u1(SharedPreferences sharedPreferences, String str, int i) {
        super(sharedPreferences, str);
        this.c = i;
    }

    public final void b(int i) {
        this.a.edit().putInt(this.b, i).apply();
    }

    public final int c() {
        return this.a.getInt(this.b, this.c);
    }
}
