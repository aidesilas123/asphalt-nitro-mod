package com.google.common.collect;

/* JADX INFO: loaded from: classes3.dex */
public enum BoundType {
    OPEN(false),
    CLOSED(true);


    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final boolean f3541d;

    BoundType(boolean z) {
        this.f3541d = z;
    }

    static BoundType f(boolean z) {
        return z ? CLOSED : OPEN;
    }
}
