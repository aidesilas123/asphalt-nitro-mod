package com.squareup.imagelib;

/* JADX INFO: loaded from: classes4.dex */
public enum NetworkPolicy {
    NO_CACHE(1),
    NO_STORE(2),
    OFFLINE(4);


    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f7728e;

    NetworkPolicy(int i) {
        this.f7728e = i;
    }

    public static boolean isOfflineOnly(int i) {
        return (i & OFFLINE.f7728e) != 0;
    }

    public static boolean shouldReadFromDiskCache(int i) {
        return (i & NO_CACHE.f7728e) == 0;
    }

    public static boolean shouldWriteToDiskCache(int i) {
        return (i & NO_STORE.f7728e) == 0;
    }
}
