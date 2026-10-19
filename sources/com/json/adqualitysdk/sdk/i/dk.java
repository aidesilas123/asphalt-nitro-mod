package com.json.adqualitysdk.sdk.i;

import android.os.Process;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class dk {
    private static char[] a = {'m', 'a', 'i', 'n', 'T', 'h', 'r', 'e', 'd', 'f', 't', 'M', 'o', 'p', 'q', 's'};
    private static char b = 4;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5538d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f5539e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f5540f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f5541g;

    public dk(JSONObject jSONObject) {
        this.f5539e = jSONObject.optBoolean(a((byte) (((Process.getThreadPriority(0) + 20) >> 6) + 86), "\u0001\u0002\u0003\u0000\u0005\u0006\u0007\u0004\u0000\t", ExpandableListView.getPackedPositionType(0L) + 10).intern());
        this.f5540f = jSONObject.optBoolean(a((byte) ((ViewConfiguration.getDoubleTapTimeout() >> 16) + 117), "\u0005\r\u000b\u0006\u0007\n\u0002\u0003ã", 9 - (ViewConfiguration.getPressedStateDuration() >> 16)).intern());
        this.f5541g = dq.m680(jSONObject.optString(a((byte) (45 - (ViewConfiguration.getScrollDefaultDelay() >> 16)), "\u0003\u0004\t\u0006\u0000\f", (ViewConfiguration.getKeyRepeatTimeout() >> 16) + 6).intern()));
    }

    private static String a(byte b2, String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (g.f56) {
            char[] cArr2 = a;
            char c2 = b;
            char[] cArr3 = new char[i];
            if (i % 2 != 0) {
                i--;
                cArr3[i] = (char) (cArr[i] - b2);
            }
            if (i > 1) {
                g.f60 = 0;
                while (true) {
                    int i2 = g.f60;
                    if (i2 >= i) {
                        break;
                    }
                    g.f58 = cArr[i2];
                    g.f62 = cArr[g.f60 + 1];
                    if (g.f58 == g.f62) {
                        cArr3[g.f60] = (char) (g.f58 - b2);
                        cArr3[g.f60 + 1] = (char) (g.f62 - b2);
                    } else {
                        g.f59 = g.f58 / c2;
                        g.f55 = g.f58 % c2;
                        g.f61 = g.f62 / c2;
                        g.f57 = g.f62 % c2;
                        if (g.f55 == g.f57) {
                            g.f59 = ((g.f59 + c2) - 1) % c2;
                            g.f61 = ((g.f61 + c2) - 1) % c2;
                            int i3 = (g.f59 * c2) + g.f55;
                            int i4 = (g.f61 * c2) + g.f57;
                            int i5 = g.f60;
                            cArr3[i5] = cArr2[i3];
                            cArr3[i5 + 1] = cArr2[i4];
                        } else if (g.f59 == g.f61) {
                            g.f55 = ((g.f55 + c2) - 1) % c2;
                            g.f57 = ((g.f57 + c2) - 1) % c2;
                            int i6 = (g.f59 * c2) + g.f55;
                            int i7 = (g.f61 * c2) + g.f57;
                            int i8 = g.f60;
                            cArr3[i8] = cArr2[i6];
                            cArr3[i8 + 1] = cArr2[i7];
                        } else {
                            int i9 = (g.f59 * c2) + g.f57;
                            int i10 = (g.f61 * c2) + g.f55;
                            int i11 = g.f60;
                            cArr3[i11] = cArr2[i9];
                            cArr3[i11 + 1] = cArr2[i10];
                        }
                    }
                    g.f60 += 2;
                }
            }
            str2 = new String(cArr3);
        }
        return str2;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final String m660() {
        int i = f5538d;
        int i2 = i + 35;
        c = i2 % 128;
        int i3 = i2 % 2;
        String str = this.f5541g;
        int i4 = i + 93;
        c = i4 % 128;
        int i5 = i4 % 2;
        return str;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final boolean m661() {
        int i = c;
        int i2 = i + 125;
        f5538d = i2 % 128;
        if (!(i2 % 2 != 0)) {
            throw null;
        }
        boolean z = this.f5540f;
        int i3 = i + 47;
        f5538d = i3 % 128;
        int i4 = i3 % 2;
        return z;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final boolean m662() {
        int i = f5538d + 79;
        c = i % 128;
        if ((i % 2 != 0 ? (char) 1 : '-') == '-') {
            return this.f5539e;
        }
        int i2 = 22 / 0;
        return this.f5539e;
    }
}
