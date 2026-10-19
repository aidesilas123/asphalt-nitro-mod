package com.vungle.ads.internal.task;

import android.os.Bundle;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.vungle.ads.internal.task.a, reason: from Kotlin metadata */
/* JADX INFO: compiled from: Job.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bæ\u0080\u0001\u0018\u00002\u00020\u0001:\u0001\bJ\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\t"}, d2 = {"Lcom/vungle/ads/internal/task/Job;", "", "onRunJob", "", "bundle", "Landroid/os/Bundle;", "jobRunner", "Lcom/vungle/ads/internal/task/JobRunner;", "Result", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public interface Job {
    int onRunJob(Bundle bundle, JobRunner jobRunner);
}
