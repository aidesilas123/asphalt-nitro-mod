package com.json.adqualitysdk.sdk.i;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import java.io.UnsupportedEncodingException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class ir {
    private static String a = null;
    private static char[] b = null;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f5788d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f5789e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5790f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5791g = 1;
    private iu h;
    private boolean i = false;

    final class a implements c {
        private /* synthetic */ JSONObject a;
        private /* synthetic */ String b;

        a(JSONObject jSONObject, String str) {
            this.a = jSONObject;
            this.b = str;
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.ir.c
        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public final ip mo854() {
            return it.m856(this.a, this.b);
        }
    }

    final class b extends AsyncTask<Object, Object, Object> {
        private static long a = 2433117470880231001L;
        private static int b = 0;
        private static int c = 1;

        final class a extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private static long f5793d = -6739240528225850315L;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private static int f5794e = 0;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private static int f5795f = 1;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private /* synthetic */ ip f5796g;
            private /* synthetic */ is h;

            a(ip ipVar, is isVar) {
                this.f5796g = ipVar;
                this.h = isVar;
            }

            private static String b(String str, int i) {
                String str2;
                Object charArray = str;
                if (str != null) {
                    charArray = str.toCharArray();
                }
                char[] cArr = (char[]) charArray;
                synchronized (f.f54) {
                    char[] cArrM713 = f.m713(f5793d, cArr, i);
                    f.f52 = 4;
                    while (true) {
                        int i2 = f.f52;
                        if (i2 < cArrM713.length) {
                            f.f53 = i2 - 4;
                            cArrM713[f.f52] = (char) (((long) (cArrM713[r1] ^ cArrM713[r1 % 4])) ^ (((long) f.f53) * f5793d));
                            f.f52++;
                        } else {
                            str2 = new String(cArrM713, 4, cArrM713.length - 4);
                        }
                    }
                }
                return str2;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() throws Exception {
                int iM847;
                int i = f5794e;
                int i2 = i + 113;
                int i3 = i2 % 128;
                f5795f = i3;
                if ((i2 % 2 == 0 ? '2' : ',') != ',') {
                    throw null;
                }
                ip ipVar = this.f5796g;
                if ((ipVar != null ? 'K' : '2') != '2') {
                    int i4 = i + 121;
                    f5795f = i4 % 128;
                    int i5 = i4 % 2;
                    iM847 = ipVar.m843().m847();
                } else {
                    iM847 = -1;
                    int i6 = i3 + 79;
                    f5794e = i6 % 128;
                    int i7 = i6 % 2;
                }
                is isVar = this.h;
                ip ipVar2 = this.f5796g;
                StringBuilder sb = new StringBuilder();
                sb.append(b("ʇˀ얖槌㢦韛悸鍤눲颿\u31eb⋍捝젽苑\uf1eeმ筂刲育솸ꩡ⌼偛监\ue5ef\uf45b\uef6c☞ᓏ䖱븿흫䟴\u16ff䷔葂\uf763\ue7c8\u1c8d㖕♙뜝ꮺ\ueaaa内硠笜鯯肯쥁\u0a0e䭗㎁髌\ud964\uf863挀毺梘ꥱ鈴㲄➞庎쵄谀\uf6bfྩ粐嵩蘾벳", 1 - Gravity.getAbsoluteGravity(0, 0)).intern());
                sb.append(iM847);
                isVar.mo265(ipVar2, sb.toString());
            }
        }

        /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ir$b$b, reason: collision with other inner class name */
        final class C0346b extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private /* synthetic */ is f5797d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private /* synthetic */ ip f5798e;

            C0346b(is isVar, ip ipVar) {
                this.f5797d = isVar;
                this.f5798e = ipVar;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() throws Exception {
                this.f5797d.mo266(this.f5798e);
            }
        }

        final class c implements in {
            private /* synthetic */ is a;
            private /* synthetic */ c b;

            c(is isVar, c cVar) {
                this.a = isVar;
                this.b = cVar;
            }

            @Override // com.json.adqualitysdk.sdk.i.in
            /* JADX INFO: renamed from: ﾇ */
            public final void mo267() {
                ir.a(ir.this).m860(this);
                ir.c(ir.this, this.a, this.b);
            }
        }

        b() {
        }

        private void a(is isVar, c cVar) {
            int i = b + 93;
            c = i % 128;
            int i2 = i % 2;
            if ((!ir.a(ir.this).m858() ? '(' : '*') == '(') {
                c(isVar, cVar);
                int i3 = b + 1;
                c = i3 % 128;
                int i4 = i3 % 2;
                return;
            }
            try {
                ip ipVarMo854 = cVar.mo854();
                if (ipVarMo854 == null) {
                    t.m1046(new a(ipVarMo854, isVar));
                    return;
                }
                String strM855 = it.m855(ipVarMo854);
                String strF = ir.f();
                StringBuilder sb = new StringBuilder();
                sb.append(b("\uee1e铛\u1bf7麾\u058c裘ྤ뉗㥒뱯⍾ꘅⴶ큰囝\udddf䃺잔䪜\uf1a0璮כֿ縧\ue574栓\uef13鈦ᢆ鿆˥觭ಜ뎜㚦봃⁉Ꝥ⩬턟呢\udb35䇍쓏䯷컟痐", 31470 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1))).intern());
                sb.append(strM855);
                m.m1019(strF, sb.toString());
                t.m1046(new C0346b(isVar, ipVarMo854));
            } catch (Exception e2) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(b("\uee0c\ue604﹞\uf6a2컹웃\udf4b흈꾮Ʝ뿔됍豓蒪鲳铇洜敉綻痿䷈䉖婉助⫠⋗㬒㍋ஹξ", ExpandableListView.getPackedPositionType(0L) + 2099).intern());
                sb2.append(e2.getLocalizedMessage());
                isVar.mo265(null, sb2.toString());
            }
        }

        private static String b(String str, int i) {
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

        private void c(is isVar, c cVar) {
            ir.a(ir.this).m863(new c(isVar, cVar));
            int i = b + 61;
            c = i % 128;
            int i2 = i % 2;
        }

        @Override // android.os.AsyncTask
        protected final Object doInBackground(Object... objArr) {
            int i = c + 111;
            b = i % 128;
            int i2 = i % 2;
            a((is) objArr[0], (c) objArr[1]);
            int i3 = b + 7;
            c = i3 % 128;
            int i4 = i3 % 2;
            return null;
        }
    }

    interface c {
        /* JADX INFO: renamed from: ﻐ */
        ip mo854();
    }

    static {
        b();
        a = d(null, null, 127 - KeyEvent.getDeadChar(0, 0), "\u008f\u0086\u009d\u0083\u0082\u0083\u009c\u009a\u008f\u0089\u0097\u0088\u0086\u009b").intern();
        int i = f5790f + 27;
        f5791g = i % 128;
        if (i % 2 != 0) {
        } else {
            throw null;
        }
    }

    public ir(Context context) {
        this.h = new iu(context.getApplicationContext());
    }

    static /* synthetic */ iu a(ir irVar) {
        int i = f5790f;
        int i2 = i + 97;
        f5791g = i2 % 128;
        int i3 = i2 % 2;
        iu iuVar = irVar.h;
        int i4 = i + 95;
        f5791g = i4 % 128;
        int i5 = i4 % 2;
        return iuVar;
    }

    static void b() {
        f5788d = true;
        f5789e = true;
        c = 163;
        b = new char[]{248, 273, 260, 261, 271, 264, 195, 279, 274, 275, 278, 262, 280, 272, 277, 276, 268, 267, 245, 239, 235, 263, 282, 281, 246, 270, 241, 240, 266};
    }

    static /* synthetic */ void c(ir irVar, is isVar, c cVar) {
        int i = f5790f + 119;
        f5791g = i % 128;
        int i2 = i % 2;
        irVar.e(isVar, cVar);
        int i3 = f5790f + 93;
        f5791g = i3 % 128;
        int i4 = i3 % 2;
    }

    private static String d(int[] iArr, String str, int i, String str2) throws UnsupportedEncodingException {
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
            char[] cArr2 = b;
            int i2 = c;
            if (f5789e) {
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
            if (f5788d) {
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

    private void e(is isVar, c cVar) {
        if ((this.i ? '/' : (char) 25) != '/') {
            jt.m951(new b(), isVar, cVar);
            return;
        }
        int i = f5790f + 67;
        f5791g = i % 128;
        int i2 = i % 2;
        m.m1031(a, d(null, null, (ViewConfiguration.getMinimumFlingVelocity() >> 16) + 127, "\u0082\u0097\u0089\u0096\u0088\u008d\u0092\u008b\u0087\u008b\u0083\u0097\u0087\u008f\u0086\u009d\u0083\u0082\u0083\u009c\u009a\u008f\u0089\u0097\u0088\u0086\u009b\u0087\u0082\u0086\u0092\u0097\u0087\u0088\u008b\u0086\u008d\u0090\u0086\u0093\u0086\u009a\u0089\u0098\u0082\u0091\u0087\u0089\u0088\u0087\u0096\u0086\u0091\u008f\u0088\u0087\u0086\u0082\u0089\u0086\u008e\u0089\u0099").intern());
        int i3 = f5791g + 73;
        f5790f = i3 % 128;
        if (!(i3 % 2 != 0)) {
        } else {
            throw null;
        }
    }

    static /* synthetic */ String f() {
        int i = f5790f;
        int i2 = i + 123;
        f5791g = i2 % 128;
        if (i2 % 2 == 0) {
            throw null;
        }
        String str = a;
        int i3 = i + 83;
        f5791g = i3 % 128;
        int i4 = i3 % 2;
        return str;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final iu m851() {
        int i = f5791g + 63;
        f5790f = i % 128;
        if ((i % 2 != 0 ? '[' : '4') == '4') {
            return this.h;
        }
        int i2 = 63 / 0;
        return this.h;
    }

    @TargetApi(3)
    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m852(String str, JSONObject jSONObject, is isVar) {
        int i = f5791g + 35;
        f5790f = i % 128;
        int i2 = i % 2;
        if ((TextUtils.isEmpty(str) ? '^' : '5') != '^') {
            e(isVar, new a(jSONObject, str));
            return;
        }
        m.m1018(a, d(null, null, 126 - TextUtils.indexOf((CharSequence) "", '0'), "\u0096\u0086\u0096\u0091\u0098\u0089\u008f\u008a\u0087\u0088\u0089\u0082\u0087\u0086\u008f\u0086\u0097\u0087\u008f\u0086\u0085\u0096\u0082\u0083\u0095\u0086\u008b\u0082\u0089\u008a\u008b\u0086\u008f\u0087\u008f\u0089\u0087\u0094\u0093\u0081\u0087\u008f\u0086\u0092\u0088\u0091\u0086\u0087\u0088\u008b\u0086\u008d\u0090\u0086\u008f\u0087\u008e\u0089\u0088\u008b\u008d\u008c\u0087\u0088\u008b\u0089\u008a\u0087\u0089\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081").intern());
        int i3 = f5791g + 43;
        f5790f = i3 % 128;
        int i4 = i3 % 2;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m853() {
        int i = f5791g + 21;
        f5790f = i % 128;
        int i2 = i % 2;
        this.h.m862();
        this.i = true;
        int i3 = f5791g + 41;
        f5790f = i3 % 128;
        if (i3 % 2 != 0) {
            throw null;
        }
    }
}
