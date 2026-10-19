package com.google.android.datatransport.runtime;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: compiled from: ExecutionModule.java */
/* JADX INFO: loaded from: classes2.dex */
abstract class i {
    static Executor a() {
        return new j(Executors.newSingleThreadExecutor());
    }
}
