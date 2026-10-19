package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.json.adqualitysdk.sdk.i.az;
import com.qq.e.ads.LiteAbstractAD;
import com.qq.e.ads.interstitial2.UnifiedInterstitialAD;
import com.qq.e.ads.rewardvideo.RewardVideoAD;
import com.qq.e.comm.managers.GDTAdSdk;
import com.qq.e.comm.managers.IGDTAdManager;
import com.qq.e.comm.managers.status.APPStatus;
import com.qq.e.comm.managers.status.SDKStatus;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class bx extends az {
    private static long t = -2368166767211023242L;
    private static long u = 0;
    private static int v = 0;
    private static char w = 45103;
    private static int x = 0;
    private static int y = 1;

    final class a implements az.d {
        a() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bx.o((APPStatus) list.get(0));
        }
    }

    final class b implements az.d {
        b() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bx.l();
        }
    }

    final class c implements az.d {
        c() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bx.x((RewardVideoAD) list.get(0));
        }
    }

    final class d implements az.d {
        d() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bx.w((LiteAbstractAD) list.get(0));
        }
    }

    final class e implements az.d {
        e() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return Integer.valueOf(bx.s((RewardVideoAD) list.get(0)));
        }
    }

    final class f implements az.d {
        f() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bx.n((UnifiedInterstitialAD) list.get(0));
        }
    }

    public bx(String str) {
        super(str);
    }

    private static int k(RewardVideoAD rewardVideoAD) {
        int i = y + 53;
        x = i % 128;
        int i2 = i % 2;
        int rewardAdType = rewardVideoAD.getRewardAdType();
        int i3 = y + 37;
        x = i3 % 128;
        int i4 = i3 % 2;
        return rewardAdType;
    }

    static /* synthetic */ IGDTAdManager l() {
        int i = x + 65;
        y = i % 128;
        int i2 = i % 2;
        IGDTAdManager iGDTAdManagerT = t();
        int i3 = y + 13;
        x = i3 % 128;
        int i4 = i3 % 2;
        return iGDTAdManagerT;
    }

    private static Map<String, Object> m(LiteAbstractAD liteAbstractAD) {
        int i = x + 51;
        y = i % 128;
        if ((i % 2 == 0 ? ']' : '0') == '0') {
            return liteAbstractAD.getExtraInfo();
        }
        liteAbstractAD.getExtraInfo();
        throw null;
    }

    static /* synthetic */ Map n(UnifiedInterstitialAD unifiedInterstitialAD) {
        int i = y + 85;
        x = i % 128;
        boolean z = i % 2 != 0;
        Map mapQ = q(unifiedInterstitialAD);
        if (z) {
            int i2 = 36 / 0;
        }
        int i3 = y + 3;
        x = i3 % 128;
        if ((i3 % 2 != 0 ? 'R' : '\t') == '\t') {
            return mapQ;
        }
        int i4 = 90 / 0;
        return mapQ;
    }

    static /* synthetic */ String o(APPStatus aPPStatus) {
        int i = x + 63;
        y = i % 128;
        int i2 = i % 2;
        String strU = u(aPPStatus);
        int i3 = y + 77;
        x = i3 % 128;
        int i4 = i3 % 2;
        return strU;
    }

    private static String p(String str, String str2, int i, char c2, String str3) {
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

    private static Map q(UnifiedInterstitialAD unifiedInterstitialAD) {
        int i = x + 19;
        y = i % 128;
        int i2 = i % 2;
        Map ext = unifiedInterstitialAD.getExt();
        int i3 = y + 7;
        x = i3 % 128;
        if (i3 % 2 != 0) {
            throw null;
        }
        return ext;
    }

    private static Map<String, String> r(RewardVideoAD rewardVideoAD) {
        int i = y + 1;
        x = i % 128;
        int i2 = i % 2;
        Map<String, String> exts = rewardVideoAD.getExts();
        int i3 = y + 11;
        x = i3 % 128;
        int i4 = i3 % 2;
        return exts;
    }

    static /* synthetic */ int s(RewardVideoAD rewardVideoAD) {
        int i = x + 17;
        y = i % 128;
        boolean z = i % 2 == 0;
        int iK = k(rewardVideoAD);
        if (z) {
            int i2 = 43 / 0;
        }
        return iK;
    }

    private static IGDTAdManager t() {
        int i = y + 117;
        x = i % 128;
        if (i % 2 != 0) {
            GDTAdSdk.getGDTAdManger();
            throw null;
        }
        IGDTAdManager gDTAdManger = GDTAdSdk.getGDTAdManger();
        int i2 = y + 35;
        x = i2 % 128;
        int i3 = i2 % 2;
        return gDTAdManger;
    }

    private static String u(APPStatus aPPStatus) {
        int i = x + 69;
        y = i % 128;
        int i2 = i % 2;
        String appid = aPPStatus.getAPPID();
        int i3 = x + 75;
        y = i3 % 128;
        int i4 = i3 % 2;
        return appid;
    }

    private static String v(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (com.json.adqualitysdk.sdk.i.f.f54) {
            char[] cArrM713 = com.json.adqualitysdk.sdk.i.f.m713(t, cArr, i);
            com.json.adqualitysdk.sdk.i.f.f52 = 4;
            while (true) {
                int i2 = com.json.adqualitysdk.sdk.i.f.f52;
                if (i2 < cArrM713.length) {
                    com.json.adqualitysdk.sdk.i.f.f53 = i2 - 4;
                    cArrM713[com.json.adqualitysdk.sdk.i.f.f52] = (char) (((long) (cArrM713[r1] ^ cArrM713[r1 % 4])) ^ (((long) com.json.adqualitysdk.sdk.i.f.f53) * t));
                    com.json.adqualitysdk.sdk.i.f.f52++;
                } else {
                    str2 = new String(cArrM713, 4, cArrM713.length - 4);
                }
            }
        }
        return str2;
    }

    static /* synthetic */ Map w(LiteAbstractAD liteAbstractAD) {
        int i = y + 105;
        x = i % 128;
        int i2 = i % 2;
        Map<String, Object> mapM = m(liteAbstractAD);
        int i3 = y + 33;
        x = i3 % 128;
        int i4 = i3 % 2;
        return mapM;
    }

    static /* synthetic */ Map x(RewardVideoAD rewardVideoAD) {
        int i = y + 37;
        x = i % 128;
        int i2 = i % 2;
        Map<String, String> mapR = r(rewardVideoAD);
        int i3 = y + 59;
        x = i3 % 128;
        int i4 = i3 % 2;
        return mapR;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    final Map<String, az.d> j() {
        HashMap map = new HashMap();
        map.put(p("벟Ɱﺦꬆ", "\u0000\u0000\u0000\u0000", (-1) - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)), (char) ((TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)) + 1790), "왒๙꾙\uf078踻Ꚗ䯑댜腁䄲噟촨\ue048⧓").intern(), new b());
        map.put(p("낢䚿면ם", "\u0000\u0000\u0000\u0000", View.MeasureSpec.makeMeasureSpec(0, 0), (char) (1 - (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1))), "棂撺難\uf417胚亽Ჺ\uf335").intern(), new a());
        map.put(v("ṕḲ硊ౙꛉ\u2d6a쿵乑灍䩣\uf4e7弖붬ᐑ슫焰", ViewConfiguration.getWindowTouchSlop() >> 8).intern(), new d());
        map.put(v("琱瑖菠\uf7f3ᇬ犭ꖌ若⾝뇊䏑Õퟥ\uef94疌⻛ǀṽꝥ", ExpandableListView.getPackedPositionChild(0L) + 1).intern(), new e());
        map.put(p("谡\uf76c崤娻", "\u0000\u0000\u0000\u0000", (ViewConfiguration.getTouchSlop() >> 8) + 620194956, (char) (Color.green(0) + 15197), "䆦\ue530\ue949ίᜒ迤픠悏뚫۸ཅ渻ꓥꉎ渼").intern(), new c());
        map.put(v("챂찥紅ख\ud8fb눢ᷴっ\uef09伬諂쁁澁ᅄ벖\uee6f릣\ue089湻㶦譚늴", View.combineMeasuredStates(0, 0)).intern(), new f());
        int i = x + 67;
        y = i % 128;
        int i2 = i % 2;
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:10:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0247  */
    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ｋ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.lang.Class mo384(java.lang.String r18) {
        /*
            Method dump skipped, instruction units count: 1210
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.bx.mo384(java.lang.String):java.lang.Class");
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﾇ */
    public final String mo385() {
        String integrationSDKVersion;
        int i = x + 7;
        y = i % 128;
        if (!(i % 2 == 0)) {
            integrationSDKVersion = SDKStatus.getIntegrationSDKVersion();
        } else {
            integrationSDKVersion = SDKStatus.getIntegrationSDKVersion();
            int i2 = 55 / 0;
        }
        int i3 = x + 71;
        y = i3 % 128;
        int i4 = i3 % 2;
        return integrationSDKVersion;
    }
}
