package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.media.AudioTrack;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewConfiguration;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class af implements Comparable<af> {
    private static long a = -5984241535685560050L;
    private static int b = 0;
    private static char c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5146d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5147e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private iv f5148f;

    public af(iv ivVar) {
        this.f5148f = ivVar;
    }

    private long e() {
        JSONObject jSONObjectM253;
        int size;
        int i;
        int i2 = f5146d + 31;
        f5147e = i2 % 128;
        if ((i2 % 2 == 0 ? (char) 24 : '\r') != '\r') {
            jSONObjectM253 = m253();
            size = View.MeasureSpec.getSize(1);
            i = 38231 << (SystemClock.uptimeMillis() > 1L ? 1 : (SystemClock.uptimeMillis() == 1L ? 0 : -1));
        } else {
            jSONObjectM253 = m253();
            size = View.MeasureSpec.getSize(0);
            i = 38231 - (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1));
        }
        long jOptLong = jSONObjectM253.optLong(k("阊釒嚫ﾕ", "癩睒됇곳", size, (char) i, "\uf4c7됟").intern());
        int i3 = f5147e + 49;
        f5146d = i3 % 128;
        if (!(i3 % 2 != 0)) {
            return jOptLong;
        }
        int i4 = 16 / 0;
        return jOptLong;
    }

    private long f() {
        int i = f5146d + 101;
        f5147e = i % 128;
        int i2 = i % 2;
        long jOptInt = m253().optInt(k("䵯뽴퇣뙿", "癩睒됇곳", ViewConfiguration.getKeyRepeatTimeout() >> 16, (char) ((AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 32721), "ᴫ꽩").intern());
        int i3 = f5147e + 121;
        f5146d = i3 % 128;
        if (i3 % 2 == 0) {
            return jOptInt;
        }
        int i4 = 83 / 0;
        return jOptInt;
    }

    private String g() {
        int i = f5146d + 47;
        f5147e = i % 128;
        int i2 = i % 2;
        String strM864 = this.f5148f.m864();
        int i3 = f5146d + 59;
        f5147e = i3 % 128;
        if ((i3 % 2 == 0 ? 'X' : '`') == '`') {
            return strM864;
        }
        int i4 = 3 / 0;
        return strM864;
    }

    private int h(af afVar) {
        long jF;
        long jF2;
        int i = f5147e + 63;
        f5146d = i % 128;
        if (i % 2 != 0) {
            jF = f();
            jF2 = afVar.f();
            int i2 = 42 / 0;
            if ((jF < jF2 ? (char) 17 : '&') != '&') {
                return -1;
            }
        } else {
            jF = f();
            jF2 = afVar.f();
            if (jF < jF2) {
                return -1;
            }
        }
        if ((jF == jF2 ? '\r' : '(') == '\r') {
            return 0;
        }
        int i3 = f5146d + 93;
        f5147e = i3 % 128;
        int i4 = i3 % 2;
        return 1;
    }

    private static List<String> i() {
        int i = f5147e + 109;
        f5146d = i % 128;
        if (i % 2 == 0) {
            return Arrays.asList(ib.f87);
        }
        String[] strArr = new String[0];
        strArr[0] = ib.f87;
        return Arrays.asList(strArr);
    }

    private int j(af afVar) {
        long jE;
        long jE2;
        int i = f5146d + 9;
        f5147e = i % 128;
        if ((i % 2 == 0 ? ':' : '<') != '<') {
            jE = e();
            jE2 = afVar.e();
            int i2 = 45 / 0;
            if (jE < jE2) {
                return -1;
            }
        } else {
            jE = e();
            jE2 = afVar.e();
            if (jE < jE2) {
                return -1;
            }
        }
        if (jE != jE2) {
            return 1;
        }
        int i3 = f5147e + 51;
        f5146d = i3 % 128;
        int i4 = i3 % 2;
        return h(afVar);
    }

    private static String k(String str, String str2, int i, char c2, String str3) {
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

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(af afVar) {
        int i = f5146d + 1;
        f5147e = i % 128;
        int i2 = i % 2;
        int iJ = j(afVar);
        int i3 = f5147e + 107;
        f5146d = i3 % 128;
        if (!(i3 % 2 != 0)) {
            return iJ;
        }
        int i4 = 14 / 0;
        return iJ;
    }

    public final boolean equals(Object obj) {
        int i = f5147e + 13;
        f5146d = i % 128;
        int i2 = i % 2;
        if (this == obj) {
            return true;
        }
        if (!(obj == null)) {
            if (!(af.class != obj.getClass())) {
                return g().equals(((af) obj).g());
            }
        }
        int i3 = f5146d + 51;
        f5147e = i3 % 128;
        if ((i3 % 2 == 0 ? 'M' : '#') != 'M') {
            return false;
        }
        int i4 = 26 / 0;
        return false;
    }

    public final int hashCode() {
        int i = f5146d + 93;
        f5147e = i % 128;
        int i2 = i % 2;
        if (!(m253() != null)) {
            return 0;
        }
        int i3 = f5146d + 87;
        f5147e = i3 % 128;
        int i4 = i3 % 2;
        int iHashCode = m253().hashCode();
        int i5 = f5147e + 47;
        f5146d = i5 % 128;
        int i6 = i5 % 2;
        return iHashCode;
    }

    public final String toString() {
        int i = f5147e + 97;
        f5146d = i % 128;
        if (i % 2 == 0) {
            return m253().toString();
        }
        m253().toString();
        throw null;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final void m249(String str) {
        int i = f5146d + 63;
        f5147e = i % 128;
        int i2 = i % 2;
        try {
            m253().put(k("䑉텼Ꚁ\ue487", "癩睒됇곳", (-2133754812) - TextUtils.getOffsetAfter("", 0), (char) (34726 - Color.red(0)), "㐕ओ횘").intern(), str);
            int i3 = f5147e + 49;
            f5146d = i3 % 128;
            int i4 = i3 % 2;
        } catch (JSONException unused) {
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final iv m250() {
        int i = f5147e;
        int i2 = i + 17;
        f5146d = i2 % 128;
        int i3 = i2 % 2;
        iv ivVar = this.f5148f;
        int i4 = i + 119;
        f5146d = i4 % 128;
        int i5 = i4 % 2;
        return ivVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0035 A[Catch: all -> 0x004e, TryCatch #1 {, blocks: (B:3:0x0001, B:8:0x0016, B:21:0x0042, B:20:0x0035, B:14:0x0024, B:15:0x0025, B:10:0x001e), top: B:29:0x0001, inners: #0 }] */
    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized void m251(int r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            int r0 = com.json.adqualitysdk.sdk.i.af.f5146d     // Catch: java.lang.Throwable -> L4e
            int r0 = r0 + 105
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.af.f5147e = r1     // Catch: java.lang.Throwable -> L4e
            int r0 = r0 % 2
            r1 = 9
            if (r0 != 0) goto L12
            r0 = 94
            goto L14
        L12:
            r0 = 9
        L14:
            if (r0 == r1) goto L25
            com.ironsource.adqualitysdk.sdk.i.iv r0 = r2.f5148f     // Catch: java.lang.Throwable -> L4e
            org.json.JSONObject r0 = r0.m865()     // Catch: java.lang.Throwable -> L4e
            r1 = 92
            int r1 = r1 / 0
            if (r0 == 0) goto L42
            goto L35
        L23:
            r3 = move-exception
            throw r3     // Catch: java.lang.Throwable -> L4e
        L25:
            com.ironsource.adqualitysdk.sdk.i.iv r0 = r2.f5148f     // Catch: java.lang.Throwable -> L4e
            org.json.JSONObject r0 = r0.m865()     // Catch: java.lang.Throwable -> L4e
            r1 = 45
            if (r0 == 0) goto L31
            r0 = 6
            goto L33
        L31:
            r0 = 45
        L33:
            if (r0 == r1) goto L42
        L35:
            com.ironsource.adqualitysdk.sdk.i.iv r0 = r2.f5148f     // Catch: java.lang.Throwable -> L4e
            org.json.JSONObject r0 = r0.m865()     // Catch: java.lang.Throwable -> L4e
            java.util.List r1 = i()     // Catch: java.lang.Throwable -> L4e
            com.json.adqualitysdk.sdk.i.ju.m964(r0, r3, r1)     // Catch: java.lang.Throwable -> L4e
        L42:
            int r3 = com.json.adqualitysdk.sdk.i.af.f5146d     // Catch: java.lang.Throwable -> L4e
            int r3 = r3 + 117
            int r0 = r3 % 128
            com.json.adqualitysdk.sdk.i.af.f5147e = r0     // Catch: java.lang.Throwable -> L4e
            int r3 = r3 % 2
            monitor-exit(r2)
            return
        L4e:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.af.m251(int):void");
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String m252() {
        JSONObject jSONObjectM253;
        int iMakeMeasureSpec;
        char c2;
        int i = f5146d + 59;
        f5147e = i % 128;
        if (i % 2 != 0) {
            jSONObjectM253 = m253();
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            c2 = (char) (39838 - (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)));
        } else {
            jSONObjectM253 = m253();
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            c2 = (char) (39838 << (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)));
        }
        return jSONObjectM253.optString(k("풢聺黻憛", "癩睒됇곳", iMakeMeasureSpec, c2, "颠ꁩႏ\uaac4").intern());
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized JSONObject m253() {
        JSONObject jSONObjectM865;
        int i = f5146d + 81;
        f5147e = i % 128;
        if ((i % 2 == 0 ? 'H' : ';') != ';') {
            jSONObjectM865 = this.f5148f.m865();
            int i2 = 48 / 0;
        } else {
            jSONObjectM865 = this.f5148f.m865();
        }
        int i3 = f5146d + 45;
        f5147e = i3 % 128;
        if ((i3 % 2 == 0 ? '\\' : (char) 2) == '\\') {
            throw null;
        }
        return jSONObjectM865;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m254() {
        int i = f5146d + 97;
        f5147e = i % 128;
        int i2 = i % 2;
        String strOptString = m253().optString(k("䑉텼Ꚁ\ue487", "癩睒됇곳", (ViewConfiguration.getKeyRepeatDelay() >> 16) - 2133754812, (char) (TextUtils.indexOf("", "") + 34726), "㐕ओ횘").intern(), null);
        int i3 = f5147e + 71;
        f5146d = i3 % 128;
        int i4 = i3 % 2;
        return strOptString;
    }
}
