package com.tapjoy.internal;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes4.dex */
public final class b3 extends p9 {
    public b3(SharedPreferences sharedPreferences, String str) {
        super(sharedPreferences, str);
    }

    public final void b(long j) {
        this.a.edit().putLong(this.b, j).apply();
    }

    public final long c() {
        return this.a.getLong(this.b, 0L);
    }
}
