package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: ForwardingListenableFuture.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class a0<V> extends z<V> implements h0<V> {

    /* JADX INFO: compiled from: ForwardingListenableFuture.java */
    public static abstract class a<V> extends a0<V> {
        private final h0<V> a;

        protected a(h0<V> h0Var) {
            this.a = (h0) Preconditions.checkNotNull(h0Var);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.util.concurrent.z
        /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
        public final h0<V> C() {
            return this.a;
        }
    }

    protected a0() {
    }

    /* JADX INFO: renamed from: D */
    protected abstract h0<? extends V> C();

    @Override // com.google.common.util.concurrent.h0
    public void addListener(Runnable runnable, Executor executor) {
        C().addListener(runnable, executor);
    }
}
