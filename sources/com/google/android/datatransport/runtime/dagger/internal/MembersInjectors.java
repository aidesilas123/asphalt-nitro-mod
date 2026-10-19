package com.google.android.datatransport.runtime.dagger.internal;

/* JADX INFO: loaded from: classes2.dex */
public final class MembersInjectors {

    private enum NoOpMembersInjector implements com.google.android.datatransport.runtime.o.b<Object> {
        INSTANCE
    }

    private MembersInjectors() {
    }

    public static <T> com.google.android.datatransport.runtime.o.b<T> noOp() {
        return NoOpMembersInjector.INSTANCE;
    }
}
