package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.media.AudioTrack;
import android.os.SystemClock;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.json.adqualitysdk.sdk.i.az;
import com.json.b4;
import com.verizon.ads.AdContent;
import com.verizon.ads.AdSession;
import com.verizon.ads.CreativeInfo;
import com.verizon.ads.VASAds;
import com.verizon.ads.edition.BuildConfig;
import com.verizon.ads.inlineplacement.InlineAdView;
import com.verizon.ads.interstitialplacement.InterstitialAd;
import com.verizon.ads.interstitialvastadapter.InterstitialVASTAdapter;
import com.verizon.ads.interstitialwebadapter.InterstitialWebAdapter;
import com.verizon.ads.support.VASPlacement;
import com.verizon.ads.vastcontroller.VASTController;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ca extends az {
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
            return ca.s((InterstitialAd) list.get(0));
        }
    }

    final class b implements az.d {
        b() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return ca.I((CreativeInfo) list.get(0));
        }
    }

    final class c implements az.d {
        c() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return ca.x((CreativeInfo) list.get(0));
        }
    }

    final class d implements az.d {
        d() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return ca.q((InterstitialWebAdapter) list.get(0));
        }
    }

    final class e implements az.d {
        e() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return ca.H((AdContent) list.get(0));
        }
    }

    final class f implements az.d {
        f() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return ca.p((AdContent) list.get(0));
        }
    }

    final class g implements az.d {
        g() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return ca.m419();
        }
    }

    final class h implements az.d {
        h() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            ca.y((VASTController) list.get(0), (VASTController.VASTControllerListener) list.get(1));
            return null;
        }
    }

    final class i implements az.d {
        i() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return ca.z((InterstitialVASTAdapter) list.get(0));
        }
    }

    final class j implements az.d {
        j() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return ca.J((InlineAdView) list.get(0));
        }
    }

    final class k implements az.d {
        k() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return ca.G((InterstitialAd) list.get(0));
        }
    }

    final class l implements az.d {
        l() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return ca.w((VASPlacement) list.get(0));
        }
    }

    final class m implements az.d {
        m() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return ca.A((InlineAdView) list.get(0));
        }
    }

    static {
        char[] cArr = new char[1001];
        ByteBuffer.wrap("\u0000^\u0018ë1\nJ~b\u0080{÷\u0094d\u00ad\\Å\u0093Þ3÷B\u000fù\u0000V\u0018ö1=Jdb¿{ç\u0094#\u00adwÅÑÞ\u001b÷_\r9\u0015\u0082<YGQoðv¬\u0099b 2È\u0098ÓZú\u0012\u0002©%¯LuW+\u007fÍ\u0086Y©\b±ôØ¿ãy\n+\u0012\u00945\u0005\\$dÄ\u008f\u009f\u0096V¹=Á\u0095èAó\u0005\u001bÓ\"¹Em\u0000W\u0018Ò1\fJsbµ{ö\u0094=\u00ad@ÅÛÞ\u001b÷O\u000f«(ýA?Z{h\np±Yj\"b\nÃ\u0013\u009füQÅ\u0001\u00ad«¶i\u009f!g\u009a@\u009c)F2\u0018\u001aþãpÌ ÔÃ½\u0099\u0086Wo\u0019w§Pq95\u0001ßê\u009eóHÜ\u001a¤·\u008dy\u0096!~íG\u009f W\t\u0018\u0011°úhÃm«ß´\u0094\u009dDf9N½Wx05\u0018Êá\u0093ÊMÓ\u0007»¡\u0084um1uó\u0000V\u0018ö1=Jqb\u009d{ð\u0094>\u00adhÅÎÞ\u0006÷R\u000f¤\u0000c\u0018Ø1\u0003J\u000bbª{ö\u00948\u00adhÅÂÞ\u0000÷H\u000fó(õA/Zqr\u0097\u008b\u0019¤I¼ªÕðî>\u0007p\u001fÎ8\u0018Q\\i¶\u0082÷\u009b!´rÌÚå\u0001þ]\u0016\u0081/óH/auyÈ\u0092\u0016«XÃÏÜÎõ\u000e\u000eU&é?5XHp\u0096\u0089ð¢&»nÓÊì\fÐ8È\u0090áZ\u009a\u0019²í«£DG}\u0004\u0015¬\u000et'7ßÍø\u0085\u0091\u007f\u008a\u0014¢¸[lt$lÂ\u0005\u0094>@\u0000c\u0018Ø1\u0003J\u000bbª{ö\u00948\u00adhÅÂÞ\u0000÷H\u000fó(õA/Zqr\u0097\u008b\u0007¤B¼¼Õãî%\u0007f\u001fÍ8_Qei\u008d\u0082×\u009b\u0004´@Ìþå\nþY\u0016\u0081/ùH*a`yØ\u00922«IÃ\u0095Üñõ9\u000eo&É?\r\u0089k\u0091û¸ Ãnë\u0090òÔ\u001d)$GLÌW$~a\u0086\u0088\u0000c\u0018Ø1\u0003J\u000bbª{ö\u00948\u00adhÅÂÞ\u0000÷H\u000fó(õA/Zqr\u0097\u008b\u0019¤I¼²Õüî\"\u0007f\u001fÊ8\u001dQIi¼\u0082ó\u009b ´aÌÕå\u0006þ\u0007\u0016©/ùH\"alyÒ\u0092\u0016«kÃ\u0085ÜÎõ&\u000ec&Ê¨ÿ°_\u0099\u0094âÍÊ\u0011ÓI<®\u0005úmPv\u008f_Ë§#\u0080Xé\u0080òýÚy#¼\fù\u0000c\u0018Ø1\u0003J\u000bbª{ö\u00948\u00adhÅÂÞ\u0000÷H\u000fó(õA/Zqr\u0097\u008b\u0007¤B¼¼Õãî%\u0007f\u001fÍ8_Q~i\u009e\u0082Å\u009b\f´`ÌÈå?þ{\u0016¡/ÞH\naRyÙ\u0092\u0011«|Ã\u0088Üýõ8ð\fè¬Ágº>\u0092â\u008bºdG]>5\u0080.c\u0007\u0015ÿâØ¹\u0000c\u0018Ø1\u0003J\u000bbª{ö\u00948\u00adhÅÂÞ\u0000÷H\u000fó(õA/Zqr\u0097\u008b\u0007¤B¼¼Õãî%\u0007f\u001fÍ8_Q~i\u009e\u0082Å\u009b\f´`ÌÈå%þL\u0016\u0082/ÁH'a`yËqÕiS@\u009d;Ò\u0013>\nlåªÜò´g¯\u0097\u0086Ö~$È\u009eÐ\u000eùÍ\u0082\u0097ªy³7\\ée¿\r\u001b\u0016Ñ?\u0090Çfà\u0002\u0089ø\u0000I\u0018Ù1\u001aJ@b®{à\u0094>\u00adhÅÌÞ\u0006÷G\u000f±(ÕA/ZNrÐ\u008b\u0003¤S¼»Õûî)\u0007qÑ-É½à~\u009b$³Êª\u0084EZ|\f\u0014¨\u000fb&#ÞÕù±\u0090K\u008b'£¹Zuu3mÎ\u0004\u0094?ZÖ+Î·éf\u00808¸ÞS\u009cJLe\u0012Ø\u0019À¹ér\u0092+º÷£¯=\u000f%\u009f\fDw\n_ôF°©M\u0090#ø²ã@Ê\u00132ï\u0015·|cg!O\u008d]ÔEDl\u009f\u0017Ñ?/&kÉ\u0096ðø\u0098d\u0083\u0096ªÚR0u}\u001c³\u0007í/hÖ\u0084ùÉá7\u0088m³¿ZûBU.¾6.\u001fõd»LEU\u0001ºü\u0083\u0092ë\u000eðüÙ°!Z\u0006\u0017oÙt\u0087´y¬ë\u0085\u0015þrÖ\u008aÏß \u0017\u0019Wqô\u0084^\u009cÌµ\"Î_æ°ÿÿ\u0010<)qAÉ\u0000D\u0018Ö1\u001aJDb\u008f{ç\u0094%\u00adsÅÝ\u0000I\u0018Ù1\u001aJ@b®{à\u0094>\u00adhÅÌÞ\u0006÷G\u000f±(ÃA.Z`rø\u008b\u0014¤F¼®Õáî)\u0007qrÉjYC\u009a8À\u0010.\t`æ¾ßè·L¬\u0086\u0085Ç}1ZB3\u008a(Ñ\u0000mù±ÖÃÎ?§e\u009c¸uæmH\u0000V\u0018ö1=Jdb¿{ç\u0094#\u00adwÅÑÞ\u001b÷_\u000f\u009e(ûA%ZdrÐ\u008b\u0017\u0000V\u0018ö1=Jqb\u009f{ü\u0094$\u00aduÅÊÞ\u0000÷J\u000f±(ñA9\u0000V\u0018ö1=Jqb\u009f{ü\u0094$\u00aduÅÊÞ\u0000÷J\u000f±(ñA9ZNrÐ\u008b\u0003¤S¼»Õûî)\u0007q\u0000W\u0018Ò1\fJfb³{ý\u0094>\u00adsÅ×Þ\u0003÷J\u000f¸(æ\u0000W\u0018Ò1\fJfb³{ý\u0094>\u00adsÅ×Þ\u0003÷J\u000f¸(æA\u0007ZkrÊ\u008b\u0004¤B¼°Õðî>\u0000W\u0018Ö1\u001aJ@b®{õ\u0094+\u00admÅÔ\u0000W\u0018Ö1\u001aJ@b®{õ\u0094+\u00admÅÔÞ=÷C\u000f®(áA'ZvÞ\u0015Æµï~\u00942¼É¥¹Jms'\u001b\u0094\u0000z)\fÑûö  \t8¼\u0011tj\u0018BÛ[\u0089´A\u008d&å²(l0Ù\u0019\u0011bgJ¹Sì¼$\u0085xíÀö\u0010ßD'¢\u0000öi!reZâ£\u0017\u008cM\u0094¶ýûÆ*/m7ß\u0010\u000eyjA°\u0088\u0089\u0090<¹ôÂ\u0082ê\\ó\t\u001cÁ%\u009dM%Võ\u007f¡\u0087G \u0013ÉÄÒ\u0080ú\u0016\u0003ú,\u009a4U]\bfÑ\u008f\u0084\u0097;°ñ\u0000g\u0018Ò1\u001aJlb²{ÿ\u0094#\u00adoÅÝÞ?÷J\u000f¼(÷A.ZorÜ\u008b\u001e¤S¼\u0097ÕñRéJ\\c\u0094\u0018â0<)qÆ\u00adÿá\u0097S\u008c ¥Ì]\u0000z\u007f\u0013¶\bÿ ^Ù\u0091öÇ\u0000g\u0018Ò1\u001aJfb®{ö\u0094+\u00aduÅÑÞ\u0019÷C\u000f\u0094(úA-Zm\u0000g\u0018Ò1\u001aJfb®{ö\u0094+\u00aduÅÑÞ\u0019÷C\u000f\u0094(ð\u0000g\u0018Ò1\u001aJab¹{þ\u0094+\u00adoÅÜÞ<÷I\u000f¨(æA(ZgvnnÛG\u0013<e\u0014»\rîâ&Ûz³Â¨\u0012\u0081Fy ^ô7#,g\u0004çý\u001cÒLÊ\u0081£õ\u0098 q}iòN\u001c'b\u001f¹ôñí0ÂhºÜ\u0093\u000f¦\u008b¾>\u0097öì\u0080Ä^Ý\u000b2Ã\u000b\u009fc'x÷Q£©E\u008e\u0011çÆü\u0082Ô\u0003-ý\u0002¸\u001aFs8HÄ¡¬¹9\u009eó÷°ÏV$\u0014=Õ\u0000g\u0018Ò1\u001aJfb³{ý\u0094>\u00addÅÖÞ\u001b\u0000g\u0018Ò1\u001aJhb¹{ç\u0094+\u00adeÅÙÞ\u001b÷GÓ Ë\u0081âI\u0099 ±î¨³Gm~\u0011\u0016\u0084\rR$\u0001Üüû¨\u0092t\u0089=¡\u008fXQw8oä\u0006µ=kÔ5Ì\u0087ëG\u0082\t".getBytes("ISO-8859-1")).asCharBuffer().get(cArr, 0, 1001);
        t = cArr;
        u = 5785407006730229943L;
    }

    public ca(String str) {
        super(str);
    }

    static /* synthetic */ AdSession A(InlineAdView inlineAdView) {
        int i2 = v + 37;
        w = i2 % 128;
        if (i2 % 2 != 0) {
            return v(inlineAdView);
        }
        v(inlineAdView);
        throw null;
    }

    private static AdSession B(InterstitialAd interstitialAd) {
        int i2 = v + 9;
        w = i2 % 128;
        boolean z = i2 % 2 != 0;
        AdSession adSession = interstitialAd.getAdSession();
        if (!z) {
            int i3 = 84 / 0;
        }
        int i4 = v + 79;
        w = i4 % 128;
        int i5 = i4 % 2;
        return adSession;
    }

    private static CreativeInfo C(VASPlacement vASPlacement) {
        int i2 = w + 103;
        v = i2 % 128;
        char c2 = i2 % 2 != 0 ? '7' : (char) 30;
        CreativeInfo creativeInfo = vASPlacement.getCreativeInfo();
        if (c2 == '7') {
            int i3 = 37 / 0;
        }
        int i4 = v + 121;
        w = i4 % 128;
        int i5 = i4 % 2;
        return creativeInfo;
    }

    private static String D(int i2, int i3, char c2) {
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

    private static String E(AdContent adContent) {
        int i2 = w + 99;
        v = i2 % 128;
        if ((i2 % 2 != 0 ? (char) 20 : 'O') == 'O') {
            return adContent.getContent();
        }
        adContent.getContent();
        throw null;
    }

    private static String F(CreativeInfo creativeInfo) {
        int i2 = w + 51;
        v = i2 % 128;
        boolean z = i2 % 2 != 0;
        String demandSource = creativeInfo.getDemandSource();
        if (z) {
            int i3 = 8 / 0;
        }
        int i4 = v + 31;
        w = i4 % 128;
        int i5 = i4 % 2;
        return demandSource;
    }

    static /* synthetic */ AdSession G(InterstitialAd interstitialAd) {
        int i2 = w + 113;
        v = i2 % 128;
        char c2 = i2 % 2 != 0 ? ' ' : b4.R;
        AdSession adSessionB = B(interstitialAd);
        if (c2 == ' ') {
            int i3 = 58 / 0;
        }
        int i4 = v + 87;
        w = i4 % 128;
        int i5 = i4 % 2;
        return adSessionB;
    }

    static /* synthetic */ String H(AdContent adContent) {
        int i2 = w + 115;
        v = i2 % 128;
        int i3 = i2 % 2;
        String strE = E(adContent);
        int i4 = w + 5;
        v = i4 % 128;
        int i5 = i4 % 2;
        return strE;
    }

    static /* synthetic */ String I(CreativeInfo creativeInfo) {
        int i2 = w + 59;
        v = i2 % 128;
        boolean z = i2 % 2 != 0;
        String strF = F(creativeInfo);
        if (z) {
            int i3 = 27 / 0;
        }
        return strF;
    }

    static /* synthetic */ String J(InlineAdView inlineAdView) {
        int i2 = w + 23;
        v = i2 % 128;
        int i3 = i2 % 2;
        String strN = n(inlineAdView);
        int i4 = w + 99;
        v = i4 % 128;
        if ((i4 % 2 != 0 ? 'a' : 'U') == 'U') {
            return strN;
        }
        throw null;
    }

    private static AdContent k(InterstitialVASTAdapter interstitialVASTAdapter) {
        int i2 = v + 65;
        w = i2 % 128;
        int i3 = i2 % 2;
        AdContent adContent = interstitialVASTAdapter.getAdContent();
        int i4 = w + 109;
        v = i4 % 128;
        int i5 = i4 % 2;
        return adContent;
    }

    private static AdContent l(InterstitialWebAdapter interstitialWebAdapter) {
        int i2 = w + 113;
        v = i2 % 128;
        char c2 = i2 % 2 != 0 ? 'a' : 'X';
        AdContent adContent = interstitialWebAdapter.getAdContent();
        if (c2 != 'X') {
            int i3 = 69 / 0;
        }
        int i4 = v + 53;
        w = i4 % 128;
        if (i4 % 2 == 0) {
            throw null;
        }
        return adContent;
    }

    private static String m() {
        int i2 = w + 13;
        v = i2 % 128;
        if (!(i2 % 2 != 0)) {
            return VASAds.getSiteId();
        }
        VASAds.getSiteId();
        throw null;
    }

    private static String n(InlineAdView inlineAdView) {
        int i2 = v + 11;
        w = i2 % 128;
        if ((i2 % 2 == 0 ? '\"' : '!') == '!') {
            return inlineAdView.getPlacementId();
        }
        inlineAdView.getPlacementId();
        throw null;
    }

    private static String o(InterstitialAd interstitialAd) {
        int i2 = w + 87;
        v = i2 % 128;
        if (i2 % 2 != 0) {
            interstitialAd.getPlacementId();
            throw null;
        }
        String placementId = interstitialAd.getPlacementId();
        int i3 = w + 79;
        v = i3 % 128;
        int i4 = i3 % 2;
        return placementId;
    }

    static /* synthetic */ Map p(AdContent adContent) {
        int i2 = w + 85;
        v = i2 % 128;
        if ((i2 % 2 != 0 ? '\r' : '\'') == '\'') {
            return t(adContent);
        }
        t(adContent);
        throw null;
    }

    static /* synthetic */ AdContent q(InterstitialWebAdapter interstitialWebAdapter) {
        int i2 = w + 75;
        v = i2 % 128;
        int i3 = i2 % 2;
        AdContent adContentL = l(interstitialWebAdapter);
        int i4 = v + 41;
        w = i4 % 128;
        if (i4 % 2 == 0) {
            throw null;
        }
        return adContentL;
    }

    private static String r(CreativeInfo creativeInfo) {
        int i2 = v + 101;
        w = i2 % 128;
        if ((i2 % 2 == 0 ? ']' : '3') != '3') {
            creativeInfo.getCreativeId();
            throw null;
        }
        String creativeId = creativeInfo.getCreativeId();
        int i3 = v + 25;
        w = i3 % 128;
        if (i3 % 2 == 0) {
            throw null;
        }
        return creativeId;
    }

    static /* synthetic */ String s(InterstitialAd interstitialAd) {
        int i2 = w + 23;
        v = i2 % 128;
        boolean z = i2 % 2 == 0;
        String strO = o(interstitialAd);
        if (!z) {
            int i3 = 96 / 0;
        }
        int i4 = w + 101;
        v = i4 % 128;
        int i5 = i4 % 2;
        return strO;
    }

    private static Map<String, Object> t(AdContent adContent) {
        int i2 = v + 9;
        w = i2 % 128;
        int i3 = i2 % 2;
        Map<String, Object> metadata = adContent.getMetadata();
        int i4 = w + 87;
        v = i4 % 128;
        int i5 = i4 % 2;
        return metadata;
    }

    private static void u(VASTController vASTController, VASTController.VASTControllerListener vASTControllerListener) {
        int i2 = v + 9;
        w = i2 % 128;
        char c2 = i2 % 2 == 0 ? '_' : '5';
        vASTController.setListener(vASTControllerListener);
        if (c2 != '5') {
            int i3 = 80 / 0;
        }
        int i4 = w + 45;
        v = i4 % 128;
        if (i4 % 2 == 0) {
        } else {
            throw null;
        }
    }

    private static AdSession v(InlineAdView inlineAdView) {
        int i2 = v + 5;
        w = i2 % 128;
        int i3 = i2 % 2;
        AdSession adSession = inlineAdView.getAdSession();
        int i4 = v + 39;
        w = i4 % 128;
        if ((i4 % 2 == 0 ? '2' : '<') == '<') {
            return adSession;
        }
        int i5 = 72 / 0;
        return adSession;
    }

    static /* synthetic */ CreativeInfo w(VASPlacement vASPlacement) {
        int i2 = w + 63;
        v = i2 % 128;
        int i3 = i2 % 2;
        CreativeInfo creativeInfoC = C(vASPlacement);
        int i4 = w + 123;
        v = i4 % 128;
        int i5 = i4 % 2;
        return creativeInfoC;
    }

    static /* synthetic */ String x(CreativeInfo creativeInfo) {
        int i2 = v + 5;
        w = i2 % 128;
        int i3 = i2 % 2;
        String strR = r(creativeInfo);
        int i4 = w + 89;
        v = i4 % 128;
        if ((i4 % 2 != 0 ? '\r' : '\b') == '\b') {
            return strR;
        }
        throw null;
    }

    static /* synthetic */ void y(VASTController vASTController, VASTController.VASTControllerListener vASTControllerListener) {
        int i2 = v + 109;
        w = i2 % 128;
        int i3 = i2 % 2;
        u(vASTController, vASTControllerListener);
        int i4 = v + 29;
        w = i4 % 128;
        int i5 = i4 % 2;
    }

    static /* synthetic */ AdContent z(InterstitialVASTAdapter interstitialVASTAdapter) {
        int i2 = v + 21;
        w = i2 % 128;
        char c2 = i2 % 2 == 0 ? 'U' : 'G';
        AdContent adContentK = k(interstitialVASTAdapter);
        if (c2 != 'G') {
            int i3 = 33 / 0;
        }
        int i4 = v + 47;
        w = i4 % 128;
        int i5 = i4 % 2;
        return adContentK;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    static /* synthetic */ String m419() {
        int i2 = w + 57;
        v = i2 % 128;
        int i3 = i2 % 2;
        String strM = m();
        int i4 = v + 91;
        w = i4 % 128;
        if ((i4 % 2 != 0 ? (char) 3 : '9') == 3) {
            return strM;
        }
        int i5 = 0 / 0;
        return strM;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    final Map<String, az.d> j() {
        HashMap map = new HashMap();
        map.put(D((ViewConfiguration.getMinimumFlingVelocity() >> 16) + 9, (ViewConfiguration.getTouchSlop() >> 8) + 756, (char) (8302 - TextUtils.indexOf("", ""))).intern(), new g());
        map.put(D((PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + 26, 765 - (ViewConfiguration.getScrollDefaultDelay() >> 16), (char) (10251 - (ViewConfiguration.getDoubleTapTimeout() >> 16))).intern(), new a());
        map.put(D(TextUtils.indexOf("", "", 0, 0) + 24, 791 - (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)), (char) (TextUtils.lastIndexOf("", '0', 0) + 35055)).intern(), new k());
        map.put(D((KeyEvent.getMaxKeyCode() >> 16) + 20, 815 - ExpandableListView.getPackedPositionGroup(0L), (char) (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1))).intern(), new j());
        map.put(D(18 - TextUtils.getCapsMode("", 0, 0), TextUtils.lastIndexOf("", '0', 0, 0) + 836, (char) (Drawable.resolveOpacity(0, 0) + 21134)).intern(), new m());
        map.put(D(View.MeasureSpec.makeMeasureSpec(0, 0) + 15, 854 - (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)), (char) (TextUtils.indexOf((CharSequence) "", '0') + 1)).intern(), new l());
        map.put(D(View.getDefaultSize(0, 0) + 13, 869 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)), (char) (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1))).intern(), new c());
        map.put(D((-16777201) - Color.rgb(0, 0, 0), View.MeasureSpec.getMode(0) + 881, (char) ('0' - AndroidCharacter.getMirror('0'))).intern(), new b());
        map.put(D('O' - AndroidCharacter.getMirror('0'), 896 - TextUtils.getTrimmedLength(""), (char) (30218 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)))).intern(), new d());
        map.put(D(28 - ExpandableListView.getPackedPositionType(0L), 927 - ExpandableListView.getPackedPositionGroup(0L), (char) (42732 - (ViewConfiguration.getScrollBarFadeDuration() >> 16))).intern(), new i());
        map.put(D((ViewConfiguration.getPressedStateDuration() >> 16) + 10, 956 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)), (char) ((AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) - 1)).intern(), new e());
        map.put(D(10 - TextUtils.indexOf((CharSequence) "", '0', 0, 0), (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) + 964, (char) TextUtils.getOffsetBefore("", 0)).intern(), new f());
        map.put(D(25 - (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)), 976 - (ViewConfiguration.getJumpTapTimeout() >> 16), (char) (54099 - (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)))).intern(), new h());
        int i2 = w + 47;
        v = i2 % 128;
        int i3 = i2 % 2;
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:170:0x065a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00b5  */
    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ｋ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.lang.Class mo384(java.lang.String r21) {
        /*
            Method dump skipped, instruction units count: 1932
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.ca.mo384(java.lang.String):java.lang.Class");
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﾇ */
    public final String mo385() {
        hs hsVarM771;
        Class<BuildConfig> cls;
        String strD;
        int i2 = w + 63;
        v = i2 % 128;
        try {
            if ((i2 % 2 != 0 ? 'F' : 'H') != 'H') {
                hsVarM771 = hq.m770().m771();
                cls = BuildConfig.class;
                strD = D(90 % KeyEvent.normalizeMetaState(0), ExpandableListView.getPackedPositionType(0L), (char) ((-1) / (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1))));
            } else {
                hsVarM771 = hq.m770().m771();
                cls = BuildConfig.class;
                strD = D(12 - KeyEvent.normalizeMetaState(0), ExpandableListView.getPackedPositionType(0L), (char) ((SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) - 1));
            }
            String strM775 = hsVarM771.m775(cls, strD.intern());
            int i3 = w + 73;
            v = i3 % 128;
            if (!(i3 % 2 != 0)) {
                return strM775;
            }
            int i4 = 58 / 0;
            return strM775;
        } catch (Throwable unused) {
            return null;
        }
    }
}
