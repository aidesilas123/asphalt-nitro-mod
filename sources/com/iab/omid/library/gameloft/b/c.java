package com.iab.omid.library.gameloft.b;

import android.annotation.SuppressLint;
import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    @SuppressLint({"StaticFieldLeak"})
    private static c a = new c();
    private Context b;

    private c() {
    }

    public static c a() {
        return a;
    }

    public void a(Context context) {
        this.b = context != null ? context.getApplicationContext() : null;
    }

    public Context b() {
        return this.b;
    }
}
