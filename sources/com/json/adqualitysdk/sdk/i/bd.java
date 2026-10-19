package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.ImageFormat;
import android.graphics.drawable.Drawable;
import android.os.Process;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.explorestack.protobuf.adcom.Ad;
import com.json.adqualitysdk.sdk.i.az;
import com.json.mediationsdk.logger.IronSourceError;
import io.bidmachine.AdRequestParameters;
import io.bidmachine.AdsType;
import io.bidmachine.BidMachine;
import io.bidmachine.banner.BannerListener;
import io.bidmachine.banner.BannerView;
import io.bidmachine.interstitial.InterstitialAd;
import io.bidmachine.interstitial.InterstitialListener;
import io.bidmachine.protobuf.RequestExtension;
import io.bidmachine.rewarded.RewardedAd;
import io.bidmachine.rewarded.RewardedListener;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class bd extends az {
    private static char[] t = null;
    private static long u = 0;
    private static int v = 0;
    private static int w = 1;

    final class a implements az.d {
        a() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bd.x((Ad) list.get(0));
        }
    }

    final class b implements az.d {
        b() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bd.J((AdRequestParameters) list.get(0));
        }
    }

    final class c implements az.d {
        c() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bd.A((AdRequestParameters) list.get(0));
        }
    }

    final class d implements az.d {
        d() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bd.E((Ad) list.get(0));
        }
    }

    final class e implements az.d {
        e() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bd.H((Ad.Display) list.get(0));
        }
    }

    final class f implements az.d {
        f() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            bd.w((RewardedAd) list.get(0), (RewardedListener) list.get(1));
            return null;
        }
    }

    final class g implements az.d {
        g() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bd.p((RequestExtension) list.get(0));
        }
    }

    final class h implements az.d {
        h() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            bd.B((BannerView) list.get(0), (BannerListener) list.get(1));
            return null;
        }
    }

    final class i implements az.d {
        i() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            bd.r((InterstitialAd) list.get(0), (InterstitialListener) list.get(1));
            return null;
        }
    }

    final class j implements az.d {
        j() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bd.m((Ad.Video) list.get(0));
        }
    }

    final class k implements az.d {
        k() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bd.l((Ad) list.get(0));
        }
    }

    final class l implements az.d {
        l() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bd.z((Ad) list.get(0), ((Integer) list.get(1)).intValue());
        }
    }

    final class m implements az.d {
        m() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bd.t((Ad) list.get(0), ((Integer) list.get(1)).intValue());
        }
    }

    static {
        char[] cArr = new char[1047];
        ByteBuffer.wrap("\u0000^\u0016^,`B]XTnn\u0084\"\u009aS°;ÆNÜpò2\u0000A\u0016f,GBiXfn~\u0084i\u009a`°dÆFÜmòf\b}\u0000A\u0016f,@BoX{nz\u0084`\u009ao°i\u0000A\u0016f,RBoXlno\u0084c\u0000A\u0016f,BBsXdnf\u0084_\u009am°bÆwÜqòx\bT\u001es4oJj`EvL\u008cA¢T\u0000A\u0016f,HBoX{n~\u0084i\u009a`°uÆ`¥c³D\u0089tçAý[Ë]!K?_\u0015Fð.æ\tÜ9²\f¨\u0016\u009e\u0010t\u0006j\u0012@\u000b6-,\u001a\u0002\u000bø\u0016î\u0018Ä\u0016º\u0005\u0090*\u0086?|8\u0000A\u0016f,wBRXqnz\u0084ipKfl\\X2e(g\u001ew\u0000B\u0016c,jBhXmnx\u0084@\u009ag°cÆfÜqòx\b}\u001ehØÖÎ÷ôþ\u009aü\u0080ù¶ì\\ÎBóhá\u001eñf¯p«Jì$¢>§\b¨â§ü©Öµ ¼º»\u0094¾n»xòR¸,¹\u0006\u0088\u0010\u008aê\u0087Ä\u0092ÞÀ¨®\u0082\u008b\u009c\u0086v\u0098@\u0091Z\u00804¦\u000e\u0097\u0018\u0099ò\u008d\u0000B\u0016k,`BKXini\u0084d\u009ag°~Æw\u0094Ö\u0082ÿ¸ôÖßÌýúý\u0010ð\u000eó$êRãHÁfæñ½ç\u008eÝ\u009f³\u0099©\u0082\u009f\u009du\u0084k\u0095A¨7\u0083-\u0098\u0003\u0085ù\u0087ï\u0090\u0082\u008c\u0094ª® À¤Ú¨ì\u008b\u0006¨\u0018¿2´\u008bÇ\u009dâ§þÉíÓôå÷\u000fö\u0011é;êMõWûyô\u0083×\u0095ð\u0000I\u0016l,pBcXzny\u0084x\u009ag°dÆ{Üuòz\bT\u001es4oJj`EvL\u008cA¢T\u0000F\u0016w,hBjX[ni\u0084~\u009ak°uÆ|ÜUòr¬¦º\u008c\u0080\u008bî\u0084ô\u0082Â (\u00946\u0096\u001c\u009ej\u008dp«^\u0084¤\u0083²\u0094\u0000M\u0016g,`BoXin\\\u0084e\u009ak°g¦\u0017°\u0013\u008aTä\u001aþ\u001fÈ\u0010\"\u001f<\u0011\u0016\r`\u0004z\u0003T\u0006®\u0003¸J\u0092\fì\u0001Æ*Ð5*,\u0004=\u001e7h0B|\\&¶'\u0080)\u009a=ôfÎ\u000bØ!2&\f)f_pjJS¤]¾A\u0000N\u0016c,pBoX~no\u0084M\u009aj\u008e!\u0098\f¢\u001fÌ\u0000Ö\u0011à\u0000\n/\u0014\b>\fH\tR\u001e|\u0017\u0086\u0012\u0090\u0007ü±ê\u009cÐ\u008f¾\u0090¤\u0081\u0092\u0090x¾f\u0094L\u008b:\u0084 \u008a\u000e¿ô\u008eâ\u0080È\u0094\u0087|\u0091I«]ÅIßTé@\u0003G\u001dD7\u007fAX\u0000R\u0016g,sBgXznn\u0084i\u009aj°\\Æ{Ügòb\b}\u001et4yJl\u0000R\u0016k,gBnXEno\u0084h\u009ag°qÆ^Ü}òe\bl\u001e\u007f4rJ{`RuYc`Yl7e-N\u001bdñcïlÅz³O©v\u0087x}dÃIÕMï\n\u0081D\u009bA\u00adNGAYOsS\u0005Z\u001f]1XË]Ý\u0014÷N\u0089W£cµjOiac{l\rc'm9 ÓBå{ÿw\u0091~«U½\u007fWxiw\u0003\u0001\u00154/\rÁ\u0003Û\u001fá°÷\u008dÍ\u0086£\u0085¹\u0081\u008f¼e\u0086{\u0089Q\u008f'\u0091=\u0080\u0013±é\u009dÿ\u0088Õ\u0093«\u008e\u0081¯\u0097°m»\u0089a\u009fe¥\"ËlÑiçf\ri\u0013g9{OrUu{p\u0081u\u0097<½zÃwé\\ÿC\u0005Z+K1AGFm\nsP\u0099Q¯_µKÛ\u0010áf÷[\u001dP#SI'_\u001ae \u008b/\u00919§'Í6Ó\u0007ù;\u000f.\u00155;(A9W&}-#75\u0010ëúýÇÇÒ©Ø³Û\u0085üoØqÍ[Î-Ó7Ê\u0019ÕãÖ\u0000c\u0016m,iB(Xmnr\u0084|\u009ab°\u007fÆ`Üqòe\bl\u001e{4\u007fJu`\u000evK\u008cE¢D¸\u0006ÎGä^úO\u0010Y&V<\u001aR{hJ~[\u0094UªZÀ\u0001Ö!ì0\u0002/\u0018>.#D8Z7V÷@Êzß\u0014Õ\u000eÖ8ôÒßÌÕæÆ\u0090Ç\u008aÉ¤í^ÁHÔbÏ\u001cÒ6ó ìÚç\u0000c\u0016m,iB(Xmnr\u0084|\u009ab°\u007fÆ`Üqòe\bl\u001e{4\u007fJu`\u000evK\u008cE¢D¸\u0006ÎGä^úO\u0010Y&V<\u001aR{hJ~[\u0094UªZÀ\u0004Ö+ì%\u0002*\u0018'.-D\rZ-p$\u0086;\u009c\"²?È,Þ#\u0000M\u0016p,eBoXlnC\u0084b\u009az°uÆ`Ügòb\bq\u001en4uJ\u007f`L#Ú5ç\u000fòaø{ûMÔ§õ¹í\u0093âå÷ÿðÑõ+æ=ù\u0017âièCÛUù¯Ú\u0081Â\u009bËíØÇÕÙÜ3Õ\u0000M\u0016p,eBoXln\\\u0084e\u009ak°g\u0000c\u0016m,iB(Xmnr\u0084|\u009ab°\u007fÆ`Üqòe\bl\u001e{4\u007fJu`\u000evK\u008cE¢D¸\u0006ÎGä^úO\u0010Y&V<\u001aR{hJ~[\u0094UªZÀ\u0016Ö+ì!\u00021\u0010å\u0006Ø<ÍRÇHÄ~ô\u0094Í\u008aÃ ÏÖöÌÕâÍ\u0018Ä\u000e×$ÚZÓpú\u0000V\u0016c,wBrXIni\u0084x\u009ag°fÆ{Ü`òoÈxÞvär\u008a3\u0090v¦iLgRyxd\u000e{\u0014j:~ÀwÖ`üd\u0082n¨\u0015¾PD^j_p\u001d\u0006G,V2FØ_î\u0007ôN\u009aN W¶H\\QbL\b/\u001e $qÊ\u000bÐ2æ\"\u008c#\u0092\u0014¸(N=T&z;\u0000*\u00165<>êÖüãÆ÷¨ò²Þ\u0084ãnépùf\u009ap\u0094J\u0090$Ñ>\u0094\b\u008bâ\u0085ü\u009bÖ\u0086 \u0099º\u0088\u0094\u009cn\u0095x\u0082R\u0086,\u008c\u0006÷\u0010²ê¼Ä½Þÿ¨¥\u0082´\u009c¤v½@åZ¬4¬\u000eµ\u0018ªò³Ì®¦Í°Â\u008a\u0093dé~ÐHÀ\"Á<á\u0016ÀàÎúÚ\u0000V\u0016c,wBrX^nc\u0084i\u009ay°\\Æ{Ügòb\b}\u001et4yJl\u0000R\u0016g,uBsXmny\u0084x\u009aK°hÆfÜqòx\bk\u001es4sJp\u0000g\u0016g,pBBXany\u0084|\u009ab°qÆkÜUòr\bu\u0000g\u0016g,pBPXann\u0084i\u009aa°QÆvÜy\u0000g\u0016g,pBDX}nd\u0084h\u009ab°u\u001f\u0014\t\u00143\u0003]1G\u0012q\n\u009b\u000f\u0085\u0011¯\u0002Ù\u0018,\u0092:\u0092\u0000\u0085n¥t\u0094B\u009b¨\u009c¶\u0094\u0000g\u0016g,pBGXlne\u0084a\u009ao°yÆ|\u0000g\u0016g,pBEXzno\u0084m\u009az°yÆdÜqò_\b|\u0000g\u0016g,pBVXdnk\u0084o\u009ak°}ÆwÜzòb\bQ\u001e~\u0000g\u0016g,pBGXln^\u0084u\u009a~°u\u009aÀ\u008cÀ¶×ØòÂÊôÁ\u001eÇ\u0000Ì*Å\\üF×\u008b5\u009d!§6É\tÓ å8\u000f/\u0011:;%M W;y$\u00837\u0095=¿6Á\u0014ë\u000fý\u0017\u0007\u0016)\u00053\u0000E\to\u0018\u0000s\u0016g,pBTXmn}\u0084m\u009a|°tÆwÜpòZ\bq\u001ei4hJ{`NvG\u008cVmÁ{ÕAÂ/ö5Û\u0003ÖéÐ÷ÙÝÐ«ì±Ï\u009f×eÞsÍYÀ'É\rà".getBytes("ISO-8859-1")).asCharBuffer().get(cArr, 0, 1047);
        t = cArr;
        u = -4795608554771507710L;
    }

    public bd(String str) {
        super(str);
    }

    static /* synthetic */ String A(AdRequestParameters adRequestParameters) {
        int i2 = w + 115;
        v = i2 % 128;
        boolean z = i2 % 2 != 0;
        String strU = u(adRequestParameters);
        if (z) {
            int i3 = 75 / 0;
        }
        return strU;
    }

    static /* synthetic */ void B(BannerView bannerView, BannerListener bannerListener) {
        int i2 = v + 33;
        w = i2 % 128;
        int i3 = i2 % 2;
        q(bannerView, bannerListener);
        int i4 = v + 51;
        w = i4 % 128;
        if ((i4 % 2 == 0 ? (char) 11 : (char) 31) != 11) {
        } else {
            throw null;
        }
    }

    private static void C(InterstitialAd interstitialAd, InterstitialListener interstitialListener) {
        int i2 = v + 47;
        w = i2 % 128;
        char c2 = i2 % 2 == 0 ? '?' : (char) 29;
        interstitialAd.setListener(interstitialListener);
        if (c2 != 29) {
            throw null;
        }
        int i3 = v + 47;
        w = i3 % 128;
        int i4 = i3 % 2;
    }

    private static String D(Ad.Display display) {
        int i2 = v + 55;
        w = i2 % 128;
        if (i2 % 2 == 0) {
            display.getAdm();
            throw null;
        }
        String adm = display.getAdm();
        int i3 = v + 101;
        w = i3 % 128;
        int i4 = i3 % 2;
        return adm;
    }

    static /* synthetic */ String E(Ad ad) {
        int i2 = w + 73;
        v = i2 % 128;
        if ((i2 % 2 != 0 ? '-' : '>') != '>') {
            k(ad);
            throw null;
        }
        String strK = k(ad);
        int i3 = v + 89;
        w = i3 % 128;
        if (i3 % 2 != 0) {
            return strK;
        }
        throw null;
    }

    private static Ad.Display F(Ad ad) {
        int i2 = v + 23;
        w = i2 % 128;
        if (!(i2 % 2 == 0)) {
            return ad.getDisplay();
        }
        ad.getDisplay();
        throw null;
    }

    private static String G(int i2, int i3, char c2) {
        String str;
        synchronized (com.json.adqualitysdk.sdk.i.e.f50) {
            char[] cArr = new char[i2];
            com.json.adqualitysdk.sdk.i.e.f51 = 0;
            while (true) {
                int i4 = com.json.adqualitysdk.sdk.i.e.f51;
                if (i4 < i2) {
                    cArr[i4] = (char) ((((long) t[i3 + i4]) ^ (((long) i4) * u)) ^ ((long) c2));
                    com.json.adqualitysdk.sdk.i.e.f51 = i4 + 1;
                } else {
                    str = new String(cArr);
                }
            }
        }
        return str;
    }

    static /* synthetic */ String H(Ad.Display display) {
        int i2 = w + 23;
        v = i2 % 128;
        int i3 = i2 % 2;
        String strD = D(display);
        int i4 = w + 73;
        v = i4 % 128;
        if (i4 % 2 == 0) {
            return strD;
        }
        int i5 = 57 / 0;
        return strD;
    }

    private static String I(Ad ad, int i2) {
        int i3 = w + 35;
        v = i3 % 128;
        if ((i3 % 2 != 0 ? 'U' : '>') == '>') {
            return ad.getBundle(i2);
        }
        ad.getBundle(i2);
        throw null;
    }

    static /* synthetic */ String J(AdRequestParameters adRequestParameters) {
        int i2 = w + 101;
        v = i2 % 128;
        int i3 = i2 % 2;
        String strO = o(adRequestParameters);
        int i4 = v + 99;
        w = i4 % 128;
        int i5 = i4 % 2;
        return strO;
    }

    private static void K(RewardedAd rewardedAd, RewardedListener rewardedListener) {
        int i2 = v + 85;
        w = i2 % 128;
        int i3 = i2 % 2;
        rewardedAd.setListener(rewardedListener);
        int i4 = w + 23;
        v = i4 % 128;
        int i5 = i4 % 2;
    }

    private static String k(Ad ad) {
        int i2 = v + 13;
        w = i2 % 128;
        if ((i2 % 2 == 0 ? '%' : (char) 27) != 27) {
            ad.getId();
            throw null;
        }
        String id = ad.getId();
        int i3 = v + 53;
        w = i3 % 128;
        int i4 = i3 % 2;
        return id;
    }

    static /* synthetic */ Ad.Display l(Ad ad) {
        int i2 = v + 97;
        w = i2 % 128;
        if ((i2 % 2 == 0 ? '[' : 'I') == 'I') {
            return F(ad);
        }
        F(ad);
        throw null;
    }

    static /* synthetic */ String m(Ad.Video video) {
        int i2 = w + 115;
        v = i2 % 128;
        if ((i2 % 2 != 0 ? 'U' : (char) 18) == 18) {
            return y(video);
        }
        y(video);
        throw null;
    }

    private static String n(Ad ad, int i2) {
        int i3 = w + 87;
        v = i3 % 128;
        if ((i3 % 2 != 0 ? (char) 25 : '4') == 25) {
            ad.getAdomain(i2);
            throw null;
        }
        String adomain = ad.getAdomain(i2);
        int i4 = v + 11;
        w = i4 % 128;
        int i5 = i4 % 2;
        return adomain;
    }

    private static String o(AdRequestParameters adRequestParameters) {
        int i2 = w + 53;
        v = i2 % 128;
        int i3 = i2 % 2;
        String placementId = adRequestParameters.getPlacementId();
        int i4 = v + 69;
        w = i4 % 128;
        if ((i4 % 2 == 0 ? '\'' : '-') == '-') {
            return placementId;
        }
        throw null;
    }

    static /* synthetic */ String p(RequestExtension requestExtension) {
        int i2 = w + 41;
        v = i2 % 128;
        int i3 = i2 % 2;
        String strV = v(requestExtension);
        int i4 = w + 5;
        v = i4 % 128;
        int i5 = i4 % 2;
        return strV;
    }

    private static void q(BannerView bannerView, BannerListener bannerListener) {
        int i2 = w + 81;
        v = i2 % 128;
        char c2 = i2 % 2 != 0 ? '0' : ':';
        bannerView.setListener(bannerListener);
        if (c2 == '0') {
            throw null;
        }
        int i3 = v + 97;
        w = i3 % 128;
        if ((i3 % 2 == 0 ? '1' : (char) 18) != '1') {
        } else {
            throw null;
        }
    }

    static /* synthetic */ void r(InterstitialAd interstitialAd, InterstitialListener interstitialListener) {
        int i2 = v + 11;
        w = i2 % 128;
        boolean z = i2 % 2 == 0;
        C(interstitialAd, interstitialListener);
        if (!z) {
        } else {
            throw null;
        }
    }

    private static Ad.Video s(Ad ad) {
        int i2 = w + 119;
        v = i2 % 128;
        if (!(i2 % 2 == 0)) {
            ad.getVideo();
            throw null;
        }
        Ad.Video video = ad.getVideo();
        int i3 = v + 107;
        w = i3 % 128;
        if ((i3 % 2 == 0 ? '0' : '%') == '%') {
            return video;
        }
        throw null;
    }

    static /* synthetic */ String t(Ad ad, int i2) {
        int i3 = w + 41;
        v = i3 % 128;
        int i4 = i3 % 2;
        String strN = n(ad, i2);
        int i5 = v + 95;
        w = i5 % 128;
        if (i5 % 2 != 0) {
            return strN;
        }
        int i6 = 45 / 0;
        return strN;
    }

    private static String u(AdRequestParameters adRequestParameters) {
        int i2 = w + 35;
        v = i2 % 128;
        boolean z = i2 % 2 != 0;
        AdsType adsType = adRequestParameters.getAdsType();
        if (z) {
            adsType.getName();
            throw null;
        }
        String name = adsType.getName();
        int i3 = w + 49;
        v = i3 % 128;
        int i4 = i3 % 2;
        return name;
    }

    private static String v(RequestExtension requestExtension) {
        int i2 = w + 11;
        v = i2 % 128;
        int i3 = i2 % 2;
        String sellerId = requestExtension.getSellerId();
        int i4 = w + 37;
        v = i4 % 128;
        int i5 = i4 % 2;
        return sellerId;
    }

    static /* synthetic */ void w(RewardedAd rewardedAd, RewardedListener rewardedListener) {
        int i2 = v + 71;
        w = i2 % 128;
        int i3 = i2 % 2;
        K(rewardedAd, rewardedListener);
        int i4 = v + 23;
        w = i4 % 128;
        if ((i4 % 2 == 0 ? ';' : 'W') == 'W') {
        } else {
            throw null;
        }
    }

    static /* synthetic */ Ad.Video x(Ad ad) {
        int i2 = v + 7;
        w = i2 % 128;
        if ((i2 % 2 == 0 ? (char) 18 : '_') == 18) {
            s(ad);
            throw null;
        }
        Ad.Video videoS = s(ad);
        int i3 = v + 79;
        w = i3 % 128;
        if ((i3 % 2 == 0 ? 'M' : (char) 4) == 4) {
            return videoS;
        }
        int i4 = 27 / 0;
        return videoS;
    }

    private static String y(Ad.Video video) {
        int i2 = v + 69;
        w = i2 % 128;
        int i3 = i2 % 2;
        String adm = video.getAdm();
        int i4 = w + 55;
        v = i4 % 128;
        if (!(i4 % 2 != 0)) {
            return adm;
        }
        int i5 = 52 / 0;
        return adm;
    }

    static /* synthetic */ String z(Ad ad, int i2) {
        int i3 = v + 33;
        w = i3 % 128;
        if (!(i3 % 2 != 0)) {
            I(ad, i2);
            throw null;
        }
        String strI = I(ad, i2);
        int i4 = v + 79;
        w = i4 % 128;
        int i5 = i4 % 2;
        return strI;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    final Map<String, az.d> j() {
        HashMap map = new HashMap();
        map.put(G(Color.alpha(0) + 13, 880 - KeyEvent.getDeadChar(0, 0), (char) (ViewConfiguration.getTapTimeout() >> 16)).intern(), new e());
        map.put(G((ViewConfiguration.getKeyRepeatTimeout() >> 16) + 11, 892 - TextUtils.indexOf((CharSequence) "", '0', 0, 0), (char) ExpandableListView.getPackedPositionType(0L)).intern(), new j());
        map.put(G((ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 8, 904 - (Process.myPid() >> 22), (char) TextUtils.getOffsetAfter("", 0)).intern(), new l());
        map.put(G((ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + 9, 912 - TextUtils.indexOf((CharSequence) "", '0', 0), (char) (Drawable.resolveOpacity(0, 0) + 8051)).intern(), new k());
        map.put(G(7 - ImageFormat.getBitsPerPixel(0), (ViewConfiguration.getJumpTapTimeout() >> 16) + 923, (char) (11509 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)))).intern(), new a());
        map.put(G(':' - AndroidCharacter.getMirror('0'), View.resolveSizeAndState(0, 0, 0) + 931, (char) Gravity.getAbsoluteGravity(0, 0)).intern(), new m());
        map.put(G(Color.red(0) + 13, AndroidCharacter.getMirror('0') + 893, (char) ExpandableListView.getPackedPositionGroup(0L)).intern(), new d());
        map.put(G(14 - TextUtils.getCapsMode("", 0, 0), 954 - (ViewConfiguration.getScrollDefaultDelay() >> 16), (char) (ViewConfiguration.getTouchSlop() >> 8)).intern(), new b());
        map.put(G(TextUtils.indexOf("", "", 0, 0) + 9, (KeyEvent.getMaxKeyCode() >> 16) + 968, (char) ((-1) - ((byte) KeyEvent.getModifierMetaStateMask()))).intern(), new c());
        map.put(G((ViewConfiguration.getScrollBarFadeDuration() >> 16) + 11, 977 - ExpandableListView.getPackedPositionGroup(0L), (char) (ExpandableListView.getPackedPositionGroup(0L) + 39591)).intern(), new g());
        map.put(G(TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 24, (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 987, (char) (35654 - Drawable.resolveOpacity(0, 0))).intern(), new i());
        map.put(G(19 - KeyEvent.keyCodeFromString(""), (ViewConfiguration.getPressedStateDuration() >> 16) + 1011, (char) ((-1) - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)))).intern(), new f());
        map.put(G(17 - (ViewConfiguration.getMaximumFlingVelocity() >> 16), (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)) + IronSourceError.ERROR_RV_LOAD_FAIL_UNEXPECTED, (char) (28082 - ExpandableListView.getPackedPositionGroup(0L))).intern(), new h());
        int i2 = w + 91;
        v = i2 % 128;
        if ((i2 % 2 != 0 ? (char) 20 : '#') == '#') {
            return map;
        }
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0240, code lost:
    
        if (r21.equals(G(10 - android.text.TextUtils.getTrimmedLength(""), 62 - (android.media.AudioTrack.getMaxVolume() > 0.0f ? 1 : (android.media.AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)), (char) (android.graphics.Color.rgb(0, 0, 0) + 16777216)).intern()) != false) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:198:0x084f  */
    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ｋ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.lang.Class mo384(java.lang.String r21) {
        /*
            Method dump skipped, instruction units count: 2544
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.bd.mo384(java.lang.String):java.lang.Class");
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﾇ */
    public final String mo385() {
        hs hsVarM771;
        Class<BidMachine> cls;
        String strG;
        int i2 = v + 41;
        w = i2 % 128;
        try {
            if ((i2 % 2 == 0 ? '_' : '`') != '_') {
                hsVarM771 = hq.m770().m771();
                cls = BidMachine.class;
                strG = G(TextUtils.indexOf((CharSequence) "", '0') + 13, ViewConfiguration.getEdgeSlop() >> 16, (char) (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)));
            } else {
                hsVarM771 = hq.m770().m771();
                cls = BidMachine.class;
                strG = G(7 << TextUtils.indexOf((CharSequence) "", 'u'), ViewConfiguration.getEdgeSlop() >> 94, (char) (TypedValue.complexToFraction(0, 2.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 2.0f, 0.0f) == 0.0f ? 0 : -1)));
            }
            return hsVarM771.m775(cls, strG.intern());
        } catch (Exception unused) {
            return null;
        }
    }
}
