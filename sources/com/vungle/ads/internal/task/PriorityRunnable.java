package com.vungle.ads.internal.task;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.vungle.ads.internal.task.e, reason: from Kotlin metadata */
/* JADX INFO: compiled from: PriorityRunnable.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b&\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u0011\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0002H\u0096\u0002R\u0012\u0010\u0005\u001a\u00020\u0006X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/vungle/ads/internal/task/PriorityRunnable;", "", "", "Ljava/lang/Runnable;", "()V", "priority", "", "getPriority", "()I", "compareTo", "other", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public abstract class PriorityRunnable implements Comparable<Object>, Runnable {
    @Override // java.lang.Comparable
    public int compareTo(Object other) {
        Intrinsics.checkNotNullParameter(other, "other");
        if (!(other instanceof PriorityRunnable)) {
            return -1;
        }
        return Intrinsics.compare(((PriorityRunnable) other).getPriority(), getPriority());
    }

    public abstract int getPriority();
}
