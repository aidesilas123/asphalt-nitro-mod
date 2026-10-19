package com.json;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.lifecycle.b;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\n¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\b\u0010\b\u001a\u00020\u0002H\u0016J\b\u0010\t\u001a\u00020\u0002H\u0016R\u0014\u0010\f\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u000bR\u0016\u0010\u000e\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/ironsource/r4;", "Lcom/ironsource/l8;", "", InneractiveMediationDefs.GENDER_FEMALE, "", "e", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/ironsource/ob;", "Lcom/ironsource/ob;", "task", "J", "sessionStartTime", "<init>", "(Lcom/ironsource/ob;)V", "mediationsdk_release"}, mv = {1, 8, 0})
public final class r4 implements l8 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final ob task;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private long sessionStartTime;

    public r4(ob task) {
        Intrinsics.checkNotNullParameter(task, "task");
        this.task = task;
        b.d().a(this);
        f();
    }

    private final long e() {
        return System.currentTimeMillis() - this.sessionStartTime;
    }

    private final void f() {
        this.sessionStartTime = System.currentTimeMillis();
    }

    @Override // com.json.l8
    public void a() {
    }

    @Override // com.json.l8
    public void b() {
        this.task.a(Long.valueOf(e()));
        this.task.run();
    }

    @Override // com.json.l8
    public void c() {
        f();
    }

    @Override // com.json.l8
    public void d() {
    }
}
