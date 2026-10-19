package com.json.adqualitysdk.sdk.i;

import android.os.Process;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.applovin.exoplayer2.common.base.Ascii;
import com.json.adqualitysdk.sdk.i.iw;
import jp.maio.sdk.android.MaioAds;

/* JADX INFO: loaded from: classes4.dex */
public final class gi implements gd {
    private static char[] a = {'j', 61459, 57576, 53572, 49645, 45446, 41533, 37531, 33643, 29471, 25525, 21615, 17605, 13673, 9486, 5567, 1631, 63226, 59026, 55159, 51185, 47230, 43243, 39050, 35081, 31183, 27261, 'c', 61452, 57512, 53575, 49641, 45452, 41510, 37594, 33642, 29448, 25585, 21548, 17605, 13678, 9477, '7', 61517, 57590, 19655, 48296, 44037, 40428};
    private static long b = 8105213329355370595L;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5665d = 1;

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
        int i = c + 125;
        f5665d = i % 128;
        if (i % 2 != 0) {
            return MaioAds.class;
        }
        int i2 = 45 / 0;
        return MaioAds.class;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻛ */
    public final String mo717() {
        int i = f5665d + 81;
        c = i % 128;
        return (i % 2 == 0 ? a(View.resolveSizeAndState(0, 0, 0) + 27, (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 1, (char) ((ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 1)) : a(View.resolveSizeAndState(1, 1, 1) * 122, 0 >> (ExpandableListView.getPackedPositionForChild(1, 1) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(1, 1) == 0L ? 0 : -1)), (char) ((ExpandableListView.getPackedPositionForChild(0, 1) > 1L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 1) == 1L ? 0 : -1)) * 1))).intern();
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ｋ */
    public final iw.e mo718() {
        iw.e eVar = new iw.e(a(((byte) KeyEvent.getModifierMetaStateMask()) + Ascii.DLE, (ViewConfiguration.getPressedStateDuration() >> 16) + 27, (char) TextUtils.indexOf("", "", 0, 0)).intern(), a((ViewConfiguration.getLongPressTimeout() >> 16) + 3, 42 - (ViewConfiguration.getPressedStateDuration() >> 16), (char) KeyEvent.keyCodeFromString("")).intern());
        int i = c + 23;
        f5665d = i % 128;
        int i2 = i % 2;
        return eVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾇ */
    public final az mo719() {
        bo boVar = new bo(a(4 - KeyEvent.keyCodeFromString(""), 45 - (ViewConfiguration.getJumpTapTimeout() >> 16), (char) (Process.getGidForName("") + 19627)).intern());
        int i = f5665d + 85;
        c = i % 128;
        if (!(i % 2 != 0)) {
            return boVar;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾒ */
    public final String mo720() {
        int i = f5665d + 67;
        c = i % 128;
        int i2 = i % 2;
        String strIntern = a((ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 5, (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + 44, (char) (19626 - ExpandableListView.getPackedPositionType(0L))).intern();
        int i3 = f5665d + 33;
        c = i3 % 128;
        if (!(i3 % 2 != 0)) {
            return strIntern;
        }
        int i4 = 68 / 0;
        return strIntern;
    }
}
