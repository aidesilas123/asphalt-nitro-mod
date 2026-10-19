package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.ImageFormat;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.media.AudioTrack;
import android.os.Process;
import android.os.SystemClock;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.json.adqualitysdk.sdk.i.az;
import com.yahoo.ads.AdContent;
import com.yahoo.ads.AdSession;
import com.yahoo.ads.CreativeInfo;
import com.yahoo.ads.SDKInfo;
import com.yahoo.ads.YASAds;
import com.yahoo.ads.inlineplacement.InlineAdView;
import com.yahoo.ads.interstitialplacement.InterstitialAd;
import com.yahoo.ads.interstitialvastadapter.InterstitialVASTAdapter;
import com.yahoo.ads.interstitialwebadapter.InterstitialWebAdapter;
import com.yahoo.ads.support.YASPlacement;
import com.yahoo.ads.vastcontroller.VASTController;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class cc extends az {
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
            return cc.J((InterstitialAd) list.get(0));
        }
    }

    final class b implements az.d {
        b() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return cc.z((CreativeInfo) list.get(0));
        }
    }

    final class c implements az.d {
        c() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return cc.v((CreativeInfo) list.get(0));
        }
    }

    final class d implements az.d {
        d() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return cc.x((InlineAdView) list.get(0));
        }
    }

    final class e implements az.d {
        e() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return cc.D((YASPlacement) list.get(0));
        }
    }

    final class f implements az.d {
        f() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return cc.B((InterstitialVASTAdapter) list.get(0));
        }
    }

    final class g implements az.d {
        g() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return cc.w((InterstitialWebAdapter) list.get(0));
        }
    }

    final class h implements az.d {
        h() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return cc.m426();
        }
    }

    final class i implements az.d {
        i() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return cc.E((AdContent) list.get(0));
        }
    }

    final class j implements az.d {
        j() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return cc.q((AdContent) list.get(0));
        }
    }

    final class k implements az.d {
        k() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return cc.A((InterstitialAd) list.get(0));
        }
    }

    final class l implements az.d {
        l() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return cc.K((InlineAdView) list.get(0));
        }
    }

    final class m implements az.d {
        m() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return cc.y();
        }
    }

    final class n implements az.d {
        n() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            cc.r((VASTController) list.get(0), (VASTController.VASTControllerListener) list.get(1));
            return null;
        }
    }

    static {
        char[] cArr = new char[1004];
        ByteBuffer.wrap("vÌ\u0086Ú\u0096Ú¦þ¶ÎÆ§Ö¨æ\u0081ö\u008c\u0006\u009f\u0016`\u0000cðaàqÐ\u0004ÀA°' <\u0090\r\u0080\u001fpP`íPþ@Û0\u0098 ·\u0010§\u0000\u0090ð\u009eà\u0093ÑxÁl±\b¡m\u0091\u0003\u0081\u0003q\u001fa\u000fQ\u000eAá1à!Í\u0011Æ\u0001¹\u0000Wðkà~Ð|ÀQ°# #\u0090#\u0080\u0013p\n`åPì@Á0Â ½NÁ¾Ã®Ó\u009e¦\u008eãþ\u0085î\u009eÞ¯Î½>ò.O\u001e\\\u000ey~:n\u000f^\u001eN6¾)®,\u009fÛ\u008fÎÿíïâß\u0089Ï\u0093?\u0090/¹\u001f½\u000fH\u007fUob_qO\u0012¿\u0018¯\u001b\u009f:\u008ftüóìÓÜâÌÄ<õ,\u008b\u001c\u008f\f\u008b|·lR\\YLt¼e¬j\u009c\u0011Am±t¡t\u0091E\u0081Bñ\u001eá\u001bÑ0Á=1,!Ã\u0011Ø¦9V;F+v^f\u001b\u0016}\u0006f6W&EÖ\nÆ·ö¤æ\u0081\u0096Â\u0086÷¶æ¦ÎVÑFÔw#g6\u0017\u0015\u0007\u001a7q'k×hÇ@÷Aç¡\u0097¸\u0087\u009f·\u008c§ûWäGòwÕgÐ\u0014r\u0004\u001849$9Ô0ÄWôcäF\u0094E\u0084¨´¡¤\u008eT\u008d\u0000Mð\\à]ÐcÀ|°\u0003 ,\u0090\u0012\u0080\u0011p\u0010`èPÿ@Ì0÷ §\u0010¦\u0000\u0089ð\u0098à\u0095Ñ~Áa\u0000cðaàqÐ\u0004ÀA°' <\u0090\r\u0080\u001fpP`íPþ@Û0\u0098 ³\u0010·\u0000\u0082ð\u0098à\u0095ÑoÁo±\b¡y\u0091\u0010\u0081\u0011q\u0017a(Q?Að1æ!Å\u0011Ü\u0001¤ñ«á¸Ñ«Á\u009b²r¢}\u0092T\u0082YrJb5äª\u0014\u0083\u0004\u00934 $µTÀDötådÅ\u0094ô\u0084\n´\u000e\u0000cðaàqÐ\u0004ÀA°' <\u0090\r\u0080\u001fpP`íPþ@Û0\u0098 \u00ad\u0010¼\u0000\u008cð\u0087à\u0092ÑoÁh±J¡U\u0091!\u00815q3a\tQ\u0014Aü1¸!í\u0011Ü\u0001¬ñ§á²Ñ\u008fÁ¹²b¢B\u0092K\u0082UrI\u0000YðOàOÐkÀ\\°5 \u0019\u00900\u00801p7`ÈPÍ@Í0Ô \u0092\u0010»\u0000\u0085ð\u0099\u0000cðaàqÐ\u0004ÀA°' <\u0090\r\u0080\u001fpP`íPþ@Û0\u0098 ³\u0010·\u0000\u0082ð\u0098à\u0095ÑoÁo±\b¡m\u0091\u0003\u0081\u0003q\u001fa\bQ\tAÅ1Ä!å\u0011û\u0001\u0084ñ\u0099á¹Ñ\u0088Á®²o¢q\u0092UZìªúºú\u008aÞ\u009aéê\u0080ú¶Ê²Ú§*\u009d:P\nJ\u001ajw\u0019\u0087\u001b\u0097\u000b§~·;Ç]×Fçw÷e\u0007*\u0017\u0097'\u00847¡GâWÉgÍwø\u0087â\u0097ï¦\u0015¶\u0015ÆrÖ\u0017æyöy\u0006e\u0016r&s6¥F\u0089V¼f\u009evÓ\u0086Ñ\u0096ÑÜº,\u0085<\u0080\f²\u001cµlÖ|ÛLþ\\À¬é¼\u0013\u008c\f\u008açzÎjÆZáJä:\u009b*\u008e\u001a¥\nªú¹êCÚXÊGº|\u0000Ið`àhÐOÀJ°5  \u0090\u000b\u0080\u0004p\u0017`íPö@é0Ò \u0088\u0010»\u0000\u0093ð\u009aà\u0099ÑdÁ}±T©\u009eY·I¿y\u0098i\u009d\u0019â\t÷9Ü)ÓÙÀÉ:ù!é>\u0099\u0005\u0089R¹a©VYII_x¸h½\u0018½\b\u008a8æ(óØìÈÕøÈè-\u0000YðOàOÐkÀ\\°5¦3V*F7v\u0003f6\u0016@\u0006[äð\u0014æ\u0004æ4Ó$ýT\u008eD\u009et®d´\u0094²\u0084K´G\u0000Ið`àpÐCÀV°# \u0015\u0090\u0006\u0080<p\u0017`ÿPî@Í0Ø ¡\u0010 \u0000Ið`àpÐCÀV°# \u0015\u0090\u0006\u00801p\u001a`íPê@Ü0Ó ¶\u0010\u009e\u0000\u0089ð\u009dà\u0088ÑoÁv±C¡F7-Ç\u0004×\u0014ç'÷2\u0087G\u0097q§b·UG~W\u0089g\u008ew¸\u0007·\u0017Ò\u0000Aðjà_ÐEÀV°2 1\u0090\f\u0080\u0004Rö¢Ý²ø\u0082ø\u0092üâ\u0082ò\u008aÂºÒ©\u0000DðoàhÐKÀk°2 ;\u0090\u0010\u0080\u0015\u0000Ið`àhÐOÀJ°5  \u0090\u000b\u0080\u0004p\u0017`íPö@ÿ0Ó ¦\u0010\u0093\u0000\u0084ð\u008fà\u008cÑ~Á}±T\u0097ÄgíwåGÂWÇ'¸7\u00ad\u0007\u0086\u0017\u0089ç\u009a÷`Ç{×s§z·\u001a\u0087\u000b\u0097,g\u0007w\u0010F÷Vá&Î6ËXÑ¨Ç¸Ç\u0088ã\u0098ÓèºøµÈ\u009cØ\u0091(\u00828}\bQ\u0018OhPx*H3X\u000f\u0000VðOàOÐ~À{°) :\u0090\u0016\u0080\u0002p\u0011`àPö@Í0Ä\u0000VðOàOÐ~À{°) :\u0090\u0016\u0080\u0002p\u0011`àPö@Í0Ä \u0088\u0010»\u0000\u0093ð\u009aà\u0099ÑdÁ}±T\u0000Wðkà~ÐiÀW°(  \u0090\u0010\u0080\u001fp\u0012`àPÿ@Ú\u0000Wðkà~ÐiÀW°(  \u0090\u0010\u0080\u001fp\u0012`àPÿ@Ú0ú \u00ad\u0010¡\u0000\u0094ð\u008bà\u0092ÑoÁj\u0000WðoàhÐOÀJ°  5\u0090\u000e\u0080\u001c\u0000WðoàhÐOÀJ°  5\u0090\u000e\u0080\u001cp,`éPé@Ý0Ú °YÐ©É¹É\u0089ø\u0099èé©ù¶É\u0081Ù\u0099)®9c\ty\u0019Y\u0000gðkàhÐyÀQ°2 1\u0090+\u0080\u0014\u0000gðkàhÐyÀ\\°- \u001d\u0090\f\u0080\u0016p\u0011DÀ´Ì¤Ï\u0094Ä\u0084ñô\u0095ä\u0096Ô·Ä¤4\u00ad$B\u0014I\u0004ftpd\u000fT%D+´(¤8\u0095È\u0085ÒõäåýÕ\u0091Å¾5\u009dÏ\u0099?\u0095/\u0096\u001f\u009d\u000f¨\u007fÌoÏ_îOý¿ô¯\u001b\u009f\u0010\u008f?ÿ)ïVßmÏz?C/g\u001e\u0087\u000e\u0095~±n¥^Ò\u0000gðkàhÐcÀV°* =\u0090\f\u0080\u0015p.`àPû@Ë0Ó ©\u0010·\u0000\u008eð\u009aàµÑn\u0015×åÛõØÅÓÕæ¥\u009aµ\u008d\u0085¼\u0095¥e\u008fuXEyU}%u5\u0007\u0005\u000b\u0015?å0\u0000gðkàhÐiÀJ°# 5\u0090\u0016\u0080\u0019p\b`éPÓ@Æ0Ð «\u0000gðkàhÐiÀJ°# 5\u0090\u0016\u0080\u0019p\b`éPÓ@Ì\u0000gðkàhÐnÀ]°+ 5\u0090\f\u0080\u0014p-`ãPï@Ú0Õ ¡\u0014qä}ô~ÄuÔ@¤$´'\u0084\u0006\u0094\u0015d\u001ctóDøT×$Á4¾\u0004\u0093\u0014\u0093ä\u009aô¼ÅuÕk¥Gµc\u00850\u0095\u0005e'u\u0014E\u0018Uû%î5ÆLñ¼ý¬þ\u009cõ\u008cÀü¤ì§Ü\u0086Ì\u0095<\u009c,s\u001cx\fW|Al>\\\u0012L\u0017¼\u000b¬\u001e\u009dÝ\u008dêýóíÍÝºÍ²=\u00ad-\u0094\u001d\u0098\u0000gðkàhÐiÀW°(  \u0090\u0007\u0080\u001ep\n\u0000gðkàhÐgÀ]°2 5\u0090\u0006\u0080\u0011p\n`í\nÓúËêÈÚÜÊùº\u0095ª\u0080\u009a\u0081\u008a¿z°jXZHJg:z*\b\u001a\u0017\n2ú\u0002ê5ÛÙËÌ»ã«ú\u009b\u0087\u008b\u0082".getBytes("ISO-8859-1")).asCharBuffer().get(cArr, 0, 1004);
        t = cArr;
        u = -2516005795449278450L;
    }

    public cc(String str) {
        super(str);
    }

    static /* synthetic */ String A(InterstitialAd interstitialAd) {
        int i2 = w + 15;
        v = i2 % 128;
        int i3 = i2 % 2;
        String strG = G(interstitialAd);
        int i4 = w + 117;
        v = i4 % 128;
        int i5 = i4 % 2;
        return strG;
    }

    static /* synthetic */ AdContent B(InterstitialVASTAdapter interstitialVASTAdapter) {
        int i2 = w + 57;
        v = i2 % 128;
        int i3 = i2 % 2;
        AdContent adContentI = I(interstitialVASTAdapter);
        int i4 = w + 53;
        v = i4 % 128;
        int i5 = i4 % 2;
        return adContentI;
    }

    private static AdSession C(InlineAdView inlineAdView) {
        int i2 = w + 63;
        v = i2 % 128;
        char c2 = i2 % 2 != 0 ? '2' : (char) 21;
        AdSession adSession = inlineAdView.getAdSession();
        if (c2 != 21) {
            int i3 = 30 / 0;
        }
        return adSession;
    }

    static /* synthetic */ CreativeInfo D(YASPlacement yASPlacement) {
        int i2 = v + 109;
        w = i2 % 128;
        int i3 = i2 % 2;
        CreativeInfo creativeInfoT = t(yASPlacement);
        int i4 = v + 55;
        w = i4 % 128;
        int i5 = i4 % 2;
        return creativeInfoT;
    }

    static /* synthetic */ String E(AdContent adContent) {
        int i2 = v + 103;
        w = i2 % 128;
        char c2 = i2 % 2 == 0 ? '5' : 'Y';
        String strU = u(adContent);
        if (c2 != 'Y') {
            int i3 = 1 / 0;
        }
        return strU;
    }

    private static String F(CreativeInfo creativeInfo) {
        int i2 = w + 9;
        v = i2 % 128;
        int i3 = i2 % 2;
        String creativeId = creativeInfo.getCreativeId();
        int i4 = w + 45;
        v = i4 % 128;
        if (i4 % 2 != 0) {
            throw null;
        }
        return creativeId;
    }

    private static String G(InterstitialAd interstitialAd) {
        int i2 = w + 3;
        v = i2 % 128;
        if (i2 % 2 != 0) {
            interstitialAd.getPlacementId();
            throw null;
        }
        String placementId = interstitialAd.getPlacementId();
        int i3 = v + 7;
        w = i3 % 128;
        if (!(i3 % 2 == 0)) {
            return placementId;
        }
        int i4 = 18 / 0;
        return placementId;
    }

    private static void H(VASTController vASTController, VASTController.VASTControllerListener vASTControllerListener) {
        int i2 = v + 49;
        w = i2 % 128;
        char c2 = i2 % 2 == 0 ? 'Q' : ':';
        vASTController.setListener(vASTControllerListener);
        if (c2 != ':') {
            throw null;
        }
        int i3 = v + 15;
        w = i3 % 128;
        int i4 = i3 % 2;
    }

    private static AdContent I(InterstitialVASTAdapter interstitialVASTAdapter) {
        int i2 = v + 15;
        w = i2 % 128;
        if ((i2 % 2 == 0 ? '<' : 'I') != '<') {
            return interstitialVASTAdapter.getAdContent();
        }
        interstitialVASTAdapter.getAdContent();
        throw null;
    }

    static /* synthetic */ AdSession J(InterstitialAd interstitialAd) {
        int i2 = w + 107;
        v = i2 % 128;
        int i3 = i2 % 2;
        AdSession adSessionL = l(interstitialAd);
        int i4 = w + 23;
        v = i4 % 128;
        if ((i4 % 2 != 0 ? 'L' : 'K') == 'K') {
            return adSessionL;
        }
        throw null;
    }

    static /* synthetic */ String K(InlineAdView inlineAdView) {
        int i2 = v + 71;
        w = i2 % 128;
        boolean z = i2 % 2 != 0;
        String strP = p(inlineAdView);
        if (!z) {
            int i3 = 88 / 0;
        }
        return strP;
    }

    private static Map<String, Object> L(AdContent adContent) {
        int i2 = v + 69;
        w = i2 % 128;
        if (!(i2 % 2 != 0)) {
            adContent.getMetadata();
            throw null;
        }
        Map<String, Object> metadata = adContent.getMetadata();
        int i3 = w + 35;
        v = i3 % 128;
        int i4 = i3 % 2;
        return metadata;
    }

    private static SDKInfo k() {
        int i2 = w + 37;
        v = i2 % 128;
        int i3 = i2 % 2;
        SDKInfo sDKInfo = YASAds.getSDKInfo();
        int i4 = v + 103;
        w = i4 % 128;
        if ((i4 % 2 == 0 ? '\b' : (char) 26) != '\b') {
            return sDKInfo;
        }
        throw null;
    }

    private static AdSession l(InterstitialAd interstitialAd) {
        int i2 = v + 99;
        w = i2 % 128;
        int i3 = i2 % 2;
        AdSession adSession = interstitialAd.getAdSession();
        int i4 = v + 101;
        w = i4 % 128;
        if ((i4 % 2 == 0 ? (char) 25 : 'Y') != 25) {
            return adSession;
        }
        int i5 = 55 / 0;
        return adSession;
    }

    private static String m() {
        int i2 = w + 73;
        v = i2 % 128;
        int i3 = i2 % 2;
        String siteId = YASAds.getSiteId();
        int i4 = v + 9;
        w = i4 % 128;
        int i5 = i4 % 2;
        return siteId;
    }

    private static String n(int i2, int i3, char c2) {
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

    private static String o(CreativeInfo creativeInfo) {
        int i2 = w + 3;
        v = i2 % 128;
        int i3 = i2 % 2;
        String demandSource = creativeInfo.getDemandSource();
        int i4 = w + 19;
        v = i4 % 128;
        int i5 = i4 % 2;
        return demandSource;
    }

    private static String p(InlineAdView inlineAdView) {
        int i2 = v + 71;
        w = i2 % 128;
        int i3 = i2 % 2;
        String placementId = inlineAdView.getPlacementId();
        int i4 = v + 33;
        w = i4 % 128;
        int i5 = i4 % 2;
        return placementId;
    }

    static /* synthetic */ Map q(AdContent adContent) {
        int i2 = v + 73;
        w = i2 % 128;
        int i3 = i2 % 2;
        Map<String, Object> mapL = L(adContent);
        int i4 = v + 29;
        w = i4 % 128;
        if ((i4 % 2 == 0 ? '.' : 'T') != '.') {
            return mapL;
        }
        throw null;
    }

    static /* synthetic */ void r(VASTController vASTController, VASTController.VASTControllerListener vASTControllerListener) {
        int i2 = v + 105;
        w = i2 % 128;
        int i3 = i2 % 2;
        H(vASTController, vASTControllerListener);
        int i4 = w + 125;
        v = i4 % 128;
        if (i4 % 2 == 0) {
        } else {
            throw null;
        }
    }

    private static AdContent s(InterstitialWebAdapter interstitialWebAdapter) {
        int i2 = w + 21;
        v = i2 % 128;
        int i3 = i2 % 2;
        AdContent adContent = interstitialWebAdapter.getAdContent();
        int i4 = v + 79;
        w = i4 % 128;
        if (i4 % 2 == 0) {
            throw null;
        }
        return adContent;
    }

    private static CreativeInfo t(YASPlacement yASPlacement) {
        int i2 = v + 99;
        w = i2 % 128;
        int i3 = i2 % 2;
        CreativeInfo creativeInfo = yASPlacement.getCreativeInfo();
        int i4 = v + 83;
        w = i4 % 128;
        int i5 = i4 % 2;
        return creativeInfo;
    }

    private static String u(AdContent adContent) {
        int i2 = v + 65;
        w = i2 % 128;
        int i3 = i2 % 2;
        String content = adContent.getContent();
        int i4 = w + 17;
        v = i4 % 128;
        int i5 = i4 % 2;
        return content;
    }

    static /* synthetic */ String v(CreativeInfo creativeInfo) {
        int i2 = v + 59;
        w = i2 % 128;
        int i3 = i2 % 2;
        String strF = F(creativeInfo);
        int i4 = v + 103;
        w = i4 % 128;
        int i5 = i4 % 2;
        return strF;
    }

    static /* synthetic */ AdContent w(InterstitialWebAdapter interstitialWebAdapter) {
        int i2 = w + 25;
        v = i2 % 128;
        int i3 = i2 % 2;
        AdContent adContentS = s(interstitialWebAdapter);
        int i4 = v + 57;
        w = i4 % 128;
        if ((i4 % 2 == 0 ? 'G' : (char) 24) == 24) {
            return adContentS;
        }
        throw null;
    }

    static /* synthetic */ AdSession x(InlineAdView inlineAdView) {
        int i2 = w + 111;
        v = i2 % 128;
        int i3 = i2 % 2;
        AdSession adSessionC = C(inlineAdView);
        int i4 = v + 113;
        w = i4 % 128;
        if (i4 % 2 == 0) {
            throw null;
        }
        return adSessionC;
    }

    static /* synthetic */ SDKInfo y() {
        int i2 = w + 89;
        v = i2 % 128;
        int i3 = i2 % 2;
        SDKInfo sDKInfoK = k();
        int i4 = w + 13;
        v = i4 % 128;
        if (!(i4 % 2 != 0)) {
            return sDKInfoK;
        }
        throw null;
    }

    static /* synthetic */ String z(CreativeInfo creativeInfo) {
        int i2 = w + 91;
        v = i2 % 128;
        if (!(i2 % 2 != 0)) {
            return o(creativeInfo);
        }
        o(creativeInfo);
        throw null;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    static /* synthetic */ String m426() {
        int i2 = v + 103;
        w = i2 % 128;
        if (i2 % 2 != 0) {
            return m();
        }
        m();
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    final Map<String, az.d> j() {
        HashMap map = new HashMap();
        map.put(n((AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 9, (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) + 748, (char) (ViewConfiguration.getEdgeSlop() >> 16)).intern(), new h());
        map.put(n(10 - ((Process.getThreadPriority(0) + 20) >> 6), (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 758, (char) TextUtils.getCapsMode("", 0, 0)).intern(), new m());
        map.put(n((ViewConfiguration.getKeyRepeatTimeout() >> 16) + 26, 768 - Color.green(0), (char) (17574 - ((byte) KeyEvent.getModifierMetaStateMask()))).intern(), new k());
        map.put(n(ExpandableListView.getPackedPositionChild(0L) + 25, (KeyEvent.getMaxKeyCode() >> 16) + 794, (char) ((ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 53247)).intern(), new a());
        map.put(n(20 - (ViewConfiguration.getTouchSlop() >> 8), (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) + 817, (char) ((-1) - ImageFormat.getBitsPerPixel(0))).intern(), new l());
        map.put(n(Color.green(0) + 18, TextUtils.getCapsMode("", 0, 0) + 838, (char) (5552 - TextUtils.getCapsMode("", 0, 0))).intern(), new d());
        map.put(n(View.combineMeasuredStates(0, 0) + 15, AndroidCharacter.getMirror('0') + 808, (char) View.combineMeasuredStates(0, 0)).intern(), new e());
        map.put(n(Color.rgb(0, 0, 0) + 16777229, (ViewConfiguration.getLongPressTimeout() >> 16) + 871, (char) View.combineMeasuredStates(0, 0)).intern(), new c());
        map.put(n(15 - ((Process.getThreadPriority(0) + 20) >> 6), 884 - (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)), (char) ('0' - AndroidCharacter.getMirror('0'))).intern(), new b());
        map.put(n(31 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), 899 - TextUtils.getTrimmedLength(""), (char) (5143 - (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)))).intern(), new g());
        map.put(n((-16777188) - Color.rgb(0, 0, 0), (ViewConfiguration.getScrollDefaultDelay() >> 16) + 930, (char) (19606 - Color.green(0))).intern(), new f());
        map.put(n(MotionEvent.axisFromString("") + 11, View.MeasureSpec.makeMeasureSpec(0, 0) + 958, (char) (ViewConfiguration.getMaximumFlingVelocity() >> 16)).intern(), new i());
        map.put(n((ViewConfiguration.getJumpTapTimeout() >> 16) + 11, (ViewConfiguration.getJumpTapTimeout() >> 16) + 968, (char) (TextUtils.lastIndexOf("", '0', 0, 0) + 1)).intern(), new j());
        map.put(n(Drawable.resolveOpacity(0, 0) + 25, 979 - TextUtils.indexOf("", ""), (char) (2720 - View.resolveSizeAndState(0, 0, 0))).intern(), new n());
        int i2 = w + 87;
        v = i2 % 128;
        if ((i2 % 2 != 0 ? 'G' : (char) 17) == 17) {
            return map;
        }
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0688  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x004f  */
    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ｋ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.lang.Class mo384(java.lang.String r21) {
        /*
            Method dump skipped, instruction units count: 1996
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.cc.mo384(java.lang.String):java.lang.Class");
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﾇ */
    final String mo385() {
        int i2 = v + 93;
        w = i2 % 128;
        if (!(i2 % 2 == 0)) {
            return YASAds.getSDKInfo().version;
        }
        int i3 = 39 / 0;
        return YASAds.getSDKInfo().version;
    }
}
