package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.json.adqualitysdk.sdk.i.az;
import com.vungle.warren.VungleApiClient;
import com.vungle.warren.model.Advertisement;
import com.vungle.warren.model.Placement;
import com.vungle.warren.persistence.Repository;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ce extends az {
    private static long t = 8773943119037498594L;
    private static int u = 144;
    private static int v = 0;
    private static int w = 1;
    private String x;

    final class a implements az.d {
        a() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return ce.u((Advertisement) list.get(0));
        }
    }

    final class b implements az.d {
        b() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return ce.l((Repository) list.get(0), (String) list.get(1));
        }
    }

    final class c implements az.d {
        c() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return ce.o((Advertisement) list.get(0));
        }
    }

    final class d implements az.d {
        d() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return Boolean.valueOf(ce.w((Placement) list.get(0)));
        }
    }

    final class e implements az.d {
        e() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return ce.x((Advertisement) list.get(0));
        }
    }

    public ce(String str) {
        super(str);
    }

    private static Map<String, String> k(Advertisement advertisement) {
        int i = v + 67;
        w = i % 128;
        if ((i % 2 == 0 ? '4' : (char) 15) == '4') {
            advertisement.getDownloadableUrls();
            throw null;
        }
        Map<String, String> downloadableUrls = advertisement.getDownloadableUrls();
        int i2 = v + 123;
        w = i2 % 128;
        if (!(i2 % 2 == 0)) {
            return downloadableUrls;
        }
        int i3 = 50 / 0;
        return downloadableUrls;
    }

    static /* synthetic */ Placement l(Repository repository, String str) {
        int i = v + 31;
        w = i % 128;
        if ((i % 2 == 0 ? (char) 3 : 'E') == 3) {
            q(repository, str);
            throw null;
        }
        Placement placementQ = q(repository, str);
        int i2 = w + 85;
        v = i2 % 128;
        if (i2 % 2 == 0) {
            return placementQ;
        }
        throw null;
    }

    private static Class m() {
        int i = w + 81;
        v = i % 128;
        if (i % 2 != 0) {
            throw null;
        }
        return VungleApiClient.class;
    }

    private static String n(Advertisement advertisement) {
        int i = v + 15;
        w = i % 128;
        int i2 = i % 2;
        String campaign = advertisement.getCampaign();
        int i3 = v + 97;
        w = i3 % 128;
        if (i3 % 2 != 0) {
            return campaign;
        }
        int i4 = 47 / 0;
        return campaign;
    }

    static /* synthetic */ Map o(Advertisement advertisement) {
        int i = w + 11;
        v = i % 128;
        int i2 = i % 2;
        Map<String, String> mapK = k(advertisement);
        int i3 = w + 15;
        v = i3 % 128;
        if ((i3 % 2 != 0 ? (char) 24 : '#') == '#') {
            return mapK;
        }
        int i4 = 96 / 0;
        return mapK;
    }

    private static boolean p(Placement placement) {
        int i = w + 5;
        v = i % 128;
        if (i % 2 == 0) {
            return placement.isIncentivized();
        }
        placement.isIncentivized();
        throw null;
    }

    private static Placement q(Repository repository, String str) {
        int i = v + 31;
        w = i % 128;
        int i2 = i % 2;
        Placement placement = (Placement) repository.load(str, Placement.class).get();
        int i3 = w + 39;
        v = i3 % 128;
        if (i3 % 2 == 0) {
            return placement;
        }
        int i4 = 76 / 0;
        return placement;
    }

    private static String r() {
        int i = v + 111;
        w = i % 128;
        int i2 = i % 2;
        Class clsM = m();
        hq.m770().m772();
        try {
            Iterator<Field> it = hq.m770().m772().m731(clsM, hj.m730().m746(String.class).m747(8).m748(16).m749()).iterator();
            while (it.hasNext()) {
                String str = (String) it.next().get(null);
                if (!str.startsWith(v("蒴\ue222䧦낚Ṛ蔎\uec9d䩼넫ᣅ螟\ued4b", 26293 - KeyEvent.keyCodeFromString("")).intern())) {
                    int i3 = v + 39;
                    w = i3 % 128;
                    if (!(i3 % 2 != 0)) {
                        if ((str.startsWith(s(2199 % (SystemClock.elapsedRealtime() > 1L ? 1 : (SystemClock.elapsedRealtime() == 1L ? 0 : -1)), true, 16777225 / Color.rgb(1, 1, 0), 97 >> (PointF.length(2.0f, 2.0f) > 1.0f ? 1 : (PointF.length(2.0f, 2.0f) == 1.0f ? 0 : -1)), "\t\f\uffde\uffff\u0006\u0001\b\u000f\ufff0\ufffe\u0003").intern()) ? ',' : 'D') != 'D') {
                        }
                    } else if (str.startsWith(s(247 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)), true, Color.rgb(0, 0, 0) + 16777225, (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + 11, "\t\f\uffde\uffff\u0006\u0001\b\u000f\ufff0\ufffe\u0003").intern())) {
                    }
                }
                return str.split(v("蓙", (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) + 33048).intern())[0];
            }
        } catch (Exception unused) {
        }
        int i4 = v + 53;
        w = i4 % 128;
        int i5 = i4 % 2;
        return null;
    }

    private static String s(int i, boolean z, int i2, int i3, String str) {
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
                cArr2[i5] = (char) (cArr2[i5] - u);
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

    private static String t(Advertisement advertisement) {
        int i = w + 65;
        v = i % 128;
        if ((i % 2 != 0 ? 'a' : (char) 15) != 15) {
            advertisement.getAdMarketId();
            throw null;
        }
        String adMarketId = advertisement.getAdMarketId();
        int i2 = w + 31;
        v = i2 % 128;
        if ((i2 % 2 == 0 ? '%' : (char) 31) == '%') {
            return adMarketId;
        }
        throw null;
    }

    static /* synthetic */ String u(Advertisement advertisement) {
        int i = w + 53;
        v = i % 128;
        if ((i % 2 != 0 ? '2' : (char) 21) == '2') {
            n(advertisement);
            throw null;
        }
        String strN = n(advertisement);
        int i2 = w + 125;
        v = i2 % 128;
        int i3 = i2 % 2;
        return strN;
    }

    private static String v(String str, int i) {
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
                    cArr2[i2] = (char) (((long) (cArr[i2] ^ (h.f64 * i2))) ^ t);
                    h.f65++;
                } else {
                    str2 = new String(cArr2);
                }
            }
        }
        return str2;
    }

    static /* synthetic */ boolean w(Placement placement) {
        int i = v + 61;
        w = i % 128;
        int i2 = i % 2;
        boolean zP = p(placement);
        int i3 = v + 9;
        w = i3 % 128;
        int i4 = i3 % 2;
        return zP;
    }

    static /* synthetic */ String x(Advertisement advertisement) {
        int i = w + 3;
        v = i % 128;
        if ((i % 2 != 0 ? '@' : 'F') == 'F') {
            return t(advertisement);
        }
        t(advertisement);
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    final Map<String, az.d> j() {
        HashMap map = new HashMap();
        map.put(v("蒅귢활\uf89dℚ䩺糟ꕄ쾧\uf00a\u197e䏁", (ViewConfiguration.getKeyRepeatDelay() >> 16) + 10597).intern(), new b());
        map.put(v("蒋튨⣙蘧\udc65⮚臚\udf19㕃貕\udab1ル踫\ue463", 22072 - TextUtils.indexOf((CharSequence) "", '0', 0, 0)).intern(), new d());
        map.put(s(241 - (ViewConfiguration.getWindowTouchSlop() >> 8), false, KeyEvent.getDeadChar(0, 0) + 7, Drawable.resolveOpacity(0, 0) + 13, "\u0000\u0011\n\u0004\u0013￨\u0003\u0006\u0004\u0013￠\u0003￬").intern(), new e());
        map.put(v("蒅鸶뇴풲\uee47Ǻ⒴㹔儃璼蹦", (ViewConfiguration.getScrollDefaultDelay() >> 16) + 6833).intern(), new a());
        map.put(s(View.MeasureSpec.getSize(0) + 247, false, 6 - TextUtils.getOffsetAfter("", 0), 19 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), "\u0005\ufffe￮\u000b\u0005\f\u0000\ufffe\r\uffdd\b\u0010\u0007\u0005\b\ufffa�\ufffa\ufffb").intern(), new c());
        int i = v + 67;
        w = i % 128;
        if (i % 2 != 0) {
            return map;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﮐ */
    public final String mo378() {
        int i = w + 105;
        v = i % 128;
        if (!(i % 2 == 0)) {
            throw null;
        }
        if (this.x == null) {
            String strR = r();
            this.x = strR;
            m386(strR);
            int i2 = w + 15;
            v = i2 % 128;
            int i3 = i2 % 2;
        }
        return this.x;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:149:0x04ca  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x050f  */
    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ｋ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.lang.Class mo384(java.lang.String r21) {
        /*
            Method dump skipped, instruction units count: 1590
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.ce.mo384(java.lang.String):java.lang.Class");
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﾇ */
    public final String mo385() {
        String strMo378 = mo378();
        if (strMo378 != null) {
            int i = w + 57;
            v = i % 128;
            int i2 = i % 2;
            return strMo378.split(v("蓍", 6521 - TextUtils.indexOf("", "")).intern())[1];
        }
        int i3 = w + 41;
        v = i3 % 128;
        if ((i3 % 2 != 0 ? (char) 30 : '\b') != 30) {
            return null;
        }
        throw null;
    }
}
