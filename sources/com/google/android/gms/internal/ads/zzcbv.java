package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzcbv extends ScheduledThreadPoolExecutor {
    zzcbv(int i, ThreadFactory threadFactory) {
        super(3, threadFactory);
    }
}
