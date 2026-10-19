package com.json.adqualitysdk.sdk.i;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.ImageFormat;
import android.graphics.drawable.Drawable;
import android.media.AudioTrack;
import android.net.Uri;
import android.os.Message;
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
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.widget.ExpandableListView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.ViewCompat;
import com.gameloft.adsmanager.JavaUtils;
import com.json.adqualitysdk.sdk.i.at;
import com.json.b4;
import java.nio.ByteBuffer;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class hg extends WebChromeClient implements at.e, cg {
    private static char[] a = null;
    private static long b = 0;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5727d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private WebChromeClient f5728e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WebChromeClient f5729f;

    static {
        char[] cArr = new char[1006];
        ByteBuffer.wrap(" \u008cÃ\u0093fã\u0089\u001f,\u0007OHóº\u0016\u008d¹ÖÜ\r\u007fuâ]\u0006¢©üÌÙo<\u0092n5EY\u009eüþ\u001f>\u0082\u001e%jI¢\u0000Ec_Æ()è\u008cÆïÁSg¶U\u0019H|øß\u0096B\u008d¦P\t l\u0005Ï×2µ\u0095\u0093ùO\\%¿¤\"Þ\u0085°é[LJ¯\n\u0012õuÍØ\u0089<j\u009f5\u00020eÈÈ¬+\u0094\u008f@ò1Uå\u0000Ec_Æ()è\u008cÆïÁSg¶U\u0019H|øß\u0096B\u008d¦P\t l\u0005Ï×2µ\u0095\u0093ùO\\%¿¤\"Þ\u0085°éYL]¯\u0006\u0012÷uÖØ\u009a<|\u009f\"\u0002'eÉÈ¹+\u0096\u008fB\t=j'ÏP \u0090\u0085¾æ¹Z\u001f¿-\u00100u\u0080ÖîKõ¯(\u0000Xe}Æ¯;Í\u009cëð7U]¶Ü+¦\u008cÈà!E%¦~\u001b\u008f|®Ñâ5\u0004\u0096Z\u000bBl»ÁÚ\"ì\u0000Ec_Æ()è\u008cÆïÁSg¶U\u0019H|øß\u0096B\u008d¦P\t l\u0005Ï×2µ\u0095\u0093ùO\\%¿¤\"Þ\u0085°éYL]¯\u0006\u0012÷uÖØ\u009a<|\u009f\"\u0002'eÏÈ¸+\u0099\u008fOò\u001dUâ¸Á\u001bµ\u007f]âGE\u000e\u0000Ec_Æ()è\u008cÆïÁSg¶U\u0019H|øß\u0096B\u008d¦P\t l\u0005Ï×2µ\u0095\u0093ùO\\%¿¤\"Þ\u0085°éXLP¯\n\u0012åuüØ\u0099<j\u009f2\u0002\u001ceÍÈ\u009b+\u0093\u008fBò#Yâ:ø\u009f\u008fpOÕa¶f\nÀïò@ï%_\u00861\u001b*ÿ÷P\u00875¢\u0096pk\u0012Ì4 è\u0005\u0082æ\u0003{yÜ\u0017°ä\u0015öö¦KP,[\u0081>eÍÆ\u0095[»<j\u0091<r4Öå«\u0084\u0000Ec_Æ()è\u008cÆïÁSg¶U\u0019H|øß\u0096B\u008d¦P\t l\u0005Ï×2µ\u0095\u0093ùO\\%¿¤\"Þ\u0085°éHLJ¯\u0000\u0012óuËØ\u0089<N\u009f/\u0002\u001deÄÈ¢+\u008d\u0000Ec_Æ()è\u008cÆïÁSg¶U\u0019H|øß\u0096B\u008d¦P\t l\u0005Ï×2µ\u0095\u0093ùO\\%¿¤\"Þ\u0085°éYL]¯\u0014\u0012çuÚØ\u009f<m\u009f\u0000\u0002\u001ceÃÈ¸+\u0089\u0000Ec_Æ()è\u008cÆïÁSg¶U\u0019H|øß\u0096B\u008d¦P\t l\u0005Ï×2µ\u0095\u0093ùO\\%¿¤\"Þ\u0085°éHLT¯\n\u0012áuÚØ»<p\u009f(\u0002\u0017eÏÈº\u0000Ec_Æ()è\u008cÆïÁSg¶U\u0019H|øß\u0096B\u008d¦P\t l\u0005Ï×2µ\u0095\u0093ùO\\%¿¤\"Þ\u0085°éALK¯$\u0012þuÚØ\u009e<m\u0000Ec_Æ()è\u008cÆïÁSg¶U\u0019H|øß\u0096B\u008d¦P\t l\u0005Ï×2µ\u0095\u0093ùO\\%¿¤\"Þ\u0085°éALK¯&\u0012ýuÑØ\u008a<p\u009f4\u0002\u001e\u0000Ec_Æ()è\u008cÆïÁSg¶U\u0019H|øß\u0096B\u008d¦P\t l\u0005Ï×2µ\u0095\u0093ùO\\%¿¤\"Þ\u0085°éALK¯5\u0012àuÐØ\u0081<i\u009f2õF\u0096\\3+ÜëyÅ\u001aÂ¦dCVìK\u0089û*\u0095·\u008eSSü#\u0099\u0006:ÔÇ¶`\u0090\fL©&J§×Ýp³\u001cB¹HZ$çô\u0080Ú-\u0080Éhj ÷%\u0090Í=¢Þ\u0096zE\u00073\u0084ÌçÖB¡\u00ada\bOkH×î2Ü\u009dÁøq[\u001fÆ\u0004\"Ù\u008d©è\u008cK^¶<\u0011\u001a}ÆØ¬;-¦W\u00019mÇÈÉ+\u008f\u0096~ñS\\\u0001¸õ\u001b«\u0086¾áHL0¯\u0012\u000bÌv¼Ñ{<B\u009f\u0003ûôfÓÁ\u009f,g2vQlô\u001b\u001bÛ¾õÝòaT\u0084f+{NËí¥p¾\u0094c;\u0013^6ýä\u0000\u0086§ Ë|n\u0016\u008d\u0097\u0010í·\u0083Û\u007f~n\u009d9 ÍGãê¼\u000eK\u00ad\u00010)Wüú\u0090\u0019\u0099½qÀ\u0015gß\u008aô)\u009bMHÐow>\u009aÒ9ü\\\u0089àM\u0007\u001fª4Éþl\u008bó«\u0017zº\u0012Ù9\u0000Ec_Æ()è\u008cÆïÁSg¶U\u0019H|øß\u0096B\u008d¦P\t l\u0005Ï×2µ\u0095\u0093ùO\\%¿¤\"Þ\u0085°éLL]¯\n\u0012þuÐØ\u008f<x\u009f2\u0002\u001aeÏÈ£+ª\u008fBò&Uì¸Ç\u001b¨\u007f{â\\E\r¨á\u000bÏn¡Ò\u007f5'\u0098\u0015ûÍ^¸Á\u0098%I\u0088!ë\nk\u0010\b\n\u00ad}B½ç\u0093\u0084\u009482Ý\u0000r\u001d\u0017\u00ad´Ã)ØÍ\u0005bu\u0007P¤\u0082YàþÆ\u0092\u001a7pÔñI\u008bîå\u0082\u000e'\bÄByª\u001e\u0083³ÊW?ôziI\u000e\u009b£Ê@Êä\u0003\u0099t>±Ó\u0088pú\u0000Ec_Æ()è\u008cÆïÁSg¶U\u0019H|øß\u0096B\u008d¦P\t l\u0005Ï×2µ\u0095\u0093ùO\\%¿¤\"Þ\u0085°é[L]¯\u0017\u0012ÿuÖØ\u009f<j\u009f/\u0002\u001ceÎÈ\u009f+\u009f\u008fVò!Uä¸Ý\u001b¯\u007fKâTE\f¨ì\u000bÙn\u0085Òs5'7|Tfñ\u0011\u001eÑ»ÿØød^\u0081l.qKÁè¯u´\u0091i>\u0019[<øî\u0005\u008c¢ªÎvk\u001c\u0088\u009d\u0015ç²\u0089Þx{r\u0098\b%ÂBëï°\u000bO¨\n5>Épªj\u000f\u001dàÝEó&ô\u009aR\u007f`Ð}µÍ\u0016£\u008b¸oeÀ\u0015¥0\u0006âû\u0080\\¦0z\u0095\u0010v\u0091ëëL\u0085 }\u0085bf>ÛÔ¼å\u0011µõIV>Ë#¬æ\u0001\u008bâ®Fu;\u0004\rJnPË'$ç\u0081ÉâÎ^h»Z\u0014Gq÷Ò\u0099O\u0082«_\u0004/a\nÂØ?º\u0098\u009cô@Q*²«/Ù\u0088´äpAs¢\u000f\u001fûxÑÕ\u00961z\u0092=\u000f*hÆÅ¦&\u0090\u0082Gÿ\u000bXáµÒ\u0016 rbïH\u0000Ec_Æ()è\u008cÆïÁSg¶U\u0019H|øß\u0096B\u008d¦P\t l\u0005Ï×2µ\u0095\u0093ùO\\%¿¤\"Ö\u0085»é\u007fLn¯\f\u0012öuÚØ\u0083<U\u009f)\u0002\u0012eÄÈ¤+\u0094\u008f@ò\u0004Uó¸Á\u001b¼\u007fzâPE\u0011¨ü\u000bên\u0080Òs54\u0000Ec_Æ()è\u008cÆïÁSg¶U\u0019H|øß\u0096B\u008d¦P\t l\u0005Ï×2µ\u0095\u0093ùO\\%¿¤\"Ö\u0085»é\u007fLn¯\f\u0012áuÖØ\u0098<|\u009f\"\u0002;eÉÈ¾+\u008e\u008fHò&Uø\u0000Ec_Æ()è\u008cÆïÁSg¶U\u0019H|øß\u0096B\u008d¦P\t l\u0005Ï×2µ\u0095\u0093ùO\\%¿¤\"Þ\u0085°éXLP¯\n\u0012åuùØ\u0085<u\u009f#\u00020eÈÈ¢+\u0095\u008fTò1Uó\u0000gcHÆ.)Ð\u008cÆï\u0080S~¶K\u0019\r|ñß\u0095B\u008a¦~\t\nl\u001eÏÑ2¿\u0095\u0090ùO\\\u0014¿è\"Ø\u0085»éeLL:[Ytü\u0012\u0013ï¶êÕ\u008aiW\u008ce#\u0017FÁå\u008cx¼\u009cM3\u0010V\tõó\b\u0085¯¤Ãxf\u001f".getBytes("ISO-8859-1")).asCharBuffer().get(cArr, 0, 1006);
        a = cArr;
        b = 8404083921005732653L;
    }

    public hg(WebChromeClient webChromeClient, WebChromeClient webChromeClient2) {
        this.f5728e = webChromeClient;
        this.f5729f = webChromeClient2;
    }

    private static String a(int i, int i2, char c2) {
        String str;
        synchronized (e.f50) {
            char[] cArr = new char[i];
            e.f51 = 0;
            while (true) {
                int i3 = e.f51;
                if (i3 < i) {
                    cArr[i3] = (char) ((((long) a[i2 + i3]) ^ (((long) i3) * b)) ^ ((long) c2));
                    e.f51 = i3 + 1;
                } else {
                    str = new String(cArr);
                }
            }
        }
        return str;
    }

    private WebChromeClient b() {
        int i = f5727d + 125;
        c = i % 128;
        if (i % 2 == 0) {
            return this.f5728e;
        }
        throw null;
    }

    private Object c() {
        int i = f5727d + 59;
        c = i % 128;
        if (i % 2 == 0) {
            return this.f5729f;
        }
        throw null;
    }

    @Override // android.webkit.WebChromeClient
    public Bitmap getDefaultVideoPoster() {
        int i = c + 105;
        f5727d = i % 128;
        try {
        } catch (Throwable th) {
            jy.m987(a(23 - TextUtils.lastIndexOf("", '0', 0, 0), ViewConfiguration.getPressedStateDuration() >> 16, (char) (TextUtils.indexOf("", "", 0, 0) + 41179)).intern(), a(42 - View.combineMeasuredStates(0, 0), 796 - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)), (char) (3343 - (Process.myTid() >> 22))).intern(), th, false);
        }
        if (i % 2 == 0) {
            this.f5729f.getDefaultVideoPoster();
            throw null;
        }
        this.f5729f.getDefaultVideoPoster();
        WebChromeClient webChromeClient = this.f5728e;
        if ((webChromeClient != null ? 'N' : '*') == '*') {
            return super.getDefaultVideoPoster();
        }
        int i2 = f5727d + 63;
        c = i2 % 128;
        if ((i2 % 2 != 0 ? (char) 7 : (char) 4) != 7) {
            return webChromeClient.getDefaultVideoPoster();
        }
        webChromeClient.getDefaultVideoPoster();
        throw null;
    }

    @Override // android.webkit.WebChromeClient
    public View getVideoLoadingProgressView() {
        try {
            this.f5729f.getVideoLoadingProgressView();
        } catch (Throwable th) {
            jy.m987(a((TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)) + 24, (-1) - ((byte) KeyEvent.getModifierMetaStateMask()), (char) ((ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) + 41179)).intern(), a((SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) + 47, (ViewConfiguration.getKeyRepeatTimeout() >> 16) + 837, (char) (ViewConfiguration.getKeyRepeatTimeout() >> 16)).intern(), th, false);
        }
        WebChromeClient webChromeClient = this.f5728e;
        if ((webChromeClient != null ? 'E' : (char) 26) != 'E') {
            View videoLoadingProgressView = super.getVideoLoadingProgressView();
            int i = f5727d + 123;
            c = i % 128;
            if (i % 2 == 0) {
                return videoLoadingProgressView;
            }
            throw null;
        }
        int i2 = c + 71;
        f5727d = i2 % 128;
        if (!(i2 % 2 == 0)) {
            return webChromeClient.getVideoLoadingProgressView();
        }
        int i3 = 83 / 0;
        return webChromeClient.getVideoLoadingProgressView();
    }

    @Override // android.webkit.WebChromeClient
    public void getVisitedHistory(ValueCallback<String[]> valueCallback) {
        int i = f5727d + 119;
        c = i % 128;
        try {
        } catch (Throwable th) {
            jy.m987(a(Color.red(0) + 24, ViewCompat.MEASURED_STATE_MASK - Color.rgb(0, 0, 0), (char) (41179 - KeyEvent.getDeadChar(0, 0))).intern(), a((ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 37, 884 - TextUtils.lastIndexOf("", '0'), (char) KeyEvent.normalizeMetaState(0)).intern(), th, false);
        }
        if ((i % 2 != 0 ? (char) 26 : (char) 31) != 31) {
            this.f5729f.getVisitedHistory(valueCallback);
            throw null;
        }
        this.f5729f.getVisitedHistory(valueCallback);
        WebChromeClient webChromeClient = this.f5728e;
        if (webChromeClient == null) {
            super.getVisitedHistory(valueCallback);
            return;
        }
        int i2 = c + 83;
        f5727d = i2 % 128;
        int i3 = i2 % 2;
        webChromeClient.getVisitedHistory(valueCallback);
        int i4 = f5727d + 33;
        c = i4 % 128;
        if ((i4 % 2 != 0 ? 'X' : 'I') == 'I') {
        } else {
            throw null;
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onCloseWindow(WebView webView) {
        try {
            this.f5729f.onCloseWindow(webView);
            int i = f5727d + 13;
            c = i % 128;
            int i2 = i % 2;
        } catch (Throwable th) {
            jy.m987(a(Process.getGidForName("") + 25, ViewConfiguration.getMaximumFlingVelocity() >> 16, (char) (41179 - (ViewConfiguration.getLongPressTimeout() >> 16))).intern(), a(34 - View.MeasureSpec.getSize(0), KeyEvent.keyCodeFromString("") + JavaUtils.Constants.BANNER_WIDTH_DP, (char) (Process.myPid() >> 22)).intern(), th, false);
        }
        WebChromeClient webChromeClient = this.f5728e;
        if (!(webChromeClient != null)) {
            super.onCloseWindow(webView);
            return;
        }
        int i3 = f5727d + 47;
        c = i3 % 128;
        int i4 = i3 % 2;
        webChromeClient.onCloseWindow(webView);
        int i5 = f5727d + 89;
        c = i5 % 128;
        int i6 = i5 % 2;
    }

    @Override // android.webkit.WebChromeClient
    @Deprecated
    public void onConsoleMessage(String str, int i, String str2) {
        int i2 = f5727d + 97;
        c = i2 % 128;
        int i3 = i2 % 2;
        try {
            this.f5729f.onConsoleMessage(str, i, str2);
        } catch (Throwable th) {
            jy.m987(a(View.MeasureSpec.getSize(0) + 24, '0' - AndroidCharacter.getMirror('0'), (char) (41179 - Color.blue(0))).intern(), a(37 - Gravity.getAbsoluteGravity(0, 0), 758 - Color.blue(0), (char) (51510 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)))).intern(), th, false);
        }
        WebChromeClient webChromeClient = this.f5728e;
        if ((webChromeClient != null ? '9' : '.') != '9') {
            super.onConsoleMessage(str, i, str2);
            return;
        }
        int i4 = f5727d + 57;
        c = i4 % 128;
        boolean z = i4 % 2 == 0;
        webChromeClient.onConsoleMessage(str, i, str2);
        if (z) {
            return;
        }
        int i5 = 79 / 0;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        int i = c + 95;
        f5727d = i % 128;
        try {
            if (i % 2 != 0) {
                this.f5729f.onConsoleMessage(consoleMessage);
            } else {
                this.f5729f.onConsoleMessage(consoleMessage);
                int i2 = 88 / 0;
            }
        } catch (Throwable th) {
            jy.m987(a(KeyEvent.getDeadChar(0, 0) + 24, ViewConfiguration.getEdgeSlop() >> 16, (char) (41179 - ExpandableListView.getPackedPositionGroup(0L))).intern(), a((TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 37, (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) + 757, (char) (AndroidCharacter.getMirror('0') + 51461)).intern(), th, false);
        }
        WebChromeClient webChromeClient = this.f5728e;
        if ((webChromeClient != null ? (char) 31 : 'X') == 'X') {
            return super.onConsoleMessage(consoleMessage);
        }
        int i3 = c + 93;
        f5727d = i3 % 128;
        int i4 = i3 % 2;
        return webChromeClient.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        int i = c + 27;
        f5727d = i % 128;
        int i2 = i % 2;
        try {
            this.f5729f.onCreateWindow(webView, z, z2, message);
        } catch (Throwable th) {
            jy.m987(a(23 - ExpandableListView.getPackedPositionChild(0L), 1 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)), (char) ((Process.myTid() >> 22) + 41179)).intern(), a(34 - ImageFormat.getBitsPerPixel(0), (ViewConfiguration.getMinimumFlingVelocity() >> 16) + 250, (char) (ViewConfiguration.getFadingEdgeLength() >> 16)).intern(), th, false);
        }
        WebChromeClient webChromeClient = this.f5728e;
        if ((webChromeClient != null ? (char) 15 : '9') == '9') {
            return super.onCreateWindow(webView, z, z2, message);
        }
        int i3 = f5727d + 67;
        c = i3 % 128;
        boolean z3 = i3 % 2 == 0;
        boolean zOnCreateWindow = webChromeClient.onCreateWindow(webView, z, z2, message);
        if (!z3) {
            int i4 = 74 / 0;
        }
        return zOnCreateWindow;
    }

    @Override // android.webkit.WebChromeClient
    @Deprecated
    public void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, WebStorage.QuotaUpdater quotaUpdater) {
        int i = c + 125;
        f5727d = i % 128;
        try {
            if (i % 2 == 0) {
                this.f5729f.onExceededDatabaseQuota(str, str2, j, j2, j3, quotaUpdater);
                int i2 = 77 / 0;
            } else {
                this.f5729f.onExceededDatabaseQuota(str, str2, j, j2, j3, quotaUpdater);
            }
            int i3 = f5727d + 123;
            c = i3 % 128;
            int i4 = i3 % 2;
        } catch (Throwable th) {
            jy.m987(a(24 - TextUtils.getOffsetBefore("", 0), TextUtils.getOffsetBefore("", 0), (char) (41180 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)))).intern(), a(44 - (ViewConfiguration.getKeyRepeatTimeout() >> 16), 484 - (ViewConfiguration.getFadingEdgeLength() >> 16), (char) ((ViewConfiguration.getJumpTapTimeout() >> 16) + 33929)).intern(), th, false);
        }
        WebChromeClient webChromeClient = this.f5728e;
        if (!(webChromeClient != null)) {
            super.onExceededDatabaseQuota(str, str2, j, j2, j3, quotaUpdater);
            return;
        }
        int i5 = f5727d + 43;
        c = i5 % 128;
        if (i5 % 2 == 0) {
            webChromeClient.onExceededDatabaseQuota(str, str2, j, j2, j3, quotaUpdater);
        } else {
            webChromeClient.onExceededDatabaseQuota(str, str2, j, j2, j3, quotaUpdater);
            throw null;
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsHidePrompt() {
        int i = f5727d + 47;
        c = i % 128;
        try {
            if ((i % 2 != 0 ? 'E' : (char) 11) != 'E') {
                this.f5729f.onGeolocationPermissionsHidePrompt();
            } else {
                this.f5729f.onGeolocationPermissionsHidePrompt();
                int i2 = 83 / 0;
            }
        } catch (Throwable th) {
            jy.m987(a((ViewConfiguration.getScrollDefaultDelay() >> 16) + 24, ViewConfiguration.getWindowTouchSlop() >> 8, (char) (TextUtils.getOffsetAfter("", 0) + 41179)).intern(), a(TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 56, 584 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)), (char) (ViewConfiguration.getKeyRepeatTimeout() >> 16)).intern(), th, false);
        }
        WebChromeClient webChromeClient = this.f5728e;
        if (webChromeClient == null) {
            super.onGeolocationPermissionsHidePrompt();
            return;
        }
        webChromeClient.onGeolocationPermissionsHidePrompt();
        int i3 = f5727d + 93;
        c = i3 % 128;
        if ((i3 % 2 == 0 ? '!' : '/') == '!') {
        } else {
            throw null;
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        int i = c + 91;
        f5727d = i % 128;
        try {
        } catch (Throwable th) {
            jy.m987(a(24 - KeyEvent.keyCodeFromString(""), (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), (char) (41178 - TextUtils.lastIndexOf("", '0', 0))).intern(), a(Color.rgb(0, 0, 0) + 16777271, 528 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), (char) (12851 - View.combineMeasuredStates(0, 0))).intern(), th, false);
        }
        if (i % 2 == 0) {
            this.f5729f.onGeolocationPermissionsShowPrompt(str, callback);
            throw null;
        }
        this.f5729f.onGeolocationPermissionsShowPrompt(str, callback);
        WebChromeClient webChromeClient = this.f5728e;
        if ((webChromeClient != null ? '\b' : 'J') != '\b') {
            super.onGeolocationPermissionsShowPrompt(str, callback);
            return;
        }
        int i2 = f5727d + 57;
        c = i2 % 128;
        int i3 = i2 % 2;
        webChromeClient.onGeolocationPermissionsShowPrompt(str, callback);
    }

    @Override // android.webkit.WebChromeClient
    public void onHideCustomView() {
        try {
            this.f5729f.onHideCustomView();
        } catch (Throwable th) {
            jy.m987(a(View.MeasureSpec.getMode(0) + 24, View.resolveSizeAndState(0, 0, 0), (char) (41179 - (ViewConfiguration.getTouchSlop() >> 8))).intern(), a(Gravity.getAbsoluteGravity(0, 0) + 37, 213 - (ViewConfiguration.getPressedStateDuration() >> 16), (char) ((ViewConfiguration.getTouchSlop() >> 8) + 22951)).intern(), th, false);
        }
        WebChromeClient webChromeClient = this.f5728e;
        if ((webChromeClient != null ? ')' : 'T') != 'T') {
            int i = c + 101;
            f5727d = i % 128;
            int i2 = i % 2;
            webChromeClient.onHideCustomView();
            return;
        }
        super.onHideCustomView();
        int i3 = c + 123;
        f5727d = i3 % 128;
        if (i3 % 2 == 0) {
            throw null;
        }
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        int i = f5727d + 25;
        c = i % 128;
        try {
        } catch (Throwable th) {
            jy.m987(a(24 - View.getDefaultSize(0, 0), ExpandableListView.getPackedPositionType(0L), (char) (41179 - TextUtils.getTrimmedLength(""))).intern(), a((ViewConfiguration.getMinimumFlingVelocity() >> 16) + 30, TextUtils.lastIndexOf("", '0') + 355, (char) KeyEvent.normalizeMetaState(0)).intern(), th, false);
        }
        if (i % 2 != 0) {
            this.f5729f.onJsAlert(webView, str, str2, jsResult);
            throw null;
        }
        this.f5729f.onJsAlert(webView, str, str2, jsResult);
        WebChromeClient webChromeClient = this.f5728e;
        if ((webChromeClient != null ? 'F' : (char) 17) == 'F') {
            int i2 = c + 49;
            f5727d = i2 % 128;
            int i3 = i2 % 2;
            return webChromeClient.onJsAlert(webView, str, str2, jsResult);
        }
        boolean zOnJsAlert = super.onJsAlert(webView, str, str2, jsResult);
        int i4 = f5727d + 103;
        c = i4 % 128;
        int i5 = i4 % 2;
        return zOnJsAlert;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        int i = f5727d + 107;
        c = i % 128;
        int i2 = i % 2;
        try {
            this.f5729f.onJsBeforeUnload(webView, str, str2, jsResult);
        } catch (Throwable th) {
            jy.m987(a(24 - (ViewConfiguration.getLongPressTimeout() >> 16), KeyEvent.keyCodeFromString(""), (char) ((ViewConfiguration.getKeyRepeatDelay() >> 16) + 41179)).intern(), a(Gravity.getAbsoluteGravity(0, 0) + 37, 447 - (ViewConfiguration.getEdgeSlop() >> 16), (char) (62723 - (ViewConfiguration.getTapTimeout() >> 16))).intern(), th, false);
        }
        WebChromeClient webChromeClient = this.f5728e;
        if ((webChromeClient != null ? 'a' : '7') != 'a') {
            return super.onJsBeforeUnload(webView, str, str2, jsResult);
        }
        boolean zOnJsBeforeUnload = webChromeClient.onJsBeforeUnload(webView, str, str2, jsResult);
        int i3 = c + 53;
        f5727d = i3 % 128;
        if ((i3 % 2 == 0 ? '4' : '.') == '.') {
            return zOnJsBeforeUnload;
        }
        throw null;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        int i = c + 95;
        f5727d = i % 128;
        try {
            if ((i % 2 == 0 ? ')' : (char) 14) != 14) {
                this.f5729f.onJsConfirm(webView, str, str2, jsResult);
                int i2 = 82 / 0;
            } else {
                this.f5729f.onJsConfirm(webView, str, str2, jsResult);
            }
        } catch (Throwable th) {
            jy.m987(a(TextUtils.lastIndexOf("", '0') + 25, (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) - 1, (char) (41179 - (ViewConfiguration.getEdgeSlop() >> 16))).intern(), a(32 - (ViewConfiguration.getKeyRepeatDelay() >> 16), Color.blue(0) + 384, (char) KeyEvent.normalizeMetaState(0)).intern(), th, false);
        }
        WebChromeClient webChromeClient = this.f5728e;
        if (webChromeClient == null) {
            return super.onJsConfirm(webView, str, str2, jsResult);
        }
        int i3 = c + 9;
        f5727d = i3 % 128;
        int i4 = i3 % 2;
        return webChromeClient.onJsConfirm(webView, str, str2, jsResult);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        try {
            this.f5729f.onJsPrompt(webView, str, str2, str3, jsPromptResult);
        } catch (Throwable th) {
            jy.m987(a((ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) + 23, (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) - 1, (char) (TextUtils.getOffsetBefore("", 0) + 41179)).intern(), a((ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 30, (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) + TypedValues.CycleType.TYPE_PATH_ROTATE, (char) KeyEvent.normalizeMetaState(0)).intern(), th, false);
        }
        WebChromeClient webChromeClient = this.f5728e;
        if (!(webChromeClient != null)) {
            return super.onJsPrompt(webView, str, str2, str3, jsPromptResult);
        }
        int i = c + 77;
        f5727d = i % 128;
        int i2 = i % 2;
        boolean zOnJsPrompt = webChromeClient.onJsPrompt(webView, str, str2, str3, jsPromptResult);
        int i3 = f5727d + 51;
        c = i3 % 128;
        if ((i3 % 2 != 0 ? 'T' : (char) 25) == 25) {
            return zOnJsPrompt;
        }
        int i4 = 78 / 0;
        return zOnJsPrompt;
    }

    @Override // android.webkit.WebChromeClient
    @Deprecated
    public boolean onJsTimeout() {
        try {
            this.f5729f.onJsTimeout();
            int i = f5727d + 11;
            c = i % 128;
            int i2 = i % 2;
        } catch (Throwable th) {
            jy.m987(a(24 - TextUtils.indexOf("", "", 0), ViewConfiguration.getScrollBarSize() >> 8, (char) ((ViewConfiguration.getMinimumFlingVelocity() >> 16) + 41179)).intern(), a(32 - View.resolveSize(0, 0), Color.red(0) + 726, (char) (14137 - Color.red(0))).intern(), th, false);
        }
        WebChromeClient webChromeClient = this.f5728e;
        if (webChromeClient == null) {
            return super.onJsTimeout();
        }
        int i3 = f5727d + 115;
        c = i3 % 128;
        int i4 = i3 % 2;
        return webChromeClient.onJsTimeout();
    }

    @Override // android.webkit.WebChromeClient
    public void onPermissionRequest(PermissionRequest permissionRequest) {
        int i = c + 67;
        f5727d = i % 128;
        try {
        } catch (Throwable th) {
            jy.m987(a(24 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), View.MeasureSpec.getSize(0), (char) (41179 - (ViewConfiguration.getTapTimeout() >> 16))).intern(), a(40 - TextUtils.indexOf("", "", 0), 638 - Color.blue(0), (char) ((AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 27476)).intern(), th, false);
        }
        if (i % 2 == 0) {
            this.f5729f.onPermissionRequest(permissionRequest);
            throw null;
        }
        this.f5729f.onPermissionRequest(permissionRequest);
        int i2 = f5727d + 69;
        c = i2 % 128;
        int i3 = i2 % 2;
        WebChromeClient webChromeClient = this.f5728e;
        if (webChromeClient == null) {
            super.onPermissionRequest(permissionRequest);
            return;
        }
        int i4 = c + 33;
        f5727d = i4 % 128;
        int i5 = i4 % 2;
        webChromeClient.onPermissionRequest(permissionRequest);
    }

    @Override // android.webkit.WebChromeClient
    public void onPermissionRequestCanceled(PermissionRequest permissionRequest) {
        int i = c + 115;
        f5727d = i % 128;
        try {
        } catch (Throwable th) {
            jy.m987(a((ViewConfiguration.getEdgeSlop() >> 16) + 24, (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) - 1, (char) (41179 - (ViewConfiguration.getScrollBarFadeDuration() >> 16))).intern(), a(48 - View.resolveSizeAndState(0, 0, 0), 678 - Color.argb(0, 0, 0, 0), (char) ((-1) - TextUtils.lastIndexOf("", '0'))).intern(), th, false);
        }
        if (i % 2 == 0) {
            this.f5729f.onPermissionRequestCanceled(permissionRequest);
            throw null;
        }
        this.f5729f.onPermissionRequestCanceled(permissionRequest);
        WebChromeClient webChromeClient = this.f5728e;
        if ((webChromeClient != null ? (char) 28 : b4.R) == 28) {
            webChromeClient.onPermissionRequestCanceled(permissionRequest);
            return;
        }
        super.onPermissionRequestCanceled(permissionRequest);
        int i2 = c + 29;
        f5727d = i2 % 128;
        int i3 = i2 % 2;
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        int i2 = c + 103;
        f5727d = i2 % 128;
        try {
        } catch (Throwable th) {
            jy.m987(a(MotionEvent.axisFromString("") + 25, TextUtils.indexOf((CharSequence) "", '0', 0) + 1, (char) (ExpandableListView.getPackedPositionGroup(0L) + 41179)).intern(), a((Process.myTid() >> 22) + 38, 23 - TextUtils.indexOf((CharSequence) "", '0'), (char) (((byte) KeyEvent.getModifierMetaStateMask()) + 1)).intern(), th, false);
        }
        if ((i2 % 2 == 0 ? '%' : 'A') == '%') {
            this.f5729f.onProgressChanged(webView, i);
            throw null;
        }
        this.f5729f.onProgressChanged(webView, i);
        WebChromeClient webChromeClient = this.f5728e;
        if (!(webChromeClient != null)) {
            super.onProgressChanged(webView, i);
            return;
        }
        int i3 = f5727d + 11;
        c = i3 % 128;
        if (i3 % 2 == 0) {
            webChromeClient.onProgressChanged(webView, i);
        } else {
            webChromeClient.onProgressChanged(webView, i);
            throw null;
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedIcon(WebView webView, Bitmap bitmap) {
        try {
            this.f5729f.onReceivedIcon(webView, bitmap);
        } catch (Throwable th) {
            jy.m987(a(TextUtils.indexOf("", "", 0, 0) + 24, ViewConfiguration.getTouchSlop() >> 8, (char) (View.MeasureSpec.makeMeasureSpec(0, 0) + 41179)).intern(), a(TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 36, KeyEvent.getDeadChar(0, 0) + 98, (char) (2424 - View.resolveSize(0, 0))).intern(), th, false);
        }
        WebChromeClient webChromeClient = this.f5728e;
        if (webChromeClient == null) {
            super.onReceivedIcon(webView, bitmap);
            int i = f5727d + 57;
            c = i % 128;
            if (!(i % 2 != 0)) {
                return;
            }
            int i2 = 92 / 0;
            return;
        }
        int i3 = f5727d + 37;
        c = i3 % 128;
        if (i3 % 2 == 0) {
            webChromeClient.onReceivedIcon(webView, bitmap);
        } else {
            webChromeClient.onReceivedIcon(webView, bitmap);
            int i4 = 49 / 0;
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTitle(WebView webView, String str) {
        int i = c + 119;
        f5727d = i % 128;
        try {
            if ((i % 2 == 0 ? '\"' : (char) 7) != '\"') {
                this.f5729f.onReceivedTitle(webView, str);
            } else {
                this.f5729f.onReceivedTitle(webView, str);
                int i2 = 55 / 0;
            }
        } catch (Throwable th) {
            jy.m987(a(Drawable.resolveOpacity(0, 0) + 24, KeyEvent.keyCodeFromString(""), (char) ((ViewConfiguration.getMaximumDrawingCacheSize() >> 24) + 41179)).intern(), a(35 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)), 61 - ((byte) KeyEvent.getModifierMetaStateMask()), (char) ((-1) - MotionEvent.axisFromString(""))).intern(), th, false);
        }
        WebChromeClient webChromeClient = this.f5728e;
        if (webChromeClient == null) {
            super.onReceivedTitle(webView, str);
            return;
        }
        int i3 = f5727d + 61;
        c = i3 % 128;
        boolean z = i3 % 2 == 0;
        webChromeClient.onReceivedTitle(webView, str);
        if (z) {
        } else {
            throw null;
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTouchIconUrl(WebView webView, String str, boolean z) {
        try {
            this.f5729f.onReceivedTouchIconUrl(webView, str, z);
        } catch (Throwable th) {
            jy.m987(a(23 - ((byte) KeyEvent.getModifierMetaStateMask()), ViewConfiguration.getDoubleTapTimeout() >> 16, (char) (KeyEvent.keyCodeFromString("") + 41179)).intern(), a((ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 44, (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 133, (char) View.MeasureSpec.getSize(0)).intern(), th, false);
        }
        WebChromeClient webChromeClient = this.f5728e;
        if (webChromeClient != null) {
            webChromeClient.onReceivedTouchIconUrl(webView, str, z);
            int i = c + 61;
            f5727d = i % 128;
            if ((i % 2 == 0 ? 'c' : (char) 15) == 15) {
                return;
            } else {
                throw null;
            }
        }
        super.onReceivedTouchIconUrl(webView, str, z);
        int i2 = f5727d + 95;
        c = i2 % 128;
        if (i2 % 2 != 0) {
            throw null;
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onRequestFocus(WebView webView) {
        try {
            this.f5729f.onRequestFocus(webView);
        } catch (Throwable th) {
            jy.m987(a(25 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)), 1 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)), (char) (41179 - TextUtils.indexOf("", ""))).intern(), a((ViewConfiguration.getEdgeSlop() >> 16) + 35, View.resolveSizeAndState(0, 0, 0) + 285, (char) ((ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 1)).intern(), th, false);
        }
        WebChromeClient webChromeClient = this.f5728e;
        if (webChromeClient == null) {
            super.onRequestFocus(webView);
            int i = c + 67;
            f5727d = i % 128;
            int i2 = i % 2;
            return;
        }
        int i3 = c + 13;
        f5727d = i3 % 128;
        int i4 = i3 % 2;
        webChromeClient.onRequestFocus(webView);
        int i5 = f5727d + 55;
        c = i5 % 128;
        if (i5 % 2 == 0) {
        } else {
            throw null;
        }
    }

    @Override // android.webkit.WebChromeClient
    @Deprecated
    public void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
        int i2 = f5727d + 97;
        c = i2 % 128;
        try {
        } catch (Throwable th) {
            jy.m987(a(24 - Color.blue(0), Process.getGidForName("") + 1, (char) (TextUtils.indexOf((CharSequence) "", '0', 0) + 41180)).intern(), a(37 - TextUtils.getOffsetAfter("", 0), 176 - (KeyEvent.getMaxKeyCode() >> 16), (char) ((-1) - Process.getGidForName(""))).intern(), th, false);
        }
        if (!(i2 % 2 == 0)) {
            this.f5729f.onShowCustomView(view, i, customViewCallback);
            throw null;
        }
        this.f5729f.onShowCustomView(view, i, customViewCallback);
        WebChromeClient webChromeClient = this.f5728e;
        if (webChromeClient == null) {
            super.onShowCustomView(view, i, customViewCallback);
            return;
        }
        webChromeClient.onShowCustomView(view, i, customViewCallback);
        int i3 = c + 59;
        f5727d = i3 % 128;
        if (!(i3 % 2 != 0)) {
            int i4 = 65 / 0;
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        int i = f5727d + 85;
        c = i % 128;
        int i2 = i % 2;
        try {
            this.f5729f.onShowCustomView(view, customViewCallback);
            int i3 = c + 25;
            f5727d = i3 % 128;
            int i4 = i3 % 2;
        } catch (Throwable th) {
            jy.m987(a(24 - View.combineMeasuredStates(0, 0), Process.getGidForName("") + 1, (char) (41179 - ExpandableListView.getPackedPositionGroup(0L))).intern(), a(38 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)), Gravity.getAbsoluteGravity(0, 0) + 176, (char) (KeyEvent.getMaxKeyCode() >> 16)).intern(), th, false);
        }
        WebChromeClient webChromeClient = this.f5728e;
        if ((webChromeClient != null ? (char) 6 : '9') != 6) {
            super.onShowCustomView(view, customViewCallback);
        } else {
            webChromeClient.onShowCustomView(view, customViewCallback);
        }
    }

    @Override // android.webkit.WebChromeClient
    public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        try {
            this.f5729f.onShowFileChooser(webView, valueCallback, fileChooserParams);
            int i = c + 45;
            f5727d = i % 128;
            int i2 = i % 2;
        } catch (Throwable th) {
            jy.m987(a((ViewConfiguration.getPressedStateDuration() >> 16) + 24, 1 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), (char) (TextUtils.lastIndexOf("", '0') + 41180)).intern(), a(39 - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)), 923 - TextUtils.getCapsMode("", 0, 0), (char) KeyEvent.keyCodeFromString("")).intern(), th, false);
        }
        WebChromeClient webChromeClient = this.f5728e;
        if (webChromeClient == null) {
            return super.onShowFileChooser(webView, valueCallback, fileChooserParams);
        }
        int i3 = c + 35;
        f5727d = i3 % 128;
        if ((i3 % 2 == 0 ? ':' : '(') != ':') {
            return webChromeClient.onShowFileChooser(webView, valueCallback, fileChooserParams);
        }
        webChromeClient.onShowFileChooser(webView, valueCallback, fileChooserParams);
        throw null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.at.e, com.json.adqualitysdk.sdk.i.p
    /* JADX INFO: renamed from: ﻐ */
    public abstract /* synthetic */ void mo226(JSONObject jSONObject, K k, T t);

    @Override // com.ironsource.adqualitysdk.sdk.i.at.e, com.json.adqualitysdk.sdk.i.p
    /* JADX INFO: renamed from: ﻐ */
    public abstract /* synthetic */ void mo227(JSONObject jSONObject, K k, Object obj, T t);

    @Override // com.ironsource.adqualitysdk.sdk.i.at.e, com.json.adqualitysdk.sdk.i.p
    /* JADX INFO: renamed from: ﻛ */
    public abstract /* synthetic */ void mo228(JSONObject jSONObject, K k, T t);

    @Override // com.ironsource.adqualitysdk.sdk.i.at.e, com.json.adqualitysdk.sdk.i.p
    /* JADX INFO: renamed from: ｋ */
    public abstract /* synthetic */ void mo229(JSONObject jSONObject, K k, T t);

    @Override // com.ironsource.adqualitysdk.sdk.i.at.e, com.json.adqualitysdk.sdk.i.p
    /* JADX INFO: renamed from: ﾇ */
    public abstract /* synthetic */ void mo230(JSONObject jSONObject, K k, T t);

    @Override // com.ironsource.adqualitysdk.sdk.i.at.e, com.json.adqualitysdk.sdk.i.p
    /* JADX INFO: renamed from: ﾇ */
    public abstract /* synthetic */ void mo231(JSONObject jSONObject, K k, Object obj, T t);

    @Override // com.json.adqualitysdk.sdk.i.cg
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo388(String str, List<Object> list, ch chVar) {
        byte b2 = -1;
        int iHashCode = str.hashCode();
        if (iHashCode == 1395849045) {
            if (str.equals(a(TextUtils.indexOf((CharSequence) "", '0', 0) + 21, Color.blue(0) + 986, (char) ((SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) + 14907)).intern())) {
                int i = c + 35;
                f5727d = i % 128;
                int i2 = i % 2;
                b2 = 1;
            }
        } else if (iHashCode == 1442029578 && str.equals(a(View.getDefaultSize(0, 0) + 25, TextUtils.indexOf((CharSequence) "", '0') + 962, (char) (1 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)))).intern())) {
            int i3 = f5727d + 47;
            c = i3 % 128;
            if (i3 % 2 != 0) {
            }
            b2 = 0;
        }
        if (b2 == 0) {
            return b();
        }
        if (b2 != 1) {
            return null;
        }
        return c();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.at.e, com.json.adqualitysdk.sdk.i.p
    /* JADX INFO: renamed from: ﾒ */
    public abstract /* synthetic */ void mo232(JSONObject jSONObject, K k, T t);

    @Override // com.ironsource.adqualitysdk.sdk.i.at.e, com.json.adqualitysdk.sdk.i.p
    /* JADX INFO: renamed from: ﾒ */
    public abstract /* synthetic */ void mo233(JSONObject jSONObject, K k, Object obj, T t);
}
