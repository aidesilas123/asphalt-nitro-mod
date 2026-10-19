package io.didomi.drawable;

import android.graphics.Color;
import androidx.annotation.ColorInt;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.ViewCompat;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.RegexOption;

/* JADX INFO: renamed from: io.didomi.sdk.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lio/didomi/sdk/x;", "", "<init>", "()V", "", "value", "", "c", "(Ljava/lang/String;)Z", "color", "a", "(Ljava/lang/String;)Ljava/lang/String;", "colorString", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;)I", "android_release"}, mv = {1, 8, 0})
public final class C1936x {
    public static final C1936x a = new C1936x();

    private C1936x() {
    }

    private final boolean c(String value) {
        return new Regex("^#([0-9a-f]{6}|[0-9a-f]{3})$", RegexOption.a).e(value);
    }

    public final String a(String color) {
        Intrinsics.checkNotNullParameter(color, "color");
        return (c(color) && ColorUtils.calculateContrast(b(color), ViewCompat.MEASURED_STATE_MASK) < 4.5d) ? "#ffffff" : "#000000";
    }

    @ColorInt
    public final int b(String colorString) {
        Intrinsics.checkNotNullParameter(colorString, "colorString");
        try {
            return Color.parseColor(new Regex("#[0-9a-f][0-9a-f][0-9a-f]", RegexOption.a).e(colorString) ? new Regex("#([0-9a-fA-F])([0-9a-fA-F])([0-9a-fA-F])").f(colorString, "#$1$1$2$2$3$3") : c(colorString) ? colorString : "#05687b");
        } catch (Exception unused) {
            Log.e$default("Error parsing color " + colorString, null, 2, null);
            return Color.parseColor("#05687b");
        }
    }
}
