package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.ImageFormat;
import android.graphics.PointF;
import android.os.Process;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.fyber.ads.ofw.OfferWallActivity;
import com.json.adqualitysdk.sdk.i.iw;

/* JADX INFO: loaded from: classes4.dex */
public final class gf implements gd {
    private static char[] a = {'c', 55798, 45919, 36069, 26114, 16260, 6644, 62282, 52410, 42575, 32667, 23031, 13151, 3307, 58929, 49041, 39399, 29447, 19597, 9789, 65426, 55784, 45908, 36072, 26169, 16285, 6630, 62306, 52447, 42529, 32647, 23025, 13129, 3277, 58923, 21279, 35466, 57376, 57305, 13693, 27874, 19102, 41020, 40902, 62830, 11433, 2697, 24617, 24539, 46407, 60665, 43630, 29678, 6491, 32636, 42746, 52298, 62388, 6412};
    private static long b = 7029602662279993753L;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5663d = 1;

    private static String a(int i, int i2, char c2) {
        String str;
        synchronized (e.f50) {
            char[] cArr = new char[i];
            e.f51 = 0;
            while (true) {
                int i3 = e.f51;
                if (i3 < i) {
                    cArr[i3] = (char) ((((long) a[i2 + i3]) ^ (((long) i3) * b)) ^ ((long) c2));
                    e.f51 = i3 + 1;
                } else {
                    str = new String(cArr);
                }
            }
        }
        return str;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻐ */
    public final Class mo716() {
        int i = c + 47;
        int i2 = i % 128;
        f5663d = i2;
        int i3 = i % 2;
        int i4 = i2 + 95;
        c = i4 % 128;
        if (!(i4 % 2 != 0)) {
            return OfferWallActivity.class;
        }
        int i5 = 19 / 0;
        return OfferWallActivity.class;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻛ */
    public final String mo717() {
        int i = f5663d + 103;
        c = i % 128;
        int i2 = i % 2;
        String strIntern = a(35 - (ViewConfiguration.getKeyRepeatTimeout() >> 16), ViewConfiguration.getMaximumFlingVelocity() >> 16, (char) (TextUtils.indexOf((CharSequence) "", '0', 0) + 1)).intern();
        int i3 = f5663d + 67;
        c = i3 % 128;
        if ((i3 % 2 != 0 ? (char) 25 : '\"') == '\"') {
            return strIntern;
        }
        int i4 = 48 / 0;
        return strIntern;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ｋ */
    public final iw.e mo718() {
        iw.e eVar = new iw.e(a(16 - TextUtils.indexOf("", "", 0, 0), 35 - (ViewConfiguration.getKeyRepeatDelay() >> 16), (char) ((-16755844) - Color.rgb(0, 0, 0))).intern(), a((ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 4, (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + 51, (char) (43609 - (ViewConfiguration.getTouchSlop() >> 8))).intern());
        int i = c + 55;
        f5663d = i % 128;
        int i2 = i % 2;
        return eVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾇ */
    public final az mo719() {
        bl blVar = new bl(a(ImageFormat.getBitsPerPixel(0) + 6, TextUtils.indexOf((CharSequence) "", '0') + 55, (char) ((TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 32538)).intern());
        int i = f5663d + 125;
        c = i % 128;
        int i2 = i % 2;
        return blVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾒ */
    public final String mo720() {
        int threadPriority;
        int pressedStateDuration;
        int fadingEdgeLength;
        int i = f5663d + 43;
        c = i % 128;
        if (!(i % 2 != 0)) {
            threadPriority = ((Process.getThreadPriority(0) + 20) >> 6) + 5;
            pressedStateDuration = 54 - (ViewConfiguration.getPressedStateDuration() >> 16);
            fadingEdgeLength = 32538 - (ViewConfiguration.getFadingEdgeLength() >> 16);
        } else {
            threadPriority = 5 - ((Process.getThreadPriority(1) >>> 56) >>> 76);
            pressedStateDuration = (ViewConfiguration.getPressedStateDuration() >> 105) + 18;
            fadingEdgeLength = 3263 << (ViewConfiguration.getFadingEdgeLength() * 0);
        }
        return a(threadPriority, pressedStateDuration, (char) fadingEdgeLength).intern();
    }
}
