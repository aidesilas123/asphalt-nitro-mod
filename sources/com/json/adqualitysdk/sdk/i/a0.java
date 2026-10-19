package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.media.AudioTrack;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.json.b4;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
final class a0 {
    private static long a = -1985224976167341206L;
    private static char[] b = {'E', 'r', 'o', ' ', 's', 'y', 'n', 'c', 'h', 'i', 'z', 'g', 'e', 'v', 't', 'u', 'd', 'l', 'a', 'T', 'F', 'G', 'H', 'I', 'J'};
    private static char c = 5;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5122d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5123e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Boolean f5124f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f5125g;
    private long h;
    private long i;
    private long j;
    private int k;

    final class a implements aq {
        private static char[] a = {285, 306, 310, 302, 316, 317, 298, 313, 284, 322, 311, 300, 305, 315, 312, 323, 270, 233, 304, 319};
        private static int b = 201;
        private static boolean c = true;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f5126d = true;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static int f5127e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static int f5128f = 1;

        a() {
        }

        private static String a(int[] iArr, String str, int i, String str2) throws UnsupportedEncodingException {
            Object bytes = str2;
            if (str2 != null) {
                bytes = str2.getBytes("ISO-8859-1");
            }
            byte[] bArr = (byte[]) bytes;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (k.f131) {
                char[] cArr2 = a;
                int i2 = b;
                if (f5126d) {
                    int length = bArr.length;
                    k.f129 = length;
                    char[] cArr3 = new char[length];
                    k.f130 = 0;
                    while (k.f130 < k.f129) {
                        int i3 = k.f130;
                        int i4 = k.f129 - 1;
                        int i5 = k.f130;
                        cArr3[i3] = (char) (cArr2[bArr[i4 - i5] + i] - i2);
                        k.f130 = i5 + 1;
                    }
                    return new String(cArr3);
                }
                if (c) {
                    int length2 = cArr.length;
                    k.f129 = length2;
                    char[] cArr4 = new char[length2];
                    k.f130 = 0;
                    while (k.f130 < k.f129) {
                        int i6 = k.f130;
                        int i7 = k.f129 - 1;
                        int i8 = k.f130;
                        cArr4[i6] = (char) (cArr2[cArr[i7 - i8] - i] - i2);
                        k.f130 = i8 + 1;
                    }
                    return new String(cArr4);
                }
                int length3 = iArr.length;
                k.f129 = length3;
                char[] cArr5 = new char[length3];
                k.f130 = 0;
                while (k.f130 < k.f129) {
                    int i9 = k.f130;
                    int i10 = k.f129 - 1;
                    int i11 = k.f130;
                    cArr5[i9] = (char) (cArr2[iArr[i10 - i11] - i] - i2);
                    k.f130 = i11 + 1;
                }
                return new String(cArr5);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0040 A[PHI: r0
          0x0040: PHI (r0v7 com.ironsource.adqualitysdk.sdk.i.ar) = (r0v6 com.ironsource.adqualitysdk.sdk.i.ar), (r0v13 com.ironsource.adqualitysdk.sdk.i.ar) binds: [B:18:0x003e, B:12:0x0028] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:20:0x007d A[PHI: r0 r5
          0x007d: PHI (r0v11 com.ironsource.adqualitysdk.sdk.i.ar) = (r0v6 com.ironsource.adqualitysdk.sdk.i.ar), (r0v13 com.ironsource.adqualitysdk.sdk.i.ar) binds: [B:18:0x003e, B:12:0x0028] A[DONT_GENERATE, DONT_INLINE]
          0x007d: PHI (r5v8 long) = (r5v0 long), (r5v9 long) binds: [B:18:0x003e, B:12:0x0028] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // com.json.adqualitysdk.sdk.i.aq
        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void mo221() {
            /*
                r12 = this;
                int r0 = com.ironsource.adqualitysdk.sdk.i.a0.a.f5127e
                int r0 = r0 + 77
                int r1 = r0 % 128
                com.ironsource.adqualitysdk.sdk.i.a0.a.f5128f = r1
                int r0 = r0 % 2
                r1 = 1
                r2 = 0
                if (r0 != 0) goto L10
                r0 = 0
                goto L11
            L10:
                r0 = 1
            L11:
                r3 = 0
                if (r0 == 0) goto L2b
                com.ironsource.adqualitysdk.sdk.i.ao r0 = com.json.adqualitysdk.sdk.i.ao.m303()
                com.ironsource.adqualitysdk.sdk.i.ar r0 = r0.mo314()
                long r5 = r0.m348()
                int r7 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
                if (r7 != 0) goto L27
                r7 = 0
                goto L28
            L27:
                r7 = 1
            L28:
                if (r7 == r1) goto L7d
                goto L40
            L2b:
                com.ironsource.adqualitysdk.sdk.i.ao r0 = com.json.adqualitysdk.sdk.i.ao.m303()
                com.ironsource.adqualitysdk.sdk.i.ar r0 = r0.mo314()
                long r5 = r0.m348()
                int r7 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
                if (r7 != 0) goto L3d
                r7 = 0
                goto L3e
            L3d:
                r7 = 1
            L3e:
                if (r7 == r1) goto L7d
            L40:
                int r5 = com.ironsource.adqualitysdk.sdk.i.a0.a.f5127e
                int r5 = r5 + r1
                int r1 = r5 % 128
                com.ironsource.adqualitysdk.sdk.i.a0.a.f5128f = r1
                int r5 = r5 % 2
                com.ironsource.adqualitysdk.sdk.i.a0 r1 = com.json.adqualitysdk.sdk.i.a0.this
                java.lang.Boolean r5 = java.lang.Boolean.FALSE
                com.json.adqualitysdk.sdk.i.a0.h(r1, r5)
                long r5 = r0.m345()
                r1 = 16777343(0x100007f, float:2.3510243E-38)
                int r7 = android.graphics.Color.rgb(r2, r2, r2)
                int r7 = r7 + r1
                r1 = 0
                java.lang.String r8 = "\u008e\u0084\u0090\u0082\u008b\u008f\u008e\u008d\u008c\u008b\u008a\u0089\u0088\u0083\u0087\u0086\u0085\u0084\u0083\u0082\u0081"
                java.lang.String r7 = a(r1, r1, r7, r8)
                java.lang.String r7 = r7.intern()
                long r8 = android.os.SystemClock.uptimeMillis()
                java.lang.String r10 = "\u0088\u0083\u0087\u0086\u0085\u0084\u0083\u0082\u0086\u0092\u008e\u0084\u0094\u008e\u0084\u0085\u0092\u0093\u008b\u0082\u0086\u0086\u0084\u0093\u0092\u008b\u0082\u0092\u008e\u008f\u008e\u008e\u0091"
                int r11 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
                int r11 = r11 + 126
                java.lang.String r3 = a(r1, r1, r11, r10)
                java.lang.String r3 = r3.intern()
                com.json.adqualitysdk.sdk.i.jy.m987(r7, r3, r1, r2)
                goto L84
            L7d:
                com.ironsource.adqualitysdk.sdk.i.a0 r1 = com.json.adqualitysdk.sdk.i.a0.this
                java.lang.Boolean r2 = java.lang.Boolean.TRUE
                com.json.adqualitysdk.sdk.i.a0.h(r1, r2)
            L84:
                com.ironsource.adqualitysdk.sdk.i.a0 r1 = com.json.adqualitysdk.sdk.i.a0.this
                long r2 = r0.m344()
                com.json.adqualitysdk.sdk.i.a0.b(r1, r2)
                com.ironsource.adqualitysdk.sdk.i.a0 r1 = com.json.adqualitysdk.sdk.i.a0.this
                long r2 = r0.m345()
                com.json.adqualitysdk.sdk.i.a0.n(r1, r2)
                com.ironsource.adqualitysdk.sdk.i.a0 r0 = com.json.adqualitysdk.sdk.i.a0.this
                long r1 = com.json.adqualitysdk.sdk.i.a0.a(r0)
                long r1 = r5 - r1
                com.json.adqualitysdk.sdk.i.a0.g(r0, r1)
                com.ironsource.adqualitysdk.sdk.i.a0 r0 = com.json.adqualitysdk.sdk.i.a0.this
                long r1 = com.json.adqualitysdk.sdk.i.a0.m(r0)
                long r5 = r5 - r1
                com.json.adqualitysdk.sdk.i.a0.e(r0, r5)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.a0.a.mo221():void");
        }
    }

    a0(int i) {
        this.k = i;
        ao.m303().mo321(new a());
    }

    static /* synthetic */ long a(a0 a0Var) {
        int i = f5123e + 59;
        int i2 = i % 128;
        f5122d = i2;
        if (i % 2 != 0) {
            long j = a0Var.f5125g;
            throw null;
        }
        long j2 = a0Var.f5125g;
        int i3 = i2 + 71;
        f5123e = i3 % 128;
        if (i3 % 2 != 0) {
            return j2;
        }
        throw null;
    }

    static /* synthetic */ long b(a0 a0Var, long j) {
        int i = f5122d;
        int i2 = i + 81;
        f5123e = i2 % 128;
        int i3 = i2 % 2;
        a0Var.f5125g = j;
        int i4 = i + 111;
        f5123e = i4 % 128;
        if ((i4 % 2 == 0 ? b4.R : '+') != '=') {
            return j;
        }
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0054 A[Catch: JSONException -> 0x0119, TryCatch #0 {JSONException -> 0x0119, blocks: (B:9:0x001f, B:22:0x00a0, B:23:0x00de, B:30:0x0113, B:29:0x00f5, B:17:0x0054, B:20:0x005b, B:15:0x003e), top: B:33:0x001b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void c(org.json.JSONObject r13) {
        /*
            Method dump skipped, instruction units count: 282
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.a0.c(org.json.JSONObject):void");
    }

    private void d(JSONObject jSONObject, boolean z) {
        long jOptLong;
        long j;
        int i = f5123e + 59;
        f5122d = i % 128;
        int i2 = i % 2;
        if (jSONObject.has(i((byte) (36 - KeyEvent.normalizeMetaState(0)), "\t\u0013\u0097", 2 - TextUtils.indexOf((CharSequence) "", '0', 0, 0)).intern())) {
            if (!z) {
                jOptLong = jSONObject.optLong(i((byte) ((ViewConfiguration.getDoubleTapTimeout() >> 16) + 36), "\t\u0013\u0097", ExpandableListView.getPackedPositionType(0L) + 3).intern());
                j = this.j;
            } else {
                int i3 = f5122d + 47;
                f5123e = i3 % 128;
                int i4 = i3 % 2;
                jOptLong = jSONObject.optLong(i((byte) ((ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + 21), "\u0000\u0013\u008a", 3 - (ViewConfiguration.getKeyRepeatTimeout() >> 16)).intern());
                j = this.i;
            }
            try {
                jSONObject.put(i((byte) ((ViewConfiguration.getScrollBarFadeDuration() >> 16) + 36), "\t\u0013\u0097", Color.red(0) + 3).intern(), jOptLong + j);
                int i5 = f5123e + 47;
                f5122d = i5 % 128;
                if (i5 % 2 == 0) {
                    return;
                }
                int i6 = 28 / 0;
            } catch (JSONException unused) {
            }
        }
    }

    static /* synthetic */ long e(a0 a0Var, long j) {
        int i = f5123e + 53;
        int i2 = i % 128;
        f5122d = i2;
        char c2 = i % 2 != 0 ? 'Y' : (char) 19;
        a0Var.j = j;
        if (c2 != 19) {
            throw null;
        }
        int i3 = i2 + 51;
        f5123e = i3 % 128;
        if ((i3 % 2 == 0 ? '0' : '\n') == '\n') {
            return j;
        }
        throw null;
    }

    private boolean f(JSONObject jSONObject) {
        int i = f5123e + 107;
        f5122d = i % 128;
        int i2 = i % 2;
        if ((Math.abs((this.h - this.f5125g) - (jSONObject.optLong(i((byte) ((ViewConfiguration.getPressedStateDuration() >> 16) + 54), "\u0013\u000b©", 2 - TextUtils.indexOf((CharSequence) "", '0')).intern()) - jSONObject.optLong(i((byte) (Color.red(0) + 80), "\u0013\n", 2 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24)).intern()))) <= 10 ? 'M' : 'b') == 'M') {
            return true;
        }
        int i3 = f5123e + 41;
        f5122d = i3 % 128;
        if (i3 % 2 == 0) {
            return false;
        }
        throw null;
    }

    static /* synthetic */ long g(a0 a0Var, long j) {
        int i = f5122d + 51;
        int i2 = i % 128;
        f5123e = i2;
        int i3 = i % 2;
        a0Var.i = j;
        int i4 = i2 + 37;
        f5122d = i4 % 128;
        if ((i4 % 2 != 0 ? (char) 22 : 'A') != 22) {
            return j;
        }
        int i5 = 23 / 0;
        return j;
    }

    static /* synthetic */ Boolean h(a0 a0Var, Boolean bool) {
        int i = f5122d + 57;
        f5123e = i % 128;
        char c2 = i % 2 == 0 ? '@' : 'N';
        a0Var.f5124f = bool;
        if (c2 == 'N') {
            return bool;
        }
        throw null;
    }

    private static String i(byte b2, String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (g.f56) {
            char[] cArr2 = b;
            char c2 = c;
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

    private static String j(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (h.f63) {
            h.f64 = i;
            char[] cArr2 = new char[cArr.length];
            h.f65 = 0;
            while (true) {
                int i2 = h.f65;
                if (i2 < cArr.length) {
                    cArr2[i2] = (char) (((long) (cArr[i2] ^ (h.f64 * i2))) ^ a);
                    h.f65++;
                } else {
                    str2 = new String(cArr2);
                }
            }
        }
        return str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00cb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void k(org.json.JSONObject r13, boolean r14) {
        /*
            Method dump skipped, instruction units count: 284
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.a0.k(org.json.JSONObject, boolean):void");
    }

    private static boolean l(JSONObject jSONObject) {
        int i = f5123e + 17;
        f5122d = i % 128;
        int i2 = i % 2;
        if ((!jSONObject.has(i((byte) (23 - (ViewConfiguration.getMinimumFlingVelocity() >> 16)), "\u0013\n\u0086", 3 - Color.red(0)).intern()) ? (char) 3 : 'T') == 3) {
            if ((jSONObject.has(j("\uf31e盠\uf8f7", (ViewConfiguration.getDoubleTapTimeout() >> 16) + 34297).intern()) ? '3' : '>') == '>') {
                return false;
            }
        }
        int i3 = f5123e + 37;
        f5122d = i3 % 128;
        if (!(i3 % 2 != 0)) {
            return true;
        }
        throw null;
    }

    static /* synthetic */ long m(a0 a0Var) {
        int i = f5122d + 113;
        int i2 = i % 128;
        f5123e = i2;
        int i3 = i % 2;
        long j = a0Var.h;
        int i4 = i2 + 119;
        f5122d = i4 % 128;
        if (!(i4 % 2 != 0)) {
            return j;
        }
        int i5 = 20 / 0;
        return j;
    }

    static /* synthetic */ long n(a0 a0Var, long j) {
        int i = f5122d + 113;
        int i2 = i % 128;
        f5123e = i2;
        boolean z = i % 2 != 0;
        a0Var.h = j;
        if (!z) {
            int i3 = 34 / 0;
        }
        int i4 = i2 + 81;
        f5122d = i4 % 128;
        if ((i4 % 2 != 0 ? '<' : (char) 26) == 26) {
            return j;
        }
        int i5 = 58 / 0;
        return j;
    }

    final boolean o(JSONObject jSONObject) {
        int i = f5123e + 17;
        f5122d = i % 128;
        int i2 = i % 2;
        if (!(l(jSONObject))) {
            if (!(this.f5124f == null)) {
                int i3 = f5123e + 89;
                f5122d = i3 % 128;
                try {
                    if (i3 % 2 != 0) {
                        c(jSONObject);
                        return true;
                    }
                    c(jSONObject);
                    return true;
                } catch (Exception e2) {
                    jy.m987(j("\uf33e쩺臵彤\u16fd\uec43ꯝ慈㣒\uf678충謷䊥ᠧ힆괒撔∊漣냴蹬", 14714 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1))).intern(), i((byte) (65 - (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1))), "\u0001\u0002\u0002\u0003\u0002\u0004\u0000\t\u0007\b\u0006\u0003\u0001\u0007\u0005\u000e\u0005\u0007\r\u0001\r\u000e\u000b\u0007´", (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) + 24).intern(), (Throwable) e2, false);
                }
            }
        }
        int i4 = f5123e + 15;
        f5122d = i4 % 128;
        if (i4 % 2 == 0) {
            return false;
        }
        int i5 = 85 / 0;
        return false;
    }
}
