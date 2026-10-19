package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class dj {
    private static long a = 0;
    private static int b = 0;
    private static char c = 26501;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5534d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5535e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f5536f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f5537g;
    private String h;
    private String i;
    private boolean j;

    public dj(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.f5536f = jSONObject.optString(a("⥷駩趩ꔛ", "\u0000\u0000\u0000\u0000", (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) - 1449531096, (char) (ExpandableListView.getPackedPositionChild(0L) + 1), "ͭ栴垎㿱\udd74뉓擰").intern());
            this.f5537g = jSONObject.optString(a("䊲࿘禺ӟ", "\u0000\u0000\u0000\u0000", ViewConfiguration.getScrollBarSize() >> 8, (char) (Color.rgb(0, 0, 0) + 16834425), "髆闌ꋟ燠\u0dd7믽").intern());
            this.h = jSONObject.optString(a("歳ꉮ\uf48bᰉ", "\u0000\u0000\u0000\u0000", TextUtils.indexOf((CharSequence) "", '0') - 1952289172, (char) (2548 - (KeyEvent.getMaxKeyCode() >> 16)), "蛝쉧࿑\u2457ፋ").intern());
            this.i = jSONObject.optString(a("♿恢͛䥔", "\u0000\u0000\u0000\u0000", ExpandableListView.getPackedPositionType(0L) + 1533043238, (char) (1 - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1))), "ᝢ\ue676諹\u0bc3链㥗㊧").intern());
            this.j = jSONObject.optBoolean(a("\u0efe돊弉㊎", "\u0000\u0000\u0000\u0000", ViewConfiguration.getMaximumDrawingCacheSize() >> 24, (char) ExpandableListView.getPackedPositionGroup(0L), "縐㉽䃌㼭䋼Ḑἧఱ粃퇟").intern());
        }
    }

    private static String a(String str, String str2, int i, char c2, String str3) {
        String str4;
        Object charArray = str3;
        if (str3 != null) {
            charArray = str3.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        Object charArray2 = str2;
        if (str2 != null) {
            charArray2 = str2.toCharArray();
        }
        char[] cArr2 = (char[]) charArray2;
        Object charArray3 = str;
        if (str != null) {
            charArray3 = str.toCharArray();
        }
        char[] cArr3 = (char[]) charArray3;
        synchronized (j.f124) {
            char[] cArr4 = (char[]) cArr3.clone();
            char[] cArr5 = (char[]) cArr2.clone();
            cArr4[0] = (char) (c2 ^ cArr4[0]);
            cArr5[2] = (char) (cArr5[2] + ((char) i));
            int length = cArr.length;
            char[] cArr6 = new char[length];
            j.f125 = 0;
            while (true) {
                int i2 = j.f125;
                if (i2 < length) {
                    int i3 = (i2 + 2) % 4;
                    int i4 = (i2 + 3) % 4;
                    char c3 = (char) (((cArr4[i2 % 4] * 32718) + cArr5[i3]) % 65535);
                    j.f126 = c3;
                    cArr5[i4] = (char) (((cArr4[i4] * 32718) + cArr5[i3]) / 65535);
                    cArr4[i4] = c3;
                    int i5 = j.f125;
                    cArr6[i5] = (char) (((((long) (cArr[i5] ^ cArr4[i4])) ^ a) ^ ((long) b)) ^ ((long) c));
                    j.f125 = i5 + 1;
                } else {
                    str4 = new String(cArr6);
                }
            }
        }
        return str4;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final String m655() {
        int i = f5534d;
        int i2 = i + 33;
        f5535e = i2 % 128;
        int i3 = i2 % 2;
        String str = this.f5536f;
        int i4 = i + 25;
        f5535e = i4 % 128;
        int i5 = i4 % 2;
        return str;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final boolean m656() {
        int i = f5534d + 31;
        int i2 = i % 128;
        f5535e = i2;
        int i3 = i % 2;
        boolean z = this.j;
        int i4 = i2 + 43;
        f5534d = i4 % 128;
        int i5 = i4 % 2;
        return z;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String m657() {
        int i = f5534d + 45;
        int i2 = i % 128;
        f5535e = i2;
        int i3 = i % 2;
        String str = this.i;
        int i4 = i2 + 85;
        f5534d = i4 % 128;
        if (i4 % 2 != 0) {
            throw null;
        }
        return str;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String m658() {
        String str;
        int i = f5534d + 97;
        int i2 = i % 128;
        f5535e = i2;
        if (!(i % 2 == 0)) {
            str = this.f5537g;
        } else {
            str = this.f5537g;
            int i3 = 27 / 0;
        }
        int i4 = i2 + 51;
        f5534d = i4 % 128;
        if ((i4 % 2 != 0 ? (char) 4 : '\b') != 4) {
            return str;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m659() {
        int i = f5535e + 71;
        f5534d = i % 128;
        if ((i % 2 != 0 ? (char) 30 : 'L') != 30) {
            return this.h;
        }
        throw null;
    }
}
