package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.dagger.internal.Preconditions;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public final class ExecutionModule_ExecutorFactory implements com.google.android.datatransport.runtime.dagger.internal.b<Executor> {

    private static final class a {
        private static final ExecutionModule_ExecutorFactory a = new ExecutionModule_ExecutorFactory();
    }

    public static ExecutionModule_ExecutorFactory create() {
        return a.a;
    }

    public static Executor executor() {
        return (Executor) Preconditions.checkNotNull(i.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Executor get() {
        return executor();
    }
}
