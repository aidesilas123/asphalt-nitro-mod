package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Process;
import android.os.SystemClock;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.view.ViewConfiguration;
import com.json.adqualitysdk.sdk.i.az;
import com.tapjoy.TJPlacement;
import com.tapjoy.TJPlacementListener;
import com.tapjoy.TJPlacementVideoListener;
import com.tapjoy.Tapjoy;
import com.tapjoy.w;
import com.tapjoy.y;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class bz extends az {
    private static long t = -293730189616849163L;
    private static long u = 0;
    private static int v = 0;
    private static char w = 62126;
    private static int x = 0;
    private static int y = 1;

    final class a implements az.d {
        a() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bz.y((y) list.get(0));
        }
    }

    final class b implements az.d {
        b() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bz.B((w) list.get(0));
        }
    }

    final class c implements az.d {
        c() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bz.q((w) list.get(0));
        }
    }

    final class d implements az.d {
        d() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bz.w((TJPlacement) list.get(0));
        }
    }

    final class e implements az.d {
        e() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bz.m((TJPlacement) list.get(0));
        }
    }

    final class f implements az.d {
        f() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bz.n((w) list.get(0));
        }
    }

    final class g implements az.d {
        g() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bz.A((TJPlacement) list.get(0));
        }
    }

    final class h implements az.d {
        h() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            bz.s((TJPlacement) list.get(0), (TJPlacementVideoListener) list.get(1));
            return null;
        }
    }

    public bz(String str) {
        super(str);
    }

    static /* synthetic */ TJPlacementVideoListener A(TJPlacement tJPlacement) {
        int i = x + 19;
        y = i % 128;
        int i2 = i % 2;
        TJPlacementVideoListener tJPlacementVideoListenerK = k(tJPlacement);
        int i3 = x + 15;
        y = i3 % 128;
        int i4 = i3 % 2;
        return tJPlacementVideoListenerK;
    }

    static /* synthetic */ String B(w wVar) {
        int i = x + 9;
        y = i % 128;
        if ((i % 2 == 0 ? (char) 23 : 'C') != 'C') {
            u(wVar);
            throw null;
        }
        String strU = u(wVar);
        int i2 = y + 89;
        x = i2 % 128;
        int i3 = i2 % 2;
        return strU;
    }

    private static TJPlacementVideoListener k(TJPlacement tJPlacement) {
        int i = y + 1;
        x = i % 128;
        int i2 = i % 2;
        TJPlacementVideoListener tJPlacementVideoListenerF = tJPlacement.f();
        int i3 = x + 97;
        y = i3 % 128;
        int i4 = i3 % 2;
        return tJPlacementVideoListenerF;
    }

    private static String l(w wVar) {
        int i = x + 101;
        y = i % 128;
        if ((i % 2 == 0 ? '1' : '9') == '9') {
            return wVar.f();
        }
        wVar.f();
        throw null;
    }

    static /* synthetic */ String m(TJPlacement tJPlacement) {
        int i = x + 17;
        y = i % 128;
        if ((i % 2 == 0 ? '*' : '-') != '*') {
            return t(tJPlacement);
        }
        t(tJPlacement);
        throw null;
    }

    static /* synthetic */ String n(w wVar) {
        int i = x + 103;
        y = i % 128;
        int i2 = i % 2;
        String strL = l(wVar);
        int i3 = x + 19;
        y = i3 % 128;
        int i4 = i3 % 2;
        return strL;
    }

    private static String o(y yVar) {
        int i = x + 89;
        y = i % 128;
        int i2 = i % 2;
        String lastUrl = yVar.getLastUrl();
        int i3 = x + 61;
        y = i3 % 128;
        int i4 = i3 % 2;
        return lastUrl;
    }

    private static TJPlacementListener p(TJPlacement tJPlacement) {
        int i = y + 11;
        x = i % 128;
        if ((i % 2 != 0 ? 'S' : '>') != '>') {
            tJPlacement.d();
            throw null;
        }
        TJPlacementListener tJPlacementListenerD = tJPlacement.d();
        int i2 = x + 111;
        y = i2 % 128;
        if (!(i2 % 2 == 0)) {
            return tJPlacementListenerD;
        }
        throw null;
    }

    static /* synthetic */ String q(w wVar) {
        int i = x + 19;
        y = i % 128;
        int i2 = i % 2;
        String strX = x(wVar);
        int i3 = y + 123;
        x = i3 % 128;
        if (!(i3 % 2 != 0)) {
            return strX;
        }
        throw null;
    }

    private static String r(String str, String str2, int i, char c2, String str3) {
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
                    cArr6[i5] = (char) (((((long) (cArr[i5] ^ cArr4[i4])) ^ u) ^ ((long) v)) ^ ((long) w));
                    j.f125 = i5 + 1;
                } else {
                    str4 = new String(cArr6);
                }
            }
        }
        return str4;
    }

    static /* synthetic */ void s(TJPlacement tJPlacement, TJPlacementVideoListener tJPlacementVideoListener) {
        int i = x + 37;
        y = i % 128;
        int i2 = i % 2;
        z(tJPlacement, tJPlacementVideoListener);
        int i3 = y + 121;
        x = i3 % 128;
        int i4 = i3 % 2;
    }

    private static String t(TJPlacement tJPlacement) {
        int i = x + 19;
        y = i % 128;
        int i2 = i % 2;
        String strE = tJPlacement.e();
        int i3 = x + 83;
        y = i3 % 128;
        int i4 = i3 % 2;
        return strE;
    }

    private static String u(w wVar) {
        int i = y + 101;
        x = i % 128;
        if (i % 2 == 0) {
            return wVar.i();
        }
        wVar.i();
        throw null;
    }

    private static String v(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (com.json.adqualitysdk.sdk.i.h.f63) {
            com.json.adqualitysdk.sdk.i.h.f64 = i;
            char[] cArr2 = new char[cArr.length];
            com.json.adqualitysdk.sdk.i.h.f65 = 0;
            while (true) {
                int i2 = com.json.adqualitysdk.sdk.i.h.f65;
                if (i2 < cArr.length) {
                    cArr2[i2] = (char) (((long) (cArr[i2] ^ (com.json.adqualitysdk.sdk.i.h.f64 * i2))) ^ t);
                    com.json.adqualitysdk.sdk.i.h.f65++;
                } else {
                    str2 = new String(cArr2);
                }
            }
        }
        return str2;
    }

    static /* synthetic */ TJPlacementListener w(TJPlacement tJPlacement) {
        int i = x + 109;
        y = i % 128;
        int i2 = i % 2;
        TJPlacementListener tJPlacementListenerP = p(tJPlacement);
        int i3 = y + 103;
        x = i3 % 128;
        if ((i3 % 2 != 0 ? (char) 28 : 'L') != 28) {
            return tJPlacementListenerP;
        }
        throw null;
    }

    private static String x(w wVar) {
        int i = y + 79;
        x = i % 128;
        int i2 = i % 2;
        String strK = wVar.k();
        int i3 = y + 125;
        x = i3 % 128;
        int i4 = i3 % 2;
        return strK;
    }

    static /* synthetic */ String y(y yVar) {
        int i = x + 5;
        y = i % 128;
        int i2 = i % 2;
        String strO = o(yVar);
        int i3 = y + 53;
        x = i3 % 128;
        if ((i3 % 2 != 0 ? (char) 5 : '%') != 5) {
            return strO;
        }
        int i4 = 33 / 0;
        return strO;
    }

    private static void z(TJPlacement tJPlacement, TJPlacementVideoListener tJPlacementVideoListener) {
        int i = y + 109;
        x = i % 128;
        int i2 = i % 2;
        tJPlacement.i(tJPlacementVideoListener);
        int i3 = y + 83;
        x = i3 % 128;
        int i4 = i3 % 2;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    final Map<String, az.d> j() {
        HashMap map = new HashMap();
        map.put(v("庒\uea4d㜻䀲跭훅掸겛\uf870Օ丹鯾ⓧ熭몎왣", Color.blue(0) + 46301).intern(), new b());
        map.put(r("酐䖗฿ﰬ", "\u0000\u0000\u0000\u0000", ViewConfiguration.getScrollBarFadeDuration() >> 16, (char) (11278 - Drawable.resolveOpacity(0, 0)), "郧篮\uef83퐽\uf086\uf68b").intern(), new c());
        map.put(v("庒\u0cdb益ꡜឭ엶덇Ẫ쳈먥桫힣蔟獉\ude8a", (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) + 21066).intern(), new f());
        map.put(r("장ᕣ\udc41\ueee9", "\u0000\u0000\u0000\u0000", Color.blue(0) + 1091920839, (char) (ViewConfiguration.getTouchSlop() >> 8), "믰♖븪郹⎿뛔÷").intern(), new e());
        map.put(r("יּ\uf2e7ᨧ训", "\u0000\u0000\u0000\u0000", 670230523 - (ViewConfiguration.getLongPressTimeout() >> 16), (char) TextUtils.indexOf("", "", 0), "⚌㼩ᰆἦ콴좜鿯ﯓ䇗爲꠳").intern(), new d());
        map.put(r("᳥唔\ue7c8ꄻ", "\u0000\u0000\u0000\u0000", Drawable.resolveOpacity(0, 0), (char) (15335 - (ViewConfiguration.getLongPressTimeout() >> 16)), "蟜⿄냺\uf42b쟡菽湅⣞淍☳禁\uf4a9쵅꿔姘्").intern(), new g());
        map.put(r("娦쑩國従", "\u0000\u0000\u0000\u0000", AndroidCharacter.getMirror('0') - '0', (char) (37719 - (Process.myTid() >> 22)), "红䞈ﴺ䖜氚욛ᙏ⋓伸\ued59ⲧ亓렅\ua8c6핌\u0af2").intern(), new h());
        map.put(v("庒敥⥫\ued66녀畏㤿ﴓ脯䔄", 15348 - Process.getGidForName("")).intern(), new a());
        int i = x + 79;
        y = i % 128;
        int i2 = i % 2;
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0402  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x026c  */
    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ｋ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.lang.Class mo384(java.lang.String r17) {
        /*
            Method dump skipped, instruction units count: 1252
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.bz.mo384(java.lang.String):java.lang.Class");
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﾇ */
    public final String mo385() {
        int i = x + 121;
        y = i % 128;
        int i2 = i % 2;
        String version = Tapjoy.getVersion();
        int i3 = y + 47;
        x = i3 % 128;
        if (i3 % 2 == 0) {
            return version;
        }
        throw null;
    }
}
