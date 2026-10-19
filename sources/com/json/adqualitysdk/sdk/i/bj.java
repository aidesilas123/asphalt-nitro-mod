package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.ImageFormat;
import android.graphics.drawable.Drawable;
import android.media.AudioTrack;
import android.os.Process;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.fyber.FairBid;
import com.fyber.fairbid.ads.ImpressionData;
import com.fyber.fairbid.ads.Interstitial;
import com.fyber.fairbid.ads.PlacementType;
import com.fyber.fairbid.ads.Rewarded;
import com.fyber.fairbid.ads.interstitial.InterstitialListener;
import com.fyber.fairbid.ads.rewarded.RewardedListener;
import com.fyber.fairbid.internal.Constants;
import com.fyber.fairbid.mediation.MediationManager;
import com.fyber.fairbid.mediation.adapter.AdapterConfiguration;
import com.fyber.fairbid.mediation.config.MediationConfig;
import com.fyber.fairbid.sdk.placements.Placement;
import com.fyber.fairbid.sdk.placements.PlacementsHandler;
import com.json.adqualitysdk.sdk.i.az;
import com.json.b4;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class bj extends az {
    private static int A = 1;
    private static char t = 26146;
    private static char u = 40945;
    private static char v = 23070;
    private static char w = 23491;
    private static char[] x = {52859, 36258, 18864, 1420, 49555, 40439, 23033, 5582, 53712, 44300, 26931, 9475, 57628, 48482, 31103, 43641, 59828, 11690, 24985, 42376, 63985, 15850, 29136, 46549, 51491, 3339, 16659, 34059, 55664, 7531, 20819, 38219, 'I', 17311, 34710, 52150, 4022, 21446, 38866, 56318, 8188, 25360, 42763, 60215, 12032, 29524, 46941, 64363, 16245, 33647, 50839, 2705, 'I', 17308, 34706, 52129, 4001, 21446, 38869, 56318, 8167, 25367, 42798, 60218, 12088, 29532, 'P', 17309, 34691, 52144, 4001, 21464, 38851, 56313, 8188, 25389, 42771, 60203, 12073, 28689, 13271, 63446, 48113, 32757, 9106, 59264, 43952, 44683, 60760, 10569, 25971, 41321, 64793, 14639, 30011, 'N', 17300, 34710, 52132, 4011, 21447, 38861, 56278, 8172, 25368, 42778, 60207, 12073, 29519, 'A', 17301, 34691, 52131, 4016, 21456, 38868, 56263, 8167, 25366, 42758, 'g', 17300, 34710, 52126, 4001, 21457, 38863, 56310, 8188, 25360, 42757, 60213, 12033, 29532, 46912, 64382, 16247, 33636, 50816, 2730, 20154, 37558, 54978, 6854, 24310, 41706, 58911, 36940, 54207, 6077, 23481, 40843, 50122, 2036, 19404, 36806, 62210, 14125, 31505, 48900, 58227, 10088, 27473, 44885, 4958, 22157, 39601, 56975, 651, 'g', 17300, 34710, 52122, 4009, 21445, 38868, 56306, 8187, 25354, 42755, 60212, 12066, 29561, 46927, 64363, 16241, 33602, 50816, 2694, 20149, 37553, 55007, 6865, 24317, 41664, 58910, 53465, 37674, 22312, 6948, 57111, 33659, 18282, 2892, 53061, 46004, 30653, 15242, 65436, 41927, 26609, 11221, 61391, 21502, 5672, 55851, 40463, 16905, 1660, 51824, 36437, 29266, 14006, 64145, 48781, 25246, 9953, 60152, 44784, 5916, 21743, 37101, 56553, 6363, 17583, 32941, 52376, 2198, 29808, 45138, 64591, 14425, 25632, 41020, 60419, 10270, 37896, 53736, 7660, 22982, 34257, 49571, 3503, 15699, 32416, 47778, 63159, 12956, 28384, 43761, 59078, 8913, 24104, 39472, 54811, 4665, 20077, 35406, 50770, 596, 48720, 'g', 17300, 34710, 52114, 4000, 21473, 38879, 56295, 8173, 25404, 42756, 60206, 12065, 's', 17300, 34710, 52122, 4010, 21441, 38851, 56293, 8187, 25357, 42755, 60207, 12069, 29532, 46914, 64339, 16249, 33650, 50822, 2694, 20154, 37536, 54980, 60004, 43395, 28033, 8598, 58806, 47573, 32208, 12786, 62971, 35083, 19737, 256, 50482, 39257, 23885, 4461, 54633, 26995, 11415, 'B', 17328, 34732, 52125, 3969, 21479, 'R', 17332, 34741, 52114, 3990, 21489, 38883, 56275};
    private static long y = -8891503012037966863L;
    private static int z;

    final class a implements az.d {
        a() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bj.Z((MediationManager) list.get(0));
        }
    }

    final class b implements az.d {
        b() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            bj.R((InterstitialListener) list.get(0));
            return null;
        }
    }

    final class c implements az.d {
        c() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bj.L((ImpressionData) list.get(0));
        }
    }

    final class d implements az.d {
        d() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bj.Y((Constants.AdType) list.get(0));
        }
    }

    final class e implements az.d {
        e() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            bj.X((RewardedListener) list.get(0));
            return null;
        }
    }

    final class f implements az.d {
        f() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return Boolean.valueOf(bj.F());
        }
    }

    final class g implements az.d {
        g() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bj.E((ImpressionData) list.get(0));
        }
    }

    final class h implements az.d {
        h() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bj.I((ImpressionData) list.get(0));
        }
    }

    final class i implements az.d {
        i() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return Double.valueOf(bj.v((ImpressionData) list.get(0)));
        }
    }

    final class j implements az.d {
        j() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bj.a0((ImpressionData) list.get(0));
        }
    }

    final class k implements az.d {
        k() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bj.P((FairBid.AdsConfig) list.get(0));
        }
    }

    final class l implements az.d {
        l() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bj.U((ImpressionData) list.get(0));
        }
    }

    final class m implements az.d {
        m() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bj.y((ImpressionData) list.get(0));
        }
    }

    final class n implements az.d {
        n() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bj.u((ImpressionData) list.get(0));
        }
    }

    final class o implements az.d {
        o() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bj.O();
        }
    }

    final class p implements az.d {
        p() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bj.x((ImpressionData) list.get(0));
        }
    }

    final class q implements az.d {
        q() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bj.D((FairBid.AdsConfig) list.get(0));
        }
    }

    final class r implements az.d {
        r() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bj.Q((MediationConfig) list.get(0));
        }
    }

    final class s implements az.d {
        s() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bj.N((Placement) list.get(0));
        }
    }

    final class t implements az.d {
        t() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bj.J((Placement) list.get(0));
        }
    }

    final class u implements az.d {
        u() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bj.A((String) list.get(0));
        }
    }

    public bj(String str) {
        super(str);
    }

    static /* synthetic */ Constants.AdType A(String str) {
        int i2 = z + 15;
        A = i2 % 128;
        int i3 = i2 % 2;
        Constants.AdType adTypeW = w(str);
        int i4 = z + 59;
        A = i4 % 128;
        if ((i4 % 2 == 0 ? 'B' : '!') != 'B') {
            return adTypeW;
        }
        throw null;
    }

    private static PlacementsHandler B(MediationManager mediationManager) {
        int i2 = A + 65;
        z = i2 % 128;
        int i3 = i2 % 2;
        PlacementsHandler placementsHandler = mediationManager.getPlacementsHandler();
        int i4 = z + 85;
        A = i4 % 128;
        if (!(i4 % 2 == 0)) {
            return placementsHandler;
        }
        throw null;
    }

    private static String C(int i2, int i3, char c2) {
        String str;
        synchronized (com.json.adqualitysdk.sdk.i.e.f50) {
            char[] cArr = new char[i2];
            com.json.adqualitysdk.sdk.i.e.f51 = 0;
            while (true) {
                int i4 = com.json.adqualitysdk.sdk.i.e.f51;
                if (i4 < i2) {
                    cArr[i4] = (char) ((((long) x[i3 + i4]) ^ (((long) i4) * y)) ^ ((long) c2));
                    com.json.adqualitysdk.sdk.i.e.f51 = i4 + 1;
                } else {
                    str = new String(cArr);
                }
            }
        }
        return str;
    }

    static /* synthetic */ String D(FairBid.AdsConfig adsConfig) {
        int i2 = z + 81;
        A = i2 % 128;
        int i3 = i2 % 2;
        String strH = H(adsConfig);
        int i4 = A + 73;
        z = i4 % 128;
        int i5 = i4 % 2;
        return strH;
    }

    static /* synthetic */ String E(ImpressionData impressionData) {
        int i2 = z + 63;
        A = i2 % 128;
        if ((i2 % 2 == 0 ? 'a' : '\t') == '\t') {
            return s(impressionData);
        }
        s(impressionData);
        throw null;
    }

    static /* synthetic */ boolean F() {
        int i2 = A + 113;
        z = i2 % 128;
        if ((i2 % 2 != 0 ? '4' : 'J') != '4') {
            return r();
        }
        r();
        throw null;
    }

    private static MediationManager G() {
        int i2 = z + 59;
        A = i2 % 128;
        int i3 = i2 % 2;
        MediationManager companion = MediationManager.Companion.getInstance();
        int i4 = z + 13;
        A = i4 % 128;
        int i5 = i4 % 2;
        return companion;
    }

    private static String H(FairBid.AdsConfig adsConfig) {
        int i2 = z + 13;
        A = i2 % 128;
        boolean z2 = i2 % 2 != 0;
        String str = adsConfig.appId;
        if (!z2) {
            throw null;
        }
        int i3 = A + 61;
        z = i3 % 128;
        int i4 = i3 % 2;
        return str;
    }

    static /* synthetic */ String I(ImpressionData impressionData) {
        int i2 = A + 7;
        z = i2 % 128;
        int i3 = i2 % 2;
        String strN = n(impressionData);
        int i4 = z + 121;
        A = i4 % 128;
        if ((i4 % 2 == 0 ? 'c' : (char) 18) != 'c') {
            return strN;
        }
        throw null;
    }

    static /* synthetic */ String J(Placement placement) {
        int i2 = z + 61;
        A = i2 % 128;
        int i3 = i2 % 2;
        String strV = V(placement);
        int i4 = A + 63;
        z = i4 % 128;
        if (i4 % 2 == 0) {
            return strV;
        }
        throw null;
    }

    private static List<AdapterConfiguration> K(MediationConfig mediationConfig) {
        int i2 = z + 59;
        A = i2 % 128;
        int i3 = i2 % 2;
        List<AdapterConfiguration> adapterConfigurations = mediationConfig.getAdapterConfigurations();
        int i4 = A + 93;
        z = i4 % 128;
        if ((i4 % 2 != 0 ? (char) 29 : b4.R) == '=') {
            return adapterConfigurations;
        }
        throw null;
    }

    static /* synthetic */ PlacementType L(ImpressionData impressionData) {
        int i2 = z + 105;
        A = i2 % 128;
        if ((i2 % 2 == 0 ? 'F' : (char) 30) == 'F') {
            t(impressionData);
            throw null;
        }
        PlacementType placementTypeT = t(impressionData);
        int i3 = A + 69;
        z = i3 % 128;
        int i4 = i3 % 2;
        return placementTypeT;
    }

    private static PlacementType M(Constants.AdType adType) {
        int i2 = z + 29;
        A = i2 % 128;
        int i3 = i2 % 2;
        PlacementType placementType = adType.getPlacementType();
        int i4 = A + 121;
        z = i4 % 128;
        int i5 = i4 % 2;
        return placementType;
    }

    static /* synthetic */ Constants.AdType N(Placement placement) {
        int i2 = z + 85;
        A = i2 % 128;
        if (i2 % 2 != 0) {
            return z(placement);
        }
        z(placement);
        throw null;
    }

    static /* synthetic */ MediationManager O() {
        int i2 = z + 113;
        A = i2 % 128;
        if (i2 % 2 == 0) {
            G();
            throw null;
        }
        MediationManager mediationManagerG = G();
        int i3 = z + 123;
        A = i3 % 128;
        if (i3 % 2 == 0) {
            throw null;
        }
        return mediationManagerG;
    }

    static /* synthetic */ String P(FairBid.AdsConfig adsConfig) {
        int i2 = A + 63;
        z = i2 % 128;
        if ((i2 % 2 != 0 ? '-' : (char) 15) == 15) {
            return T(adsConfig);
        }
        T(adsConfig);
        throw null;
    }

    static /* synthetic */ List Q(MediationConfig mediationConfig) {
        int i2 = A + 11;
        z = i2 % 128;
        if (i2 % 2 != 0) {
            K(mediationConfig);
            throw null;
        }
        List<AdapterConfiguration> listK = K(mediationConfig);
        int i3 = A + 107;
        z = i3 % 128;
        int i4 = i3 % 2;
        return listK;
    }

    static /* synthetic */ void R(InterstitialListener interstitialListener) {
        int i2 = A + 49;
        z = i2 % 128;
        char c2 = i2 % 2 != 0 ? '?' : '*';
        W(interstitialListener);
        if (c2 == '*') {
        } else {
            throw null;
        }
    }

    private static void S(RewardedListener rewardedListener) {
        int i2 = z + 121;
        A = i2 % 128;
        boolean z2 = i2 % 2 == 0;
        Rewarded.setRewardedListener(rewardedListener);
        if (!z2) {
        } else {
            throw null;
        }
    }

    private static String T(FairBid.AdsConfig adsConfig) {
        int i2 = z + 59;
        A = i2 % 128;
        int i3 = i2 % 2;
        String str = adsConfig.store;
        int i4 = z + 79;
        A = i4 % 128;
        if ((i4 % 2 == 0 ? '*' : 'S') == 'S') {
            return str;
        }
        throw null;
    }

    static /* synthetic */ String U(ImpressionData impressionData) {
        int i2 = z + 43;
        A = i2 % 128;
        int i3 = i2 % 2;
        String strO = o(impressionData);
        int i4 = A + 75;
        z = i4 % 128;
        if ((i4 % 2 != 0 ? '.' : '?') == '?') {
            return strO;
        }
        int i5 = 98 / 0;
        return strO;
    }

    private static String V(Placement placement) {
        int i2 = A + 25;
        z = i2 % 128;
        int i3 = i2 % 2;
        String name = placement.getName();
        int i4 = z + 87;
        A = i4 % 128;
        int i5 = i4 % 2;
        return name;
    }

    private static void W(InterstitialListener interstitialListener) {
        int i2 = A + 5;
        z = i2 % 128;
        boolean z2 = i2 % 2 == 0;
        Interstitial.setInterstitialListener(interstitialListener);
        if (z2) {
        } else {
            throw null;
        }
    }

    static /* synthetic */ void X(RewardedListener rewardedListener) {
        int i2 = A + 61;
        z = i2 % 128;
        int i3 = i2 % 2;
        S(rewardedListener);
        int i4 = A + 11;
        z = i4 % 128;
        if (i4 % 2 == 0) {
        } else {
            throw null;
        }
    }

    static /* synthetic */ PlacementType Y(Constants.AdType adType) {
        int i2 = z + 41;
        A = i2 % 128;
        char c2 = i2 % 2 == 0 ? '%' : (char) 31;
        PlacementType placementTypeM = M(adType);
        if (c2 == '%') {
            int i3 = 54 / 0;
        }
        return placementTypeM;
    }

    static /* synthetic */ PlacementsHandler Z(MediationManager mediationManager) {
        int i2 = z + 3;
        A = i2 % 128;
        int i3 = i2 % 2;
        PlacementsHandler placementsHandlerB = B(mediationManager);
        int i4 = z + 75;
        A = i4 % 128;
        if ((i4 % 2 == 0 ? '$' : (char) 17) != '$') {
            return placementsHandlerB;
        }
        int i5 = 73 / 0;
        return placementsHandlerB;
    }

    static /* synthetic */ String a0(ImpressionData impressionData) {
        int i2 = z + 43;
        A = i2 % 128;
        if ((i2 % 2 == 0 ? (char) 19 : '@') == '@') {
            return p(impressionData);
        }
        p(impressionData);
        throw null;
    }

    private static String b0(String str, int i2) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (com.json.adqualitysdk.sdk.i.o.f139) {
            char[] cArr2 = new char[cArr.length];
            com.json.adqualitysdk.sdk.i.o.f138 = 0;
            char[] cArr3 = new char[2];
            while (true) {
                int i3 = com.json.adqualitysdk.sdk.i.o.f138;
                if (i3 < cArr.length) {
                    cArr3[0] = cArr[i3];
                    cArr3[1] = cArr[i3 + 1];
                    int i4 = 58224;
                    for (int i5 = 0; i5 < 16; i5++) {
                        cArr3[1] = (char) (cArr3[1] - (((cArr3[0] + i4) ^ ((cArr3[0] << 4) + v)) ^ ((cArr3[0] >>> 5) + w)));
                        cArr3[0] = (char) (cArr3[0] - (((cArr3[1] + i4) ^ ((cArr3[1] << 4) + t)) ^ ((cArr3[1] >>> 5) + u)));
                        i4 -= 40503;
                    }
                    int i6 = com.json.adqualitysdk.sdk.i.o.f138;
                    cArr2[i6] = cArr3[0];
                    cArr2[i6 + 1] = cArr3[1];
                    com.json.adqualitysdk.sdk.i.o.f138 = i6 + 2;
                } else {
                    str2 = new String(cArr2, 0, i2);
                }
            }
        }
        return str2;
    }

    private static String k(ImpressionData impressionData) {
        int i2 = A + 111;
        z = i2 % 128;
        char c2 = i2 % 2 != 0 ? ')' : '\\';
        String creativeId = impressionData.getCreativeId();
        if (c2 != '\\') {
            int i3 = 29 / 0;
        }
        return creativeId;
    }

    private static String l(ImpressionData impressionData) {
        int i2 = A + 9;
        z = i2 % 128;
        if ((i2 % 2 != 0 ? ']' : '$') != ']') {
            return impressionData.getCampaignId();
        }
        impressionData.getCampaignId();
        throw null;
    }

    private static String m(ImpressionData impressionData) {
        int i2 = A + 101;
        z = i2 % 128;
        if (i2 % 2 == 0) {
            return impressionData.getAdvertiserDomain();
        }
        impressionData.getAdvertiserDomain();
        throw null;
    }

    private static String n(ImpressionData impressionData) {
        int i2 = A + 23;
        z = i2 % 128;
        int i3 = i2 % 2;
        String renderingSdkVersion = impressionData.getRenderingSdkVersion();
        int i4 = z + 111;
        A = i4 % 128;
        int i5 = i4 % 2;
        return renderingSdkVersion;
    }

    private static String o(ImpressionData impressionData) {
        int i2 = z + 63;
        A = i2 % 128;
        int i3 = i2 % 2;
        String variantId = impressionData.getVariantId();
        int i4 = z + 7;
        A = i4 % 128;
        int i5 = i4 % 2;
        return variantId;
    }

    private static String p(ImpressionData impressionData) {
        int i2 = z + 61;
        A = i2 % 128;
        if ((i2 % 2 == 0 ? (char) 16 : ':') == ':') {
            return impressionData.getRenderingSdk();
        }
        impressionData.getRenderingSdk();
        throw null;
    }

    private static double q(ImpressionData impressionData) {
        int i2 = A + 51;
        z = i2 % 128;
        if (!(i2 % 2 != 0)) {
            return impressionData.getNetPayout();
        }
        double netPayout = impressionData.getNetPayout();
        int i3 = 99 / 0;
        return netPayout;
    }

    private static boolean r() {
        boolean zAssertStarted;
        int i2 = A + 61;
        z = i2 % 128;
        if (i2 % 2 == 0) {
            zAssertStarted = FairBid.assertStarted();
        } else {
            zAssertStarted = FairBid.assertStarted();
            int i3 = 74 / 0;
        }
        int i4 = z + 69;
        A = i4 % 128;
        int i5 = i4 % 2;
        return zAssertStarted;
    }

    private static String s(ImpressionData impressionData) {
        int i2 = z + 83;
        A = i2 % 128;
        int i3 = i2 % 2;
        String demandSource = impressionData.getDemandSource();
        int i4 = z + 77;
        A = i4 % 128;
        int i5 = i4 % 2;
        return demandSource;
    }

    private static PlacementType t(ImpressionData impressionData) {
        int i2 = A + 9;
        z = i2 % 128;
        int i3 = i2 % 2;
        PlacementType placementType = impressionData.getPlacementType();
        int i4 = z + 37;
        A = i4 % 128;
        int i5 = i4 % 2;
        return placementType;
    }

    static /* synthetic */ String u(ImpressionData impressionData) {
        int i2 = A + 119;
        z = i2 % 128;
        int i3 = i2 % 2;
        String strL = l(impressionData);
        int i4 = z + 109;
        A = i4 % 128;
        int i5 = i4 % 2;
        return strL;
    }

    static /* synthetic */ double v(ImpressionData impressionData) {
        int i2 = A + 121;
        z = i2 % 128;
        if ((i2 % 2 != 0 ? (char) 24 : '\"') == '\"') {
            return q(impressionData);
        }
        q(impressionData);
        throw null;
    }

    private static Constants.AdType w(String str) {
        byte b2 = -1;
        switch (str.hashCode()) {
            case -1372958932:
                if (!(str.equals(b0("쮆몽\uf1c8曨刘뻶쎷ᆡ쎷ᆡ㢘룭", (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 13).intern()) ? false : true)) {
                    int i2 = z + 37;
                    int i3 = i2 % 128;
                    A = i3;
                    byte b3 = (i2 % 2 == 0 ? 'Q' : (char) 7) != 'Q' ? (byte) 2 : (byte) 5;
                    int i4 = i3 + 3;
                    z = i4 % 128;
                    int i5 = i4 % 2;
                    b2 = b3;
                }
                break;
            case 433141802:
                if (!(!str.equals(b0("匰쭝즚糡ᐫꇀ닼猵", TextUtils.indexOf("", "", 0, 0) + 7).intern()))) {
                    b2 = 0;
                }
                break;
            case 543046670:
                if ((str.equals(C(7 - TextUtils.lastIndexOf("", '0', 0), (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 331, (char) (Process.myPid() >> 22)).intern()) ? 'W' : '_') != '_') {
                    int i6 = A + 121;
                    z = i6 % 128;
                    int i7 = i6 % 2;
                    b2 = 3;
                }
                break;
            case 1951953708:
                if (str.equals(C(6 - (ViewConfiguration.getLongPressTimeout() >> 16), TextUtils.getTrimmedLength("") + 326, (char) (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1))).intern())) {
                    int i8 = z + 35;
                    A = i8 % 128;
                    int i9 = i8 % 2;
                    b2 = 1;
                }
                break;
        }
        if (b2 == 0) {
            return Constants.AdType.UNKNOWN;
        }
        if (b2 == 1) {
            return Constants.AdType.BANNER;
        }
        if (b2 == 2) {
            return Constants.AdType.INTERSTITIAL;
        }
        if (b2 != 3) {
            return null;
        }
        return Constants.AdType.REWARDED;
    }

    static /* synthetic */ String x(ImpressionData impressionData) {
        int i2 = z + 75;
        A = i2 % 128;
        int i3 = i2 % 2;
        String strM = m(impressionData);
        int i4 = z + 105;
        A = i4 % 128;
        if ((i4 % 2 == 0 ? '!' : 'c') == 'c') {
            return strM;
        }
        int i5 = 73 / 0;
        return strM;
    }

    static /* synthetic */ String y(ImpressionData impressionData) {
        int i2 = z + 39;
        A = i2 % 128;
        int i3 = i2 % 2;
        String strK = k(impressionData);
        int i4 = A + 67;
        z = i4 % 128;
        if ((i4 % 2 != 0 ? '$' : (char) 7) == 7) {
            return strK;
        }
        int i5 = 53 / 0;
        return strK;
    }

    private static Constants.AdType z(Placement placement) {
        int i2 = A + 25;
        z = i2 % 128;
        int i3 = i2 % 2;
        Constants.AdType adType = placement.getAdType();
        int i4 = z + 109;
        A = i4 % 128;
        int i5 = i4 % 2;
        return adType;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    final Map<String, az.d> j() {
        HashMap map = new HashMap();
        map.put(C((ViewConfiguration.getPressedStateDuration() >> 16) + 27, 121 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)), (char) (1 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)))).intern(), new o());
        map.put(C(22 - (ViewConfiguration.getFadingEdgeLength() >> 16), 147 - (ViewConfiguration.getMinimumFlingVelocity() >> 16), (char) (36907 - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)))).intern(), new d());
        map.put(b0("\udd60홨仸⮿쳙竖⼕屝ꆴ珩\u202e⁐付計蠵转吠ی뜲ὃ奉姻䐳࠽Ɽ\u1ae1\uda20ᥠ藖忪", (ViewConfiguration.getTouchSlop() >> 8) + 30).intern(), new c());
        map.put(b0("\udd60홨仸⮿쳙竖⼕屝ꆴ珩\u202e⁐付計蠵转屮ரᔏ銄䢾\uddc3쬐睑婥떶്࡙唅吽", (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + 28).intern(), new j());
        map.put(b0("\udd60홨仸⮿쳙竖⼕屝ꆴ珩\u202e⁐付計蠵转屮ரᔏ銄䢾\uddc3쬐睑婥떶്࡙\uee67䠇뚓✽注뤕鍦陒", 36 - (ViewConfiguration.getScrollBarFadeDuration() >> 16)).intern(), new h());
        map.put(b0("\udd60홨仸⮿쳙竖⼕屝ꆴ珩\u202e⁐付計蠵转맩걔촶Ṙ\uf7ba耬鿛糅븨⭩궮ᇻ❵⾖", (ViewConfiguration.getScrollBarFadeDuration() >> 16) + 29).intern(), new g());
        map.put(b0("\udd60홨仸⮿쳙竖⼕屝ꆴ珩\u202e⁐付計蠵转셲쒭ʃ㌪ㆡ㪿Ɽ\u1ae1\ue9b0⌦", 26 - TextUtils.getCapsMode("", 0, 0)).intern(), new l());
        map.put(b0("\udd60홨仸⮿쳙竖⼕屝ꆴ珩\u202e⁐付計蠵转䑬烣쏥◈僒\ue727\udbe4ﳱ軚穬", (ViewConfiguration.getMaximumFlingVelocity() >> 16) + 26).intern(), new i());
        map.put(C(TextUtils.indexOf("", "", 0, 0) + 27, 169 - (KeyEvent.getMaxKeyCode() >> 16), (char) (ViewConfiguration.getScrollBarFadeDuration() >> 16)).intern(), new m());
        map.put(C(32 - ExpandableListView.getPackedPositionChild(0L), 196 - Drawable.resolveOpacity(0, 0), (char) (53438 - (ViewConfiguration.getTapTimeout() >> 16))).intern(), new p());
        map.put(b0("\udd60홨仸⮿쳙竖⼕屝ꆴ珩\u202e⁐付計蠵转降\ue5df㬰ᡏᤫ䏎鿜﨧焣ꜳ鯫㈻", ImageFormat.getBitsPerPixel(0) + 28).intern(), new n());
        map.put(b0("\udd60홨呁멝沧ꠁ\ue9b0⌦", (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 7).intern(), new q());
        map.put(b0("\udd60홨㇌倮绒䠞⼕屝", (ViewConfiguration.getMaximumDrawingCacheSize() >> 24) + 8).intern(), new k());
        map.put(C(TextUtils.lastIndexOf("", '0', 0) + 25, 229 - View.MeasureSpec.getMode(0), (char) (View.MeasureSpec.getSize(0) + 6011)).intern(), new r());
        map.put(C(18 - Color.green(0), (ViewConfiguration.getEdgeSlop() >> 16) + 253, (char) (15668 - (ViewConfiguration.getKeyRepeatDelay() >> 16))).intern(), new s());
        map.put(b0("\udd60홨촇╁뜲ὃ奉姻䐳࠽Ɽ\u1ae1푳ऴ䐳࠽", (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + 15).intern(), new t());
        map.put(b0("\udd60홨촇╁뜲ὃ奉姻䐳࠽Ɽ\u1ae1倫韧\uf7ba耬絳\ue004뚓✽", (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 21).intern(), new a());
        map.put(C(13 - (ViewConfiguration.getPressedStateDuration() >> 16), 271 - View.resolveSize(0, 0), (char) TextUtils.getTrimmedLength("")).intern(), new u());
        map.put(C((ViewConfiguration.getFadingEdgeLength() >> 16) + 23, 284 - Color.green(0), (char) (ViewConfiguration.getLongPressTimeout() >> 16)).intern(), new b());
        map.put(C(TextUtils.lastIndexOf("", '0') + 20, 308 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)), (char) (59927 - Color.red(0))).intern(), new e());
        map.put(b0("ꄸ曡词面縰ㆄ宬ᒿʃ㌪謢섪鯫㈻", 13 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24)).intern(), new f());
        int i2 = z + 91;
        A = i2 % 128;
        if ((i2 % 2 == 0 ? 'R' : '1') == '1') {
            return map;
        }
        int i3 = 43 / 0;
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0037  */
    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ｋ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Class mo384(java.lang.String r21) {
        /*
            Method dump skipped, instruction units count: 960
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.bj.mo384(java.lang.String):java.lang.Class");
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﾇ */
    public final String mo385() {
        int i2 = z + 117;
        A = i2 % 128;
        int i3 = i2 % 2;
        try {
            try {
                String str = (String) FairBid.class.getDeclaredField(b0("쉩䢍衣\uf4f0\ue925궓刘뻶\u1719蟝닼猵", TextUtils.indexOf("", "", 0, 0) + 11).intern()).get(null);
                int i4 = A + 31;
                z = i4 % 128;
                if (!(i4 % 2 != 0)) {
                    return str;
                }
                int i5 = 95 / 0;
                return str;
            } catch (Exception unused) {
                return hq.m770().m771().m775(FairBid.class, b0("鎒網酲⥲궯\ud8beँ䢃\uee3f쓳酲⥲궯\ud8beँ䢃\uee3f쓳酲⥲궯\ud8be\ue7cd펢", Color.alpha(0) + 23).intern());
            }
        } catch (Exception unused2) {
            return null;
        }
    }
}
