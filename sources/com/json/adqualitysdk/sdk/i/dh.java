package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.media.AudioTrack;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.json.adqualitysdk.sdk.i.ju;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class dh {
    private static long a = -7991619930824133806L;
    private static int b = 118;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5525d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private JSONObject f5526e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private dr f5527f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f5528g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String l;
    private dj m;
    private dr n;
    private Map<String, di> o;

    final class a implements ju.a<di> {
        a() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.ju.a
        /* JADX INFO: renamed from: ｋ */
        public final /* synthetic */ di mo339(JSONObject jSONObject, String str) {
            return new di(dh.b(dh.this), str, jSONObject.optJSONObject(str));
        }
    }

    final class b implements ju.d<String> {
        b() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.ju.d
        /* JADX INFO: renamed from: ｋ */
        public final /* synthetic */ String mo340(JSONArray jSONArray, int i) {
            return dq.m680(jSONArray.optString(i));
        }
    }

    final class c implements Comparator<String> {
        c() {
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(String str, String str2) {
            return jz.m1000(str, str2);
        }
    }

    final class d implements ju.a<Object> {
        private static char[] a = {' ', '9', 'I', 'H', 'h', 'i', 'r', 'n', 'k', 'j', 'C', '2', '[', 'r', 'p', 202, 228, 286, 285, 280, 281, 269, 202};
        private static int b = 0;
        private static int c = 1;

        d() {
        }

        private static String a(boolean z, int[] iArr, String str) throws UnsupportedEncodingException {
            String str2;
            Object bytes = str;
            if (str != null) {
                bytes = str.getBytes("ISO-8859-1");
            }
            byte[] bArr = (byte[]) bytes;
            synchronized (i.f67) {
                int i = iArr[0];
                int i2 = iArr[1];
                int i3 = iArr[2];
                int i4 = iArr[3];
                char[] cArr = new char[i2];
                System.arraycopy(a, i, cArr, 0, i2);
                if (bArr != null) {
                    char[] cArr2 = new char[i2];
                    i.f68 = 0;
                    char c2 = 0;
                    while (true) {
                        int i5 = i.f68;
                        if (i5 >= i2) {
                            break;
                        }
                        if (bArr[i5] == 1) {
                            cArr2[i5] = (char) (((cArr[i5] << 1) + 1) - c2);
                        } else {
                            cArr2[i5] = (char) ((cArr[i5] << 1) - c2);
                        }
                        c2 = cArr2[i5];
                        i.f68 = i5 + 1;
                    }
                    cArr = cArr2;
                }
                if (i4 > 0) {
                    char[] cArr3 = new char[i2];
                    System.arraycopy(cArr, 0, cArr3, 0, i2);
                    int i6 = i2 - i4;
                    System.arraycopy(cArr3, 0, cArr, i6, i4);
                    System.arraycopy(cArr3, i4, cArr, 0, i6);
                }
                if (z) {
                    char[] cArr4 = new char[i2];
                    i.f68 = 0;
                    while (true) {
                        int i7 = i.f68;
                        if (i7 >= i2) {
                            break;
                        }
                        cArr4[i7] = cArr[(i2 - i7) - 1];
                        i.f68 = i7 + 1;
                    }
                    cArr = cArr4;
                }
                if (i3 > 0) {
                    i.f68 = 0;
                    while (true) {
                        int i8 = i.f68;
                        if (i8 >= i2) {
                            break;
                        }
                        cArr[i8] = (char) (cArr[i8] - iArr[2]);
                        i.f68 = i8 + 1;
                    }
                }
                str2 = new String(cArr);
            }
            return str2;
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.ju.a
        /* JADX INFO: renamed from: ｋ */
        public final Object mo339(JSONObject jSONObject, String str) {
            int i = c + 31;
            b = i % 128;
            try {
                if (i % 2 != 0) {
                    jSONObject.optString(str);
                    boolean z = jSONObject.opt(str) instanceof String;
                    throw null;
                }
                String strOptString = jSONObject.optString(str);
                if (jSONObject.opt(str) instanceof String) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(a(true, new int[]{0, 1, 31, 1}, "\u0001").intern());
                    sb.append(strOptString);
                    sb.append(a(true, new int[]{0, 1, 31, 1}, "\u0001").intern());
                    strOptString = sb.toString();
                }
                String strB = dh.b(dh.this);
                dx dxVarM663 = new dl(strB, strOptString).m663(dm.m666(strB, strOptString, strOptString));
                int i2 = b + 83;
                c = i2 % 128;
                if ((i2 % 2 == 0 ? ']' : '^') != ']') {
                    return dxVarM663;
                }
                throw null;
            } catch (Throwable th) {
                String strB2 = dh.b(dh.this);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(a(false, new int[]{1, 14, 0, 10}, "\u0000\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001").intern());
                sb2.append(str);
                sb2.append(a(true, new int[]{15, 8, 170, 8}, null).intern());
                sb2.append(jSONObject.optString(str));
                cn.m519(strB2, sb2.toString(), th);
                return null;
            }
        }
    }

    public dh(String str, dr drVar) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f5526e = jSONObject;
            this.f5527f = drVar;
            this.f5528g = jSONObject.optString(c("댼䏂勝懤", Color.alpha(0) + 61681).intern());
            this.h = this.f5526e.optString(c("댶\uf3bc㈯犷넢\uf190、炭뜋\uf780㙱", 16519 - Color.alpha(0)).intern());
            this.i = this.f5526e.optString(d(TextUtils.getCapsMode("", 0, 0) + 228, false, (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)), 7 - (ViewConfiguration.getTouchSlop() >> 8), "\u0000\b\ufff7\u0004\u0005\ufffb\u0001").intern());
            this.j = this.f5526e.optString(d((Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 219, false, (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + 2, (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) + 5, "￭\ufffe\u0005\u0007\u0003\b").intern());
            this.k = this.f5526e.optString(d(Gravity.getAbsoluteGravity(0, 0) + 220, false, 4 - ExpandableListView.getPackedPositionType(0L), (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + 5, "\u0012￭\ufffe\u0005\u0007\ufffb").intern());
            if (this.f5526e.has(c("댵쬃䍇\udb87叇\uea0f承殺狔褄ń馾", (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)) + 30781).intern())) {
                a(this.f5526e.optJSONObject(c("댵쬃䍇\udb87叇\uea0f承殺狔褄ń馾", (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) + 30780).intern()));
            }
        } catch (Throwable th) {
            cn.m519(this.f5528g, d(216 - (Process.myTid() >> 22), true, 5 - (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)), View.MeasureSpec.makeMeasureSpec(0, 0) + 31, "\u0010\r\u0010\u0010￣\u0005\u0007\u0004\f\r\u0001ﾾ\u0010\r\u0012\u0001\u0003\f\f\r\u0001ﾾ\u0005\f\u0007\u0012\uffff\u0003\u0010\u0001ﾾ").intern(), th);
        }
    }

    private void a(JSONObject jSONObject) {
        int i = f5525d + 93;
        c = i % 128;
        if (i % 2 != 0) {
            jSONObject.keys();
            throw null;
        }
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            int i2 = c + 79;
            f5525d = i2 % 128;
            if ((i2 % 2 == 0 ? 'A' : 'F') != 'F') {
                String next = itKeys.next();
                this.f5527f.m686(next, jSONObject.opt(next));
                int i3 = 72 / 0;
            } else {
                String next2 = itKeys.next();
                this.f5527f.m686(next2, jSONObject.opt(next2));
            }
        }
        int i4 = c + 73;
        f5525d = i4 % 128;
        int i5 = i4 % 2;
    }

    static /* synthetic */ String b(dh dhVar) {
        int i = f5525d;
        int i2 = i + 57;
        c = i2 % 128;
        char c2 = i2 % 2 != 0 ? '.' : 'I';
        String str = dhVar.f5528g;
        if (c2 == '.') {
            int i3 = 26 / 0;
        }
        int i4 = i + 73;
        c = i4 % 128;
        int i5 = i4 % 2;
        return str;
    }

    private static String c(String str, int i) {
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

    private static String d(int i, boolean z, int i2, int i3, String str) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (com.json.adqualitysdk.sdk.i.c.f35) {
            char[] cArr2 = new char[i3];
            com.json.adqualitysdk.sdk.i.c.f36 = 0;
            while (true) {
                int i4 = com.json.adqualitysdk.sdk.i.c.f36;
                if (i4 >= i3) {
                    break;
                }
                com.json.adqualitysdk.sdk.i.c.f37 = cArr[i4];
                cArr2[com.json.adqualitysdk.sdk.i.c.f36] = (char) (com.json.adqualitysdk.sdk.i.c.f37 + i);
                int i5 = com.json.adqualitysdk.sdk.i.c.f36;
                cArr2[i5] = (char) (cArr2[i5] - b);
                com.json.adqualitysdk.sdk.i.c.f36 = i5 + 1;
            }
            if (i2 > 0) {
                com.json.adqualitysdk.sdk.i.c.f38 = i2;
                char[] cArr3 = new char[i3];
                System.arraycopy(cArr2, 0, cArr3, 0, i3);
                int i6 = com.json.adqualitysdk.sdk.i.c.f38;
                System.arraycopy(cArr3, 0, cArr2, i3 - i6, i6);
                int i7 = com.json.adqualitysdk.sdk.i.c.f38;
                System.arraycopy(cArr3, i7, cArr2, 0, i3 - i7);
            }
            if (z) {
                char[] cArr4 = new char[i3];
                com.json.adqualitysdk.sdk.i.c.f36 = 0;
                while (true) {
                    int i8 = com.json.adqualitysdk.sdk.i.c.f36;
                    if (i8 >= i3) {
                        break;
                    }
                    cArr4[i8] = cArr2[(i3 - i8) - 1];
                    com.json.adqualitysdk.sdk.i.c.f36 = i8 + 1;
                }
                cArr2 = cArr4;
            }
            str2 = new String(cArr2);
        }
        return str2;
    }

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public final dj m639() {
        int i = c + 69;
        f5525d = i % 128;
        int i2 = i % 2;
        if (this.m == null) {
            this.m = new dj(this.f5526e.optJSONObject(d(220 - ExpandableListView.getPackedPositionGroup(0L), true, 6 - (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)), 9 - (ViewConfiguration.getWindowTouchSlop() >> 8), "\u0003\ufff0￼\uffff\u0011\r￤\u0011\uffff").intern()));
            int i3 = f5525d + 93;
            c = i3 % 128;
            int i4 = i3 % 2;
        }
        return this.m;
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final Map<String, di> m640() {
        int i = f5525d + 19;
        c = i % 128;
        int i2 = i % 2;
        if (this.o == null) {
            this.o = ju.m958(this.f5526e.optJSONObject(d(228 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), false, (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)), (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 9, "\u0006\uffff￼\u0006\u0007\ufff8\u0001\ufff8\u0005").intern()), new a());
        }
        Map<String, di> map = this.o;
        int i3 = c + 55;
        f5525d = i3 % 128;
        int i4 = i3 % 2;
        return map;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0021  */
    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.json.adqualitysdk.sdk.i.dr m641() {
        /*
            r8 = this;
            int r0 = com.json.adqualitysdk.sdk.i.dh.f5525d
            int r0 = r0 + 15
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.dh.c = r1
            int r0 = r0 % 2
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L10
            r0 = 0
            goto L11
        L10:
            r0 = 1
        L11:
            if (r0 == r1) goto L1d
            com.ironsource.adqualitysdk.sdk.i.dr r0 = r8.n
            r3 = 39
            int r3 = r3 / r2
            if (r0 != 0) goto L70
            goto L21
        L1b:
            r0 = move-exception
            throw r0
        L1d:
            com.ironsource.adqualitysdk.sdk.i.dr r0 = r8.n
            if (r0 != 0) goto L70
        L21:
            com.ironsource.adqualitysdk.sdk.i.dr r0 = new com.ironsource.adqualitysdk.sdk.i.dr
            org.json.JSONObject r3 = r8.f5526e
            r4 = 0
            float r5 = android.util.TypedValue.complexToFraction(r2, r4, r4)
            java.lang.String r6 = "댱阀牢\udc96⟒ऐ"
            java.lang.String r7 = "댿\u243a鴥瘗\uef03䁡㥯"
            int r4 = (r5 > r4 ? 1 : (r5 == r4 ? 0 : -1))
            int r4 = r4 + 9533
            java.lang.String r4 = c(r6, r4)
            java.lang.String r4 = r4.intern()
            org.json.JSONObject r3 = r3.optJSONObject(r4)
            com.ironsource.adqualitysdk.sdk.i.dh$d r4 = new com.ironsource.adqualitysdk.sdk.i.dh$d
            r4.<init>()
            java.util.Map r3 = com.json.adqualitysdk.sdk.i.ju.m958(r3, r4)
            com.ironsource.adqualitysdk.sdk.i.dr r4 = r8.f5527f
            r0.<init>(r3, r4, r1)
            r8.n = r0
            org.json.JSONObject r1 = r8.f5526e
            r3 = 38669(0x970d, float:5.4187E-41)
            int r2 = android.view.View.MeasureSpec.getSize(r2)
            int r3 = r3 - r2
            java.lang.String r2 = c(r7, r3)
            java.lang.String r2 = r2.intern()
            org.json.JSONArray r1 = r1.optJSONArray(r2)
            com.ironsource.adqualitysdk.sdk.i.dh$b r2 = new com.ironsource.adqualitysdk.sdk.i.dh$b
            r2.<init>()
            java.util.List r1 = com.json.adqualitysdk.sdk.i.ju.m957(r1, r2)
            r0.m684(r1)
        L70:
            com.ironsource.adqualitysdk.sdk.i.dr r0 = r8.n
            int r1 = com.json.adqualitysdk.sdk.i.dh.c
            int r1 = r1 + 115
            int r2 = r1 % 128
            com.json.adqualitysdk.sdk.i.dh.f5525d = r2
            int r1 = r1 % 2
            r2 = 28
            if (r1 != 0) goto L83
            r1 = 28
            goto L85
        L83:
            r1 = 80
        L85:
            if (r1 == r2) goto L88
            return r0
        L88:
            r0 = 0
            throw r0     // Catch: java.lang.Throwable -> L8a
        L8a:
            r0 = move-exception
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.dh.m641():com.ironsource.adqualitysdk.sdk.i.dr");
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final String m642() {
        int i = c + 55;
        f5525d = i % 128;
        if ((i % 2 == 0 ? '<' : '\t') != '<') {
            return this.j;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final String m643() {
        int i = c + 107;
        int i2 = i % 128;
        f5525d = i2;
        int i3 = i % 2;
        String str = this.i;
        int i4 = i2 + 109;
        c = i4 % 128;
        int i5 = i4 % 2;
        return str;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String m644() {
        String str;
        int i = c + 55;
        int i2 = i % 128;
        f5525d = i2;
        if ((i % 2 == 0 ? '8' : 'P') != 'P') {
            str = this.k;
            int i3 = 40 / 0;
        } else {
            str = this.k;
        }
        int i4 = i2 + 39;
        c = i4 % 128;
        int i5 = i4 % 2;
        return str;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String m645() {
        int i = c + 85;
        int i2 = i % 128;
        f5525d = i2;
        if ((i % 2 == 0 ? '`' : '\b') != '\b') {
            throw null;
        }
        String str = this.h;
        int i3 = i2 + 73;
        c = i3 % 128;
        if ((i3 % 2 != 0 ? ',' : '.') != ',') {
            return str;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String m646(String str) {
        Map<String, String> mapM954;
        if ((this.l == null) && (mapM954 = ju.m954(this.f5526e.optJSONObject(c("댡⡙藧態\ude81머ឯ\uf33e桄엁ꅒỲ﨔垂㌩ꢼ\u05cc\ue17e", View.MeasureSpec.getMode(0) + 39791).intern()))) != null) {
            ArrayList arrayList = new ArrayList(mapM954.keySet());
            Collections.sort(arrayList, new c());
            Iterator it = arrayList.iterator();
            String str2 = null;
            while (true) {
                if (!it.hasNext()) {
                    this.l = str2;
                    int i = f5525d + 117;
                    c = i % 128;
                    int i2 = i % 2;
                    break;
                }
                int i3 = f5525d + 105;
                c = i3 % 128;
                if (i3 % 2 != 0) {
                    jz.m1000(str, (String) it.next());
                    throw null;
                }
                String str3 = (String) it.next();
                if (jz.m1000(str, str3) >= 0) {
                    str2 = mapM954.get(str3);
                }
            }
        }
        return this.l;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m647() {
        int i = f5525d;
        int i2 = i + 99;
        c = i2 % 128;
        int i3 = i2 % 2;
        String str = this.f5528g;
        int i4 = i + 17;
        c = i4 % 128;
        if (i4 % 2 == 0) {
            return str;
        }
        int i5 = 36 / 0;
        return str;
    }
}
