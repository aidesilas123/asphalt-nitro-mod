package com.json.adqualitysdk.sdk.i;

import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class iz {
    private static long a = 397014687241349782L;
    private static int b = 0;
    private static int c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f5855d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f5856e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f5857f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ix f5858g;

    final class a extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ iv f5859d;

        a(iv ivVar) {
            this.f5859d = ivVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            iz.g(iz.this).m873(iz.i(iz.this, this.f5859d));
        }
    }

    final class b extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static long f5861d = -8072206866795550475L;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static int f5862e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static int f5863f = 1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private /* synthetic */ iv f5864g;
        private /* synthetic */ il h;

        b(iv ivVar, il ilVar) {
            this.f5864g = ivVar;
            this.h = ilVar;
        }

        private static String a(String str, int i) {
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
                        cArr2[i2] = (char) (((long) (cArr[i2] ^ (h.f64 * i2))) ^ f5861d);
                        h.f65++;
                    } else {
                        str2 = new String(cArr2);
                    }
                }
            }
            return str2;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            int i = f5863f + 75;
            f5862e = i % 128;
            int i2 = i % 2;
            if (!(iz.g(iz.this).m882(iz.e(iz.this, a("\ua8df", 56377 - (ViewConfiguration.getFadingEdgeLength() >> 16)).intern())) > iz.a(iz.this))) {
                String strI = iz.i(iz.this, this.f5864g);
                if (!(TextUtils.isEmpty(strI) ? false : true)) {
                    int i3 = f5862e + 121;
                    f5863f = i3 % 128;
                    int i4 = i3 % 2;
                    m.m1028(iz.f(iz.this), a("ꢶ뻽葄\ueba6\uf134\ud8ab\u2ef7㑅ᯏ愥䢈帓", MotionEvent.axisFromString("") + 5738).intern(), a("ꢡ㔊鎲灃\ude89뭯ᤌ\ue7f4䐯⋛轷涩쯁ꠝ㛖鍂熢\udf86뱋ᪧ\ue75c䗢∯耗溩쬥꧑㙹鐖犋\udf67뷗ᩰ\uf8fb䛛⌶膦湔첿ꪛ㜏閰牖탋뵵", 40343 - (ViewConfiguration.getFadingEdgeLength() >> 16)).intern(), true);
                    return;
                }
                try {
                    String string = this.f5864g.m866().toString();
                    int i5 = f5863f + 73;
                    f5862e = i5 % 128;
                    int i6 = i5 % 2;
                    m.m1023(iz.f(iz.this), a("ꢶ뻽葄\ueba6\uf134\ud8ab\u2ef7㑅ᯏ愥䢈帓", (ViewConfiguration.getMaximumFlingVelocity() >> 16) + 5737).intern(), a("ꢶ賈ஸ屘\ueec0㽨䄘鏴␢盘蝹⧭箂谪\ude8d", (ViewConfiguration.getMinimumFlingVelocity() >> 16) + 20887).intern(), string, true);
                    iz.g(iz.this).m874(strI, string);
                } catch (JSONException unused) {
                    return;
                }
            }
            il ilVar = this.h;
            if (ilVar != null) {
                t.m1046(ilVar);
            }
        }
    }

    public interface c {
        /* JADX INFO: renamed from: ﻛ */
        void mo270(List<iv> list);
    }

    public interface d {
        /* JADX INFO: renamed from: ﾒ */
        void mo271(int i);
    }

    final class e extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static char[] f5865d = {34020};

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static long f5866e = -506473783427077535L;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static int f5867f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static int f5868g = 1;
        final /* synthetic */ d h;

        final class a extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private /* synthetic */ int f5869d;

            a(int i) {
                this.f5869d = i;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                e.this.h.mo271(this.f5869d);
            }
        }

        e(d dVar) {
            this.h = dVar;
        }

        private static String b(int i, int i2, char c) {
            String str;
            synchronized (com.json.adqualitysdk.sdk.i.e.f50) {
                char[] cArr = new char[i];
                com.json.adqualitysdk.sdk.i.e.f51 = 0;
                while (true) {
                    int i3 = com.json.adqualitysdk.sdk.i.e.f51;
                    if (i3 < i) {
                        cArr[i3] = (char) ((((long) f5865d[i2 + i3]) ^ (((long) i3) * f5866e)) ^ ((long) c));
                        com.json.adqualitysdk.sdk.i.e.f51 = i3 + 1;
                    } else {
                        str = new String(cArr);
                    }
                }
            }
            return str;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            t.m1046(new a(iz.g(iz.this).m882(iz.e(iz.this, b((ViewConfiguration.getLongPressTimeout() >> 16) + 1, TextUtils.getOffsetBefore("", 0), (char) ((ViewConfiguration.getLongPressTimeout() >> 16) + 33998)).intern()))));
            int i = f5868g + 51;
            f5867f = i % 128;
            int i2 = i % 2;
        }
    }

    final class f extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static char[] f5871d = {'*', 'p', 'o', 's', 't', 'D', 'a', 'u', 'i', 'd', 'C', 'c', 'h', 'e', 'S', 'r', 'g', 'l', 'n', '\'', ' ', 'v', '.', ':', '+'};

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static char f5872e = 5;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static int f5873f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static int f5874g = 1;
        private /* synthetic */ int h;
        final /* synthetic */ c i;

        final class a extends il {
            a() {
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                f.this.i.mo270(new ArrayList());
            }
        }

        final class b extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private /* synthetic */ List f5876d;

            b(List list) {
                this.f5876d = list;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                f.this.i.mo270(this.f5876d);
            }
        }

        f(int i, c cVar) {
            this.h = i;
            this.i = cVar;
        }

        private static String b(byte b2, String str, int i) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (g.f56) {
                char[] cArr2 = f5871d;
                char c = f5872e;
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
                            g.f59 = g.f58 / c;
                            g.f55 = g.f58 % c;
                            g.f61 = g.f62 / c;
                            g.f57 = g.f62 % c;
                            if (g.f55 == g.f57) {
                                g.f59 = ((g.f59 + c) - 1) % c;
                                g.f61 = ((g.f61 + c) - 1) % c;
                                int i3 = (g.f59 * c) + g.f55;
                                int i4 = (g.f61 * c) + g.f57;
                                int i5 = g.f60;
                                cArr3[i5] = cArr2[i3];
                                cArr3[i5 + 1] = cArr2[i4];
                            } else if (g.f59 == g.f61) {
                                g.f55 = ((g.f55 + c) - 1) % c;
                                g.f57 = ((g.f57 + c) - 1) % c;
                                int i6 = (g.f59 * c) + g.f55;
                                int i7 = (g.f61 * c) + g.f57;
                                int i8 = g.f60;
                                cArr3[i8] = cArr2[i6];
                                cArr3[i8 + 1] = cArr2[i7];
                            } else {
                                int i9 = (g.f59 * c) + g.f57;
                                int i10 = (g.f61 * c) + g.f55;
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

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻐ */
        public final void mo375(Throwable th) {
            super.mo375(th);
            t.m1046(new a());
            int i = f5874g + 23;
            f5873f = i % 128;
            if (i % 2 != 0) {
                int i2 = 68 / 0;
            }
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            ArrayList arrayList = new ArrayList();
            int i = f5874g + 17;
            f5873f = i % 128;
            int i2 = i % 2;
            for (String str : iz.g(iz.this).m883(iz.e(iz.this, b((byte) (92 - TextUtils.indexOf((CharSequence) "", '0')), "\u0087", 1 - ((Process.getThreadPriority(0) + 20) >> 6)).intern()), this.h).values()) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    arrayList.add(new iv(jSONObject.getJSONObject(b((byte) (TextUtils.getOffsetAfter("", 0) + 35), "\u0002\u0003\u0004\u0000\u0006\u0007\u0001\t", (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) + 7).intern()), jSONObject.optString(b((byte) (9 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1))), "}}\t\u0005", 4 - ((Process.getThreadPriority(0) + 20) >> 6)).intern())));
                } catch (Exception unused) {
                    String strF = iz.f(iz.this);
                    String strIntern = b((byte) ((Process.myTid() >> 22) + 115), "\u000b\u0005\f\r\u000e\n\u0000\u0003\u0010\u0005\u0012\u000b", 12 - (KeyEvent.getMaxKeyCode() >> 16)).intern();
                    StringBuilder sb = new StringBuilder();
                    sb.append(b((byte) ((ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + 46), "\f\u0000\f\u0016\b\u0013\u0018\t\u0015\n\u0012\n\t\u0001\n\u0017\u0010\u000b\f\r\u000e\b\u0017\n\u0017\u000b\u0013\u0003\u0017\u0015\u0004\u0000\u0012\u0005\u0013\u0011\u0015\u0016\u0007\u0010\b\f\u0018\u0015", (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) + 43).intern());
                    sb.append(str);
                    m.m1028(strF, strIntern, sb.toString(), true);
                }
            }
            t.m1046(new b(arrayList));
        }
    }

    public iz(String str, String str2, ix ixVar) {
        this(str, str2, ixVar, (byte) 0);
    }

    private iz(String str, String str2, ix ixVar, byte b2) {
        this.f5856e = str2;
        this.f5857f = 10000;
        this.f5855d = str;
        this.f5858g = ixVar;
    }

    static /* synthetic */ int a(iz izVar) {
        int i = c + 119;
        int i2 = i % 128;
        b = i2;
        int i3 = i % 2;
        int i4 = i2 + 47;
        c = i4 % 128;
        int i5 = i4 % 2;
        return 10000;
    }

    private String b(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f5856e);
        sb.append(str);
        String string = sb.toString();
        int i = b + 87;
        c = i % 128;
        int i2 = i % 2;
        return string;
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

    private String d(iv ivVar) {
        int i = c + 41;
        b = i % 128;
        int i2 = i % 2;
        String strB = b(ivVar.m864());
        int i3 = c + 73;
        b = i3 % 128;
        if ((i3 % 2 != 0 ? '>' : ' ') != '>') {
            return strB;
        }
        throw null;
    }

    static /* synthetic */ String e(iz izVar, String str) {
        int i = b + 93;
        c = i % 128;
        if ((i % 2 == 0 ? ')' : '_') != ')') {
            return izVar.b(str);
        }
        izVar.b(str);
        throw null;
    }

    static /* synthetic */ String f(iz izVar) {
        int i = b + 59;
        c = i % 128;
        int i2 = i % 2;
        String strH = izVar.h();
        int i3 = b + 47;
        c = i3 % 128;
        if (i3 % 2 != 0) {
            return strH;
        }
        throw null;
    }

    static /* synthetic */ ix g(iz izVar) {
        int i = c + 15;
        int i2 = i % 128;
        b = i2;
        int i3 = i % 2;
        ix ixVar = izVar.f5858g;
        int i4 = i2 + 107;
        c = i4 % 128;
        if (i4 % 2 == 0) {
            throw null;
        }
        return ixVar;
    }

    private String h() {
        StringBuilder sb = new StringBuilder();
        sb.append(c("⫕ꭄ⦓꿧ⰿꊺ⃐ꄜ❼ꖼ㨏롂㻒벩", (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)) + 33203).intern());
        sb.append(this.f5855d);
        sb.append(c("⪿", 56844 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1))).intern());
        String string = sb.toString();
        int i = c + 77;
        b = i % 128;
        int i2 = i % 2;
        return string;
    }

    static /* synthetic */ String i(iz izVar, iv ivVar) {
        int i = c + 11;
        b = i % 128;
        int i2 = i % 2;
        String strD = izVar.d(ivVar);
        int i3 = b + 105;
        c = i3 % 128;
        if (i3 % 2 != 0) {
            return strD;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static iv m890(JSONObject jSONObject) {
        iv ivVar = new iv(jSONObject);
        int i = c + 89;
        b = i % 128;
        if ((i % 2 != 0 ? '5' : (char) 11) == 11) {
            return ivVar;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final void m891(iv ivVar) {
        ix.m872().post(new a(ivVar));
        int i = b + 5;
        c = i % 128;
        if (i % 2 != 0) {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final void m892(d dVar) {
        ix.m872().post(new e(dVar));
        int i = b + 27;
        c = i % 128;
        int i2 = i % 2;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m893(iv ivVar, il ilVar) {
        ix.m872().post(new b(ivVar, ilVar));
        int i = b + 53;
        c = i % 128;
        if (i % 2 != 0) {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m894(int i, c cVar) {
        ix.m872().post(new f(i, cVar));
        int i2 = b + 95;
        c = i2 % 128;
        int i3 = i2 % 2;
    }
}
