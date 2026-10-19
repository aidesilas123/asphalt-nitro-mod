package io.didomi.drawable;

import com.google.android.gms.ads.RequestConfiguration;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: renamed from: io.didomi.sdk.y, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u0000 \t*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002:\u0001\rB\u001d\b\u0002\u0012\b\u0010\u0003\u001a\u0004\u0018\u00018\u0000\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u0012\u0010\u000b\u001a\u0004\b\u00028\u0000ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\r\u001a\u00020\u0004¢\u0006\u0004\b\r\u0010\u000eR\u0016\u0010\u0003\u001a\u0004\u0018\u00018\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000fR\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0010\u0082\u0002\u0004\n\u0002\b9¨\u0006\u0011"}, d2 = {"Lio/didomi/sdk/y;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "result", "", "error", "<init>", "(Ljava/lang/Object;Ljava/lang/Throwable;)V", "", "c", "()Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()Ljava/lang/Object;", "a", "()Ljava/lang/Throwable;", "Ljava/lang/Object;", "Ljava/lang/Throwable;", "android_release"}, mv = {1, 8, 0})
public final class C1946y<T> {

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final T result;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final Throwable error;

    /* JADX INFO: renamed from: io.didomi.sdk.y$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001b\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\tJ\u001b\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\b\u0010\fJ&\u0010\b\u001a\n\u0012\u0006\u0012\u0004\b\u00028\u00010\u0006\"\u0004\b\u0001\u0010\r2\u0006\u0010\u000e\u001a\u00028\u0001ø\u0001\u0000¢\u0006\u0004\b\b\u0010\u000f\u0082\u0002\u0004\n\u0002\b9¨\u0006\u0010"}, d2 = {"Lio/didomi/sdk/y$a;", "", "<init>", "()V", "", "error", "Lio/didomi/sdk/y;", "", "a", "(Ljava/lang/Throwable;)Lio/didomi/sdk/y;", "", "message", "(Ljava/lang/String;)Lio/didomi/sdk/y;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "data", "(Ljava/lang/Object;)Lio/didomi/sdk/y;", "android_release"}, mv = {1, 8, 0})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final <T> C1946y<T> a(T data) {
            return new C1946y<>(data, null, 0 == true ? 1 : 0);
        }

        public final C1946y a(String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            return a(new Throwable(message));
        }

        public final C1946y a(Throwable error) {
            Intrinsics.checkNotNullParameter(error, "error");
            n nVar = null;
            return new C1946y(nVar, error, nVar);
        }
    }

    private C1946y(T t, Throwable th) {
        this.result = t;
        this.error = th;
    }

    public /* synthetic */ C1946y(Object obj, Throwable th, n nVar) {
        this(obj, th);
    }

    public final Throwable a() throws C1956z {
        Throwable th = this.error;
        if (th != null) {
            return th;
        }
        throw new C1956z("No error, result is " + this.result);
    }

    public final T b() throws C1956z {
        T t = this.result;
        if (t != null) {
            return t;
        }
        throw new C1956z("No result, error is " + this.error);
    }

    public final boolean c() {
        return this.result == null;
    }
}
