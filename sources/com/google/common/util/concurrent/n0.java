package com.google.common.util.concurrent;

import java.util.concurrent.locks.LockSupport;

/* JADX INFO: compiled from: OverflowAvoidingLockSupport.java */
/* JADX INFO: loaded from: classes3.dex */
final class n0 {
    static void a(Object obj, long j) {
        LockSupport.parkNanos(obj, Math.min(j, 2147483647999999999L));
    }
}
