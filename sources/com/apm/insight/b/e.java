package com.apm.insight.b;

import androidx.annotation.CallSuper;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {
    public static long a;
    public static long b;
    public volatile boolean c = false;

    @CallSuper
    public void a(String str) {
        this.c = true;
    }

    public boolean a() {
        return false;
    }

    @CallSuper
    public void b(String str) {
        this.c = false;
    }
}
