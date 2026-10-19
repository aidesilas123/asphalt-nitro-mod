package com.vungle.ads.internal.util;

import android.util.Log;
import com.json.b4;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.n;

/* JADX INFO: compiled from: Logger.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/vungle/ads/internal/util/Logger;", "", "()V", "Companion", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public final class Logger {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static boolean enabled;

    /* JADX INFO: renamed from: com.vungle.ads.internal.util.Logger$a, reason: from kotlin metadata */
    /* JADX INFO: compiled from: Logger.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0007J\u001c\u0010\n\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0007J&\u0010\n\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0007J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0004J\u001c\u0010\u000f\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0007J&\u0010\u000f\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/vungle/ads/internal/util/Logger$Companion;", "", "()V", b4.r, "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "", "tag", "", "message", "e", "throwable", "", com.json.mediationsdk.metadata.a.i, "", "w", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        public final int d(String tag, String message) {
            if (!Logger.enabled || tag == null || message == null) {
                return -1;
            }
            return Log.d(tag, message);
        }

        public final int e(String tag, String message) {
            if (!Logger.enabled || tag == null || message == null) {
                return -1;
            }
            return Log.e(tag, message);
        }

        public final int e(String tag, String message, Throwable throwable) {
            if (!Logger.enabled || tag == null || message == null) {
                return -1;
            }
            return Log.e(tag, message, throwable);
        }

        public final void enable(boolean enabled) {
            Companion companion = Logger.INSTANCE;
            Logger.enabled = enabled;
        }

        public final int w(String tag, String message) {
            if (!Logger.enabled || tag == null || message == null) {
                return -1;
            }
            return Log.w(tag, message);
        }

        public final int w(String tag, String message, Throwable throwable) {
            if (!Logger.enabled || message == null || throwable == null) {
                return -1;
            }
            Log.w(tag, message, throwable);
            return -1;
        }
    }

    public static final int d(String str, String str2) {
        return INSTANCE.d(str, str2);
    }

    public static final int e(String str, String str2) {
        return INSTANCE.e(str, str2);
    }

    public static final int e(String str, String str2, Throwable th) {
        return INSTANCE.e(str, str2, th);
    }

    public static final int w(String str, String str2) {
        return INSTANCE.w(str, str2);
    }

    public static final int w(String str, String str2, Throwable th) {
        return INSTANCE.w(str, str2, th);
    }
}
