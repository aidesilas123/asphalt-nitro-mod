package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.json.adqualitysdk.sdk.i.ao;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class aw extends ao.AnonymousClass3 {
    private static char[] c = {'g', 60594, 55804, 50732, 37850, 32527, 19028, 21905};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static long f5271d = 1889024791558483141L;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5272e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5273f = 1;

    public aw(as asVar) {
        m333(asVar);
    }

    private static String a(int i, int i2, char c2) {
        String str;
        synchronized (e.f50) {
            char[] cArr = new char[i];
            e.f51 = 0;
            while (true) {
                int i3 = e.f51;
                if (i3 < i) {
                    cArr[i3] = (char) ((((long) c[i2 + i3]) ^ (((long) i3) * f5271d)) ^ ((long) c2));
                    e.f51 = i3 + 1;
                } else {
                    str = new String(cArr);
                }
            }
        }
        return str;
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final boolean m361() {
        int i = f5272e + 97;
        f5273f = i % 128;
        boolean zOptBoolean = (i % 2 == 0 ? '_' : '$') != '_' ? m332().optBoolean(a(TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 5, Color.alpha(0) + 4, (char) (37821 - ExpandableListView.getPackedPositionType(0L))).intern(), true) : m332().optBoolean(a(TextUtils.indexOf((CharSequence) "", '\b', 1, 0) + 2, 5 >>> Color.alpha(1), (char) (ExpandableListView.getPackedPositionType(1L) * 37821)).intern(), false);
        int i2 = f5273f + 31;
        f5272e = i2 % 128;
        int i3 = i2 % 2;
        return zOptBoolean;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final List<String> m362() {
        List<String> listG;
        int i = f5272e + 113;
        f5273f = i % 128;
        if (!(i % 2 != 0)) {
            listG = m331().g();
            int i2 = 20 / 0;
        } else {
            listG = m331().g();
        }
        int i3 = f5272e + 91;
        f5273f = i3 % 128;
        if ((i3 % 2 == 0 ? '4' : 'b') == 'b') {
            return listG;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final int m363() {
        int i;
        int i2 = f5272e + 67;
        f5273f = i2 % 128;
        if (!(i2 % 2 != 0)) {
            i = m331().i();
            int i3 = 12 / 0;
        } else {
            i = m331().i();
        }
        int i4 = f5272e + 121;
        f5273f = i4 % 128;
        int i5 = i4 % 2;
        return i;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final boolean m364() {
        JSONObject jSONObjectM332;
        String strA;
        int i = f5273f + 83;
        f5272e = i % 128;
        if (!(i % 2 != 0)) {
            jSONObjectM332 = m332();
            strA = a((SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) + 3, (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) - 1, (char) (1 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1))));
        } else {
            jSONObjectM332 = m332();
            strA = a(2 << (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)), (-1) / (ViewConfiguration.getScrollFriction() > 1.0f ? 1 : (ViewConfiguration.getScrollFriction() == 1.0f ? 0 : -1)), (char) ((ViewConfiguration.getScrollFriction() > 2.0f ? 1 : (ViewConfiguration.getScrollFriction() == 2.0f ? 0 : -1)) + 0));
        }
        boolean zOptBoolean = jSONObjectM332.optBoolean(strA.intern(), true);
        int i2 = f5273f + 57;
        f5272e = i2 % 128;
        if ((i2 % 2 != 0 ? '1' : ']') == ']') {
            return zOptBoolean;
        }
        int i3 = 4 / 0;
        return zOptBoolean;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final List<String> m365() {
        int i = f5272e + 83;
        f5273f = i % 128;
        int i2 = i % 2;
        List<String> listH = m331().h();
        int i3 = f5273f + 39;
        f5272e = i3 % 128;
        if (i3 % 2 == 0) {
            return listH;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final int m366() {
        int i = f5273f + 101;
        f5272e = i % 128;
        int i2 = i % 2;
        int iC = m331().c();
        int i3 = f5272e + 27;
        f5273f = i3 % 128;
        int i4 = i3 % 2;
        return iC;
    }
}
