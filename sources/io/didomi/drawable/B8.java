package io.didomi.drawable;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\bR\u0016\u0010\f\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\u000bR\u0016\u0010\u000e\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000b¨\u0006\u000f"}, d2 = {"Lio/didomi/sdk/B8;", "", "<init>", "()V", "", "message", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;)V", "a", "", "J", "startTime", "c", "lastTime", "android_release"}, mv = {1, 8, 0})
public final class B8 {
    public static final B8 a = new B8();

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private static long startTime;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private static long lastTime;

    private B8() {
    }

    public static /* synthetic */ void a(B8 b8, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "Starting time measure";
        }
        b8.b(str);
    }

    public final void a(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        long jCurrentTimeMillis = System.currentTimeMillis();
        Log.v$default("TIME MEASUREMENT - " + (jCurrentTimeMillis - lastTime) + "ms since last measure - " + (jCurrentTimeMillis - startTime) + "ms since start -- Log : " + message, null, 2, null);
        lastTime = jCurrentTimeMillis;
    }

    public final void b(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        long jCurrentTimeMillis = System.currentTimeMillis();
        startTime = jCurrentTimeMillis;
        lastTime = jCurrentTimeMillis;
        Log.v$default("TIME MEASUREMENT - " + message, null, 2, null);
    }
}
