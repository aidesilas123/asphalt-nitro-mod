package com.json;

import android.os.Handler;
import android.os.Looper;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001a\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0007J\u001a\u0010\b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0007J\u001a\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0007J\b\u0010\b\u001a\u0004\u0018\u00010\nR\u0014\u0010\r\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\fR\u0014\u0010\u0010\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u000f¨\u0006\u0015"}, d2 = {"Lcom/ironsource/q5;", "", "Ljava/lang/Runnable;", "action", "", "delay", "", "c", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/os/Looper;", "Landroid/os/Handler;", "Landroid/os/Handler;", "uiHandler", "Lcom/ironsource/x7;", "Lcom/ironsource/x7;", "backgroundHandler", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "publisherCallbackHandler", "<init>", "()V", "mediationsdk_release"}, mv = {1, 8, 0})
public final class q5 {
    public static final q5 a = new q5();

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private static final Handler uiHandler = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private static final x7 backgroundHandler;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private static final x7 publisherCallbackHandler;

    static {
        x7 x7Var = new x7("isadplayer-background");
        x7Var.start();
        x7Var.a();
        backgroundHandler = x7Var;
        x7 x7Var2 = new x7("isadplayer-publisher-callbacks");
        x7Var2.start();
        x7Var2.a();
        publisherCallbackHandler = x7Var2;
    }

    private q5() {
    }

    public static /* synthetic */ void a(q5 q5Var, Runnable runnable, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        q5Var.a(runnable, j);
    }

    public static /* synthetic */ void b(q5 q5Var, Runnable runnable, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        q5Var.b(runnable, j);
    }

    public static /* synthetic */ void c(q5 q5Var, Runnable runnable, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        q5Var.c(runnable, j);
    }

    public final Looper a() {
        return backgroundHandler.getLooper();
    }

    public final void a(Runnable action) {
        Intrinsics.checkNotNullParameter(action, "action");
        a(this, action, 0L, 2, null);
    }

    public final void a(Runnable action, long delay) {
        Intrinsics.checkNotNullParameter(action, "action");
        backgroundHandler.a(action, delay);
    }

    public final void b(Runnable action) {
        Intrinsics.checkNotNullParameter(action, "action");
        b(this, action, 0L, 2, null);
    }

    public final void b(Runnable action, long delay) {
        Intrinsics.checkNotNullParameter(action, "action");
        publisherCallbackHandler.a(action, delay);
    }

    public final void c(Runnable action) {
        Intrinsics.checkNotNullParameter(action, "action");
        c(this, action, 0L, 2, null);
    }

    public final void c(Runnable action, long delay) {
        Intrinsics.checkNotNullParameter(action, "action");
        uiHandler.postDelayed(action, delay);
    }
}
