package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.media.AudioTrack;
import android.os.Process;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.five_corp.ad.CreativeType;
import com.five_corp.ad.FiveAd;
import com.five_corp.ad.FiveAdConfig;
import com.five_corp.ad.FiveAdCustomLayout;
import com.five_corp.ad.FiveAdInterface;
import com.five_corp.ad.FiveAdListener;
import com.five_corp.ad.FiveAdLoadListener;
import com.five_corp.ad.FiveAdViewEventListener;
import com.json.adqualitysdk.sdk.i.az;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class bm extends az {
    private static long t = -5354702149387027735L;
    private static char[] u = {'F', 19246, 38648, 57776, 11613, 30727, 50153, 3742, 23126, 42265, 61615, 15466, 4197, 23309, 34523, 61843, 15742, 26660, 54218, 7847, 19048, 46376, 57482, 11331, 38715, 49881, 3512, 31077, 42022, 61408, 40841, 54466, 2313, 32273, 45712, 59360, 23606, 37246, 50573, 15094, 28483, 41877, 6350, 19807, 33385, 63143, 11188, 24603, 54653, 2521, 32259, 45944, 59284, 23752, 37175, 50806, 15016, 28664, 42051, 6317, 19929, 33290, 63333, 11192, 24816, 12803, 31083, 42173, 54261, 7960, 19010, 61865, 15579, 26639, 38743, 49890, 3644, 23118, 4390, 52464, 48056, 30549, 8719, 39403, 21655, 'D', 65298, 43708, 26211, 56637, 35056, 18319, 'F', 19246, 38648, 57776, 11613, 30727, 50147, 3743, 23116, 42266, 61620, 15486, 34592, 54002, 7574, 26944, 46097, 65499, 64491, 45187, 27989, 6685, 55024, 33706, 14420, 62760, 41460, 24230, 2830, 'F', 19246, 38648, 57776, 11613, 30727, 50150, 3742, 23129, 42267, 61578, 15460, 34599, 53999, 7559, 26951, 46101, 65477, 'g', 19234, 38650, 57748, 11628, 30739, 50147, 3733, 23166, 42253, 61609, 15456, 34581, 54015, 7585, 26950, 46110, 65489, 19095, 38434, 29601, 14564, 58684, 37461, 24243, 3027, 45065, 32118, 10650, 55024, 33646, 20415, 62711, 41263, 28226, 6798, 51157, 35860, 14699, 58863, 37413, 24417, 2965, 45251, 4152, 23421, 34469, 61900, 15658, 26698, 54160, 7919, 18947, 46441, 57591, 11302, 38766, 49846, 3547, 30999, 42060, 61325, 23285, 34427, 61876, 'g', 19234, 38650, 57747, 11637, 30741, 50127, 3760, 23132, 42294, 61608, 15481, 34609, 53993, 7556, 26952, 46099, 65490, 19133, 38455, 57833, 11442, 30830, 49928, 3806, 22922, 42338, 61444, 15284, 34670, 'g', 19234, 38650, 57747, 11637, 30741, 50127, 3760, 23132, 42294, 61608, 15481, 34609, 53993, 7556, 26952, 46099, 65490, 19135, 38433, 57820, 11442, 30824, 49920, 3781, 22922, 42306, 61464, 15286, 'g', 19234, 38650, 57747, 11637, 30741, 50127, 3760, 23132, 42294, 61608, 15481, 34609, 53993, 7556, 26952, 46099, 65490, 19122, 38444, 57855, 11431, 30847, 49935, 3789, 22941, 'g', 19234, 38650, 57747, 11637, 30741, 50127, 3760, 23132, 42284, 61615, 15459, 34611, 54007, 7559, 26973, 46111, 65497};
    private static long v = -4587923380583576761L;
    private static int w = 0;
    private static int x = 1;

    final class a implements az.d {
        a() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bm.s((FiveAdInterface) list.get(0));
        }
    }

    final class b implements az.d {
        b() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bm.B((FiveAdCustomLayout) list.get(0));
        }
    }

    final class c implements az.d {
        c() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bm.y((FiveAdInterface) list.get(0));
        }
    }

    final class d implements az.d {
        d() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bm.G((FiveAdInterface) list.get(0));
        }
    }

    final class e implements az.d {
        e() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bm.A((FiveAdConfig) list.get(0));
        }
    }

    final class f implements az.d {
        f() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            bm.r((FiveAdInterface) list.get(0), (FiveAdLoadListener) list.get(1));
            return null;
        }
    }

    final class g implements az.d {
        g() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            bm.E((FiveAdInterface) list.get(0), (FiveAdViewEventListener) list.get(1));
            return null;
        }
    }

    final class h implements az.d {
        h() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bm.p((FiveAdInterface) list.get(0));
        }
    }

    final class i implements az.d {
        i() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bm.x();
        }
    }

    final class j implements az.d {
        j() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            bm.D((FiveAdInterface) list.get(0), (FiveAdListener) list.get(1));
            return null;
        }
    }

    final class k implements az.d {
        k() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bm.C((FiveAdInterface) list.get(0));
        }
    }

    public bm(String str) {
        super(str);
    }

    static /* synthetic */ String A(FiveAdConfig fiveAdConfig) {
        int i2 = w + 55;
        x = i2 % 128;
        if (i2 % 2 == 0) {
            F(fiveAdConfig);
            throw null;
        }
        String strF = F(fiveAdConfig);
        int i3 = w + 123;
        x = i3 % 128;
        int i4 = i3 % 2;
        return strF;
    }

    static /* synthetic */ String B(FiveAdCustomLayout fiveAdCustomLayout) {
        int i2 = w + 35;
        x = i2 % 128;
        char c2 = i2 % 2 == 0 ? (char) 3 : '_';
        String strT = t(fiveAdCustomLayout);
        if (c2 != '_') {
            int i3 = 78 / 0;
        }
        return strT;
    }

    static /* synthetic */ String C(FiveAdInterface fiveAdInterface) {
        int i2 = w + 87;
        x = i2 % 128;
        int i3 = i2 % 2;
        String strK = k(fiveAdInterface);
        int i4 = x + 23;
        w = i4 % 128;
        int i5 = i4 % 2;
        return strK;
    }

    static /* synthetic */ void D(FiveAdInterface fiveAdInterface, FiveAdListener fiveAdListener) {
        int i2 = x + 51;
        w = i2 % 128;
        boolean z = i2 % 2 != 0;
        v(fiveAdInterface, fiveAdListener);
        if (z) {
            int i3 = 98 / 0;
        }
    }

    static /* synthetic */ void E(FiveAdInterface fiveAdInterface, FiveAdViewEventListener fiveAdViewEventListener) {
        int i2 = x + 57;
        w = i2 % 128;
        int i3 = i2 % 2;
        H(fiveAdInterface, fiveAdViewEventListener);
        int i4 = w + 111;
        x = i4 % 128;
        if (i4 % 2 != 0) {
        } else {
            throw null;
        }
    }

    private static String F(FiveAdConfig fiveAdConfig) {
        int i2 = x + 25;
        w = i2 % 128;
        char c2 = i2 % 2 != 0 ? '/' : (char) 23;
        String str = fiveAdConfig.appId;
        if (c2 == 23) {
            return str;
        }
        throw null;
    }

    static /* synthetic */ String G(FiveAdInterface fiveAdInterface) {
        int i2 = w + 33;
        x = i2 % 128;
        if (!(i2 % 2 != 0)) {
            m(fiveAdInterface);
            throw null;
        }
        String strM = m(fiveAdInterface);
        int i3 = x + 115;
        w = i3 % 128;
        int i4 = i3 % 2;
        return strM;
    }

    private static void H(FiveAdInterface fiveAdInterface, FiveAdViewEventListener fiveAdViewEventListener) {
        int i2 = x + 27;
        w = i2 % 128;
        boolean z = i2 % 2 == 0;
        fiveAdInterface.setViewEventListener(fiveAdViewEventListener);
        if (z) {
        } else {
            throw null;
        }
    }

    private static String k(FiveAdInterface fiveAdInterface) {
        int i2 = w + 91;
        x = i2 % 128;
        if (!(i2 % 2 != 0)) {
            fiveAdInterface.getAdParameter();
            throw null;
        }
        String adParameter = fiveAdInterface.getAdParameter();
        int i3 = x + 3;
        w = i3 % 128;
        if ((i3 % 2 == 0 ? 'I' : (char) 3) == 'I') {
            return adParameter;
        }
        throw null;
    }

    private static FiveAdListener l(FiveAdInterface fiveAdInterface) {
        int i2 = w + 53;
        x = i2 % 128;
        int i3 = i2 % 2;
        FiveAdListener listener = fiveAdInterface.getListener();
        int i4 = w + 63;
        x = i4 % 128;
        if (i4 % 2 == 0) {
            throw null;
        }
        return listener;
    }

    private static String m(FiveAdInterface fiveAdInterface) {
        int i2 = w + 47;
        x = i2 % 128;
        if ((i2 % 2 == 0 ? '6' : (char) 5) == 5) {
            return fiveAdInterface.getSlotId();
        }
        fiveAdInterface.getSlotId();
        throw null;
    }

    private static String n(FiveAdInterface fiveAdInterface) {
        int i2 = x + 73;
        w = i2 % 128;
        if (i2 % 2 != 0) {
            fiveAdInterface.getFiveAdTag();
            throw null;
        }
        String fiveAdTag = fiveAdInterface.getFiveAdTag();
        int i3 = w + 59;
        x = i3 % 128;
        if ((i3 % 2 == 0 ? (char) 27 : '\'') == '\'') {
            return fiveAdTag;
        }
        throw null;
    }

    private static CreativeType o(FiveAdInterface fiveAdInterface) {
        int i2 = w + 11;
        x = i2 % 128;
        if (!(i2 % 2 != 0)) {
            fiveAdInterface.getCreativeType();
            throw null;
        }
        CreativeType creativeType = fiveAdInterface.getCreativeType();
        int i3 = x + 99;
        w = i3 % 128;
        int i4 = i3 % 2;
        return creativeType;
    }

    static /* synthetic */ CreativeType p(FiveAdInterface fiveAdInterface) {
        int i2 = x + 125;
        w = i2 % 128;
        int i3 = i2 % 2;
        CreativeType creativeTypeO = o(fiveAdInterface);
        int i4 = x + 35;
        w = i4 % 128;
        int i5 = i4 % 2;
        return creativeTypeO;
    }

    private static FiveAd q() {
        int i2 = w + 89;
        x = i2 % 128;
        if ((i2 % 2 == 0 ? 'c' : 'a') == 'a') {
            return FiveAd.getSingleton();
        }
        FiveAd.getSingleton();
        throw null;
    }

    static /* synthetic */ void r(FiveAdInterface fiveAdInterface, FiveAdLoadListener fiveAdLoadListener) {
        int i2 = x + 55;
        w = i2 % 128;
        int i3 = i2 % 2;
        w(fiveAdInterface, fiveAdLoadListener);
        int i4 = w + 55;
        x = i4 % 128;
        int i5 = i4 % 2;
    }

    static /* synthetic */ FiveAdListener s(FiveAdInterface fiveAdInterface) {
        int i2 = x + 87;
        w = i2 % 128;
        int i3 = i2 % 2;
        FiveAdListener fiveAdListenerL = l(fiveAdInterface);
        int i4 = w + 37;
        x = i4 % 128;
        if (i4 % 2 != 0) {
            return fiveAdListenerL;
        }
        int i5 = 21 / 0;
        return fiveAdListenerL;
    }

    private static String t(FiveAdCustomLayout fiveAdCustomLayout) {
        int i2 = x + 55;
        w = i2 % 128;
        char c2 = i2 % 2 != 0 ? (char) 23 : '\t';
        String advertiserName = fiveAdCustomLayout.getAdvertiserName();
        if (c2 != '\t') {
            int i3 = 45 / 0;
        }
        return advertiserName;
    }

    private static String u(String str, int i2) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (com.json.adqualitysdk.sdk.i.h.f63) {
            com.json.adqualitysdk.sdk.i.h.f64 = i2;
            char[] cArr2 = new char[cArr.length];
            com.json.adqualitysdk.sdk.i.h.f65 = 0;
            while (true) {
                int i3 = com.json.adqualitysdk.sdk.i.h.f65;
                if (i3 < cArr.length) {
                    cArr2[i3] = (char) (((long) (cArr[i3] ^ (com.json.adqualitysdk.sdk.i.h.f64 * i3))) ^ t);
                    com.json.adqualitysdk.sdk.i.h.f65++;
                } else {
                    str2 = new String(cArr2);
                }
            }
        }
        return str2;
    }

    private static void v(FiveAdInterface fiveAdInterface, FiveAdListener fiveAdListener) {
        int i2 = w + 73;
        x = i2 % 128;
        boolean z = i2 % 2 != 0;
        fiveAdInterface.setListener(fiveAdListener);
        if (!z) {
            throw null;
        }
        int i3 = w + 123;
        x = i3 % 128;
        int i4 = i3 % 2;
    }

    private static void w(FiveAdInterface fiveAdInterface, FiveAdLoadListener fiveAdLoadListener) {
        int i2 = x + 113;
        w = i2 % 128;
        char c2 = i2 % 2 != 0 ? 'C' : (char) 14;
        fiveAdInterface.setLoadListener(fiveAdLoadListener);
        if (c2 != 14) {
            int i3 = 43 / 0;
        }
    }

    static /* synthetic */ FiveAd x() {
        int i2 = x + 121;
        w = i2 % 128;
        int i3 = i2 % 2;
        FiveAd fiveAdQ = q();
        int i4 = w + 41;
        x = i4 % 128;
        if ((i4 % 2 == 0 ? '<' : 'H') == 'H') {
            return fiveAdQ;
        }
        throw null;
    }

    static /* synthetic */ String y(FiveAdInterface fiveAdInterface) {
        int i2 = w + 39;
        x = i2 % 128;
        if (!(i2 % 2 == 0)) {
            return n(fiveAdInterface);
        }
        n(fiveAdInterface);
        throw null;
    }

    private static String z(int i2, int i3, char c2) {
        String str;
        synchronized (com.json.adqualitysdk.sdk.i.e.f50) {
            char[] cArr = new char[i2];
            com.json.adqualitysdk.sdk.i.e.f51 = 0;
            while (true) {
                int i4 = com.json.adqualitysdk.sdk.i.e.f51;
                if (i4 < i2) {
                    cArr[i4] = (char) ((((long) u[i3 + i4]) ^ (((long) i4) * v)) ^ ((long) c2));
                    com.json.adqualitysdk.sdk.i.e.f51 = i4 + 1;
                } else {
                    str = new String(cArr);
                }
            }
        }
        return str;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    final Map<String, az.d> j() {
        HashMap map = new HashMap();
        map.put(z((ViewConfiguration.getKeyRepeatTimeout() >> 16) + 20, 139 - Color.blue(0), (char) (ViewConfiguration.getFadingEdgeLength() >> 16)).intern(), new e());
        map.put(z(24 - Drawable.resolveOpacity(0, 0), 160 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)), (char) ((KeyEvent.getMaxKeyCode() >> 16) + 29638)).intern(), new d());
        map.put(z(View.resolveSizeAndState(0, 0, 0) + 21, (ViewConfiguration.getMaximumFlingVelocity() >> 16) + 183, (char) ((AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 4190)).intern(), new c());
        map.put(z((TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 30, ((Process.getThreadPriority(0) + 20) >> 6) + 204, (char) (ViewConfiguration.getDoubleTapTimeout() >> 16)).intern(), new h());
        map.put(z(TextUtils.indexOf("", "") + 29, (ViewConfiguration.getScrollBarFadeDuration() >> 16) + 234, (char) View.MeasureSpec.getMode(0)).intern(), new k());
        map.put(z(Color.green(0) + 26, (ViewConfiguration.getMaximumFlingVelocity() >> 16) + 263, (char) ExpandableListView.getPackedPositionType(0L)).intern(), new a());
        map.put(u("漢ろ溟꒬튄࢚䚊粯ꪅ\ue0a9ẍ咖芀뢖\uf681ⲇ媚邝캷ғ㊎梈Ꚛ\udc90ઔ䂂", ExpandableListView.getPackedPositionChild(0L) + 51714).intern(), new j());
        map.put(z(ExpandableListView.getPackedPositionType(0L) + 18, (ViewConfiguration.getMaximumDrawingCacheSize() >> 24) + 289, (char) (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1))).intern(), new i());
        map.put(u("搜ⵇ唋緎ꖬ챨\uf44eᰥ䓕沉靲뼣\ue719࿉㞞幀蘸껫훀ﺍ⅁䤏燿馢솄\ue848ဃ㣩悮譳덑\udb32Ϩ⮯剺", 55243 - (ViewConfiguration.getDoubleTapTimeout() >> 16)).intern(), new b());
        map.put(u("漢䡟鼻\ue2dc㇊蒗쩿ᥠ氘돱ڣ喝魣\uee3b㴑", 45779 - KeyEvent.getDeadChar(0, 0)).intern(), new f());
        map.put(u("漢榇\udc8b䎞뚬▻補￡拇퇯䓩ꯤḡ贏\uf000朸쨼㤼걊ፊ", (Process.myPid() >> 22) + 37643).intern(), new g());
        int i2 = x + 27;
        w = i2 % 128;
        if (i2 % 2 == 0) {
            return map;
        }
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003b  */
    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ｋ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.lang.Class mo384(java.lang.String r14) {
        /*
            Method dump skipped, instruction units count: 690
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.bm.mo384(java.lang.String):java.lang.Class");
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﾇ */
    public final String mo385() {
        int i2 = x + 41;
        w = i2 % 128;
        int i3 = i2 % 2;
        String sdkSemanticVersion = FiveAd.getSdkSemanticVersion();
        int i4 = w + 107;
        x = i4 % 128;
        int i5 = i4 % 2;
        return sdkSemanticVersion;
    }
}
