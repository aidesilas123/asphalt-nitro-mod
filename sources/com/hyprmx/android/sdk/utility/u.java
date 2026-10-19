package com.hyprmx.android.sdk.utility;

import java.util.HashMap;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes2.dex */
public final class u implements v {
    public final com.hyprmx.android.sdk.core.js.a a;
    public final CoroutineScope b;
    public final HashMap c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f4736d;

    public u(com.hyprmx.android.sdk.core.js.a jsEngine, CoroutineScope coroutineScope) {
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        this.a = jsEngine;
        this.b = coroutineScope;
        jsEngine.a("HYPRNativeTimer", this);
        this.c = new HashMap();
        this.f4736d = new HashMap();
    }

    @Override // com.hyprmx.android.sdk.utility.v
    public final void startNativeTimer(String id, long j, String callback) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(callback, "callback");
        HyprMXLog.d("startNativeTimer(" + id + ", " + j + ')');
        this.f4736d.put(id, callback);
        this.c.put(id, BuildersKt__Builders_commonKt.launch$default(this.b, null, null, new t(j, this, id, null), 3, null));
    }

    @Override // com.hyprmx.android.sdk.utility.v
    public final void stopTimer(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        HyprMXLog.d("stopTimer(" + id + ')');
        Job job = (Job) this.c.get(id);
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.c.put(id, null);
    }

    @Override // com.hyprmx.android.sdk.utility.v
    public final void updateTimer(String id, long j) {
        Intrinsics.checkNotNullParameter(id, "id");
        HyprMXLog.d("updateTimer(" + id + ", " + j + ')');
        Job job = (Job) this.c.get(id);
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.c.put(id, BuildersKt__Builders_commonKt.launch$default(this.b, null, null, new t(j, this, id, null), 3, null));
    }
}
