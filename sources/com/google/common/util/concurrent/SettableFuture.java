package com.google.common.util.concurrent;

import com.google.common.util.concurrent.m;

/* JADX INFO: loaded from: classes3.dex */
public final class SettableFuture<V> extends m.j<V> {
    private SettableFuture() {
    }

    public static <V> SettableFuture<V> create() {
        return new SettableFuture<>();
    }

    @Override // com.google.common.util.concurrent.m
    public boolean C(Throwable th) {
        return super.C(th);
    }

    @Override // com.google.common.util.concurrent.m
    public boolean D(h0<? extends V> h0Var) {
        return super.D(h0Var);
    }
}
