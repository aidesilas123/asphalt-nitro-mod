package com.google.firebase.messaging;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: lambda */
/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class t implements Executor {
    public static final /* synthetic */ t a = new t();

    private /* synthetic */ t() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
