package com.google.firebase.messaging.threads;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes3.dex */
public interface ExecutorFactory {
    ExecutorService a(ThreadFactory threadFactory, ThreadPriority threadPriority);
}
