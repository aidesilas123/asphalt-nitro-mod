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
import android.view.ViewGroup;
import android.widget.ExpandableListView;
import com.fyber.inneractive.sdk.R;
import com.fyber.inneractive.sdk.activities.InneractiveFullscreenAdActivity;
import com.fyber.inneractive.sdk.external.ImpressionData;
import com.fyber.inneractive.sdk.external.InneractiveAdManager;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.external.InneractiveAdSpot;
import com.fyber.inneractive.sdk.external.InneractiveAdViewUnitController;
import com.fyber.inneractive.sdk.external.InneractiveContentController;
import com.fyber.inneractive.sdk.external.InneractiveFullscreenVideoContentController;
import com.fyber.inneractive.sdk.external.InneractiveUnitController;
import com.fyber.inneractive.sdk.external.VideoContentListener;
import com.json.adqualitysdk.sdk.i.az;
import com.json.mediationsdk.logger.IronSourceError;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class bp extends az {
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
            return bp.w((InneractiveAdRequest) list.get(0));
        }
    }

    final class b implements az.d {
        b() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bp.r((InneractiveAdSpot) list.get(0));
        }
    }

    final class c implements az.d {
        c() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bp.I((InneractiveAdSpot) list.get(0));
        }
    }

    final class d implements az.d {
        d() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return Boolean.valueOf(bp.M((InneractiveAdSpot) list.get(0)));
        }
    }

    final class e implements az.d {
        e() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bp.L((InneractiveFullscreenAdActivity) list.get(0));
        }
    }

    final class f implements az.d {
        f() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bp.C((InneractiveUnitController) list.get(0));
        }
    }

    final class g implements az.d {
        g() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bp.t((InneractiveAdViewUnitController) list.get(0));
        }
    }

    final class h implements az.d {
        h() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            bp.E((InneractiveContentController) list.get(0), (VideoContentListener) list.get(1));
            return null;
        }
    }

    final class i implements az.d {
        i() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bp.s((InneractiveAdSpot) list.get(0));
        }
    }

    final class j implements az.d {
        j() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bp.m414((String) list.get(0));
        }
    }

    final class k implements az.d {
        k() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bp.K((InneractiveFullscreenVideoContentController) list.get(0));
        }
    }

    final class l implements az.d {
        l() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bp.B((InneractiveAdSpot) list.get(0));
        }
    }

    final class m implements az.d {
        m() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return Integer.valueOf(bp.A());
        }
    }

    final class n implements az.d {
        n() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bp.y((ImpressionData) list.get(0));
        }
    }

    final class o implements az.d {
        o() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return Boolean.valueOf(bp.z((InneractiveAdSpot) list.get(0)));
        }
    }

    static {
        char[] cArr = new char[1352];
        ByteBuffer.wrap("n«mÏh\ngNc\u009c~Ì}\u0013xCt\u0093sÏN\u0019MJI¨DñC-^}Z¼YðT8SY/¬*ò)W%\u0094 Ï?\u001b:m6\u00905Â0\u001c\u000fN\u000b\u0096\u0006ö\u00058Ã@À\u000fÅÈÊÄÎIÓ\u0015ÐÓÕ\u0093ÙIÞVãÔà¬äié!îûó¯÷pô$ùüþ¬\u0082z\u0087r\u0084\u0092\u0088B\u008d\u0000\u0092\u0086\u0097\u008c\u009bQ\u0098\u0003\u009dÝ¢\u008f¦W«7¨é\u00ad ±y¶a»Å¸¿¼xA>FêK¼O\u0001LÓQ\u008dU_Z\u000b_ú\\\u009e`Ae\u001fjÍo\u0092s`p*uÉzº~b\u0003%\u0000ä\u0005±\tk\u000e\u001f\u0013\u0080\u0017T\u0014\f\u0019Ü\u001e\u0086\"X'\b\u0000I\u0003-\u0006è\t¬\r~\u0010.\u0013ñ\u0016¡\u001aq\u001d- û#§'Q*\u000b-Æ0\u009e4S7\u0001:Ó=\u009cARD>G¦KDN+QÿT§Xg[=^ãa£\u0000c\u0003,\u0006ë\tç\rj\u00106\u0013ð\u0016°\u001aj\u001du ÷#\u008f'J*\u0002-Ø0\u008c4S7\u0007:ß=\u008fAYDQG±KaN#Q¥T¯Xr[ ^þa¬eth\u0014kÊn\u0083rZuBxæ{\u009c\u007f[\u0082\u001d\u0085É\u0088\u009f\u008c\"\u008fð\u0092®\u0096|\u0099(\u009cÖ\u009f¦£z¦5©ï¬¼°P³\u0000¶Í¹\u0085½oÀ\u0015ÃõÆ\u0094ÊNÍ\u0014Ð¶Ôj×2Úð\u0000I\u0003-\u0006è\t¬\r~\u0010.\u0013ñ\u0016¡\u001aq\u001d- û#³'M*\u0004-Â0 4U7\u0017:ß=\u0098AjD\u0016G¦K`N'QÛT¢Xp[-^òa¨e\\h\u0003k×n\u008fr_u\u0005xÛ{\u008b\u007fv\u0082\u0017\u0085É\u0088\u009b\u0000c\u0003,\u0006ë\tç\rj\u00106\u0013ð\u0016°\u001aj\u001du ÷#\u008f'J*\u0002-Ø0\u008c4S7\u0007:ß=\u008fAYDQG±KaN#Q¥T¯Xr[ ^þa¬eth\u0014kÊn\u0083rZuBxæ{\u009c\u007f[\u0082\u001d\u0085É\u0088\u009f\u008c\"\u008fð\u0092®\u0096|\u0099(\u009cÂ\u009fº£u¦1©Ñ¬º°F³\f¶É¹½½GÀ\u0015ÃÑÆ\u0098ÊjÍ\u0011Ð¡Ôz×#ÚûÝ\u008dálä&çüê®îrñ*ôØ÷§ûHþ\u0018\u0001È\u0094ñ\u0097\u0095\u0092P\u009d\u0014\u0099Æ\u0084\u0096\u0087I\u0082\u0019\u008eÉ\u0089\u0095´C·\u0018³ø¾\u008c¹b¤: ü»F¸\"½ç²£¶q«!¨þ\u00ad®¡~¦\"\u009bô\u0098¯\u009cO\u0091:\u0096À\u008b\u0093\u008fJ\u008c\u0019\u0081Ê\u0086\u0082EëF\u008fCJL\u000eHÜU\u008cVSS\u0003_ÓX\u008feYf\u0002bâo\u0097hmu!qör´\u007ffx>\u0004ì\u0000I\u0003-\u0006è\t¬\r~\u0010.\u0013ñ\u0016¡\u001aq\u001d- û#¬'A*\u0003-Ã0\u008c4D7\u001a:Ù=\u0097ArD\u001eG¯K`B\tABD\u0085KæO\"RiQ»TòX\u0015_zb°aÀe\u0003hBo\u0098å\u001dæyã¼ìøè*õzö¥óõÿ%øyÅ¯ÆöÂ\u001fÏ]È\u008aÕÜÑ\nÒSß¡ØÂ¤\u0006¡_¢ä®>«p´³±ÿ½7ðLó(öíù©ý{à+ãôæ¤êtí(ÐþÓ±×OÚ\u000bÝÛÀ«ÄZÇ\u0018ÊÇÍ\u008e±V´\u0016·«»e¾?\u0000I\u0003-\u0006è\t¬\r~\u0010.\u0013ñ\u0016¡\u001aq\u001d- û# '@*1-Ã0\u00884G7&:Ø=\u0090AHD<G\u00adKkN<QùT¡X}[8^òa¨\u0000U\u0003-\u0006ï\t½\rH\u0010&\u0013á\u0016¥\u001at\u001d: ç#µ']*\u0017-Ï\u0000E\u00035\u0006ã\t§\rx\u0010<\u0013Þ\u0016¼\u001ak\u001d/ û#\u008f'A*\u0015\u0086¤ØÿÛ\u009bÞ^Ñ\u001aÕÈÈ\u0098ËGÎ\u0017ÂÇÅ\u009bøMû\u0011ÿçò½õpè(ìåï·âeå*\u0099ä\u009c\u009f\u009f\u001d\u0093×\u0096\u009b\u0089R\u008c;\u0080È\u0083\u008c\u0086U¹\t½Å°¢³V¶?ªñ\u00ad® k£+§ïZ¢]hP:\u0000I\u0003-\u0006è\t¬\r~\u0010.\u0013ñ\u0016¡\u001aq\u001d- û#§'Q*\u000b-Æ0\u009e4S7\u0001:Ó=\u009cARD>G¦K@N>QîT Xe['^Ûa³enh\u0014kÆn\u0088rLu\u001e¼2¿Nº\u0086µÈ±\u0007¬h¯\u0099ªß¦\b¡Z\u009c\u0094\u009fñ\u009b\f\u0096j\u0091½\u008cý\u00881\u008by\u0086·\u0081ï\u0000I\u0003-\u0006ò\t¬\r~\u0010!\u0013ó\u0016¹\u001aZ\u001d) ñ#\u0096'W*\u0002-Ø0¡4Y7\u0000:Â=\u009cARD\u001aG°\u0000T\u0003\"\u0006öi~j\u001aoß`\u009bdIy\u0019zÆ\u007f\u0096sFt\u001aIÌJ\u0090NfC<DñY©]d^6SäT«(e-\t.\u0091\"w'\t8Ù=\u00971R2\u00107ì\b\u0084\fY\u0001#\u0002ñ\u0007¿\u001b{\u001c)\u0011Ù\u0012¡\u0016cë?ìøá¬å\u0004\u0000I\u0003-\u0006è\t¬\r~\u0010.\u0013ñ\u0016¡\u001aq\u001d- û#§'Q*\u000b-Æ0\u009e4S7\u0001:Ó=\u009cARD*G¬KlN<QÈT¡X\u007f[ ^åaµeqh\fkÆn\u0094\u0098}\u009b\u0019\u009eÜ\u0091\u0098\u0095J\u0088\u001a\u008bÅ\u008e\u0095\u0082E\u0085\u0019¸Ï»\u0094¿t²\u0005µ÷¨¼¬s¯\u0011¢ë¥©ÙmÜ$ßµÓ^Ö\u0012ÉËÌ\u009fÀKÃ\u0014Æàù\u0081ýGð óåö½êqí4àþã´\u0000E\u00035\u0006ã\t§\rx\u0010<\u0013Þ\u0016¼\u001ak\u001d/ û#\u008f'A*\u0015-ë0\u00894Q7\u0003:Â=\u009cAN\u0012.\u0011R\u0014\u009a\u001bÔ\u001f\u001b\u0002t\u0001\u0085\u0004Ã\b\u0014\u000fF2\u00881í5\u00108v?¡\"á&-%e(«/óS\u0005VcUÛY\r\\DC\u0096FÄ\u0000I\u0003\u0002\u0006Ë\t»\rm\u0010&\u0013ö\u0016\u009e\u001aq\u001d/\u0000I\u0003\u0002\u0006ë\t»\rm\u0010&\u0013ö\u0016\u0082\u001a}\u001d9 È#\u0088'A*\u0010-é0\u00824^7\u0007:Ä=\u0096APD\u0013G§Kwòóñ¸ôjû\u001aÿÒâ\u0090áGä$èËï\u0095\u0000I\u0003.\u0006ö\t»\ri\u0010<\u0013á\u0016¼\u001aw\u001d5 Ú#\u0080'P*\u0006{\u0010x[}\u00adrùv6k~h\u0086méa%fk[¦Xî\\\u0014QZV\u0096KÛO?LCA\u008aF×ê÷é\u0097ì@ã\u0019çïú\u0093ùCü\u0005ðÂ÷¸ÊBÉ1ÍæÀ\u009eÇvÚ+ÞñÝ£Ðm×)«û\u0007Q\u00045\u0001ð\u000e´\nf\u00176\u0014é\u0011¹\u001di\u001a5'ã$¿ I-\u0013*Þ7\u00863K0\u0019=Ë:\u0084FJC&@¾LXI&VöS¸_}\\?YÃf«bvo\flÞi\u0090uTr\u0006\u007fà|\u0083xY\u0085\b\u0082ê\u008f\u008b\u008b)\u0088î\u0095º\u0091a\u009e&\u009bá\u0098¤¤`¡\u0005®å«³·[\u0000I\u0003-\u0006è\t¬\r~\u0010.\u0013ñ\u0016¡\u001aq\u001d- û# '@*1-Ã0\u00884G76:À=\u009cARD\u000bG±KIN!QøTºXt[:^òa¨eJh\tk×n\u008er`u\u0001xß{\u0080\u007fP\u0082\u000b\u0085È\u0088\u0097\u008c.\u008fê\u0092\u0083\u0096k\u00999\u009cñ\u0000g\u0003&\u0006ò\t\u008a\ry\u0010=\u0013à\u0016°\u001av\u001d/ Î#\u0093'K*\u0004-Ï0\u009e4C7\u0016:Ò=«AYD\u000eG·K`N;Qÿ't$5!á.\u0089*o734õ1\u008f=oºg¹&¼ò³\u0088·hª\f©ý¬» l§>\u009að\u0099\u0095]\u009f^Æ[6TJP\u0096MÕN\u0017K@G\u009c@È}\r~yz\u0093wõo³lêi\nfzb²\u007fð|'yNu¦\u00827\u0081v\u0084¢\u008bÚ\u008f0\u0092v\u0091¡\u0094î\u0098\u001c\u009fc¢¼¡Þ¥\u0001¨P¯\u0092²è¶\u0012µO\u0000g\u0003&\u0006ò\t\u0085\rm\u00106\u0013ý\u0016 \u001al¨é«¨®|¡\u0014¥ç¸\u00ad»y¾8²âµ°\u0088t\u008b:\u008fÄ\u0082\u0080\u0085P\u0098 \u009cÑ\u009f\u0093\u0092L\u0095\u0005éÝì\u009dï ãîæ´\u0000g\u0003&\u0006ò\t\u009a\ri\u0010#\u0013÷\u0016¶\u001al\u001d> ú#¢'K*\t-Þ0\u00884^7\u0007:õ=\u0096ARD\u000bG°KjN$QçT«Xc\u0000g\u0003&\u0006ò\t\u008c\rz\u0010*\u0013ü\u0016¡\u001ak\u001d\u0017 ÷#\u0092'P*\u0002-Ä0\u00884BA\u0010BEG\u0091HïL\u0019QIR\u009fWÂ[\b\\ta\u0094bñf3kal§qëu!\u0000g\u0003&\u0006ò\t\u0088\rh\u0010\u001c\u0013â\u0016º\u001al\u0000g\u0003&\u0006ò\t\u009c\rb\u0010&\u0013æ\u0016\u0091\u001aq\u001d( î#\u008d'E*\u001e-þ0\u00944@7\u0016:ó=\u0097AID\u0012\u0000g\u0003&\u0006ò\t\u0084\r~\u0010.\u0013û\u0016±\u001aZ\u001d: ð#\u008f'A*\u0015-ü0\u00844U7\u0004:ÿ=\u009di\bjIo\u009d`ïd\u000eyPz\u008f\u007fßs\u0004tGI\u0098JáN%CLD¤Yö]>^XS¶Tû(2-y.Ã\u0000I\u0003\r\u0006Ò\t\u008c\r^\u0010\u001c\u0013Æ\u0016\u009c\u001aL\u001d\u0012 ß#\u00ad\u0000L\u0003\u0002\u0006È\t\u008d\r_\u0010\f\u0013Ó\u0016\u0085\u001a]\u0000M\u0003\u0011\u0006Ã\t\u008a\rX\u0000B\u0003\u0002\u0006È\t\u0087\rI\u0010\u001dÀ\u000eÃZÆ\u008dÉÔÍ\u0002ÐWÓ\u008bÖÍ\u0000S\u0003\u0012\u0006Ó\t\u0088\r^\u0010\nu\u001bvKs\u0099|Ðx\beAf\u009ecÔ\u0000D\u0003\u0006\u0006À\t\u0088\rY\u0010\u0003\u0013Æ".getBytes("ISO-8859-1")).asCharBuffer().get(cArr, 0, 1352);
        t = cArr;
        u = -7409704883604487357L;
    }

    public bp(String str) {
        super(str);
    }

    static /* synthetic */ int A() {
        int i2 = w + 29;
        v = i2 % 128;
        if (i2 % 2 == 0) {
            return m413();
        }
        m413();
        throw null;
    }

    static /* synthetic */ Object B(InneractiveAdSpot inneractiveAdSpot) {
        int i2 = v + 115;
        w = i2 % 128;
        int i3 = i2 % 2;
        Object objQ = q(inneractiveAdSpot);
        int i4 = v + 59;
        w = i4 % 128;
        if ((i4 % 2 == 0 ? '3' : '-') != '3') {
            return objQ;
        }
        throw null;
    }

    static /* synthetic */ Object C(InneractiveUnitController inneractiveUnitController) {
        int i2 = v + 125;
        w = i2 % 128;
        int i3 = i2 % 2;
        Object objV = v(inneractiveUnitController);
        int i4 = v + 3;
        w = i4 % 128;
        if ((i4 % 2 == 0 ? 'P' : '6') != 'P') {
            return objV;
        }
        int i5 = 82 / 0;
        return objV;
    }

    private static String D(InneractiveAdRequest inneractiveAdRequest) {
        int i2 = v + 81;
        w = i2 % 128;
        int i3 = i2 % 2;
        String spotId = inneractiveAdRequest.getSpotId();
        int i4 = v + 109;
        w = i4 % 128;
        int i5 = i4 % 2;
        return spotId;
    }

    static /* synthetic */ void E(InneractiveContentController inneractiveContentController, InneractiveContentController.EventsListener eventsListener) {
        int i2 = v + 27;
        w = i2 % 128;
        int i3 = i2 % 2;
        x(inneractiveContentController, eventsListener);
        int i4 = v + 43;
        w = i4 % 128;
        int i5 = i4 % 2;
    }

    private static Object F(InneractiveFullscreenAdActivity inneractiveFullscreenAdActivity) {
        int i2 = v + 101;
        w = i2 % 128;
        int i3 = i2 % 2;
        ViewGroup layout = inneractiveFullscreenAdActivity.getLayout();
        int i4 = w + 47;
        v = i4 % 128;
        if ((i4 % 2 != 0 ? '>' : (char) 5) == 5) {
            return layout;
        }
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

    private static String H(ImpressionData impressionData) {
        int i2 = w + 117;
        v = i2 % 128;
        if (i2 % 2 == 0) {
            return impressionData.getAdvertiserDomain();
        }
        impressionData.getAdvertiserDomain();
        throw null;
    }

    static /* synthetic */ String I(InneractiveAdSpot inneractiveAdSpot) {
        int i2 = w + 117;
        v = i2 % 128;
        int i3 = i2 % 2;
        String strK = k(inneractiveAdSpot);
        int i4 = v + 125;
        w = i4 % 128;
        int i5 = i4 % 2;
        return strK;
    }

    private static InneractiveAdSpot J(InneractiveAdViewUnitController inneractiveAdViewUnitController) {
        int i2 = w + 23;
        v = i2 % 128;
        if ((i2 % 2 != 0 ? 'U' : '\t') == 'U') {
            inneractiveAdViewUnitController.getAdSpot();
            throw null;
        }
        InneractiveAdSpot adSpot = inneractiveAdViewUnitController.getAdSpot();
        int i3 = v + 73;
        w = i3 % 128;
        if ((i3 % 2 == 0 ? (char) 5 : '(') == '(') {
            return adSpot;
        }
        throw null;
    }

    static /* synthetic */ InneractiveContentController.EventsListener K(InneractiveFullscreenVideoContentController inneractiveFullscreenVideoContentController) {
        int i2 = w + 35;
        v = i2 % 128;
        if ((i2 % 2 != 0 ? (char) 17 : '+') != '+') {
            u(inneractiveFullscreenVideoContentController);
            throw null;
        }
        InneractiveContentController.EventsListener eventsListenerU = u(inneractiveFullscreenVideoContentController);
        int i3 = w + 117;
        v = i3 % 128;
        if ((i3 % 2 != 0 ? '!' : 'a') == 'a') {
            return eventsListenerU;
        }
        int i4 = 21 / 0;
        return eventsListenerU;
    }

    static /* synthetic */ Object L(InneractiveFullscreenAdActivity inneractiveFullscreenAdActivity) {
        int i2 = w + 39;
        v = i2 % 128;
        int i3 = i2 % 2;
        Object objF = F(inneractiveFullscreenAdActivity);
        int i4 = w + 103;
        v = i4 % 128;
        int i5 = i4 % 2;
        return objF;
    }

    static /* synthetic */ boolean M(InneractiveAdSpot inneractiveAdSpot) {
        int i2 = w + 71;
        v = i2 % 128;
        boolean z = i2 % 2 != 0;
        boolean zM = m(inneractiveAdSpot);
        if (z) {
            int i3 = 96 / 0;
        }
        int i4 = w + 23;
        v = i4 % 128;
        int i5 = i4 % 2;
        return zM;
    }

    private static String k(InneractiveAdSpot inneractiveAdSpot) {
        int i2 = w + 33;
        v = i2 % 128;
        char c2 = i2 % 2 != 0 ? 'K' : '3';
        com.fyber.inneractive.sdk.c.f adContent = inneractiveAdSpot.getAdContent();
        if (c2 != 'K') {
            return adContent.getClickThroughUrl();
        }
        adContent.getClickThroughUrl();
        throw null;
    }

    private static InneractiveUnitController l(InneractiveAdSpot inneractiveAdSpot) {
        int i2 = w + 103;
        v = i2 % 128;
        int i3 = i2 % 2;
        InneractiveUnitController selectedUnitController = inneractiveAdSpot.getSelectedUnitController();
        int i4 = w + 9;
        v = i4 % 128;
        int i5 = i4 % 2;
        return selectedUnitController;
    }

    private static boolean m(InneractiveAdSpot inneractiveAdSpot) {
        int i2 = v + 93;
        w = i2 % 128;
        int i3 = i2 % 2;
        boolean zIsVideoAd = inneractiveAdSpot.getAdContent().isVideoAd();
        int i4 = v + 73;
        w = i4 % 128;
        if (i4 % 2 == 0) {
            throw null;
        }
        return zIsVideoAd;
    }

    private static boolean n(InneractiveAdSpot inneractiveAdSpot) {
        int i2 = w + 77;
        v = i2 % 128;
        boolean z = i2 % 2 != 0;
        com.fyber.inneractive.sdk.c.f adContent = inneractiveAdSpot.getAdContent();
        if (z) {
            adContent.isFullscreenAd();
            throw null;
        }
        boolean zIsFullscreenAd = adContent.isFullscreenAd();
        int i3 = v + 91;
        w = i3 % 128;
        if (i3 % 2 == 0) {
            throw null;
        }
        return zIsFullscreenAd;
    }

    private static InneractiveAdRequest o(InneractiveAdSpot inneractiveAdSpot) {
        int i2 = w + 9;
        v = i2 % 128;
        char c2 = i2 % 2 != 0 ? (char) 3 : 'U';
        InneractiveAdRequest currentProcessedRequest = inneractiveAdSpot.getCurrentProcessedRequest();
        if (c2 == 3) {
            int i3 = 4 / 0;
        }
        int i4 = w + 65;
        v = i4 % 128;
        int i5 = i4 % 2;
        return currentProcessedRequest;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:42:0x017c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.Enum p(java.lang.String r13) {
        /*
            Method dump skipped, instruction units count: 474
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.bp.p(java.lang.String):java.lang.Enum");
    }

    private static Object q(InneractiveAdSpot inneractiveAdSpot) {
        int i2 = w + 89;
        v = i2 % 128;
        if (!(i2 % 2 == 0)) {
            inneractiveAdSpot.getAdContent();
            throw null;
        }
        com.fyber.inneractive.sdk.c.f adContent = inneractiveAdSpot.getAdContent();
        int i3 = w + 111;
        v = i3 % 128;
        if (i3 % 2 == 0) {
            return adContent;
        }
        throw null;
    }

    static /* synthetic */ InneractiveUnitController r(InneractiveAdSpot inneractiveAdSpot) {
        int i2 = w + 59;
        v = i2 % 128;
        int i3 = i2 % 2;
        InneractiveUnitController inneractiveUnitControllerL = l(inneractiveAdSpot);
        int i4 = w + 1;
        v = i4 % 128;
        if ((i4 % 2 != 0 ? 'I' : 'G') != 'I') {
            return inneractiveUnitControllerL;
        }
        throw null;
    }

    static /* synthetic */ InneractiveAdRequest s(InneractiveAdSpot inneractiveAdSpot) {
        int i2 = w + 83;
        v = i2 % 128;
        char c2 = i2 % 2 != 0 ? (char) 22 : (char) 18;
        InneractiveAdRequest inneractiveAdRequestO = o(inneractiveAdSpot);
        if (c2 == 22) {
            int i3 = 72 / 0;
        }
        int i4 = v + 63;
        w = i4 % 128;
        int i5 = i4 % 2;
        return inneractiveAdRequestO;
    }

    static /* synthetic */ InneractiveAdSpot t(InneractiveAdViewUnitController inneractiveAdViewUnitController) {
        int i2 = v + 47;
        w = i2 % 128;
        if ((i2 % 2 == 0 ? '.' : '\\') == '.') {
            J(inneractiveAdViewUnitController);
            throw null;
        }
        InneractiveAdSpot inneractiveAdSpotJ = J(inneractiveAdViewUnitController);
        int i3 = v + 33;
        w = i3 % 128;
        if (!(i3 % 2 == 0)) {
            return inneractiveAdSpotJ;
        }
        int i4 = 83 / 0;
        return inneractiveAdSpotJ;
    }

    private static InneractiveContentController.EventsListener u(InneractiveFullscreenVideoContentController inneractiveFullscreenVideoContentController) {
        int i2 = v + 55;
        w = i2 % 128;
        if (i2 % 2 == 0) {
            inneractiveFullscreenVideoContentController.getEventsListener();
            throw null;
        }
        VideoContentListener eventsListener = inneractiveFullscreenVideoContentController.getEventsListener();
        int i3 = v + 119;
        w = i3 % 128;
        int i4 = i3 % 2;
        return eventsListener;
    }

    private static Object v(InneractiveUnitController inneractiveUnitController) {
        int i2 = v + 21;
        w = i2 % 128;
        if (i2 % 2 == 0) {
            inneractiveUnitController.getSelectedContentController();
            throw null;
        }
        InneractiveContentController selectedContentController = inneractiveUnitController.getSelectedContentController();
        int i3 = v + 55;
        w = i3 % 128;
        if ((i3 % 2 == 0 ? (char) 3 : (char) 19) != 3) {
            return selectedContentController;
        }
        throw null;
    }

    static /* synthetic */ String w(InneractiveAdRequest inneractiveAdRequest) {
        int i2 = v + 31;
        w = i2 % 128;
        boolean z = i2 % 2 == 0;
        String strD = D(inneractiveAdRequest);
        if (z) {
            int i3 = 49 / 0;
        }
        return strD;
    }

    private static void x(InneractiveContentController inneractiveContentController, InneractiveContentController.EventsListener eventsListener) {
        int i2 = v + 31;
        w = i2 % 128;
        boolean z = i2 % 2 != 0;
        inneractiveContentController.setEventsListener(eventsListener);
        if (!z) {
            int i3 = 98 / 0;
        }
        int i4 = v + 45;
        w = i4 % 128;
        if (i4 % 2 != 0) {
            return;
        }
        int i5 = 69 / 0;
    }

    static /* synthetic */ String y(ImpressionData impressionData) {
        int i2 = w + 109;
        v = i2 % 128;
        int i3 = i2 % 2;
        String strH = H(impressionData);
        int i4 = w + 93;
        v = i4 % 128;
        int i5 = i4 % 2;
        return strH;
    }

    static /* synthetic */ boolean z(InneractiveAdSpot inneractiveAdSpot) {
        int i2 = v + 55;
        w = i2 % 128;
        if (!(i2 % 2 == 0)) {
            return n(inneractiveAdSpot);
        }
        n(inneractiveAdSpot);
        throw null;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    private static int m413() {
        int i2;
        int i3 = w + 27;
        v = i3 % 128;
        if (!(i3 % 2 == 0)) {
            i2 = R.id.inneractive_webview_mraid;
            int i4 = 78 / 0;
        } else {
            i2 = R.id.inneractive_webview_mraid;
        }
        int i5 = w + 105;
        v = i5 % 128;
        int i6 = i5 % 2;
        return i2;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    static /* synthetic */ Enum m414(String str) {
        int i2 = w + 27;
        v = i2 % 128;
        char c2 = i2 % 2 != 0 ? 'B' : (char) 15;
        Enum enumP = p(str);
        if (c2 != 15) {
            int i3 = 22 / 0;
        }
        int i4 = w + 101;
        v = i4 % 128;
        int i5 = i4 % 2;
        return enumP;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    final Map<String, az.d> j() {
        HashMap map = new HashMap();
        map.put(G(TextUtils.indexOf("", "", 0, 0) + 26, View.combineMeasuredStates(0, 0) + IronSourceError.ERROR_RV_LOAD_FAIL_DUE_TO_INIT, (char) View.MeasureSpec.getMode(0)).intern(), new i());
        map.put(G(10 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)), View.resolveSizeAndState(0, 0, 0) + 1059, (char) (10003 - (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)))).intern(), new a());
        map.put(G(TextUtils.indexOf((CharSequence) "", '0', 0) + 13, 1068 - View.MeasureSpec.getSize(0), (char) (47616 - (ViewConfiguration.getTapTimeout() >> 16))).intern(), new l());
        map.put(G((KeyEvent.getMaxKeyCode() >> 16) + 14, 1080 - Color.alpha(0), (char) ((ViewConfiguration.getLongPressTimeout() >> 16) + 24054)).intern(), new o());
        map.put(G(10 - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)), 1094 - (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)), (char) (28635 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)))).intern(), new d());
        map.put(G((PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + 18, ExpandableListView.getPackedPositionGroup(0L) + 1103, (char) (33359 - ImageFormat.getBitsPerPixel(0))).intern(), new c());
        map.put(G(8 - ImageFormat.getBitsPerPixel(0), 1121 - (ViewConfiguration.getKeyRepeatTimeout() >> 16), (char) (ViewConfiguration.getFadingEdgeLength() >> 16)).intern(), new e());
        map.put(G((ViewConfiguration.getMaximumDrawingCacheSize() >> 24) + 25, 1130 - View.MeasureSpec.getMode(0), (char) (Color.rgb(0, 0, 0) + 16820366)).intern(), new b());
        map.put(G(View.getDefaultSize(0, 0) + 28, (ViewConfiguration.getJumpTapTimeout() >> 16) + 1155, (char) (ViewConfiguration.getJumpTapTimeout() >> 16)).intern(), new f());
        map.put(G((ViewConfiguration.getScrollBarFadeDuration() >> 16) + 17, TextUtils.indexOf("", "") + 1183, (char) (ViewConfiguration.getJumpTapTimeout() >> 16)).intern(), new k());
        map.put(G(16 - TextUtils.lastIndexOf("", '0'), 1200 - (ViewConfiguration.getWindowTouchSlop() >> 8), (char) ((ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 16738)).intern(), new h());
        map.put(G(8 - MotionEvent.axisFromString(""), 1217 - (ViewConfiguration.getScrollBarFadeDuration() >> 16), (char) (ViewConfiguration.getWindowTouchSlop() >> 8)).intern(), new g());
        map.put(G((PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + 22, 1226 - Color.green(0), (char) (ViewConfiguration.getJumpTapTimeout() >> 16)).intern(), new j());
        map.put(G(20 - ((Process.getThreadPriority(0) + 20) >> 6), KeyEvent.keyCodeFromString("") + 1248, (char) ((-1) - Process.getGidForName(""))).intern(), new m());
        map.put(G(23 - (Process.myPid() >> 22), Color.rgb(0, 0, 0) + 16778484, (char) (26991 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24))).intern(), new n());
        int i2 = v + 33;
        w = i2 % 128;
        if (!(i2 % 2 == 0)) {
            return map;
        }
        int i3 = 20 / 0;
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0435, code lost:
    
        if (r22.equals(G(39 - android.graphics.drawable.Drawable.resolveOpacity(0, 0), android.view.View.MeasureSpec.getMode(0) + 743, (char) (android.view.MotionEvent.axisFromString("") + 38965)).intern()) != false) goto L157;
     */
    /* JADX WARN: Removed duplicated region for block: B:122:0x04b2  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x062d  */
    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ｋ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.lang.Class mo384(java.lang.String r22) {
        /*
            Method dump skipped, instruction units count: 1908
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.bp.mo384(java.lang.String):java.lang.Class");
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﾇ */
    public final String mo385() {
        int i2 = w + 33;
        v = i2 % 128;
        int i3 = i2 % 2;
        String version = InneractiveAdManager.getVersion();
        int i4 = w + 3;
        v = i4 % 128;
        int i5 = i4 % 2;
        return version;
    }
}
