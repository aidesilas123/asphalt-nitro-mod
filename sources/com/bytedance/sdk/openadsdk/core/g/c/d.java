package com.bytedance.sdk.openadsdk.core.g.c;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: VastUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class d {
    public static final List<String> a = Arrays.asList(MimeTypes.VIDEO_MP4, MimeTypes.VIDEO_H263);

    private static double a(int i) {
        int iMax = Math.max(i, 0);
        if (700 > iMax || iMax > 1500) {
            return Math.min(Math.abs(700 - iMax) / 700.0f, Math.abs(1500 - iMax) / 1500.0f);
        }
        return 0.0d;
    }

    private static double a(int i, double d2, int i2, int i3) {
        return (d2 > 0.0d ? Math.abs(d2 - (i3 > 0 ? ((double) i2) / ((double) i3) : 0.0d)) : 0.0d) + (i > 0 ? Math.abs((i - i2) / i) : 0.0d);
    }

    public static double a(int i, double d2, int i2, int i3, int i4, @Nullable String str) {
        double dA = a(i, d2, i2, i3);
        return a(str) * (1.0d / ((dA + 1.0d) + a(i4)));
    }

    private static double a(String str) {
        if (str == null) {
            str = "";
        }
        byte b = -1;
        int iHashCode = str.hashCode();
        if (iHashCode != -1664118616) {
            if (iHashCode == 1331848029 && str.equals(MimeTypes.VIDEO_MP4)) {
                b = 0;
            }
        } else if (str.equals(MimeTypes.VIDEO_H263)) {
            b = 1;
        }
        return b != 0 ? 1.0d : 1.5d;
    }
}
