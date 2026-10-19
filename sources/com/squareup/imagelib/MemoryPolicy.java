package com.squareup.imagelib;

/* JADX INFO: loaded from: classes4.dex */
public enum MemoryPolicy {
    NO_CACHE(1),
    NO_STORE(2);


    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f7726d;

    MemoryPolicy(int i) {
        this.f7726d = i;
    }

    static boolean f(int i) {
        return (i & NO_CACHE.f7726d) == 0;
    }

    static boolean g(int i) {
        return (i & NO_STORE.f7726d) == 0;
    }
}
