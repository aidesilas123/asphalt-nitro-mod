package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.ImageFormat;
import android.media.AudioTrack;
import android.view.View;
import android.view.ViewConfiguration;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class u {
    private static char a = 18268;
    private static char b = 58660;
    private static char c = 52688;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static char f5995d = 3398;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5996e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5997f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Map<String, w> f5998g = new HashMap();
    private Map<String, ac> h = new HashMap();
    private Map<String, ab> i = new HashMap();

    final class a extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ JSONObject f5999d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ io f6000e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private /* synthetic */ l f6001f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private /* synthetic */ je f6002g;

        a(JSONObject jSONObject, io ioVar, l lVar, je jeVar) {
            this.f5999d = jSONObject;
            this.f6000e = ioVar;
            this.f6001f = lVar;
            this.f6002g = jeVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            String strC = u.c(this.f5999d);
            w wVar = (w) u.d(u.this).get(strC);
            if (wVar == null) {
                wVar = new w(this.f5999d, this.f6000e);
                u.d(u.this).put(strC, wVar);
            } else {
                wVar.h(this.f6000e);
                wVar.m1066(this.f5999d);
            }
            wVar.m1070(this.f6001f);
            wVar.m1068(this.f6002g);
        }
    }

    final class b extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ JSONObject f6003d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ im f6004e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private /* synthetic */ s f6005f;

        b(JSONObject jSONObject, im imVar, s sVar) {
            this.f6003d = jSONObject;
            this.f6004e = imVar;
            this.f6005f = sVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            String strC = u.c(this.f6003d);
            ab abVar = (ab) u.f(u.this).get(strC);
            if (abVar == null) {
                abVar = new ab(this.f6003d, this.f6004e);
                u.f(u.this).put(strC, abVar);
            } else {
                abVar.m(this.f6003d, this.f6004e);
            }
            abVar.m1070(this.f6005f);
        }
    }

    final class c extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ JSONObject f6007d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ x f6008e;

        c(JSONObject jSONObject, x xVar) {
            this.f6007d = jSONObject;
            this.f6008e = xVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            String strC = u.c(this.f6007d);
            ac acVar = (ac) u.b(u.this).get(strC);
            if (acVar == null) {
                acVar = new ac(this.f6007d);
                u.b(u.this).put(strC, acVar);
            } else {
                acVar.m237(this.f6007d);
            }
            acVar.m1070(this.f6008e);
        }
    }

    final class d extends il {
        d() {
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            ArrayList arrayList = new ArrayList(u.d(u.this).values());
            u.d(u.this).clear();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((w) it.next()).m1067();
            }
        }
    }

    final class e extends il {
        e() {
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            ArrayList arrayList = new ArrayList(u.b(u.this).values());
            u.b(u.this).clear();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((ac) it.next()).m238();
            }
        }
    }

    final class f extends il {
        f() {
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            ArrayList arrayList = new ArrayList(u.f(u.this).values());
            u.f(u.this).clear();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((ab) it.next()).g();
            }
        }
    }

    private static String a(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (o.f139) {
            char[] cArr2 = new char[cArr.length];
            o.f138 = 0;
            char[] cArr3 = new char[2];
            while (true) {
                int i2 = o.f138;
                if (i2 < cArr.length) {
                    cArr3[0] = cArr[i2];
                    cArr3[1] = cArr[i2 + 1];
                    int i3 = 58224;
                    for (int i4 = 0; i4 < 16; i4++) {
                        cArr3[1] = (char) (cArr3[1] - (((cArr3[0] + i3) ^ ((cArr3[0] << 4) + c)) ^ ((cArr3[0] >>> 5) + f5995d)));
                        cArr3[0] = (char) (cArr3[0] - (((cArr3[1] + i3) ^ ((cArr3[1] << 4) + a)) ^ ((cArr3[1] >>> 5) + b)));
                        i3 -= 40503;
                    }
                    int i5 = o.f138;
                    cArr2[i5] = cArr3[0];
                    cArr2[i5 + 1] = cArr3[1];
                    o.f138 = i5 + 2;
                } else {
                    str2 = new String(cArr2, 0, i);
                }
            }
        }
        return str2;
    }

    static /* synthetic */ Map b(u uVar) {
        int i = f5997f;
        int i2 = i + 81;
        f5996e = i2 % 128;
        int i3 = i2 % 2;
        Map<String, ac> map = uVar.h;
        int i4 = i + 13;
        f5996e = i4 % 128;
        int i5 = i4 % 2;
        return map;
    }

    static /* synthetic */ String c(JSONObject jSONObject) {
        int i = f5996e + 105;
        f5997f = i % 128;
        int i2 = i % 2;
        String strE = e(jSONObject);
        int i3 = f5996e + 5;
        f5997f = i3 % 128;
        int i4 = i3 % 2;
        return strE;
    }

    static /* synthetic */ Map d(u uVar) {
        int i = f5996e;
        int i2 = i + 61;
        f5997f = i2 % 128;
        int i3 = i2 % 2;
        Map<String, w> map = uVar.f5998g;
        int i4 = i + 31;
        f5997f = i4 % 128;
        if (i4 % 2 != 0) {
            return map;
        }
        throw null;
    }

    private static String e(JSONObject jSONObject) {
        StringBuilder sb = new StringBuilder();
        sb.append(jSONObject.optString(a("拻╽ㅈꂃ鏁큎쇭棐썯✸\uf75c㓍ᯝᵡ", 14 - Color.alpha(0)).intern()));
        sb.append(a("趆跃", 1 - View.combineMeasuredStates(0, 0)).intern());
        sb.append(jSONObject.optString(a("噕阆约믟\ude81\uf6bc믻賯\ue9f7孥넓ꍔ啼弣", (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 14).intern()));
        sb.append(jSONObject.optString(a("믻賯ﴮꊅ샣篤嘫藴滥ꖣ⇮ந暯傆", ImageFormat.getBitsPerPixel(0) + 14).intern()));
        sb.append(jSONObject.optString(a("噕阆ꄌ墷ﴮꊅ샣篤嘫藴滥ꖣ⇮ந暯傆", (ViewConfiguration.getKeyRepeatDelay() >> 16) + 15).intern()));
        String string = sb.toString();
        int i = f5996e + 77;
        f5997f = i % 128;
        int i2 = i % 2;
        return string;
    }

    static /* synthetic */ Map f(u uVar) {
        int i = f5996e + 47;
        int i2 = i % 128;
        f5997f = i2;
        int i3 = i % 2;
        Map<String, ab> map = uVar.i;
        int i4 = i2 + 121;
        f5996e = i4 % 128;
        int i5 = i4 % 2;
        return map;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final void m1047() {
        t.m1046(new d());
        int i = f5997f + 23;
        f5996e = i % 128;
        int i2 = i % 2;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m1048(JSONObject jSONObject, x xVar) {
        t.m1046(new c(jSONObject, xVar));
        int i = f5997f + 65;
        f5996e = i % 128;
        if ((i % 2 != 0 ? (char) 31 : (char) 15) != 31) {
            return;
        }
        int i2 = 86 / 0;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final void m1049() {
        t.m1046(new f());
        int i = f5996e + 89;
        f5997f = i % 128;
        int i2 = i % 2;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final void m1050(JSONObject jSONObject, l lVar, je jeVar, io ioVar) {
        t.m1046(new a(jSONObject, ioVar, lVar, jeVar));
        int i = f5996e + 37;
        f5997f = i % 128;
        int i2 = i % 2;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1051() {
        t.m1046(new e());
        int i = f5996e + 75;
        f5997f = i % 128;
        if (i % 2 == 0) {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1052(JSONObject jSONObject, s sVar) {
        int i = f5996e + 109;
        f5997f = i % 128;
        boolean z = i % 2 != 0;
        m1053(jSONObject, sVar, null);
        if (z) {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1053(JSONObject jSONObject, s sVar, im imVar) {
        t.m1046(new b(jSONObject, imVar, sVar));
        int i = f5997f + 51;
        f5996e = i % 128;
        if (i % 2 != 0) {
            int i2 = 21 / 0;
        }
    }
}
