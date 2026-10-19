package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Process;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.facebook.ads.AdSettings;
import com.json.adqualitysdk.sdk.i.iw;

/* JADX INFO: loaded from: classes4.dex */
public final class gb implements gd {
    private static char[] a = {'c', 15286, 30687, 45989, 61186, 11100, 26485, 41610, 57002, 6862, 22037, 37432, 52738, 2660, 17850, 33220, 48574, 63784, 13606, 29000, 44177, 59577, 9426, 24598, 39990, 55382, 5241, 41170, 39687, 55149, 4948, 20400, 35823, 51155, 561, 32267, 47715, 63204, 12932, 28412, 43735, 58634, 8548, 7502, 22967, 38296, '7', 15351, 30594, 33935, 48977, 62264, 14087, 27631, 44987, 58256, 9837};
    private static long b = -375588107402003495L;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5658d = 1;

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
        int i = c + 73;
        f5658d = i % 128;
        if (!(i % 2 == 0)) {
            return AdSettings.class;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻛ */
    public final String mo717() {
        int i = f5658d + 35;
        c = i % 128;
        int i2 = i % 2;
        String strIntern = a(27 - (ViewConfiguration.getScrollDefaultDelay() >> 16), ViewConfiguration.getMaximumFlingVelocity() >> 16, (char) (ViewConfiguration.getLongPressTimeout() >> 16)).intern();
        int i3 = c + 31;
        f5658d = i3 % 128;
        int i4 = i3 % 2;
        return strIntern;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ｋ */
    public final iw.e mo718() {
        iw.e eVar = new iw.e(a(19 - TextUtils.getOffsetBefore("", 0), (ViewConfiguration.getEdgeSlop() >> 16) + 27, (char) (TextUtils.getOffsetAfter("", 0) + 41137)).intern(), a((ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 2, (ViewConfiguration.getTouchSlop() >> 8) + 46, (char) View.combineMeasuredStates(0, 0)).intern());
        int i = c + 25;
        f5658d = i % 128;
        int i2 = i % 2;
        return eVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾇ */
    public final az mo719() {
        bk bkVar = new bk(a(Color.rgb(0, 0, 0) + 16777224, 50 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)), (char) (34025 - (ViewConfiguration.getJumpTapTimeout() >> 16))).intern());
        int i = c + 55;
        f5658d = i % 128;
        if (i % 2 == 0) {
            throw null;
        }
        return bkVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾒ */
    public final String mo720() {
        int i = c + 91;
        f5658d = i % 128;
        String strIntern = (!(i % 2 == 0) ? a((ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 9, 49 - (KeyEvent.getMaxKeyCode() >> 16), (char) (34025 - Drawable.resolveOpacity(0, 0))) : a(35 >> (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)), 67 / (KeyEvent.getMaxKeyCode() + 0), (char) (Drawable.resolveOpacity(1, 1) * 34025))).intern();
        int i2 = c + 29;
        f5658d = i2 % 128;
        int i3 = i2 % 2;
        return strIntern;
    }
}
