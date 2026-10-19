package com.json.adqualitysdk.sdk.i;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.ImageFormat;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.media.AudioTrack;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.TrafficStats;
import android.net.wifi.SupplicantState;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import android.support.v4.media.session.PlaybackStateCompat;
import android.telephony.TelephonyManager;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.applovin.exoplayer2.common.base.Ascii;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class jx {
    private static JSONObject a = null;
    private static JSONObject b = null;
    private static char[] c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static char f5948d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5949e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5950f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5951g = 1;

    static {
        f();
        a = null;
        int i = f5950f + 85;
        f5951g = i % 128;
        if ((i % 2 == 0 ? (char) 6 : (char) 29) != 29) {
            int i2 = 98 / 0;
        }
    }

    private static synchronized JSONObject a() {
        int i = f5950f + 15;
        f5951g = i % 128;
        int i2 = i % 2;
        if (a == null) {
            JSONObject jSONObject = new JSONObject();
            a = jSONObject;
            try {
                jSONObject.put(h((byte) (TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 121), "ï", 1 - (ViewConfiguration.getEdgeSlop() >> 16)).intern(), -1);
                a.put(e((Process.myPid() >> 22) + 119, true, (ViewConfiguration.getPressedStateDuration() >> 16) + 1, (Process.myTid() >> 22) + 1, "\u0000").intern(), -1);
                int i3 = f5950f + 9;
                f5951g = i3 % 128;
                int i4 = i3 % 2;
            } catch (JSONException unused) {
            }
        }
        return a;
    }

    private static synchronized JSONObject b() {
        JSONObject jSONObject;
        int i = f5951g;
        int i2 = i + 3;
        f5950f = i2 % 128;
        int i3 = i2 % 2;
        jSONObject = b;
        int i4 = i + 77;
        f5950f = i4 % 128;
        int i5 = i4 % 2;
        return jSONObject;
    }

    private static JSONObject c() {
        int i = f5951g + 105;
        f5950f = i % 128;
        if (i % 2 == 0) {
            return ju.m962(b());
        }
        ju.m962(b());
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x009d A[Catch: all -> 0x00be, TRY_LEAVE, TryCatch #3 {all -> 0x00be, blocks: (B:12:0x001c, B:14:0x003b, B:27:0x0069, B:28:0x009d, B:35:0x00b6, B:20:0x0047, B:23:0x005b), top: B:63:0x001c, outer: #0, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0104 A[Catch: all -> 0x0102, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:10:0x0010, B:22:0x0051, B:34:0x00ac, B:38:0x00bf, B:43:0x0104, B:55:0x011f, B:51:0x011b, B:12:0x001c, B:14:0x003b, B:27:0x0069, B:28:0x009d, B:35:0x00b6), top: B:58:0x0010, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0117 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0119  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static synchronized void d(android.content.Context r9) {
        /*
            Method dump skipped, instruction units count: 290
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.jx.d(android.content.Context):void");
    }

    private static String e(int i, boolean z, int i2, int i3, String str) {
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
                cArr2[i5] = (char) (cArr2[i5] - f5949e);
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

    static void f() {
        f5948d = (char) 6;
        c = new char[]{'s', 'i', 'z', 'e', 'w', 'n', 'd', 'o', 'D', 'v', 'c', 'U', 't', 'l', 'E', 'r', ' ', 'g', 'M', 'f', 'm', 'a', 'y', 'u', ':', 'p', 'x', 'k', 'h', 'b', 'j', '{', '|', '}', '~', Ascii.MAX};
        f5949e = 15;
    }

    private static int g() {
        JSONObject jSONObjectI;
        String strE;
        int i = f5951g + 87;
        f5950f = i % 128;
        if ((i % 2 != 0 ? ')' : (char) 14) != ')') {
            jSONObjectI = i();
            strE = e(119 - TextUtils.indexOf("", "", 0, 0), true, 1 - (ViewConfiguration.getLongPressTimeout() >> 16), (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)), "\u0000");
        } else {
            jSONObjectI = i();
            strE = e(34 % TextUtils.indexOf("", "", 1, 0), true, (ViewConfiguration.getLongPressTimeout() - 83) + 0, (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)), "\u0000");
        }
        return jSONObjectI.optInt(strE.intern());
    }

    private static String h(byte b2, String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (g.f56) {
            char[] cArr2 = c;
            char c2 = f5948d;
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

    private static JSONObject i() {
        int i = f5950f + 27;
        f5951g = i % 128;
        int i2 = i % 2;
        JSONObject jSONObjectM962 = ju.m962(a());
        int i3 = f5951g + 93;
        f5950f = i3 % 128;
        if (!(i3 % 2 != 0)) {
            return jSONObjectM962;
        }
        throw null;
    }

    private static void j(int i, int i2) {
        int i3 = f5951g;
        int i4 = i3 + 35;
        f5950f = i4 % 128;
        int i5 = i4 % 2;
        if ((i > 0 ? ',' : (char) 2) != 2) {
            int i6 = i3 + 5;
            f5950f = i6 % 128;
            int i7 = i6 % 2;
            if ((i2 > 0 ? '&' : 'W') != '&') {
                return;
            }
            try {
                JSONObject jSONObjectA = a();
                jSONObjectA.put(h((byte) (120 - Color.red(0)), "ï", 1 - View.combineMeasuredStates(0, 0)).intern(), i2);
                jSONObjectA.put(e(TextUtils.getTrimmedLength("") + 119, true, 1 - (ViewConfiguration.getDoubleTapTimeout() >> 16), 1 - View.MeasureSpec.makeMeasureSpec(0, 0), "\u0000").intern(), i);
                int i8 = f5951g + 99;
                f5950f = i8 % 128;
                int i9 = i8 % 2;
            } catch (Throwable th) {
                m.m1032(h((byte) (51 - View.MeasureSpec.getSize(0)), "\t\u0002\u0007\u0003\t\u0004\u0006\u0011\u0007\u0013¦", 11 - View.getDefaultSize(0, 0)).intern(), e(Color.red(0) + 113, false, 11 - TextUtils.getOffsetAfter("", 0), 25 - KeyEvent.keyCodeFromString(""), "\u0011\u0001\u0010\u0003\u0003\fﾾ\u0011\u0007\u0018\u0003￣\u0010\u0010\r\u0010ﾾ\u0011\u0003\u0012\u0012\u0007\f\u0005ﾾ").intern(), th);
            }
        }
    }

    private static synchronized void k(JSONObject jSONObject) {
        int i = f5951g + 57;
        f5950f = i % 128;
        if ((i % 2 != 0 ? (char) 28 : (char) 24) == 28) {
            b = jSONObject;
            throw null;
        }
        b = jSONObject;
    }

    private static int l() {
        int i = f5951g + 103;
        f5950f = i % 128;
        int i2 = i % 2;
        int iOptInt = i().optInt(h((byte) (View.MeasureSpec.getSize(0) + 120), "ï", 1 - View.MeasureSpec.getMode(0)).intern());
        int i3 = f5951g + 61;
        f5950f = i3 % 128;
        int i4 = i3 % 2;
        return iOptInt;
    }

    private static void m(DisplayMetrics displayMetrics) {
        int i = f5950f;
        int i2 = i + 77;
        f5951g = i2 % 128;
        int i3 = i2 % 2;
        if (displayMetrics != null) {
            int i4 = i + 101;
            f5951g = i4 % 128;
            if ((i4 % 2 == 0 ? 'L' : '?') != 'L') {
                j(displayMetrics.heightPixels, displayMetrics.widthPixels);
            } else {
                j(displayMetrics.heightPixels, displayMetrics.widthPixels);
                throw null;
            }
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static String m975() {
        int i = f5951g + 65;
        f5950f = i % 128;
        if (!(i % 2 != 0)) {
            return Build.VERSION.RELEASE;
        }
        String str = Build.VERSION.RELEASE;
        throw null;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static void m976(Context context, JSONObject jSONObject, boolean z) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(e(TextUtils.lastIndexOf("", '0') + 125, true, 8 - (ViewConfiguration.getTouchSlop() >> 8), ((byte) KeyEvent.getModifierMetaStateMask()) + Ascii.CR, "￼\u0007\ufff6\ufff8\u0001\u0001\u0002\ufff6\f\u0007￼\t").intern());
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(h((byte) ((PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + 101), "\u001a\u001d\u000b\u0001Ê", 5 - KeyEvent.keyCodeFromString("")).intern());
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(0);
            if ((networkInfo != null ? '>' : '+') != '>') {
                return;
            }
            jSONObject.put(e(TextUtils.indexOf("", "", 0, 0) + 124, false, (ViewConfiguration.getMaximumFlingVelocity() >> 16) + 4, 4 - (Process.myPid() >> 22), "\u0000\ufff5\u0006\u0007").intern(), networkInfo.getState());
            if ((networkInfo.getState() == NetworkInfo.State.CONNECTED ? '<' : 'R') != 'R') {
                int i = f5950f + 31;
                f5951g = i % 128;
                int i2 = i % 2;
                jSONObject.put(h((byte) (53 - (ViewConfiguration.getDoubleTapTimeout() >> 16)), "\u0017\u001a\r\u0018\u009e", ImageFormat.getBitsPerPixel(0) + 6).intern(), networkInfo.getType());
                jSONObject.put(e(123 - TextUtils.getTrimmedLength(""), false, Drawable.resolveOpacity(0, 0) + 4, 4 - Color.green(0), "\u0001\ufff6\b\u0004").intern(), networkInfo.getTypeName());
                jSONObject.put(e(121 - TextUtils.lastIndexOf("", '0'), false, 5 - (ViewConfiguration.getScrollBarFadeDuration() >> 16), 4 - TextUtils.indexOf((CharSequence) "", '0', 0), "\u0002\ufff7\b\u0005\ufffe").intern(), networkInfo.getSubtype());
                jSONObject.put(e(123 - (ViewConfiguration.getPressedStateDuration() >> 16), false, -ImageFormat.getBitsPerPixel(0), 4 - (ViewConfiguration.getTouchSlop() >> 8), "\u0004\u0001\ufff6\u0007").intern(), networkInfo.getSubtypeName());
                jSONObject.put(h((byte) (18 - Process.getGidForName("")), "\u0017\u001a\u0001\u000b", TextUtils.lastIndexOf("", '0', 0) + 5).intern(), telephonyManager.getNetworkOperator());
                jSONObject.put(h((byte) (KeyEvent.keyCodeFromString("") + 10), "\u0017\u001a\u000b\u0001", 4 - View.combineMeasuredStates(0, 0)).intern(), telephonyManager.getNetworkOperatorName());
                jSONObject.put(e(View.combineMeasuredStates(0, 0) + 116, true, TextUtils.lastIndexOf("", '0', 0) + 3, 5 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)), "�\b\ufffe\ufffe").intern(), telephonyManager.getNetworkCountryIso());
                if (!(z)) {
                    return;
                }
                int i3 = f5950f + 97;
                f5951g = i3 % 128;
                int i4 = i3 % 2;
                jSONObject.put(h((byte) ((ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 95), "\u0017\u001a\u0001\u0006", 4 - TextUtils.getTrimmedLength("")).intern(), telephonyManager.getSimOperator());
                jSONObject.put(h((byte) (63 - TextUtils.indexOf("", "")), "\u0017\u001a\u0001\u0000", 5 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1))).intern(), telephonyManager.getSimOperatorName());
            }
        } catch (Throwable th) {
            m.m1032(h((byte) (50 - TextUtils.indexOf((CharSequence) "", '0', 0, 0)), "\t\u0002\u0007\u0003\t\u0004\u0006\u0011\u0007\u0013¦", Gravity.getAbsoluteGravity(0, 0) + 11).intern(), h((byte) ((SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) + 45), "\u000f\u0010\r\t\u0010\u0011\u0012\t\u0007\u0000\u000b\u0017\u000e\u0016\u000b\u0019\u0007\u0013\u0004\u000f\u0002\u0000\u0019\r\u0011\r\n\r\t\u000f\u0004\u0000¢", 32 - TextUtils.indexOf((CharSequence) "", '0', 0, 0)).intern(), th);
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static void m977(JSONObject jSONObject) {
        int i = f5951g + 83;
        f5950f = i % 128;
        int i2 = i % 2;
        try {
            jSONObject.put(h((byte) (TextUtils.getTrimmedLength("") + 83), "\u0001\u0002\u0003\u0004", 4 - Color.argb(0, 0, 0, 0)).intern(), i());
            int i3 = f5950f + 83;
            f5951g = i3 % 128;
            int i4 = i3 % 2;
        } catch (JSONException unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0020  */
    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean m978(int r4, int r5) {
        /*
            r0 = 0
            if (r4 < 0) goto L43
            int r1 = com.json.adqualitysdk.sdk.i.jx.f5951g
            int r1 = r1 + 11
            int r2 = r1 % 128
            com.json.adqualitysdk.sdk.i.jx.f5950f = r2
            int r1 = r1 % 2
            r2 = 98
            if (r1 == 0) goto L14
            r1 = 98
            goto L16
        L14:
            r1 = 52
        L16:
            if (r1 == r2) goto L1b
            if (r5 < 0) goto L43
            goto L20
        L1b:
            r1 = 38
            int r1 = r1 / r0
            if (r5 < 0) goto L43
        L20:
            int r1 = l()
            r2 = 58
            r3 = 1
            if (r4 > r1) goto L2c
            r4 = 58
            goto L2d
        L2c:
            r4 = 1
        L2d:
            if (r4 == r2) goto L30
            goto L43
        L30:
            int r4 = g()
            if (r5 > r4) goto L43
            int r4 = com.json.adqualitysdk.sdk.i.jx.f5950f
            int r4 = r4 + 55
            int r5 = r4 % 128
            com.json.adqualitysdk.sdk.i.jx.f5951g = r5
            int r4 = r4 % 2
            return r3
        L41:
            r4 = move-exception
            throw r4
        L43:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.jx.m978(int, int):boolean");
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static synchronized void m979(Activity activity) {
        int i = f5950f + 79;
        f5951g = i % 128;
        if (i % 2 == 0) {
            throw null;
        }
        if ((activity != null ? (char) 6 : (char) 30) != 30) {
            d(activity.getApplicationContext());
            int i2 = f5950f + 105;
            f5951g = i2 % 128;
            int i3 = i2 % 2;
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static void m980(Context context, JSONObject jSONObject) {
        String strIntern;
        boolean z;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(h((byte) (ImageFormat.getBitsPerPixel(0) + 114), "\u0016\t\r\u0000\u0007\u0003\u0010\u0012", Color.argb(0, 0, 0, 0) + 8).intern());
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            jSONObject.put(h((byte) (47 - Drawable.resolveOpacity(0, 0)), "\u009c\u009c\u001b\u000f", AndroidCharacter.getMirror('0') - ',').intern(), memoryInfo.availMem / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
            jSONObject.put(e(124 - ((Process.getThreadPriority(0) + 20) >> 6), false, (ViewConfiguration.getTouchSlop() >> 8) + 1, 4 - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)), "\ufffb\u0000\u0000\u0007").intern(), memoryInfo.threshold / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
            if (!(!memoryInfo.lowMemory)) {
                int i = f5951g + 15;
                f5950f = i % 128;
                if (i % 2 != 0) {
                    strIntern = e(TextUtils.getCapsMode("", 1, 1) + 96, true, 2 % (ExpandableListView.getPackedPositionForChild(1, 1) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(1, 1) == 0L ? 0 : -1)), View.resolveSize(1, 1) + 4, "�\ufffe\ufffe\b").intern();
                    z = memoryInfo.lowMemory;
                } else {
                    strIntern = e(126 - TextUtils.getCapsMode("", 0, 0), true, (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 4, 4 - View.resolveSize(0, 0), "�\ufffe\ufffe\b").intern();
                    z = memoryInfo.lowMemory;
                }
                jSONObject.put(strIntern, z);
            }
            if (Build.VERSION.SDK_INT >= 16) {
                jSONObject.put(e(127 - ExpandableListView.getPackedPositionGroup(0L), true, (Process.myTid() >> 22) + 4, 3 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)), "\u0004\u0004��").intern(), memoryInfo.totalMem / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
            }
            int i2 = f5950f + 53;
            f5951g = i2 % 128;
            int i3 = i2 % 2;
        } catch (Throwable th) {
            String strIntern2 = h((byte) ((SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) + 50), "\t\u0002\u0007\u0003\t\u0004\u0006\u0011\u0007\u0013¦", (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 10).intern();
            StringBuilder sb = new StringBuilder();
            sb.append(h((byte) ((-16777190) - Color.rgb(0, 0, 0)), "\u000f\u0010\r\t\u0010\u0011\u000f\u0005\u008e\u008e\u0002\u0000\f\u0011\u0015\u0002\u0013\b\u0010\u0015\u0011\u0016\u0003\u0012\u000f\u0005\u001c\f", (ViewConfiguration.getScrollBarSize() >> 8) + 28).intern());
            sb.append(th.getLocalizedMessage());
            m.m1031(strIntern2, sb.toString());
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static void m981(JSONObject jSONObject) {
        int i = f5950f + 63;
        f5951g = i % 128;
        if (i % 2 == 0) {
            c();
            throw null;
        }
        JSONObject jSONObjectC = c();
        if ((jSONObjectC != null ? '\"' : '!') != '!') {
            ju.m960(jSONObject, jSONObjectC);
        }
        int i2 = f5950f + 15;
        f5951g = i2 % 128;
        if (!(i2 % 2 == 0)) {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m982(Context context, JSONObject jSONObject) {
        try {
            if (!(!js.m946(context, e(MotionEvent.axisFromString("") + 105, true, 11 - TextUtils.getOffsetBefore("", 0), 36 - ((Process.getThreadPriority(0) + 20) >> 6), "\u0019\f\u0017ￕ\u000b\u0010\u0016\u0019\u000b\u0015\b￬\ufffb￨\ufffb\ufffa\u0006\ufff0￭\ufff0\ufffe\u0006\ufffa\ufffa￬￪￪￨ￕ\u0015\u0016\u0010\u001a\u001a\u0010\u0014").intern()))) {
                int i = f5951g + 29;
                f5950f = i % 128;
                int i2 = i % 2;
                WifiInfo connectionInfo = ((WifiManager) context.getSystemService(h((byte) (20 - (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1))), "\u0005\u0002\u0019\u0007", 3 - TextUtils.indexOf((CharSequence) "", '0', 0)).intern())).getConnectionInfo();
                jSONObject.put(e(128 - (ViewConfiguration.getLongPressTimeout() >> 16), true, View.getDefaultSize(0, 0) + 1, (-16777212) - Color.rgb(0, 0, 0), "\u0006\u0003\u0002\ufff5").intern(), connectionInfo.getSupplicantState());
                if ((connectionInfo.getSupplicantState() == SupplicantState.COMPLETED ? 'G' : 'V') != 'V') {
                    jSONObject.put(h((byte) ((TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 27), "\u0001\u0016\f\u0003", 4 - (ViewConfiguration.getMaximumFlingVelocity() >> 16)).intern(), connectionInfo.getRssi());
                    jSONObject.put(h((byte) (120 - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1))), "\u0001\u0016\u0001\u0018", 4 - (ViewConfiguration.getMaximumFlingVelocity() >> 16)).intern(), connectionInfo.getLinkSpeed());
                    int i3 = f5950f + 63;
                    f5951g = i3 % 128;
                    int i4 = i3 % 2;
                }
            }
        } catch (Throwable th) {
            m.m1032(h((byte) (50 - Process.getGidForName("")), "\t\u0002\u0007\u0003\t\u0004\u0006\u0011\u0007\u0013¦", (ViewConfiguration.getLongPressTimeout() >> 16) + 11).intern(), e(KeyEvent.normalizeMetaState(0) + 109, true, Color.blue(0) + 2, Color.blue(0) + 31, "\u0014\uffe7\u0016\u0010\u0007\u0018\u0007ￂ\u0011\u0016ￂ\u0011\b\u0010\u000bￂ\u000b\b\u000b\u0019ￂ\t\u0010\u000b\u0006\u0006\u0003ￂ\u0014\u0011\u0014").intern(), th);
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m983(Intent intent) {
        int intExtra;
        JSONObject jSONObject = new JSONObject();
        if ((intent != null ? '+' : (char) 23) != 23) {
            int i = f5950f + 43;
            f5951g = i % 128;
            int i2 = i % 2;
            try {
                jSONObject.put(h((byte) (36 - View.MeasureSpec.makeMeasureSpec(0, 0)), "\u0018\u0011\u001f\u0013", 4 - (ViewConfiguration.getWindowTouchSlop() >> 8)).intern(), intent.hasExtra(h((byte) (23 - KeyEvent.keyCodeFromString("")), "\u001f\u0013\u001d\u0017\u000f\u0005{", TextUtils.indexOf("", "", 0) + 7).intern()) ? intent.getIntExtra(h((byte) (23 - View.getDefaultSize(0, 0)), "\u001f\u0013\u001d\u0017\u000f\u0005{", ExpandableListView.getPackedPositionGroup(0L) + 7).intern(), -1) : -1);
                if (intent.hasExtra(h((byte) (61 - TextUtils.getOffsetAfter("", 0)), "\u000f\u0001\u000f\t©", 4 - ImageFormat.getBitsPerPixel(0)).intern())) {
                    int i3 = f5950f + 67;
                    f5951g = i3 % 128;
                    int i4 = i3 % 2;
                    intExtra = intent.getIntExtra(h((byte) ((ViewConfiguration.getScrollBarFadeDuration() >> 16) + 61), "\u000f\u0001\u000f\t©", (-16777211) - Color.rgb(0, 0, 0)).intern(), -1);
                } else {
                    intExtra = -1;
                }
                jSONObject.put(e(124 - ((byte) KeyEvent.getModifierMetaStateMask()), false, 3 - Process.getGidForName(""), (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 3, "\ufff4\u0006\ufffe\b").intern(), Math.round((intExtra * 100.0f) / (intent.hasExtra(h((byte) (5 - Process.getGidForName("")), "\u0004\u0006\u0013\u000fk", Color.blue(0) + 5).intern()) ? intent.getIntExtra(h((byte) (View.combineMeasuredStates(0, 0) + 6), "\u0004\u0006\u0013\u000fk", 5 - Color.green(0)).intern(), -1) : -1)));
                int i5 = f5951g + 81;
                f5950f = i5 % 128;
                int i6 = i5 % 2;
            } catch (Throwable th) {
                String strIntern = h((byte) (51 - KeyEvent.getDeadChar(0, 0)), "\t\u0002\u0007\u0003\t\u0004\u0006\u0011\u0007\u0013¦", TextUtils.getCapsMode("", 0, 0) + 11).intern();
                StringBuilder sb = new StringBuilder();
                sb.append(h((byte) (25 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1))), "\u000f\u0010\r\t\u0010\u0011\u0012\t\u0007\u0000\u000b\u0017\u0011\u001c\u0012\u000f\u000f\u0000\u0010\u0015\u0011\u000e\t\u000f\u0001\u000f\u0004\f\r\u0006\f\"\u0001\u0006\u0000\u001d8", 37 - (ViewConfiguration.getFadingEdgeLength() >> 16)).intern());
                sb.append(th.getLocalizedMessage());
                m.m1031(strIntern, sb.toString());
            }
        } else {
            int i52 = f5951g + 81;
            f5950f = i52 % 128;
            int i62 = i52 % 2;
        }
        k(jSONObject);
        int i7 = f5951g + 117;
        f5950f = i7 % 128;
        if (i7 % 2 == 0) {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m984(Application application) {
        if ((application != null ? '^' : 'S') == '^') {
            int i = f5951g + 13;
            f5950f = i % 128;
            boolean z = i % 2 == 0;
            d(application.getApplicationContext());
            if (!z) {
                throw null;
            }
        }
        int i2 = f5951g + 45;
        f5950f = i2 % 128;
        if (i2 % 2 == 0) {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m985(JSONObject jSONObject) {
        int i = f5950f + 43;
        f5951g = i % 128;
        try {
            if (!(i % 2 != 0)) {
                TrafficStats.getTotalRxBytes();
                System.currentTimeMillis();
                System.currentTimeMillis();
                throw null;
            }
            long totalRxBytes = TrafficStats.getTotalRxBytes();
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            if ((totalRxBytes != -1 ? 'T' : '.') != '.') {
                int i2 = f5950f + 47;
                f5951g = i2 % 128;
                int i3 = i2 % 2;
                long totalRxBytes2 = TrafficStats.getTotalRxBytes();
                jSONObject.put(h((byte) (51 - TextUtils.getTrimmedLength("")), "\u0000\u0005\u0001\u0018", 3 - MotionEvent.axisFromString("")).intern(), Math.round((totalRxBytes2 - totalRxBytes) * (1000.0f / (jCurrentTimeMillis2 - jCurrentTimeMillis))));
                jSONObject.put(h((byte) ((-16777155) - Color.rgb(0, 0, 0)), "\u0000\u0005\u000e\u001b", 5 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1))).intern(), totalRxBytes2);
            }
            int i4 = f5950f + 65;
            f5951g = i4 % 128;
            int i5 = i4 % 2;
        } catch (Throwable th) {
            m.m1032(h((byte) (51 - (ViewConfiguration.getKeyRepeatDelay() >> 16)), "\t\u0002\u0007\u0003\t\u0004\u0006\u0011\u0007\u0013¦", 11 - (ViewConfiguration.getJumpTapTimeout() >> 16)).intern(), h((byte) ((ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) + 45), "\u000f\u0010\r\t\u0010\u0011\u000f\u0005¡¡\u0002\u0000\f\u0011\u0007\u001c\u0016\u0011\u0017\u0003\n\f\u0000\u0004\u0010\u0000\t\r\u001c\u000f\u0012\u0005\u0017\u000f\u0092", 36 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1))).intern(), th);
        }
    }
}
