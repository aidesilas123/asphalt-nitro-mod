package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.ImageFormat;
import android.graphics.PointF;
import android.media.AudioTrack;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.hyprmx.android.BuildConfig;
import com.hyprmx.android.sdk.api.data.Ad;
import com.hyprmx.android.sdk.api.data.OfferCacheEntity;
import com.hyprmx.android.sdk.api.data.WebTrafficObject;
import com.hyprmx.android.sdk.core.DependencyHolder;
import com.hyprmx.android.sdk.core.HyprMXController;
import com.hyprmx.android.sdk.model.PreloadedVastData;
import com.hyprmx.android.sdk.placement.PlacementController;
import com.hyprmx.android.sdk.placement.PlacementType;
import com.json.adqualitysdk.sdk.i.az;
import com.json.mediationsdk.logger.IronSourceError;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class br extends az {
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
            return br.x((DependencyHolder) list.get(0));
        }
    }

    final class b implements az.d {
        b() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return br.v((Ad) list.get(0));
        }
    }

    final class c implements az.d {
        c() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return br.p();
        }
    }

    final class d implements az.d {
        d() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return br.o((String) list.get(0));
        }
    }

    final class e implements az.d {
        e() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return br.r((OfferCacheEntity) list.get(0));
        }
    }

    final class f implements az.d {
        f() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return br.t((WebTrafficObject) list.get(0));
        }
    }

    final class g implements az.d {
        g() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return br.y((PreloadedVastData) list.get(0));
        }
    }

    final class h implements az.d {
        h() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return br.m((DependencyHolder) list.get(0));
        }
    }

    final class i implements az.d {
        i() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return br.B((HyprMXController) list.get(0));
        }
    }

    static {
        char[] cArr = new char[1080];
        ByteBuffer.wrap("\u0000V/Í_B\u008eË¾iíç\u001d~Lç|\u000e«\u0089Û\u001d\n\u009dJfeì\u0015LÄûôD§ôW&\u0006Ý6Sá¬\u0091\f@Ä\u0000H/ñ_`\u008eê¾míð\u0000H/ñ_`\u008eê¾míð\u001dsL×|.«¼Û\"\n·:\fi\u0084\u0099\u0015È\u008a\u0092~½ÊÍ_\u001cÕ,k\u007fë\u008f{Þøî\u001a9²I\u0007\u0098\u0086¨+qí^@\u0000D/í_`\u008eý¾NíÌ\u001dULÖ|#«±Û\u0018\n·:\fi\u008c\u0099\u0015È\u008aÃYìó\u009c|Mý}F.ÀÞ]\u008fÔ¿-h\u0097\u00188É¢ù\u001dª¥Z\u0018\u000b\u0085;è\u0000H/ñ_`\u008eê¾míð\u001d`LÊ|/«¸Û5\nª:\u0014i\u0081\u0099\u0015È\u008b\u0000H/ñ_`\u008eê¾míð\u001dgLÝ|\"«\u009eÛ9\n½:\u0017i¿\u0099\u0019È\u008cøè(KWü\u0087w¶ÓæI\u0015ÒETt¥¤\u0006Ó±\u0003.2¢b\t\u0091\u0082\u0000c/ç_}\u008e¶¾HíÑ\u001d@LÊ|-«°Û~\n¹:\u000ei\u008c\u0099\u0002È\u0097øé(lW¾\u0087k¶ÄæC\u0015\u009eE_t²¤)Ó \u000302\u0089b\u000b\u0091\u0083ÁVñH ñP`\u007fê¯mÞð\u000eg=Ým\"\u009c\u009eÌ9û½+\u0017Z¿\u008a\u0019¹\u008céè\u0019KHüxw§Ó×I\u0006Ò6Te¥\u0095\u0006Ä±ô.#¢S\t\u0082\u0082¬K\u0083òóc\"é\u0012nAó±}àÔÐ\f\u0007\u00adw5¦¾\u0096\u0011Å\u009852d\u0098T÷\u0084bûå+r\u001a×JR\u0000c/ç_}\u008e¶¾HíÑ\u001d@LÊ|-«°Û~\n¹:\u000ei\u008c\u0099\u0002È\u0097øé(lW¾\u0087k¶ÄæC\u0015\u009eEYt£¤<Ó¹\u0003.2\u0089b\u001c\u0091\u0089ÁVñH ñP`\u007fê¯mÞð\u000e~=×m\u000f\u009c®Ì6û½+\u0012Z\u009b\u008a1¹\u009béô\u0019aHæxq§Ô×Q|1S\u0088#\u0019ò\u0093Â\u0014\u0091\u0089a\u00060§\u0000_×Ô§[v÷Fp\u0015ôå~´ä\u0084\u008bT0+\u008aû\u0015Ê°\u009a'i 95\bÀ\u0000c/ç_}\u008e¶¾HíÑ\u001d@LÊ|-«°Û~\n¹:\u000ei\u008c\u0099\u0002È\u0097øé(lW¾\u0087k¶ÄæC\u0015\u009eEYt£¤<Ó¹\u0003.2\u0089b\u001c\u0091\u0089ÁVñH ñP`\u007fê¯mÞð\u000e\u007f=Þm&\u009c\u00adÌ\"û\u008e+\tZ\u008d\u008a\u0007¹\u009déò\u0019IHóxl§É×^\u0006Ù6Le¹\u0000H/ñ_`\u008eê¾míð\u001dbLÝ|1«½Û9\nª:\u0005i\u008c\u00999È\u0096øæ(gWâ\u0087u¶Áæ\\\u0015ÙEWt®¤\tÓ³\u0003,2\u0089b\u001e\u0091\u0099Á\fñy\u0000c/ç_}\u008e¶¾HíÑ\u001d@LÊ|-«°Û~\n¹:\u000ei\u008c\u0099\u0002È\u0097øé(lW¾\u0087k¶ÄæC\u0015\u009eEYt£¤<Ó¹\u0003.2\u0089b\u001c\u0091\u0089ÁVñH ñP`\u007fê¯mÞð\u000eb=Ým1\u009c½Ì9ûª+\u0005Z\u008c\u008a9¹\u0096éæ\u0019gHâxu§Á×\\\u0006Ù6We®\u0095\tÄ³ô,#\u0089S\u001e\u0082\u0099²\fây\u0000H/ñ_`\u008eê¾míð\u001drLÙ|3«\u00adÛ\u0006\n±:\u0005i\u009f\u00993È\u0097øî(|Wâ\u0087w¶ÌæD\u0015ÕEJx\u0011W¨'9ö³Æ4\u0095©e?4\u0080\u0004jÓå£_rèB\\\u0011Æáj°Î\u0080·P%/»ÿ.Î\u0095\u009e\u001dm\u008c=\u0013\u0000H/ñ_`\u008eê¾míð\u001dgLÝ|\"«\u009cÛ\"\n¹:\u0006i\u008e\u0099\u0019È\u009bøÖ(aWõ\u0087o¶ãæG\u0015ÞELt²¤'Ó¼\u000342\u0085b\u001a\u0096\u0007¹¦É>\u0018µ(\u001a{£\u008b\u0019Ú\u0093ê`=åM]\u009cþ¬\\ÿÉ\u000fL^Éù1Ö\u008b¦\u0014wªG4\u0014¯ä0µ¸\u0085ORÍ\"yóÜÃl\u0090ë`u1ê\u0000W/í_r\u008eÌ¾RíÉ\u001dVLÞ|)««Û\u0005\n\u008a:,L\"c\u009b\u0013\nÂ\u0080ò\u0007¡\u009aQ\u0016\u0000·0KçÐ\u0097TFÿve%ðÕ\u007f\u0084Ñ´\u0085d\f\u001b\u008eË\u0000ú¥ª.Y¶\t78Ø\u0000H/ñ_`\u008eê¾míð\u001d}LÊ|!«¡Û4\n\u008e:\ti\u008d\u0099\u0007È»øï(fWä\u0087j¶ÏæD\u0015ÜE]t²\u0000H/ñ_`\u008eê¾míð\u001d\u007fLÞ|&«\u00adÛ\"\n\u008f:\u0005i\u008a\u0099&È\u0091øå(\u007fWÓ\u0087w¶Îæ\\\u0015ÂEWt¬¤$Óµ\u0003*¯\u008a\u00803ð¢!(\u0011¯B2²¥ã\u001fÓà\u0004\\tû¥\u007f\u0095Õ\u0000H/ñ_`\u008eê¾míð\u001dgLÝ|\"«\u009eÛ9\n½:\u0017i«\u0099\u001cÈ\u0091øå(fWä\u0000H/ñ_`\u008eê¾míð\u001d\u007fLÞ|&«\u00adÛ\"\n\u008e:\ti\u008d\u0099\u0007È\u009døò(@Wñ\u0087v¶ÄæD\u0015ÕEJ|¬S\r#\u0095ò\u001eÂ±\u0091\u001daº0>\u0000Ô×N§ÁvsFâ\u0015eå÷´w\u0084\u0006T\u0099+?û\u0092Ê0\u009a¿i69µ\bFØÙ%.\n\u0097z\u0006«\u008c\u009b\u000bÈ\u00968\u0005iµYO\u008eÞþu/Ñ\u001fhLú¼díñÝ\u008a\r\u0002r\u0093¢\f¸¦\u0097\u001fç\u008e6\u0004\u0006\u0083U\u001e¥\u008dô=ÄÇ\u0013Vcý²Y\u0082àÑr!ìpy@\u0002\u0090\u008aï\u001b?\u0084\u000e\u0002^¯\u00ad-ý¢ÌK\u001cÈk[»Ä\u0000H/ñ_`\u008eê¾míð\u001drLÊ|/«¿Û#\n½:\u0012i©\u0099\u0013È\u008cøé(~Wù\u0087l¶ÙåæÊbºøk3[Í\bTøÅ©O\u0099¨N5>ûï<ß\u008b\u008c\t|\u0087-\u0012\u001dlÍé²;bîSA\u0003Æð\u001b Ò\u00913A¨6'æ±×\u0004\u0087\u0094t[$µ\u0014üÅ}µç\u009aPJý;oëÇØR\u0088²y>)°\u001e/Î¤¿\u000eo\u0081\\\u0014\fsüä\u00ada\u009däñ+Þ¡®(\u007f\u0083O\t\u001c\u0086ì(½\u0086\u008dmZâ*zûýËO\u0098ëh^9Þ\t©Ù'¦¨v\u0001G\u009e\u0017\bä\u008f\u0000g/í_d\u008e×¾FíÎ\u001dULÊ|\u0003«©Û3\n°:\u0005i«\u0099\u001cÈ\u0091øã(cWÄ\u0087p¶ÒæG\u0015ÅE_t¨¤\u001dÓ¢\u00034\u0000g/í_d\u008eÙ¾Díü\u001dILÈ|%\u0000g/í_d\u008eÈ¾LíÉ\u001dSLÝ|-«\u00adÛ>\n¬:4i\u0091\u0099\u0000È\u009døÅ(fWå\u0087u\u0000g/í_d\u008eÜ¾EíØ\u001dULÖ|$«\u00adÛ>\n»:\u0019i \u0099\u001fÈ\u0094øä(mWâ\u0087Q¶Îæ[\u0015ÄEYt®¤+Óµ\u0094Ý»WËÞ\u001af*óya\u0089þØpè\u0093?\u0010O\u009f\u009e\u0016®µý \r\u0083\\&\u0000g/í_d\u008eÈ¾LíÉ\u001dSLÝ|-«\u00adÛ>\n¬:#i\u0087\u0099\u001eÈ\u008cøò(gWü\u0087t¶ÅæZ»é\u0094cäê5F\u0005ÜVC¦Ò÷YÇ¯\u0010\"`»±2\u0081ªÒ\u0007\"\u008as\u0017\f`#êSc\u0082Ï²FáÝ\u0011V@Òp\"§»×2\u0006\u00ad6\u0014\u008a\u0096¥\tÕ\u0083\u0004\u001d4¶g(\u0097±Æ8\u0018î7aGã\u0096z¦Õõ\\\u0005ÃTVd³³&Ã¶\u00123~DQË!KðÔÀa\u0093ìcy\u0000N/Ç_D\u008eÇ¾iíæ\u001dyLì|\t«\u0089Û\u001c\n\u0091::i\u00ad\u00994".getBytes("ISO-8859-1")).asCharBuffer().get(cArr, 0, 1080);
        t = cArr;
        u = 7301899022431825800L;
    }

    public br(String str) {
        super(str);
    }

    private static List<WebTrafficObject.WebTrafficURL> A(WebTrafficObject webTrafficObject) {
        int i2 = v + 51;
        w = i2 % 128;
        char c2 = i2 % 2 == 0 ? '*' : 'D';
        List<WebTrafficObject.WebTrafficURL> list = webTrafficObject.urls;
        if (c2 != 'D') {
            int i3 = 35 / 0;
        }
        return list;
    }

    static /* synthetic */ PlacementController B(HyprMXController hyprMXController) {
        int i2 = v + 35;
        w = i2 % 128;
        if (i2 % 2 == 0) {
            n(hyprMXController);
            throw null;
        }
        PlacementController placementControllerN = n(hyprMXController);
        int i3 = w + 117;
        v = i3 % 128;
        if ((i3 % 2 != 0 ? '5' : (char) 22) == 22) {
            return placementControllerN;
        }
        throw null;
    }

    private static String C(Ad ad) {
        int i2 = v + 23;
        w = i2 % 128;
        int i3 = i2 % 2;
        String str = ad.type;
        int i4 = v + 53;
        w = i4 % 128;
        if (i4 % 2 == 0) {
            throw null;
        }
        return str;
    }

    private static Object k(String str) {
        int i2 = v + 113;
        w = i2 % 128;
        int i3 = i2 % 2;
        byte b2 = -1;
        switch (str.hashCode()) {
            case -1617199657:
                if ((str.equals(q(Color.alpha(0) + 7, (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + IronSourceError.ERROR_RV_EXPIRED_ADS, (char) (32269 - KeyEvent.keyCodeFromString(""))).intern()) ? 'M' : 'c') != 'c') {
                    b2 = 2;
                }
                break;
            case -1372958932:
                if (str.equals(q((ViewConfiguration.getPressedStateDuration() >> 16) + 12, 1046 - Color.blue(0), (char) ((ViewConfiguration.getScrollBarFadeDuration() >> 16) + 6311)).intern())) {
                    b2 = 1;
                }
                break;
            case -65580248:
                if ((str.equals(q((ViewConfiguration.getWindowTouchSlop() >> 8) + 15, 1065 - (ViewConfiguration.getScrollBarFadeDuration() >> 16), (char) TextUtils.indexOf("", "", 0)).intern()) ? '\b' : ' ') == '\b') {
                    b2 = 3;
                }
                break;
            case 543046670:
                if (str.equals(q(TextUtils.lastIndexOf("", '0') + 9, (ViewConfiguration.getPressedStateDuration() >> 16) + IronSourceError.ERROR_RV_SHOW_EXCEPTION, (char) (35524 - TextUtils.getOffsetBefore("", 0))).intern())) {
                    b2 = 0;
                }
                break;
        }
        if (b2 == 0) {
            return PlacementType.REWARDED;
        }
        if (b2 == 1) {
            PlacementType placementType = PlacementType.INTERSTITIAL;
            int i4 = w + 13;
            v = i4 % 128;
            int i5 = i4 % 2;
            return placementType;
        }
        if (b2 == 2) {
            return PlacementType.INVALID;
        }
        if (b2 != 3) {
            int i6 = v + 97;
            w = i6 % 128;
            int i7 = i6 % 2;
            return null;
        }
        PlacementType placementType2 = PlacementType.NOT_INITIALIZED;
        int i8 = w + 115;
        v = i8 % 128;
        if (i8 % 2 == 0) {
            return placementType2;
        }
        throw null;
    }

    private static DependencyHolder l() {
        int i2 = w + 25;
        v = i2 % 128;
        int i3 = i2 % 2;
        DependencyHolder dependencyHolder = DependencyHolder.INSTANCE;
        int i4 = w + 29;
        v = i4 % 128;
        if ((i4 % 2 != 0 ? '\b' : 'U') != '\b') {
            return dependencyHolder;
        }
        int i5 = 99 / 0;
        return dependencyHolder;
    }

    static /* synthetic */ PreloadedVastData m(DependencyHolder dependencyHolder) {
        int i2 = w + 1;
        v = i2 % 128;
        int i3 = i2 % 2;
        PreloadedVastData preloadedVastDataZ = z(dependencyHolder);
        int i4 = w + 35;
        v = i4 % 128;
        int i5 = i4 % 2;
        return preloadedVastDataZ;
    }

    private static PlacementController n(HyprMXController hyprMXController) {
        int i2 = v + 69;
        w = i2 % 128;
        if ((i2 % 2 == 0 ? 'T' : 'Z') != 'Z') {
            hyprMXController.getPlacementController();
            throw null;
        }
        PlacementController placementController = hyprMXController.getPlacementController();
        int i3 = v + 15;
        w = i3 % 128;
        int i4 = i3 % 2;
        return placementController;
    }

    static /* synthetic */ Object o(String str) {
        int i2 = w + 41;
        v = i2 % 128;
        if ((i2 % 2 != 0 ? (char) 27 : '%') != 27) {
            return k(str);
        }
        k(str);
        throw null;
    }

    static /* synthetic */ DependencyHolder p() {
        int i2 = w + 117;
        v = i2 % 128;
        int i3 = i2 % 2;
        DependencyHolder dependencyHolderL = l();
        int i4 = v + 9;
        w = i4 % 128;
        if (i4 % 2 != 0) {
            return dependencyHolderL;
        }
        throw null;
    }

    private static String q(int i2, int i3, char c2) {
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

    static /* synthetic */ String r(OfferCacheEntity offerCacheEntity) {
        int i2 = w + 21;
        v = i2 % 128;
        boolean z = i2 % 2 != 0;
        String strW = w(offerCacheEntity);
        if (z) {
            int i3 = 49 / 0;
        }
        int i4 = w + 69;
        v = i4 % 128;
        int i5 = i4 % 2;
        return strW;
    }

    private static String s(DependencyHolder dependencyHolder) {
        int i2 = w + 79;
        v = i2 % 128;
        if (i2 % 2 != 0) {
            dependencyHolder.getDistributorId();
            throw null;
        }
        String distributorId = dependencyHolder.getDistributorId();
        int i3 = v + 65;
        w = i3 % 128;
        if ((i3 % 2 == 0 ? 'G' : (char) 2) == 2) {
            return distributorId;
        }
        int i4 = 95 / 0;
        return distributorId;
    }

    static /* synthetic */ List t(WebTrafficObject webTrafficObject) {
        int i2 = v + 11;
        w = i2 % 128;
        if (i2 % 2 != 0) {
            return A(webTrafficObject);
        }
        A(webTrafficObject);
        throw null;
    }

    private static JSONObject u(PreloadedVastData preloadedVastData) {
        int i2 = w + 39;
        v = i2 % 128;
        int i3 = i2 % 2;
        JSONObject parameters = preloadedVastData.getParameters();
        int i4 = w + 125;
        v = i4 % 128;
        int i5 = i4 % 2;
        return parameters;
    }

    static /* synthetic */ String v(Ad ad) {
        int i2 = v + 109;
        w = i2 % 128;
        int i3 = i2 % 2;
        String strC = C(ad);
        int i4 = v + 17;
        w = i4 % 128;
        if (i4 % 2 != 0) {
            return strC;
        }
        int i5 = 66 / 0;
        return strC;
    }

    private static String w(OfferCacheEntity offerCacheEntity) {
        int i2 = v + 63;
        w = i2 % 128;
        int i3 = i2 % 2;
        String str = offerCacheEntity.clickThroughUrl;
        int i4 = v + 103;
        w = i4 % 128;
        if (i4 % 2 != 0) {
            return str;
        }
        throw null;
    }

    static /* synthetic */ String x(DependencyHolder dependencyHolder) {
        int i2 = w + 87;
        v = i2 % 128;
        if (!(i2 % 2 != 0)) {
            return s(dependencyHolder);
        }
        s(dependencyHolder);
        throw null;
    }

    static /* synthetic */ JSONObject y(PreloadedVastData preloadedVastData) {
        int i2 = w + 57;
        v = i2 % 128;
        boolean z = i2 % 2 != 0;
        JSONObject jSONObjectU = u(preloadedVastData);
        if (z) {
            int i3 = 38 / 0;
        }
        int i4 = v + 115;
        w = i4 % 128;
        int i5 = i4 % 2;
        return jSONObjectU;
    }

    private static PreloadedVastData z(DependencyHolder dependencyHolder) {
        int i2 = v + 123;
        w = i2 % 128;
        boolean z = i2 % 2 == 0;
        PreloadedVastData preloadedData = dependencyHolder.getPreloadedData();
        if (z) {
            int i3 = 62 / 0;
        }
        int i4 = v + 55;
        w = i4 % 128;
        if ((i4 % 2 == 0 ? 'B' : '\b') != 'B') {
            return preloadedData;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    final Map<String, az.d> j() {
        HashMap map = new HashMap();
        map.put(q(KeyEvent.keyCodeFromString("") + 23, (Process.myTid() >> 22) + 864, (char) ((AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 61772)).intern(), new f());
        map.put(q(27 - MotionEvent.axisFromString(""), 887 - (ViewConfiguration.getScrollBarSize() >> 8), (char) (TextUtils.lastIndexOf("", '0', 0) + 1)).intern(), new e());
        map.put(q((ViewConfiguration.getKeyRepeatTimeout() >> 16) + 9, TextUtils.lastIndexOf("", '0') + 916, (char) (ViewConfiguration.getFadingEdgeLength() >> 16)).intern(), new b());
        map.put(q(TextUtils.getOffsetAfter("", 0) + 20, 924 - (Process.myPid() >> 22), (char) Color.red(0)).intern(), new d());
        map.put(q(27 - (ViewConfiguration.getKeyRepeatDelay() >> 16), 944 - TextUtils.getOffsetBefore("", 0), (char) Color.green(0)).intern(), new c());
        map.put(q(ImageFormat.getBitsPerPixel(0) + 17, 971 - ExpandableListView.getPackedPositionType(0L), (char) (38074 - ExpandableListView.getPackedPositionGroup(0L))).intern(), new a());
        map.put(q(22 - Color.red(0), TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 988, (char) ExpandableListView.getPackedPositionType(0L)).intern(), new i());
        map.put(q((SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) + 15, 1008 - TextUtils.indexOf((CharSequence) "", '0', 0), (char) ((ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 48015)).intern(), new h());
        map.put(q(Color.green(0) + 13, (ViewConfiguration.getKeyRepeatDelay() >> 16) + 1025, (char) (View.MeasureSpec.getMode(0) + 3079)).intern(), new g());
        int i2 = w + 101;
        v = i2 % 128;
        if ((i2 % 2 != 0 ? 'P' : 'c') == 'c') {
            return map;
        }
        int i3 = 69 / 0;
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:154:0x05be  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02fd  */
    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ｋ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.lang.Class mo384(java.lang.String r21) {
        /*
            Method dump skipped, instruction units count: 1756
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.br.mo384(java.lang.String):java.lang.Class");
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﾇ */
    public final String mo385() {
        int i2 = w + 101;
        v = i2 % 128;
        try {
            try {
                String str = (String) (i2 % 2 == 0 ? BuildConfig.class.getDeclaredField(q((ViewConfiguration.getMaximumFlingVelocity() >> 16) + 12, ViewConfiguration.getMaximumDrawingCacheSize() >> 24, (char) (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1))).intern()) : BuildConfig.class.getDeclaredField(q(64 >>> (ViewConfiguration.getMaximumFlingVelocity() / 108), ViewConfiguration.getMaximumDrawingCacheSize() - 47, (char) (PointF.length(1.0f, 1.0f) > 2.0f ? 1 : (PointF.length(1.0f, 1.0f) == 2.0f ? 0 : -1))).intern())).get(null);
                int i3 = w + 67;
                v = i3 % 128;
                int i4 = i3 % 2;
                return str;
            } catch (Exception unused) {
                return null;
            }
        } catch (Exception unused2) {
            return hq.m770().m771().m775(BuildConfig.class, q(13 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), (Process.myPid() >> 22) + 12, (char) ((ViewConfiguration.getMinimumFlingVelocity() >> 16) + 19000)).intern());
        }
    }
}
