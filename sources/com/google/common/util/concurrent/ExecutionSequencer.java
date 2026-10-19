package com.google.common.util.concurrent;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class ExecutionSequencer {
    private final AtomicReference<h0<Void>> a = new AtomicReference<>(Futures.immediateVoidFuture());
    private a b = new a(null);

    enum RunningState {
        NOT_RUN,
        CANCELLED,
        STARTED
    }

    private static final class a {
        private a() {
        }

        /* synthetic */ a(w wVar) {
            this();
        }
    }

    private ExecutionSequencer() {
    }

    public static ExecutionSequencer create() {
        return new ExecutionSequencer();
    }
}
