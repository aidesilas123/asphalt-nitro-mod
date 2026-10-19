package io.didomi.drawable;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: renamed from: io.didomi.sdk.v8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\f\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\f\u0010\u000b¨\u0006\r"}, d2 = {"Lio/didomi/sdk/v8;", "", "<init>", "()V", "", "html", "a", "(Ljava/lang/String;)Ljava/lang/String;", TypedValues.Custom.S_STRING, "", "c", "(Ljava/lang/String;)Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "android_release"}, mv = {1, 8, 0})
public final class C1925v8 {
    public static final C1925v8 a = new C1925v8();

    private C1925v8() {
    }

    public final String a(String html) {
        Intrinsics.checkNotNullParameter(html, "html");
        return new Regex("</?a[^>]*>").f(html, "");
    }

    public final boolean b(String string) {
        Regex regexD = C1802j5.a.d();
        if (string == null) {
            string = "";
        }
        return regexD.e(string);
    }

    public final boolean c(String string) {
        Regex regexG = C1802j5.a.g();
        if (string == null) {
            string = "";
        }
        return regexG.e(string);
    }
}
