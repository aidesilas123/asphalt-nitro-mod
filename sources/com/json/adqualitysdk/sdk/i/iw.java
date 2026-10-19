package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.os.Process;
import android.os.SystemClock;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;

/* JADX INFO: loaded from: classes4.dex */
public class iw {
    private static int a = 189;
    private static int b = 0;
    private static int c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5815d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f5816e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f5817f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f5818g;
    private boolean h;

    public static class a extends iw {
        private static char[] i = {'c', 'o', 'n', 'f', 'j', 's', '.', 'e', 'd'};
        private static char j = 3;

        public a(String str, String str2) {
            super(str, c((byte) (66 - TextUtils.indexOf((CharSequence) "", '0')), "\u0001\u0002\u0000\u0005", 4 - ((Process.getThreadPriority(0) + 20) >> 6)).intern(), str2, c((byte) (107 - TextUtils.getOffsetAfter("", 0)), "\u0005\u0003\u0002\u0000\u0007\b\u0000\u0001", 8 - (ViewConfiguration.getMaximumFlingVelocity() >> 16)).intern(), (byte) 0);
        }

        private static String c(byte b, String str, int i2) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (g.f56) {
                char[] cArr2 = i;
                char c = j;
                char[] cArr3 = new char[i2];
                if (i2 % 2 != 0) {
                    i2--;
                    cArr3[i2] = (char) (cArr[i2] - b);
                }
                if (i2 > 1) {
                    g.f60 = 0;
                    while (true) {
                        int i3 = g.f60;
                        if (i3 >= i2) {
                            break;
                        }
                        g.f58 = cArr[i3];
                        g.f62 = cArr[g.f60 + 1];
                        if (g.f58 == g.f62) {
                            cArr3[g.f60] = (char) (g.f58 - b);
                            cArr3[g.f60 + 1] = (char) (g.f62 - b);
                        } else {
                            g.f59 = g.f58 / c;
                            g.f55 = g.f58 % c;
                            g.f61 = g.f62 / c;
                            g.f57 = g.f62 % c;
                            if (g.f55 == g.f57) {
                                g.f59 = ((g.f59 + c) - 1) % c;
                                g.f61 = ((g.f61 + c) - 1) % c;
                                int i4 = (g.f59 * c) + g.f55;
                                int i5 = (g.f61 * c) + g.f57;
                                int i6 = g.f60;
                                cArr3[i6] = cArr2[i4];
                                cArr3[i6 + 1] = cArr2[i5];
                            } else if (g.f59 == g.f61) {
                                g.f55 = ((g.f55 + c) - 1) % c;
                                g.f57 = ((g.f57 + c) - 1) % c;
                                int i7 = (g.f59 * c) + g.f55;
                                int i8 = (g.f61 * c) + g.f57;
                                int i9 = g.f60;
                                cArr3[i9] = cArr2[i7];
                                cArr3[i9 + 1] = cArr2[i8];
                            } else {
                                int i10 = (g.f59 * c) + g.f57;
                                int i11 = (g.f61 * c) + g.f55;
                                int i12 = g.f60;
                                cArr3[i12] = cArr2[i10];
                                cArr3[i12 + 1] = cArr2[i11];
                            }
                        }
                        g.f60 += 2;
                    }
                }
                str2 = new String(cArr3);
            }
            return str2;
        }
    }

    public static class e extends iw {
        private static char[] i = {'c', 37750, 9820, 47397, 'j', 37738, 9821, 47397, 19530, 57112, 29432, 1484};
        private static long j = 6265993210946294553L;

        public e(String str, String str2) {
            super(str, c((ViewConfiguration.getTapTimeout() >> 16) + 4, ExpandableListView.getPackedPositionGroup(0L), (char) (TextUtils.indexOf((CharSequence) "", '0') + 1)).intern(), str2, c((ViewConfiguration.getFadingEdgeLength() >> 16) + 8, 4 - (ViewConfiguration.getJumpTapTimeout() >> 16), (char) (ViewConfiguration.getTouchSlop() >> 8)).intern(), (byte) 0);
        }

        private static String c(int i2, int i3, char c) {
            String str;
            synchronized (com.json.adqualitysdk.sdk.i.e.f50) {
                char[] cArr = new char[i2];
                com.json.adqualitysdk.sdk.i.e.f51 = 0;
                while (true) {
                    int i4 = com.json.adqualitysdk.sdk.i.e.f51;
                    if (i4 < i2) {
                        cArr[i4] = (char) ((((long) i[i3 + i4]) ^ (((long) i4) * j)) ^ ((long) c));
                        com.json.adqualitysdk.sdk.i.e.f51 = i4 + 1;
                    } else {
                        str = new String(cArr);
                    }
                }
            }
            return str;
        }
    }

    private iw(String str, String str2, String str3, String str4) {
        this.f5815d = str;
        this.f5816e = str2;
        this.f5817f = str3;
        this.f5818g = str4;
        this.h = true;
    }

    /* synthetic */ iw(String str, String str2, String str3, String str4, byte b2) {
        this(str, str2, str3, str4);
    }

    private static String a() {
        int i = c + 39;
        b = i % 128;
        int i2 = i % 2;
        String strMo312 = ao.m303().mo312();
        int i3 = b + 9;
        c = i3 % 128;
        int i4 = i3 % 2;
        return strMo312;
    }

    private static String b(int i, boolean z, int i2, int i3, String str) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (c.f35) {
            char[] cArr2 = new char[i3];
            c.f36 = 0;
            while (true) {
                int i4 = c.f36;
                if (i4 >= i3) {
                    break;
                }
                c.f37 = cArr[i4];
                cArr2[c.f36] = (char) (c.f37 + i);
                int i5 = c.f36;
                cArr2[i5] = (char) (cArr2[i5] - a);
                c.f36 = i5 + 1;
            }
            if (i2 > 0) {
                c.f38 = i2;
                char[] cArr3 = new char[i3];
                System.arraycopy(cArr2, 0, cArr3, 0, i3);
                int i6 = c.f38;
                System.arraycopy(cArr3, 0, cArr2, i3 - i6, i6);
                int i7 = c.f38;
                System.arraycopy(cArr3, i7, cArr2, 0, i3 - i7);
            }
            if (z) {
                char[] cArr4 = new char[i3];
                c.f36 = 0;
                while (true) {
                    int i8 = c.f36;
                    if (i8 >= i3) {
                        break;
                    }
                    cArr4[i8] = cArr2[(i3 - i8) - 1];
                    c.f36 = i8 + 1;
                }
                cArr2 = cArr4;
            }
            str2 = new String(cArr2);
        }
        return str2;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final String m867() {
        int i = c + 71;
        b = i % 128;
        int i2 = i % 2;
        String strIntern = b((ViewConfiguration.getDoubleTapTimeout() >> 16) + 288, true, 4 - Color.green(0), (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 9, "\f\n\u0002\u000fￌ\uffff\u0001\u0002\u0011").intern();
        String strA = a();
        if ((this.h ? '7' : (char) 11) == '7') {
            int i3 = c + 111;
            b = i3 % 128;
            if (i3 % 2 != 0) {
                TextUtils.isEmpty(strA);
                throw null;
            }
            if (!TextUtils.isEmpty(strA)) {
                StringBuilder sb = new StringBuilder();
                sb.append(strIntern);
                sb.append(b(283 - Color.red(0), true, 4 - View.combineMeasuredStates(0, 0), 5 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), "\uffd1\u0018\u0010\u0007").intern());
                sb.append(strA);
                sb.append(b(236 - (ViewConfiguration.getScrollBarSize() >> 8), true, 1 - (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)), 1 - Color.red(0), "\u0000").intern());
                strIntern = sb.toString();
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(strIntern);
        sb2.append(this.f5815d);
        sb2.append(b(235 - Process.getGidForName(""), true, AndroidCharacter.getMirror('0') - '/', 1 - (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)), "\u0000").intern());
        sb2.append(this.f5816e);
        sb2.append(b((SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) + 267, true, 2 - TextUtils.indexOf((CharSequence) "", '0'), (ViewConfiguration.getJumpTapTimeout() >> 16) + 5, "\u001f\u0012\uffdf\uffdf\u0015").intern());
        sb2.append(this.f5817f);
        sb2.append(b(235 - (ViewConfiguration.getDoubleTapTimeout() >> 16), false, Color.argb(0, 0, 0, 0) + 1, KeyEvent.getDeadChar(0, 0) + 1, "\u0000").intern());
        sb2.append(this.f5818g);
        String string = sb2.toString();
        int i4 = c + 5;
        b = i4 % 128;
        int i5 = i4 % 2;
        return string;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m868() {
        int i = c + 69;
        b = i % 128;
        if (!(i % 2 != 0)) {
            this.h = false;
        } else {
            this.h = true;
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String m869() {
        int i = c + 9;
        b = i % 128;
        int i2 = i % 2;
        String strReplace = m867().replace(b(((Process.getThreadPriority(0) + 20) >> 6) + 236, true, 1 - (Process.myTid() >> 22), -TextUtils.lastIndexOf("", '0', 0), "\u0000").intern(), b(235 - (ViewConfiguration.getWindowTouchSlop() >> 8), false, (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), -Process.getGidForName(""), "\u0000").intern());
        int i3 = b + 31;
        c = i3 % 128;
        int i4 = i3 % 2;
        return strReplace;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String m870() {
        int i = b + 59;
        c = i % 128;
        if (i % 2 != 0) {
            return this.f5815d;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m871() {
        int i = b;
        int i2 = i + 105;
        c = i2 % 128;
        int i3 = i2 % 2;
        String str = this.f5817f;
        int i4 = i + 119;
        c = i4 % 128;
        int i5 = i4 % 2;
        return str;
    }
}
