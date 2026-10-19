package com.json.adqualitysdk.sdk.i;

import android.app.Activity;
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
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.applovin.exoplayer2.common.base.Ascii;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.ChartboostDelegate;
import com.chartboost.sdk.InPlay.CBInPlay;
import com.chartboost.sdk.Model.CBError;
import com.json.adqualitysdk.sdk.i.az;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class bi extends az {
    private static int A = 0;
    private static int B = 1;
    private static int t = 445563535;
    private static int u = 105;
    private static int v = 1862370898;
    private static short[] x;
    private static byte[] w = {-87, 113, 119, 95, 121, 97, 125, -114, 57, 109, 112, 108, 121, 90, 110, 125, 101, -111, -85, -27, -21, -45, -19, -43, -15, 2, -77, -33, -26, -42, -32, -18, -45, -30, -29, 4, -25, -33, -91, 76, 70, 58, 103, 36, 68, 75, 58, 88, 61, 74, 68, 93, -78, -110, -76, -101, -93, -102, -88, -62, 113, -94, -91, -95, -82, -113, -93, -78, -102, -58, 121, -87, -93, -96, -98, -93, -93, -112, -65, -79, -21, -15, -39, -13, -37, -9, 8, -82, -4, -24, -32, -24, -1, -60, -27, -20, -36, -26, -12, -39, -24, -23, 10, -19, -27, -59, 120, 126, 102, -128, 104, -124, -107, 70, 114, 121, 105, 115, -127, 102, 117, 118, -105, 122, 114, -120, 40, -119, 117, 109, 117, 108, -79, 54, 122, 100, -72, 45, 116, 119, 115, -128, 97, 117, -124, 108, 120, -88, 52, 113, Ascii.DEL, -103, 122, -93, 64, 45, 42, 64, 42, 54, 54, 66, 38, 59, 90, -97, 51, 53, 38, 69, Ascii.RS, 70, 71, -95, 101, 95, 92, 83, 93, 104, 123, 60, -128, -84, 54, 48, 45, 36, 46, 57, 76, Ascii.CR, 81, 10, 39, 56, 39, 36, 46, 56, 42, 40, 56, 83, -89, 52, 46, 43, 34, 44, 55, 74, Ascii.VT, 43, 45, Ascii.RS, 61, Ascii.SYN, 62, 63, -100, 66, 61, 67, 56, -79, 59, 93, 68, 76, 67, 81, 107, Ascii.SUB, 75, 78, 74, 87, 56, 76, 91, 67, 111, 75, 56, 57, 59, 93, 70, 61, 89, -89, Ascii.DC2, Ascii.FF, Ascii.GS, Ascii.DC4, 6, 60, -31, 37, Ascii.SI, 38, 7, Ascii.DLE, 33, -9, Ascii.GS, -95, 89, 109, 116, 63, 97, -112, 46, 112, 95, -93, -96, -62, -87, -79, -88, -74, -48, -111, -67, -112, -71};
    private static char[] y = {2460, 39930, 11556, 48970, 16543, 53820, 25726, 2475, 39876, 11550, 'C', 37391, 9427, 46729, 18788, 56301, 28079, 'b', 'C', 37391, 9431, 46722, 18768, 56296, 28079, 'o', 37377, 9434, 46956, 'I', 37411, 9454, 46722, 18758, 56306, 28090, 'r', 37404, 9436, 46947, 18723, 56287, 28040, 'Z', 37615, 9394, 46972, 18697, 56284, 48574, 12244, 39190, 2936, 62637, 26159, 53314, 48538, 12265, 39226, 2702, 62657, 26138, 53911, 16603, 62983, 25694, 39824, 2343, 49023, 53948, 16591, 62984, 26041, 39925, 2334, 48980, 53895, 16416, 63045, 26026, 39882, 2314, 48294, 53996, 16446, 63046, 'c', 37410, 9463, 46793, 18775, 56297, 28079, 'i', 37404, 9431, 46957, 18720, 56303, 28061, 24, 37616, 9396, 46966, 18756, 56257, 28269, '4', 37609, 9413, 46971, 18887, 56219, 28274, 28, 37579, 9571, 46880, 18899, 56196, 28245, 233, 37525, 9538, 46874, 18898, 56446, 28220, 214, 37526, 30439, 58556, 21114, 49191, 16322, 44369, 6975, 30435, 58521, 21062, 49655, 16303, 44397, 'g', 37416, 9454, 46756, 18780, 56288, 28092, 'o', 37386, 9434, 46957, 18748, 56296, 28077, 'S', 37615, 9397, 46970, 18699, 56259, 28257, 8621, 46050, 1316, 38766, 26774, 64042, 19574, 8613, 46016, 1296, 38567, 26870, 64034, 19573, 8644, 45846, 1326, 38536, 26768, 64057, 20395, 8695, 45873, 1350, 38547, 26683, 64125, 's', 37416, 9454, 46756, 18780, 56288, 28092, 'o', 37386, 9434, 46957, 18748, 56296, 28077, 'S', 37615, 9397, 46970, 18699, 56259, 28257, 'g', 37416, 9454, 46763, 18779, 56290, 28079, 'o', 37377, 9434, 46956};
    private static long z = 6074473901276893773L;

    final class a implements az.d {
        a() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bi.t();
        }
    }

    final class b implements az.d {
        b() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            bi.p(bi.this, chVar);
            return null;
        }
    }

    final class c implements az.d {
        c() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bi.m412();
        }
    }

    final class d implements az.d {
        d() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            bi.o((ChartboostDelegate) list.get(0));
            return null;
        }
    }

    final class e implements az.d {
        e() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bi.s(bi.this, (ChartboostDelegate) list.get(0), chVar);
        }
    }

    final class f implements az.d {
        f() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return Boolean.valueOf(bi.w(bi.this));
        }
    }

    final class g implements az.d {
        g() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return Boolean.valueOf(bi.q());
        }
    }

    final class h implements az.d {
        h() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bi.n((CBInPlay) list.get(0));
        }
    }

    final class i implements az.d {
        i() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bi.v((CBInPlay) list.get(0));
        }
    }

    class j extends ChartboostDelegate implements gy<ChartboostDelegate> {
        private static char[] a = null;
        private static long b = 0;
        private static int c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static int f5378d = 1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private ChartboostDelegate f5379e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private ch f5380f;

        static {
            char[] cArr = new char[1261];
            ByteBuffer.wrap("é]O\u008e¤\u008f\u001d\u0084r\u008a«¤\u0000¡y¹Þ\u00ad7ÒlêÅÓ:Ò\u0093ãÈé!÷\u0086êÿ\u0003T@\u008d\u0005â\u0016[)°;é:N:§t\u001cKuGªK\u0003cx}Ñb6Wl\u0088Å\u009a:\u0093\u0093\u008cÈµ!º\u0086¿ÿªTÏ\u008dÏâÚ\u0000C¦\u0090M\u0091ô\u009a\u009b\u0094Bºé¿\u0090§7³ÞÌ\u0085ô,ÍÓÌzý!÷Èéoô\u0016\u001d½^d\u001b\u000b\b²7Y%\u0000$§$N|õY\u009c[CPêt\u0091q8qßI\u0085\u0096,\u0084Ó\u008dz\u0092!«È¤o¡\u0016´½ÑdÑ\u000bÄ\u0000C¦\u0090M\u0091ô\u009a\u009b\u0094Bºé¿\u0090§7³ÞÌ\u0085ô,ÍÓÌzý!÷Èéoô\u0016\u001d½^d\f\u000b\t²<Y\u0013\u0000)§#NPõU\u009caCNêl\u0091u8zßs\u0085\u008c,\u0099Ó\u009cz\u0089!¹È¼\u0000C¦\u0090M\u0091ô\u009a\u009b\u0094Bºé¿\u0090§7³ÞÌ\u0085ô,ÍÓÌzý!÷Èéoô\u0016\u001d½^d\f\u000b\t²<Y\u0016\u0000)§)NTõd\u009cGClêw\u0091q8lßI\u0085\u0096,\u0084Ó\u008dz\u0092!«È¤o¡\u0016´½ÑdÑ\u000bÄ\u0000C¦\u0090M\u0091ô\u009a\u009b\u0094Bºé¿\u0090§7³ÞÌ\u0085ô,ÍÓÌzý!÷Èéoô\u0016\u001d½^d\f\u000b\t²<Y\u0014\u0000!§3NUõY\u009c[CSêQ\u0091~8|ße\u0085\u008a,\u0083Ó\u009cz\u0089!¬È¹o©\u0016¬\u0000C¦\u0090M\u0091ô\u009a\u009b\u0094Bºé¿\u0090§7³ÞÌ\u0085ô,ÍÓÌzý!÷Èéoô\u0016\u001d½^d\f\u000b\t²<Y\u0013\u0000$§/NKõU\u009caCNêl\u0091u8zßs\u0085\u008c,\u0099Ó\u009cz\u0089!¹È¼Q¬÷\u007f\u001c~¥uÊ{\u0013U¸PÁHf\\\u008f#Ô\u001b}\"\u0082#+\u0012p\u0018\u0099\u0006>\u001bGòì±5ãZæãÓ\büQËöÆ\u001f´¤´Í\u008e\u0012¡»\u0083À\u009ai\u0095\u008e\u009cÔc}v\u0082s+fpV\u0099S\u0018\u0081¾RUSìX\u0083VZxñ}\u0088e/qÆ\u000e\u009d64\u000fË\u000eb?95Ð+w6\u000eß¥\u009c|Î\u0013ËªþAÖ\u0018ã¿ñV\u008aí\u009e\u0084\u008b[\u009bò\u0093\u0089¼ ¾Ç§\u009dH4AË^bK9nÐ{wk\u000en\re«¶@·ù¼\u0096²O\u009cä\u0099\u009d\u0081:\u0095Óê\u0088Ò!ëÞêwÛ,ÑÅÏbÒ\u001b;°xi*\u0006/¿\u001aT5\r\u0001ª\u000bCnøz\u0091kNrç[\u009c\u007f5@ÒR\u0088»!¤Þ½w²,\u0097Å\u0082b\u0087\u001b\u0087°ò\u0000C¦\u0090M\u0091ô\u009a\u009b\u0094Bºé¿\u0090§7³ÞÌ\u0085ô,ÍÓÌzý!÷Èéoô\u0016\u001d½^d\u001b\u000b\b²7Y%\u0000$§$NjõU\u009cYCUê}\u0091c8|ßM\u0085\u0097,\u0082Ó\u008dz¡!¨È o»\u0007E¡\u0096J\u0097ó\u009c\u009c\u0092E¼î¹\u0097¡0µÙÊ\u0082ò+ËÔÊ}û&ñÏïhò\u0011\u001bºXc\n\f\u000fµ:^\u0015\u0007/ %IVòS\u009bcDIíl\u0096s?OØv\u0082\u008e+\u0085\u0000C¦\u0090M\u0091ô\u009a\u009b\u0094Bºé¿\u0090§7³ÞÌ\u0085ô,ÍÓÌzý!÷Èéoô\u0016\u001d½^d\u001b\u000b\b²7Y%\u0000$§$N|õY\u009c[CPêt\u0091q8qßM\u0085\u0097,\u0082Ó\u008dz¡!¨È o»Äßb\f\u0089\r0\u0006_\b\u0086&-#T;ó/\u001aPAhèQ\u0017P¾aåk\fu«hÒ\u0081yÂ \u0090Ï\u0095v \u009d\u008aÄµcµ\u008aÈ1øXÛ\u0087ð.ëUíüð\u001bÑA\u000bè\u001e\u0017\u0011¾=å4\f<«'(Û\u008e\be\tÜ\u0002³\fj\"Á'¸?\u001f+öT\u00adl\u0004UûTRe\toàqGl>\u0085\u0095ÆL\u0094#\u0091\u009a¤q\u008c(¹\u008f«fÍÝÁ´ÃkËÂÍ¹ç\u0010â÷ý\u00ad!\u0004\u0018û\u0000R\u000bÜ×z\u0004\u0091\u0005(\u000eG\u0000\u009e.5+L3ë'\u0002XY`ðY\u000fX¦iýc\u0014}³`Ê\u0089aÊ¸\u0098×\u009dn¨\u0085\u0087Ü°{»\u0092ß)Á@ñ\u009fÛ6þMáäÝ\u0003äY\u001cð\u0017\u0000C¦\u0090M\u0091ô\u009a\u009b\u0094Bºé¿\u0090§7³ÞÌ\u0085ô,ÍÓÌzý!÷Èéoô\u0016\u001d½^d\f\u000b\t²<Y\u0013\u0000$§)N[õ[\u009ceCOêj\u0091u8Ißp\u0085\u0088,\u0083\u0000C¦\u0090M\u0091ô\u009a\u009b\u0094Bºé¿\u0090§7³ÞÌ\u0085ô,ÍÓÌzý!÷Èéoô\u0016\u001d½^d\f\u000b\t²<Y\u0014\u0000!§3NHõ\\\u009cICYêU\u0091\u007f8zße\u0085¹,\u0080Ó\u0098z\u0093\u0000C¦\u0090M\u0091ô\u009a\u009b\u0094Bºé¿\u0090§7³ÞÌ\u0085ô,ÍÓÌzý!÷Èéoô\u0016\u001d½^d\f\u000b\t²<Y\u0016\u0000)§)NTõd\u009cGCrê}\u0091s8gßr\u0085\u009c,³Ó\u0084z\u0089!»È»ünZ½±¼\b·g¹¾\u0097\u0015\u0092l\u008aË\u009e\"áyÙÐà/á\u0086ÐÝÚ4Ä\u0093Ùê0As\u0098!÷$N\u0011¥-ü\u0004[\u0018²f\tx`F¿a\u0016\\m^ÄN#kyºÐ¯/\u0086\u0086¢Ý\u009b4\u009b\u0093\u008cê\u009fAø\u0098ü÷ñNä¥ÚüÓ\u0007ú¡\u000fJ\nó&\u009c\u001fE3î=\u009730\u001dÙJ\u0082G+UÔU}@&aÏdh]\u0011\u0089º\u0080c\u0090\f\u0097µ´^£\u0007· ªIÏòÁ\u009bØZ}ü®\u0017¯®¤Áª\u0018\u0084³\u0081Ê\u0099m\u008d\u0084òßÊvó\u0089ò Ã{É\u0092×5ÊL#ç`>%Q6è\t\u0003\u001bZ\u001aý\u001a\u0014B¯gÆe\u0019n°JËObO\u0085lß£v¹\u0089· ¬{\u0082\u0092\u008b5\u0092L¨çï>êQóèñ\u0000C¦\u0090M\u0091ô\u009a\u009b\u0094Bºé¿\u0090§7³ÞÌ\u0085ô,ÍÓÌzý!÷Èéoô\u0016\u001d½^d\f\u000b\t²<Y\u0013\u0000)§#NPõU\u009czCEêo\u0091q8zßd\u0085\u009d,\u0094Ó¾z\u0089!¼Èµo§\u0000C¦\u0090M\u0091ô\u009a\u009b\u0094Bºé¿\u0090§7³ÞÌ\u0085ô,ÍÓÌzý!÷Èéoô\u0016\u001d½^d\f\u000b\t²<Y\u0016\u0000)§)NTõd\u009cGClêw\u0091q8lßR\u0085\u009d,\u0087Ó\u0089z\u0092!¼Èµo¬\u0016\u0096½ÑdÔ\u000bÍ²Ï\u0000C¦\u0090M\u0091ô\u009a\u009b\u0094Bºé¿\u0090§7³ÞÌ\u0085ô,ÍÓÌzý!÷Èéoô\u0016\u001d½^d\f\u000b\t²<Y\u0014\u0000!§3NUõY\u009c[CSêJ\u0091u8\u007fßa\u0085\u008a,\u0094Ó\u008dz\u0084!\u008eÈ¹o¬\u0016¥½×\u000bù\u00ad*F+ÿ \u0090.I\u0000â\u0005\u009b\u001d<\tÕv\u008eN'wØvqG*MÃSdN\u001d§¶äo¶\u0000³¹\u0086R©\u000b\u009e¬\u0095Eñþï\u0097ÀHÿáÕ\u009aË3ÀÔÞ\u008e''.Ø\u0004q3*\u0006Ã\u000fd\u001d.\t\u0088ÚcÛÚÐµÞlðÇõ¾í\u0019ùð\u0086«¾\u0002\u0087ý\u0086T·\u000f½æ£A¾8W\u0093\u0014JF%C\u009cvwY.n\u0089c`\u0011Û\u0011²0m\u000fÄ%¿;\u00160ñ.«×\u0002ÞýôTÃ\u000föæÿAí\u0000C¦\u0090M\u0091ô\u009a\u009b\u0094Bºé¿\u0090§7³ÞÌ\u0085ô,ÍÓÌzý!÷Èéoô\u0016\u001d½^d\f\u000b\t²<Y\u0013\u0000'§-NHõ\\\u009cMCTê}\u0091B8mßw\u0085\u0099,\u0082Ó\u008cz\u0085!¼È\u0086o¡\u0016¤½Ýdß\u0000C¦\u0090M\u0091ô\u009a\u009b\u0094Bºé¿\u0090§7³ÞÌ\u0085ô,ÍÓÌzý!÷Èéoô\u0016\u001d½^d\f\u000b\t²<Y\u0014\u0000!§3NHõ\\\u009cICYêJ\u0091u8\u007fßa\u0085\u008a,\u0094Ó\u008dz\u0084!\u008eÈ¹o¬\u0016¥½×Åtc§\u0088¦1\u00ad^£\u0087\u008d,\u0088U\u0090ò\u0084\u001bû@Ãéú\u0016û¿ÊäÀ\rÞªÃÓ*xi¡(Î>w\u0003\u009c\u000bÅ;b\u001e\u008b|0wYs\u0086v/VTqýV\u001aS@ªé¨\u0000C¦\u0090M\u0091ô\u009a\u009b\u0094Bºé¿\u0090§7³ÞÌ\u0085ô,ÍÓÌzý!÷Èéoô\u0016\u001d½^d\f\u000b\t²<Y\u0013\u0000)§#NPõU\u009caCNêH\u0091|8ißyÔÔr\u0007\u0099\u0006 \rO\u0003\u0096-=(D0ã$\n[QcøZ\u0007[®jõ`\u001c~»cÂ\u008aiÉ°\u009bß\u009ef«\u008d\u0081Ô¾s¾\u009aÃ!óHÐ\u0097û>àEæìû\u000bÞQ\u0001ø7\u0007\u0013®\u0016õ6\b0®ãEâüé\u0093çJÉáÌ\u0098Ô?ÀÖ¿\u008d\u0087$¾Û¿r\u008e)\u0084À\u009ag\u0087\u001enµ-l\u007f\u0003zºOQj\bU¯ZF?ý*\u0094:K?â\u0002\u0099\u00190\u001e".getBytes("ISO-8859-1")).asCharBuffer().get(cArr, 0, 1261);
            a = cArr;
            b = 4983588691140978424L;
        }

        j(ChartboostDelegate chartboostDelegate, ch chVar) {
            this.f5379e = chartboostDelegate;
            this.f5380f = chVar;
        }

        private ChartboostDelegate a() {
            int i = c;
            int i2 = i + 111;
            f5378d = i2 % 128;
            int i3 = i2 % 2;
            ChartboostDelegate chartboostDelegate = this.f5379e;
            int i4 = i + 123;
            f5378d = i4 % 128;
            if ((i4 % 2 == 0 ? '+' : '0') != '+') {
                return chartboostDelegate;
            }
            throw null;
        }

        private static String b(int i, int i2, char c2) {
            String str;
            synchronized (com.json.adqualitysdk.sdk.i.e.f50) {
                char[] cArr = new char[i];
                com.json.adqualitysdk.sdk.i.e.f51 = 0;
                while (true) {
                    int i3 = com.json.adqualitysdk.sdk.i.e.f51;
                    if (i3 < i) {
                        cArr[i3] = (char) ((((long) a[i2 + i3]) ^ (((long) i3) * b)) ^ ((long) c2));
                        com.json.adqualitysdk.sdk.i.e.f51 = i3 + 1;
                    } else {
                        str = new String(cArr);
                    }
                }
            }
            return str;
        }

        public void didCacheInPlay(String str) {
            int i = c + 71;
            f5378d = i % 128;
            int i2 = i % 2;
            bi.this.f(this, this.f5380f, b(33 - (ViewConfiguration.getDoubleTapTimeout() >> 16), 1158 - KeyEvent.getDeadChar(0, 0), (char) ((SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) - 1)).intern(), str);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if (chartboostDelegate != null) {
                int i3 = c + 49;
                f5378d = i3 % 128;
                int i4 = i3 % 2;
                chartboostDelegate.didCacheInPlay(str);
            }
            int i5 = c + 61;
            f5378d = i5 % 128;
            if ((i5 % 2 == 0 ? (char) 21 : 'F') == 'F') {
            } else {
                throw null;
            }
        }

        public void didCacheInterstitial(String str) {
            bi.this.f(this, this.f5380f, b(39 - Color.alpha(0), 87 - MotionEvent.axisFromString(""), (char) ((-1) - TextUtils.lastIndexOf("", '0', 0, 0))).intern(), str);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if ((chartboostDelegate != null ? ';' : (char) 11) != 11) {
                int i = c + 111;
                f5378d = i % 128;
                char c2 = i % 2 == 0 ? '$' : '\b';
                chartboostDelegate.didCacheInterstitial(str);
                if (c2 != '\b') {
                    throw null;
                }
            }
            int i2 = f5378d + 95;
            c = i2 % 128;
            int i3 = i2 % 2;
        }

        public void didCacheMoreApps(String str) {
            int i = c + 99;
            f5378d = i % 128;
            int i2 = i % 2;
            bi.this.f(this, this.f5380f, b(35 - Gravity.getAbsoluteGravity(0, 0), View.MeasureSpec.getMode(0) + TTAdConstant.VIDEO_INFO_CODE, (char) ((-16775418) - Color.rgb(0, 0, 0))).intern(), str);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if ((chartboostDelegate != null ? '@' : '$') != '$') {
                chartboostDelegate.didCacheMoreApps(str);
            }
            int i3 = c + 5;
            f5378d = i3 % 128;
            if ((i3 % 2 == 0 ? '+' : '`') != '+') {
            } else {
                throw null;
            }
        }

        public void didCacheRewardedVideo(String str) {
            int i = f5378d + 27;
            c = i % 128;
            int i2 = i % 2;
            bi.this.f(this, this.f5380f, b(TextUtils.lastIndexOf("", '0') + 41, (ViewConfiguration.getMinimumFlingVelocity() >> 16) + 831, (char) (ViewConfiguration.getMaximumFlingVelocity() >> 16)).intern(), str);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if ((chartboostDelegate != null ? '%' : 'Q') != 'Q') {
                int i3 = f5378d + 73;
                c = i3 % 128;
                int i4 = i3 % 2;
                chartboostDelegate.didCacheRewardedVideo(str);
            }
        }

        public void didClickInterstitial(String str) {
            int i = f5378d + 51;
            c = i % 128;
            int i2 = i % 2;
            bi.this.f(this, this.f5380f, b(39 - (ViewConfiguration.getMinimumFlingVelocity() >> 16), TextUtils.getOffsetAfter("", 0) + 251, (char) (20974 - TextUtils.lastIndexOf("", '0', 0, 0))).intern(), str);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if ((chartboostDelegate != null ? '$' : '*') != '*') {
                int i3 = c + 41;
                f5378d = i3 % 128;
                boolean z = i3 % 2 != 0;
                chartboostDelegate.didClickInterstitial(str);
                if (!z) {
                    throw null;
                }
                int i4 = f5378d + 79;
                c = i4 % 128;
                int i5 = i4 % 2;
            }
        }

        public void didClickMoreApps(String str) {
            int i = c + 67;
            f5378d = i % 128;
            int i2 = i % 2;
            bi.this.f(this, this.f5380f, b((SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) + 34, 599 - ExpandableListView.getPackedPositionChild(0L), (char) ((ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) - 1)).intern(), str);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if ((chartboostDelegate != null ? '8' : '?') != '?') {
                int i3 = f5378d + 7;
                c = i3 % 128;
                char c2 = i3 % 2 != 0 ? (char) 15 : (char) 16;
                chartboostDelegate.didClickMoreApps(str);
                if (c2 == 15) {
                    int i4 = 55 / 0;
                }
                int i5 = f5378d + 53;
                c = i5 % 128;
                int i6 = i5 % 2;
            }
        }

        public void didClickRewardedVideo(String str) {
            int i = f5378d + 21;
            c = i % 128;
            int i2 = i % 2;
            bi.this.f(this, this.f5380f, b((ViewConfiguration.getMinimumFlingVelocity() >> 16) + 40, (ViewConfiguration.getLongPressTimeout() >> 16) + 998, (char) ((ViewConfiguration.getDoubleTapTimeout() >> 16) + 11850)).intern(), str);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if ((chartboostDelegate != null ? '9' : 'R') != '9') {
                return;
            }
            int i3 = f5378d + 105;
            c = i3 % 128;
            char c2 = i3 % 2 != 0 ? '*' : '\"';
            chartboostDelegate.didClickRewardedVideo(str);
            if (c2 == '*') {
                throw null;
            }
            int i4 = c + 31;
            f5378d = i4 % 128;
            int i5 = i4 % 2;
        }

        public void didCloseInterstitial(String str) {
            int i = c + 75;
            f5378d = i % 128;
            int i2 = i % 2;
            bi.this.f(this, this.f5380f, b((KeyEvent.getMaxKeyCode() >> 16) + 39, (ViewConfiguration.getDoubleTapTimeout() >> 16) + 212, (char) (ViewConfiguration.getEdgeSlop() >> 16)).intern(), str);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if (chartboostDelegate == null) {
                return;
            }
            chartboostDelegate.didCloseInterstitial(str);
            int i3 = c + 59;
            f5378d = i3 % 128;
            int i4 = i3 % 2;
        }

        public void didCloseMoreApps(String str) {
            bi.this.f(this, this.f5380f, b((ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 34, Color.red(0) + 565, (char) (56468 - View.MeasureSpec.makeMeasureSpec(0, 0))).intern(), str);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if ((chartboostDelegate != null ? 'R' : '@') == 'R') {
                int i = c + 61;
                f5378d = i % 128;
                char c2 = i % 2 == 0 ? (char) 22 : ',';
                chartboostDelegate.didCloseMoreApps(str);
                if (c2 != ',') {
                    int i2 = 18 / 0;
                }
            }
            int i3 = c + 85;
            f5378d = i3 % 128;
            int i4 = i3 % 2;
        }

        public void didCloseRewardedVideo(String str) {
            int i = f5378d + 73;
            c = i % 128;
            int i2 = i % 2;
            bi.this.f(this, this.f5380f, b(40 - View.MeasureSpec.getSize(0), (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 957, (char) (3002 - (ViewConfiguration.getFadingEdgeLength() >> 16))).intern(), str);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if ((chartboostDelegate != null ? '8' : 'c') == '8') {
                chartboostDelegate.didCloseRewardedVideo(str);
            }
            int i3 = c + 1;
            f5378d = i3 % 128;
            int i4 = i3 % 2;
        }

        public void didCompleteInterstitial(String str) {
            bi.this.f(this, this.f5380f, b((ViewConfiguration.getTapTimeout() >> 16) + 42, 330 - TextUtils.indexOf((CharSequence) "", '0', 0), (char) (3365 - TextUtils.lastIndexOf("", '0', 0))).intern(), str);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if (chartboostDelegate != null) {
                int i = f5378d + 37;
                c = i % 128;
                int i2 = i % 2;
                chartboostDelegate.didCompleteInterstitial(str);
                if (i2 != 0) {
                    int i3 = 7 / 0;
                }
                int i4 = c + 77;
                f5378d = i4 % 128;
                int i5 = i4 % 2;
            }
        }

        public void didCompleteRewardedVideo(String str, int i) {
            int i2 = f5378d + 47;
            c = i2 % 128;
            int i3 = i2 % 2;
            bi.this.f(this, this.f5380f, b((ViewConfiguration.getFadingEdgeLength() >> 16) + 43, 1038 - TextUtils.getOffsetBefore("", 0), (char) TextUtils.indexOf("", "")).intern(), str, Integer.valueOf(i));
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if (chartboostDelegate == null) {
                return;
            }
            int i4 = f5378d + 39;
            c = i4 % 128;
            char c2 = i4 % 2 != 0 ? 'A' : (char) 25;
            chartboostDelegate.didCompleteRewardedVideo(str, i);
            if (c2 != 'A') {
            } else {
                throw null;
            }
        }

        public void didDismissInterstitial(String str) {
            int i = c + 25;
            f5378d = i % 128;
            int i2 = i % 2;
            bi.this.f(this, this.f5380f, b((PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + 41, Color.alpha(0) + 171, (char) View.MeasureSpec.getMode(0)).intern(), str);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if ((chartboostDelegate != null ? (char) 19 : 'O') != 'O') {
                chartboostDelegate.didDismissInterstitial(str);
                int i3 = f5378d + 57;
                c = i3 % 128;
                int i4 = i3 % 2;
            }
        }

        public void didDismissMoreApps(String str) {
            bi.this.f(this, this.f5380f, b(Process.getGidForName("") + 38, 528 - (ViewConfiguration.getTapTimeout() >> 16), (char) (10393 - (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)))).intern(), str);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if ((chartboostDelegate != null ? 'R' : 'B') != 'B') {
                int i = f5378d + 31;
                c = i % 128;
                int i2 = i % 2;
                chartboostDelegate.didDismissMoreApps(str);
                int i3 = c + 45;
                f5378d = i3 % 128;
                int i4 = i3 % 2;
            }
        }

        public void didDismissRewardedVideo(String str) {
            int i = f5378d + 93;
            c = i % 128;
            int i2 = i % 2;
            bi.this.f(this, this.f5380f, b(42 - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)), TextUtils.lastIndexOf("", '0', 0) + 917, (char) ((-1) - TextUtils.indexOf((CharSequence) "", '0', 0, 0))).intern(), str);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if ((chartboostDelegate != null ? (char) 1 : '>') != 1) {
                return;
            }
            chartboostDelegate.didDismissRewardedVideo(str);
            int i3 = f5378d + 103;
            c = i3 % 128;
            int i4 = i3 % 2;
        }

        public void didDisplayInterstitial(String str) {
            int i = c + 125;
            f5378d = i % 128;
            int i2 = i % 2;
            bi.this.f(this, this.f5380f, b(TextUtils.indexOf("", "", 0) + 41, (ViewConfiguration.getScrollDefaultDelay() >> 16) + 290, (char) (6338 - Color.argb(0, 0, 0, 0))).intern(), str);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if (chartboostDelegate != null) {
                int i3 = f5378d + 23;
                c = i3 % 128;
                int i4 = i3 % 2;
                chartboostDelegate.didDisplayInterstitial(str);
                int i5 = c + 89;
                f5378d = i5 % 128;
                int i6 = i5 % 2;
            }
        }

        public void didDisplayMoreApps(String str) {
            int i = c + 41;
            f5378d = i % 128;
            int i2 = i % 2;
            bi.this.f(this, this.f5380f, b((ViewConfiguration.getKeyRepeatTimeout() >> 16) + 37, Gravity.getAbsoluteGravity(0, 0) + 635, (char) View.resolveSizeAndState(0, 0, 0)).intern(), str);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if (chartboostDelegate != null) {
                int i3 = f5378d + 103;
                c = i3 % 128;
                boolean z = i3 % 2 == 0;
                chartboostDelegate.didDisplayMoreApps(str);
                if (z) {
                } else {
                    throw null;
                }
            }
        }

        public void didDisplayRewardedVideo(String str) {
            int i = f5378d + 77;
            c = i % 128;
            int i2 = i % 2;
            bi.this.f(this, this.f5380f, b(41 - TextUtils.lastIndexOf("", '0', 0, 0), (ViewConfiguration.getMaximumDrawingCacheSize() >> 24) + 1081, (char) ((-1) - ImageFormat.getBitsPerPixel(0))).intern(), str);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if (chartboostDelegate != null) {
                int i3 = c + 45;
                f5378d = i3 % 128;
                boolean z = i3 % 2 == 0;
                chartboostDelegate.didDisplayRewardedVideo(str);
                if (z) {
                    throw null;
                }
                int i4 = f5378d + 87;
                c = i4 % 128;
                int i5 = i4 % 2;
            }
        }

        public void didFailToLoadInPlay(String str, CBError.CBImpressionError cBImpressionError) {
            int i = c + 101;
            f5378d = i % 128;
            int i2 = i % 2;
            bi.this.f(this, this.f5380f, b(38 - Drawable.resolveOpacity(0, 0), 1190 - TextUtils.lastIndexOf("", '0'), (char) (54423 - View.MeasureSpec.makeMeasureSpec(0, 0))).intern(), str, cBImpressionError);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if ((chartboostDelegate != null ? 'U' : '/') != 'U') {
                return;
            }
            chartboostDelegate.didFailToLoadInPlay(str, cBImpressionError);
            int i3 = c + 75;
            f5378d = i3 % 128;
            int i4 = i3 % 2;
        }

        public void didFailToLoadInterstitial(String str, CBError.CBImpressionError cBImpressionError) {
            bi.this.f(this, this.f5380f, b((SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) + 43, (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 126, (char) (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1))).intern(), str, cBImpressionError);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if ((chartboostDelegate != null ? 'a' : 'R') != 'R') {
                chartboostDelegate.didFailToLoadInterstitial(str, cBImpressionError);
                int i = c + 95;
                f5378d = i % 128;
                int i2 = i % 2;
            }
            int i3 = f5378d + 87;
            c = i3 % 128;
            int i4 = i3 % 2;
        }

        public void didFailToLoadMoreApps(String str, CBError.CBImpressionError cBImpressionError) {
            int i = c + 11;
            f5378d = i % 128;
            int i2 = i % 2;
            bi.this.f(this, this.f5380f, b(40 - TextUtils.indexOf("", "", 0), 488 - View.getDefaultSize(0, 0), (char) (50333 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)))).intern(), str, cBImpressionError);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if ((chartboostDelegate != null ? (char) 22 : (char) 26) == 22) {
                chartboostDelegate.didFailToLoadMoreApps(str, cBImpressionError);
            }
            int i3 = f5378d + 117;
            c = i3 % 128;
            int i4 = i3 % 2;
        }

        public void didFailToLoadRewardedVideo(String str, CBError.CBImpressionError cBImpressionError) {
            bi.this.f(this, this.f5380f, b(']' - AndroidCharacter.getMirror('0'), ExpandableListView.getPackedPositionType(0L) + 871, (char) KeyEvent.normalizeMetaState(0)).intern(), str, cBImpressionError);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if ((chartboostDelegate != null ? '_' : '%') != '_') {
                return;
            }
            int i = c + 13;
            f5378d = i % 128;
            int i2 = i % 2;
            chartboostDelegate.didFailToLoadRewardedVideo(str, cBImpressionError);
            int i3 = f5378d + 81;
            c = i3 % 128;
            int i4 = i3 % 2;
        }

        public void didFailToRecordClick(String str, CBError.CBClickError cBClickError) {
            int i = f5378d + 91;
            c = i % 128;
            int i2 = i % 2;
            bi.this.f(this, this.f5380f, b((AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 38, 672 - View.MeasureSpec.getMode(0), (char) (Process.getGidForName("") + 1)).intern(), str, cBClickError);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if (chartboostDelegate != null) {
                int i3 = c + 67;
                f5378d = i3 % 128;
                boolean z = i3 % 2 == 0;
                chartboostDelegate.didFailToRecordClick(str, cBClickError);
                if (z) {
                    throw null;
                }
            }
            int i4 = f5378d + 35;
            c = i4 % 128;
            if (i4 % 2 == 0) {
                return;
            }
            int i5 = 27 / 0;
        }

        public void didInitialize() {
            int i = f5378d + 79;
            c = i % 128;
            int i2 = i % 2;
            bi.this.f(this, this.f5380f, b(View.resolveSizeAndState(0, 0, 0) + 32, 1229 - Color.red(0), (char) (2163 - TextUtils.indexOf("", "", 0, 0))).intern(), new Object[0]);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if (chartboostDelegate != null) {
                chartboostDelegate.didInitialize();
                int i3 = f5378d + 97;
                c = i3 % 128;
                int i4 = i3 % 2;
            }
            int i5 = f5378d + 61;
            c = i5 % 128;
            if ((i5 % 2 != 0 ? (char) 7 : '6') != 7) {
            } else {
                throw null;
            }
        }

        public void didPauseClickForConfirmation(Activity activity) {
            int i = c + 45;
            f5378d = i % 128;
            int i2 = i % 2;
            bi.this.f(this, this.f5380f, b(47 - (ViewConfiguration.getScrollBarFadeDuration() >> 16), (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) + 710, (char) (TextUtils.lastIndexOf("", '0', 0, 0) + 64558)).intern(), activity);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if ((chartboostDelegate != null ? 'G' : '\b') == 'G') {
                int i3 = c + 21;
                f5378d = i3 % 128;
                int i4 = i3 % 2;
                try {
                    chartboostDelegate.getClass().getDeclaredMethod(b(28 - KeyEvent.getDeadChar(0, 0), 759 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), (char) (1950 - View.resolveSizeAndState(0, 0, 0))).intern(), Activity.class).invoke(this.f5379e, activity);
                    return;
                } catch (Throwable unused) {
                }
            }
            int i5 = c + 107;
            f5378d = i5 % 128;
            int i6 = i5 % 2;
        }

        public boolean shouldDisplayInterstitial(String str) {
            bi.this.f(this, this.f5380f, b(44 - TextUtils.indexOf("", "", 0, 0), TextUtils.indexOf("", "", 0, 0) + 44, (char) TextUtils.getOffsetBefore("", 0)).intern(), str);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if (chartboostDelegate == null) {
                return false;
            }
            int i = c + 33;
            f5378d = i % 128;
            int i2 = i % 2;
            boolean zShouldDisplayInterstitial = chartboostDelegate.shouldDisplayInterstitial(str);
            int i3 = c + 101;
            f5378d = i3 % 128;
            int i4 = i3 % 2;
            return zShouldDisplayInterstitial;
        }

        public boolean shouldDisplayMoreApps(String str) {
            int i = c + 59;
            f5378d = i % 128;
            int i2 = i % 2;
            bi.this.f(this, this.f5380f, b(40 - (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)), 447 - TextUtils.indexOf((CharSequence) "", '0', 0, 0), (char) TextUtils.indexOf("", "", 0, 0)).intern(), str);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if ((chartboostDelegate != null ? '%' : 'P') != '%') {
                return false;
            }
            int i3 = f5378d + 117;
            c = i3 % 128;
            int i4 = i3 % 2;
            return chartboostDelegate.shouldDisplayMoreApps(str);
        }

        public boolean shouldDisplayRewardedVideo(String str) {
            bi.this.f(this, this.f5380f, b(View.resolveSizeAndState(0, 0, 0) + 45, (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 785, (char) (((Process.getThreadPriority(0) + 20) >> 6) + 23102)).intern(), str);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if (!(chartboostDelegate == null)) {
                int i = c + 59;
                f5378d = i % 128;
                int i2 = i % 2;
                return chartboostDelegate.shouldDisplayRewardedVideo(str);
            }
            int i3 = c + 17;
            f5378d = i3 % 128;
            int i4 = i3 % 2;
            return false;
        }

        public boolean shouldRequestInterstitial(String str) {
            int i = c + 45;
            f5378d = i % 128;
            int i2 = i % 2;
            bi.this.f(this, this.f5380f, b('\\' - AndroidCharacter.getMirror('0'), ViewConfiguration.getTouchSlop() >> 8, (char) (59678 - View.resolveSizeAndState(0, 0, 0))).intern(), str);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if ((chartboostDelegate != null ? 'J' : ')') != 'J') {
                return false;
            }
            boolean zShouldRequestInterstitial = chartboostDelegate.shouldRequestInterstitial(str);
            int i3 = f5378d + 51;
            c = i3 % 128;
            int i4 = i3 % 2;
            return zShouldRequestInterstitial;
        }

        public boolean shouldRequestMoreApps(String str) {
            int i = c + 115;
            f5378d = i % 128;
            int i2 = i % 2;
            bi.this.f(this, this.f5380f, b(ExpandableListView.getPackedPositionChild(0L) + 41, Color.alpha(0) + 373, (char) (ViewConfiguration.getLongPressTimeout() >> 16)).intern(), str);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if ((chartboostDelegate != null ? (char) 21 : '\f') == '\f') {
                return false;
            }
            boolean zShouldRequestMoreApps = chartboostDelegate.shouldRequestMoreApps(str);
            int i3 = c + 123;
            f5378d = i3 % 128;
            if (i3 % 2 != 0) {
                return zShouldRequestMoreApps;
            }
            throw null;
        }

        public void willDisplayVideo(String str) {
            int i = c + 11;
            f5378d = i % 128;
            int i2 = i % 2;
            bi.this.f(this, this.f5380f, b(34 - ImageFormat.getBitsPerPixel(0), Color.green(0) + 1123, (char) (50486 - TextUtils.indexOf((CharSequence) "", '0', 0, 0))).intern(), str);
            ChartboostDelegate chartboostDelegate = this.f5379e;
            if (!(chartboostDelegate != null)) {
                return;
            }
            int i3 = c + 9;
            f5378d = i3 % 128;
            char c2 = i3 % 2 == 0 ? (char) 25 : (char) 7;
            chartboostDelegate.willDisplayVideo(str);
            if (c2 != 25) {
                return;
            }
            int i4 = 89 / 0;
        }

        @Override // com.json.adqualitysdk.sdk.i.gy
        /* JADX INFO: renamed from: ﾇ */
        public final /* synthetic */ ChartboostDelegate mo406() {
            int i = c + 21;
            f5378d = i % 128;
            int i2 = i % 2;
            ChartboostDelegate chartboostDelegateA = a();
            int i3 = f5378d + 89;
            c = i3 % 128;
            if ((i3 % 2 != 0 ? '\\' : 'R') != '\\') {
                return chartboostDelegateA;
            }
            throw null;
        }
    }

    public bi(String str) {
        super(str);
    }

    private void A(ch chVar) {
        int i2 = B + 81;
        A = i2 % 128;
        int i3 = i2 % 2;
        z(r((ChartboostDelegate) k(), chVar));
        int i4 = A + 69;
        B = i4 % 128;
        if ((i4 % 2 == 0 ? 'W' : (char) 7) != 'W') {
        } else {
            throw null;
        }
    }

    private static String a(int i2, int i3, byte b2, short s, int i4) {
        String string;
        synchronized (n.f132) {
            StringBuilder sb = new StringBuilder();
            int i5 = u;
            int i6 = i2 + i5;
            boolean z2 = i6 == -1;
            if (z2) {
                byte[] bArr = w;
                i6 = bArr != null ? (byte) (bArr[t + i4] + i5) : (short) (x[t + i4] + i5);
            }
            if (i6 > 0) {
                n.f136 = ((i4 + i6) - 2) + t + (z2 ? 1 : 0);
                n.f135 = b2;
                char c2 = (char) (i3 + v);
                n.f133 = c2;
                sb.append(c2);
                n.f134 = n.f133;
                n.f137 = 1;
                while (n.f137 < i6) {
                    byte[] bArr2 = w;
                    if (bArr2 != null) {
                        int i7 = n.f136;
                        n.f136 = i7 - 1;
                        n.f133 = (char) (n.f134 + (((byte) (bArr2[i7] + s)) ^ n.f135));
                    } else {
                        short[] sArr = x;
                        int i8 = n.f136;
                        n.f136 = i8 - 1;
                        n.f133 = (char) (n.f134 + (((short) (sArr[i8] + s)) ^ n.f135));
                    }
                    sb.append(n.f133);
                    n.f134 = n.f133;
                    n.f137++;
                }
            }
            string = sb.toString();
        }
        return string;
    }

    private static Object k() {
        int i2 = A + 87;
        B = i2 % 128;
        if ((i2 % 2 == 0 ? '\b' : 'K') == '\b') {
            Chartboost.getDelegate();
            throw null;
        }
        com.chartboost.sdk.a delegate = Chartboost.getDelegate();
        int i3 = A + 77;
        B = i3 % 128;
        if ((i3 % 2 == 0 ? (char) 2 : (char) 22) != 2) {
            return delegate;
        }
        int i4 = 18 / 0;
        return delegate;
    }

    private static boolean l() {
        int i2 = B + 7;
        A = i2 % 128;
        int i3 = i2 % 2;
        boolean zIsWebViewEnabled = Chartboost.isWebViewEnabled();
        int i4 = B + 67;
        A = i4 % 128;
        if ((i4 % 2 != 0 ? '_' : '(') == '(') {
            return zIsWebViewEnabled;
        }
        throw null;
    }

    private static Object m() {
        int i2 = B + 77;
        A = i2 % 128;
        int i3 = i2 % 2;
        com.chartboost.sdk.impl.a aVar = com.chartboost.sdk.g.d;
        int i4 = B + 83;
        A = i4 % 128;
        if ((i4 % 2 != 0 ? 'Q' : 'N') != 'Q') {
            return aVar;
        }
        throw null;
    }

    static /* synthetic */ String n(CBInPlay cBInPlay) {
        int i2 = A + 73;
        B = i2 % 128;
        int i3 = i2 % 2;
        String strX = x(cBInPlay);
        int i4 = B + 115;
        A = i4 % 128;
        if (!(i4 % 2 != 0)) {
            return strX;
        }
        int i5 = 34 / 0;
        return strX;
    }

    static /* synthetic */ void o(ChartboostDelegate chartboostDelegate) {
        int i2 = A + 25;
        B = i2 % 128;
        boolean z2 = i2 % 2 == 0;
        z(chartboostDelegate);
        if (!z2) {
        } else {
            throw null;
        }
    }

    static /* synthetic */ void p(bi biVar, ch chVar) {
        int i2 = A + 119;
        B = i2 % 128;
        int i3 = i2 % 2;
        biVar.A(chVar);
        int i4 = B + 15;
        A = i4 % 128;
        if ((i4 % 2 != 0 ? '(' : '<') == '<') {
        } else {
            throw null;
        }
    }

    static /* synthetic */ boolean q() {
        int i2 = B + 71;
        A = i2 % 128;
        int i3 = i2 % 2;
        boolean zL = l();
        int i4 = B + 65;
        A = i4 % 128;
        if (i4 % 2 != 0) {
            throw null;
        }
        return zL;
    }

    private j r(ChartboostDelegate chartboostDelegate, ch chVar) {
        j jVar = new j(chartboostDelegate, chVar);
        int i2 = A + 79;
        B = i2 % 128;
        if (i2 % 2 == 0) {
            throw null;
        }
        return jVar;
    }

    static /* synthetic */ j s(bi biVar, ChartboostDelegate chartboostDelegate, ch chVar) {
        int i2 = A + 59;
        B = i2 % 128;
        int i3 = i2 % 2;
        j jVarR = biVar.r(chartboostDelegate, chVar);
        int i4 = A + 125;
        B = i4 % 128;
        if (i4 % 2 == 0) {
            throw null;
        }
        return jVarR;
    }

    static /* synthetic */ Object t() {
        int i2 = A + 113;
        B = i2 % 128;
        int i3 = i2 % 2;
        Object objM = m();
        int i4 = A + 103;
        B = i4 % 128;
        int i5 = i4 % 2;
        return objM;
    }

    private static String u(int i2, int i3, char c2) {
        String str;
        synchronized (com.json.adqualitysdk.sdk.i.e.f50) {
            char[] cArr = new char[i2];
            com.json.adqualitysdk.sdk.i.e.f51 = 0;
            while (true) {
                int i4 = com.json.adqualitysdk.sdk.i.e.f51;
                if (i4 < i2) {
                    cArr[i4] = (char) ((((long) y[i3 + i4]) ^ (((long) i4) * z)) ^ ((long) c2));
                    com.json.adqualitysdk.sdk.i.e.f51 = i4 + 1;
                } else {
                    str = new String(cArr);
                }
            }
        }
        return str;
    }

    static /* synthetic */ String v(CBInPlay cBInPlay) {
        int i2 = A + 43;
        B = i2 % 128;
        int i3 = i2 % 2;
        String strY = y(cBInPlay);
        int i4 = B + 115;
        A = i4 % 128;
        int i5 = i4 % 2;
        return strY;
    }

    static /* synthetic */ boolean w(bi biVar) {
        int i2 = A + 119;
        B = i2 % 128;
        int i3 = i2 % 2;
        boolean zM411 = m411();
        int i4 = A + 125;
        B = i4 % 128;
        int i5 = i4 % 2;
        return zM411;
    }

    private static String x(CBInPlay cBInPlay) {
        int i2 = A + 53;
        B = i2 % 128;
        if (i2 % 2 != 0) {
            return cBInPlay.getLocation();
        }
        cBInPlay.getLocation();
        throw null;
    }

    private static String y(CBInPlay cBInPlay) {
        int i2 = A + 121;
        B = i2 % 128;
        if ((i2 % 2 == 0 ? (char) 30 : 'b') != 30) {
            return cBInPlay.getAppName();
        }
        cBInPlay.getAppName();
        throw null;
    }

    private static void z(ChartboostDelegate chartboostDelegate) {
        int i2 = A + 103;
        B = i2 % 128;
        boolean z2 = i2 % 2 != 0;
        Chartboost.setDelegate(chartboostDelegate);
        if (z2) {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    private static boolean m411() {
        int i2 = A + 65;
        B = i2 % 128;
        if ((i2 % 2 == 0 ? '\t' : 'T') == 'T') {
            return k() instanceof j;
        }
        boolean z2 = k() instanceof j;
        throw null;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    static /* synthetic */ Object m412() {
        int i2 = A + 101;
        B = i2 % 128;
        int i3 = i2 % 2;
        Object objK = k();
        int i4 = A + 9;
        B = i4 % 128;
        int i5 = i4 % 2;
        return objK;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    final Map<String, az.d> j() {
        HashMap map = new HashMap();
        map.put(u(13 - TextUtils.getOffsetAfter("", 0), (Process.myPid() >> 22) + 130, (char) (30356 - (Process.myTid() >> 22))).intern(), new b());
        map.put(u(21 - Drawable.resolveOpacity(0, 0), 142 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)), (char) TextUtils.getOffsetAfter("", 0)).intern(), new c());
        map.put(u((ViewConfiguration.getMinimumFlingVelocity() >> 16) + 27, Drawable.resolveOpacity(0, 0) + 164, (char) ((ViewConfiguration.getEdgeSlop() >> 16) + 8650)).intern(), new a());
        map.put(a((-106) - (ViewConfiguration.getDoubleTapTimeout() >> 16), (-1862370799) - (ViewConfiguration.getMinimumFlingVelocity() >> 16), (byte) (ViewConfiguration.getScrollDefaultDelay() >> 16), (short) ((-74) - Color.blue(0)), (ViewConfiguration.getFadingEdgeLength() >> 16) - 445563310).intern(), new e());
        map.put(u((ViewConfiguration.getWindowTouchSlop() >> 8) + 21, 191 - ((Process.getThreadPriority(0) + 20) >> 6), (char) (ViewConfiguration.getScrollDefaultDelay() >> 16)).intern(), new d());
        map.put(a((-105) - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)), TextUtils.getOffsetBefore("", 0) - 1862370793, (byte) (Process.myTid() >> 22), (short) ((-19) - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24)), (-445563284) - (ViewConfiguration.getWindowTouchSlop() >> 8)).intern(), new g());
        map.put(u(11 - Drawable.resolveOpacity(0, 0), (-16777004) - Color.rgb(0, 0, 0), (char) (ViewConfiguration.getScrollBarFadeDuration() >> 16)).intern(), new h());
        map.put(a((-106) - Gravity.getAbsoluteGravity(0, 0), (ViewConfiguration.getDoubleTapTimeout() >> 16) - 1862370795, (byte) (Process.myTid() >> 22), (short) ((-97) - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1))), (-445563268) - Color.alpha(0)).intern(), new i());
        map.put(a((-106) - ExpandableListView.getPackedPositionType(0L), (-1862370793) - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), (byte) Color.argb(0, 0, 0, 0), (short) (81 - Color.argb(0, 0, 0, 0)), (-445563258) - Color.blue(0)).intern(), new f());
        int i2 = B + 81;
        A = i2 % 128;
        if (i2 % 2 == 0) {
            return map;
        }
        int i3 = 55 / 0;
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x016d, code lost:
    
        if (r20.equals(u((android.view.ViewConfiguration.getTapTimeout() >> 16) + 44, 86 - (android.view.ViewConfiguration.getScrollBarSize() >> 8), (char) (android.view.KeyEvent.getMaxKeyCode() >> 16)).intern()) != false) goto L101;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x044a  */
    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ｋ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.lang.Class mo384(java.lang.String r20) {
        /*
            Method dump skipped, instruction units count: 1276
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.bi.mo384(java.lang.String):java.lang.Class");
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﾇ */
    public final String mo385() {
        int i2 = B + 73;
        A = i2 % 128;
        int i3 = i2 % 2;
        try {
            String sDKVersion = Chartboost.getSDKVersion();
            int i4 = A + 3;
            B = i4 % 128;
            int i5 = i4 % 2;
            return sDKVersion;
        } catch (Error unused) {
            return a(Color.rgb(0, 0, 0) + 16777110, (-1862370845) - TextUtils.lastIndexOf("", '0'), (byte) (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)), (short) (65520 - AndroidCharacter.getMirror('0')), (-445563316) - TextUtils.lastIndexOf("", '0', 0, 0)).intern();
        }
    }
}
