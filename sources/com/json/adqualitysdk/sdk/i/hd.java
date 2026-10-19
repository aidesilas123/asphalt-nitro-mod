package com.json.adqualitysdk.sdk.i;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.ImageFormat;
import android.graphics.PointF;
import android.media.AudioTrack;
import android.net.http.SslError;
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
import android.webkit.ClientCertRequest;
import android.webkit.HttpAuthHandler;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ExpandableListView;
import androidx.annotation.RequiresApi;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class hd extends WebViewClient implements cg, jl {
    private static int a = -769349520;
    private static int b = 124;
    private static int c = 265909430;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static byte[] f5717d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static short[] f5718e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static char f5719f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static char f5720g = 0;
    private static char h = 0;
    private static char i = 0;
    private static int j = 0;
    private static int k = 1;
    private WebViewClient l;
    private WebViewClient m;

    static {
        byte[] bArr = new byte[536];
        System.arraycopy("\u009a\u0003û\u0013ï\u0003\fþ!Ð\u0006\tüý)Ì\u0012ü\u0013ôý\u000e¶½úýMÁù\u0005\u0005\u0003ò#àú\u001dð\u0001û÷\u0000\rï'ëø÷\u0006\u0007õS®\r÷\tñ\u0001\n\u001dê\u000eçM²\u0005I®\u0003ý\u0000-¸½úýMÁù\u0005\u0005\u0003ò#àú\u001dð\u0001û÷\u0000\rï'ëø÷\u0006\u0007õS¬\u0006\tüý)Õ\u0005\u0002þ÷#âM²\u0005I®\u0003ý\u0000-ºµ\u0001\u000eð\u0004\fóJÁù\u0005\u0005\u0003ò#àú\u001dð\u0001û÷\u0000\rï'ëø÷\u0006\u0007õS®\r÷\tñ\u0001\n\u001dê\u000eçM²\u0005I®\u0003ý\u0000-¦ÿñ\u0002\u0011í!îþ\u0006\u0011âÿO®\r÷\tñ\u0001\n\u001dê\u000eçM²\u0005I®\u0003ý\u0000-§ÿýõ\nû\u0005#áþ\u0006\u0011âÿO®\r÷\tñ\u0001\n\u001dê\u000eçM²\u0005I®\u0003ý\u0000-¯\u0001\u000eð\u0004\f\u0013Þ\u0004\u000b\u0002ñ\rñ\u0006%åø÷\u0006\u0007õS®\r÷\tñ\u0001\n\u001dê\u000eçM²\u0005I®\u0003ý\u0000-¨\u0003ý\u0000-áÿï\r\u0004\u0002þ\u0013äÿO®\r÷\tñ\u0001\n\u001dê\u000eçM²\u0005I®\u0003ý\u0000-«ÿ\u0006ö\u0000\nü\u000bí\u0002\u000e\u0013åû\u0003)ØÿO®\r÷\tñ\u0001\n\u001dê\u000eçM²\u0005I®\u0003ý\u0000-¯\u0007\u0003û\u0001\n!äÿñ\u000bö\n\u0013ññ\u0013ýô\u001bæ\u000bD®\r÷\tñ\u0001\n\u001dê\u000eçM²\u0005I®\u0003ý\u0000-´\u0001\u000eð\u0004\f\u0013Þ\u0002\r\"Ï\u0006\tüý)ßÿï\r\u0004\u0002þ\u0013äÿO®\r÷\tñ\u0001\n\u001dê\u000eçM²\u0005I®\u0003ý\u0000-¬\u0006\tï1Ì\u0014\u001açÿù\bö\rùú\u0019çÿO®\r÷\tñ\u0001\n\u001dê\u000eçM²\u0005I®\u0003ý\u0000-¬÷ÿ(Ô\u0000\u000e\u0002ôý\"Þ\r\u0001ö\t\u0013äÿO®\r÷\tñ\u0001\n\u001dê\u000eçM²\u0005I®\u0003ý\u0000-".getBytes("ISO-8859-1"), 0, bArr, 0, 536);
        f5717d = bArr;
        h = (char) 19737;
        f5720g = (char) 53635;
        i = (char) 4877;
        f5719f = (char) 25160;
    }

    public hd(WebViewClient webViewClient, WebViewClient webViewClient2) {
        this.l = webViewClient;
        this.m = webViewClient2;
    }

    @RequiresApi(api = 24)
    private boolean a(WebView webView, WebResourceRequest webResourceRequest, boolean z) {
        int i2 = k + 11;
        j = i2 % 128;
        int i3 = i2 % 2;
        try {
        } catch (Throwable th) {
            jy.m987(d(TextUtils.lastIndexOf("", '0') - 124, (-265909343) - Color.green(0), (byte) (ViewConfiguration.getPressedStateDuration() >> 16), (short) ExpandableListView.getPackedPositionType(0L), ImageFormat.getBitsPerPixel(0) + 769349521).intern(), d((-125) - KeyEvent.keyCodeFromString(""), (-265909361) - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), (byte) TextUtils.getOffsetBefore("", 0), (short) (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)), 769349644 - (ViewConfiguration.getMinimumFlingVelocity() >> 16)).intern(), th, false);
        }
        if (!this.m.shouldOverrideUrlLoading(webView, webResourceRequest)) {
            if (!(z)) {
                int i4 = k + 111;
                j = i4 % 128;
                int i5 = i4 % 2;
                WebViewClient webViewClient = this.l;
                if (!(webViewClient == null)) {
                    try {
                        return webViewClient.shouldOverrideUrlLoading(webView, webResourceRequest);
                    } catch (Throwable th2) {
                        jy.m987(d((ViewConfiguration.getEdgeSlop() >> 16) - 125, (-265909343) - (ViewConfiguration.getKeyRepeatDelay() >> 16), (byte) TextUtils.getCapsMode("", 0, 0), (short) TextUtils.getOffsetBefore("", 0), TextUtils.indexOf((CharSequence) "", '0') + 769349521).intern(), f("긶孬\ue7d1\uf360\ue507┄\uf5b4ᚒ笀뮣\ue503キ༐좟\uf5b4ᚒꧺ쪵㡼傰탆\udba2孵懦坬賾\t毹㐎ᠲ耻圚췌\ue1ef獬뺒팈홮뛭흸\uee47튌㨥榳\uf5b4ᚒ꾑羥弊ꩄꆢ鬒ⴐ唤튤狵", ExpandableListView.getPackedPositionType(0L) + 56).intern(), th2, false);
                    }
                }
                boolean zShouldOverrideUrlLoading = super.shouldOverrideUrlLoading(webView, webResourceRequest);
                int i6 = j + 97;
                k = i6 % 128;
                if (i6 % 2 != 0) {
                    return zShouldOverrideUrlLoading;
                }
                throw null;
            }
        }
        WebViewClient webViewClient2 = this.l;
        if (webViewClient2 instanceof hd) {
            ((hd) webViewClient2).a(webView, webResourceRequest, true);
        }
        return true;
    }

    private boolean b(WebView webView, String str, boolean z) {
        try {
            if (this.m.shouldOverrideUrlLoading(webView, str) || z) {
                WebViewClient webViewClient = this.l;
                if ((webViewClient instanceof hd ? (char) 16 : (char) 0) == 16) {
                    int i2 = j + 83;
                    k = i2 % 128;
                    (i2 % 2 == 0 ? (hd) webViewClient : (hd) webViewClient).b(webView, str, true);
                }
                int i3 = j + 67;
                k = i3 % 128;
                int i4 = i3 % 2;
                return true;
            }
        } catch (Throwable th) {
            jy.m987(d((-124) - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)), ((byte) KeyEvent.getModifierMetaStateMask()) - 265909342, (byte) KeyEvent.keyCodeFromString(""), (short) TextUtils.indexOf("", "", 0), 769349520 - View.MeasureSpec.getSize(0)).intern(), d(Process.getGidForName("") - 124, (-265909361) - (ViewConfiguration.getPressedStateDuration() >> 16), (byte) (TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 1), (short) (Process.getGidForName("") + 1), 769349543 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1))).intern(), th, false);
        }
        if (c()) {
            try {
                boolean zShouldOverrideUrlLoading = this.l.shouldOverrideUrlLoading(webView, str);
                int i5 = j + 3;
                k = i5 % 128;
                if (i5 % 2 != 0) {
                    return zShouldOverrideUrlLoading;
                }
                throw null;
            } catch (Throwable th2) {
                jy.m987(d(View.resolveSizeAndState(0, 0, 0) - 125, Color.green(0) - 265909343, (byte) ExpandableListView.getPackedPositionType(0L), (short) (Process.myPid() >> 22), 769349520 - TextUtils.indexOf("", "", 0, 0)).intern(), d((ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) - 125, (ViewConfiguration.getJumpTapTimeout() >> 16) - 265909361, (byte) (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)), (short) (ViewConfiguration.getScrollBarSize() >> 8), 769349592 - View.MeasureSpec.getSize(0)).intern(), th2, false);
            }
        }
        return super.shouldOverrideUrlLoading(webView, str);
    }

    private boolean c() {
        int i2 = j + 91;
        k = i2 % 128;
        int i3 = i2 % 2;
        WebViewClient webViewClient = this.l;
        if ((webViewClient != null ? '?' : '*') != '*') {
            if ((!webViewClient.getClass().equals(WebViewClient.class) ? (char) 25 : 'a') != 'a') {
                int i4 = k + 25;
                j = i4 % 128;
                if (i4 % 2 == 0) {
                    return true;
                }
            }
        }
        return false;
    }

    private static String d(int i2, int i3, byte b2, short s, int i4) {
        String string;
        synchronized (n.f132) {
            StringBuilder sb = new StringBuilder();
            int i5 = b;
            int i6 = i2 + i5;
            boolean z = i6 == -1;
            if (z) {
                byte[] bArr = f5717d;
                i6 = bArr != null ? (byte) (bArr[a + i4] + i5) : (short) (f5718e[a + i4] + i5);
            }
            if (i6 > 0) {
                n.f136 = ((i4 + i6) - 2) + a + (z ? 1 : 0);
                n.f135 = b2;
                char c2 = (char) (i3 + c);
                n.f133 = c2;
                sb.append(c2);
                n.f134 = n.f133;
                n.f137 = 1;
                while (n.f137 < i6) {
                    byte[] bArr2 = f5717d;
                    if (bArr2 != null) {
                        int i7 = n.f136;
                        n.f136 = i7 - 1;
                        n.f133 = (char) (n.f134 + (((byte) (bArr2[i7] + s)) ^ n.f135));
                    } else {
                        short[] sArr = f5718e;
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

    private Object e() {
        WebViewClient webViewClient;
        int i2 = k + 67;
        int i3 = i2 % 128;
        j = i3;
        if ((i2 % 2 != 0 ? (char) 27 : 'T') != 'T') {
            webViewClient = this.m;
            int i4 = 36 / 0;
        } else {
            webViewClient = this.m;
        }
        int i5 = i3 + 13;
        k = i5 % 128;
        int i6 = i5 % 2;
        return webViewClient;
    }

    private static String f(String str, int i2) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (o.f139) {
            char[] cArr2 = new char[cArr.length];
            o.f138 = 0;
            char[] cArr3 = new char[2];
            while (true) {
                int i3 = o.f138;
                if (i3 < cArr.length) {
                    cArr3[0] = cArr[i3];
                    cArr3[1] = cArr[i3 + 1];
                    int i4 = 58224;
                    for (int i5 = 0; i5 < 16; i5++) {
                        cArr3[1] = (char) (cArr3[1] - (((cArr3[0] + i4) ^ ((cArr3[0] << 4) + h)) ^ ((cArr3[0] >>> 5) + i)));
                        cArr3[0] = (char) (cArr3[0] - (((cArr3[1] + i4) ^ ((cArr3[1] << 4) + f5719f)) ^ ((cArr3[1] >>> 5) + f5720g)));
                        i4 -= 40503;
                    }
                    int i6 = o.f138;
                    cArr2[i6] = cArr3[0];
                    cArr2[i6 + 1] = cArr3[1];
                    o.f138 = i6 + 2;
                } else {
                    str2 = new String(cArr2, 0, i2);
                }
            }
        }
        return str2;
    }

    @Override // android.webkit.WebViewClient
    public void doUpdateVisitedHistory(WebView webView, String str, boolean z) {
        int i2 = j + 83;
        k = i2 % 128;
        int i3 = i2 % 2;
        try {
            this.m.doUpdateVisitedHistory(webView, str, z);
        } catch (Throwable th) {
            jy.m987(d((-125) - View.MeasureSpec.makeMeasureSpec(0, 0), (-265909343) - View.getDefaultSize(0, 0), (byte) Gravity.getAbsoluteGravity(0, 0), (short) Color.alpha(0), 22464 - AndroidCharacter.getMirror('0')).intern(), d(View.resolveSize(0, 0) - 125, View.getDefaultSize(0, 0) - 265909361, (byte) (ViewConfiguration.getFadingEdgeLength() >> 16), (short) Color.blue(0), 769349885 - KeyEvent.keyCodeFromString("")).intern(), th, false);
        }
        WebViewClient webViewClient = this.l;
        if ((webViewClient != null ? '-' : 'D') == 'D') {
            super.doUpdateVisitedHistory(webView, str, z);
            return;
        }
        int i4 = j + 73;
        k = i4 % 128;
        boolean z2 = i4 % 2 != 0;
        webViewClient.doUpdateVisitedHistory(webView, str, z);
        if (z2) {
            return;
        }
        int i5 = 59 / 0;
    }

    @Override // android.webkit.WebViewClient
    public void onFormResubmission(WebView webView, Message message, Message message2) {
        int i2 = k + 29;
        j = i2 % 128;
        try {
        } catch (Throwable th) {
            jy.m987(d((-125) - (ViewConfiguration.getFadingEdgeLength() >> 16), (ViewConfiguration.getTapTimeout() >> 16) - 265909343, (byte) TextUtils.getCapsMode("", 0, 0), (short) (ViewConfiguration.getMaximumDrawingCacheSize() >> 24), View.MeasureSpec.getSize(0) + 769349520).intern(), d((PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) - 125, (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) - 265909361, (byte) (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)), (short) ((ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 1), Gravity.getAbsoluteGravity(0, 0) + 769349846).intern(), th, false);
        }
        if ((i2 % 2 != 0 ? ';' : '\'') != '\'') {
            this.m.onFormResubmission(webView, message, message2);
            throw null;
        }
        this.m.onFormResubmission(webView, message, message2);
        WebViewClient webViewClient = this.l;
        if ((webViewClient != null ? 'L' : '?') != '?') {
            int i3 = k + 1;
            j = i3 % 128;
            if (i3 % 2 == 0) {
                webViewClient.onFormResubmission(webView, message, message2);
                return;
            } else {
                webViewClient.onFormResubmission(webView, message, message2);
                throw null;
            }
        }
        super.onFormResubmission(webView, message, message2);
        int i4 = j + 111;
        k = i4 % 128;
        if ((i4 % 2 == 0 ? 'B' : '\r') != '\r') {
            int i5 = 33 / 0;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView webView, String str) {
        int i2 = k + 67;
        j = i2 % 128;
        int i3 = i2 % 2;
        try {
            this.m.onLoadResource(webView, str);
        } catch (Throwable th) {
            jy.m987(d(TextUtils.indexOf((CharSequence) "", '0') - 124, (-265909343) - Color.red(0), (byte) View.resolveSizeAndState(0, 0, 0), (short) ((-1) - TextUtils.lastIndexOf("", '0')), 769349520 - View.combineMeasuredStates(0, 0)).intern(), f("긶孬\ue7d1\uf360\ue507┄\uf5b4ᚒ笀뮣࢙吸饟煕쪉夆圙\ueae4ᕑ帹킭깦㞯\ue3ea阽ﶹ珤幷ⴐ唤럜咆Ⴞ귒冇礵", 36 - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1))).intern(), th, false);
        }
        WebViewClient webViewClient = this.l;
        if (webViewClient == null) {
            super.onLoadResource(webView, str);
            return;
        }
        int i4 = j + 1;
        k = i4 % 128;
        int i5 = i4 % 2;
        webViewClient.onLoadResource(webView, str);
        int i6 = j + 21;
        k = i6 % 128;
        int i7 = i6 % 2;
    }

    @Override // android.webkit.WebViewClient
    @RequiresApi(api = 23)
    public void onPageCommitVisible(WebView webView, String str) {
        try {
            this.m.onPageCommitVisible(webView, str);
        } catch (Throwable th) {
            jy.m987(d(Color.green(0) - 125, (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) - 265909344, (byte) Gravity.getAbsoluteGravity(0, 0), (short) TextUtils.indexOf("", "", 0, 0), 769349519 - MotionEvent.axisFromString("")).intern(), d((ViewConfiguration.getFadingEdgeLength() >> 16) - 125, (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) - 265909362, (byte) ((Process.getThreadPriority(0) + 20) >> 6), (short) ((AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) - 1), 769349698 - View.getDefaultSize(0, 0)).intern(), th, false);
        }
        WebViewClient webViewClient = this.l;
        if (webViewClient == null) {
            super.onPageCommitVisible(webView, str);
            return;
        }
        int i2 = j + 39;
        k = i2 % 128;
        int i3 = i2 % 2;
        webViewClient.onPageCommitVisible(webView, str);
        int i4 = j + 45;
        k = i4 % 128;
        int i5 = i4 % 2;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        int i2 = k + 95;
        j = i2 % 128;
        try {
            if (i2 % 2 != 0) {
                this.m.onPageFinished(webView, str);
                int i3 = 59 / 0;
            } else {
                this.m.onPageFinished(webView, str);
            }
        } catch (Throwable th) {
            jy.m987(d((-125) - (Process.myTid() >> 22), Color.green(0) - 265909343, (byte) (ViewConfiguration.getMaximumFlingVelocity() >> 16), (short) (1 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1))), 769349520 - Color.alpha(0)).intern(), d((-125) - (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)), (ViewConfiguration.getPressedStateDuration() >> 16) - 265909361, (byte) (1 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1))), (short) ((-1) - Process.getGidForName("")), 769349732 - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1))).intern(), th, false);
        }
        WebViewClient webViewClient = this.l;
        if ((webViewClient != null ? '9' : 'Q') == 'Q') {
            super.onPageFinished(webView, str);
            return;
        }
        int i4 = j + 99;
        k = i4 % 128;
        boolean z = i4 % 2 != 0;
        webViewClient.onPageFinished(webView, str);
        if (z) {
        } else {
            throw null;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        int i2 = j + 97;
        k = i2 % 128;
        int i3 = i2 % 2;
        try {
            this.m.onPageStarted(webView, str, bitmap);
        } catch (Throwable th) {
            jy.m987(d((-126) - TextUtils.lastIndexOf("", '0', 0), View.combineMeasuredStates(0, 0) - 265909343, (byte) TextUtils.indexOf("", "", 0), (short) TextUtils.indexOf("", "", 0), 769349519 - ImageFormat.getBitsPerPixel(0)).intern(), d((SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) - 126, (ViewConfiguration.getTapTimeout() >> 16) - 265909361, (byte) (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)), (short) (TextUtils.indexOf((CharSequence) "", '0', 0) + 1), 769349698 - (ViewConfiguration.getPressedStateDuration() >> 16)).intern(), th, false);
        }
        WebViewClient webViewClient = this.l;
        if ((webViewClient != null ? (char) 21 : '+') == '+') {
            super.onPageStarted(webView, str, bitmap);
            return;
        }
        int i4 = j + 5;
        k = i4 % 128;
        int i5 = i4 % 2;
        webViewClient.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    @RequiresApi(api = 21)
    public void onReceivedClientCertRequest(WebView webView, ClientCertRequest clientCertRequest) {
        int i2 = j + 1;
        k = i2 % 128;
        try {
        } catch (Throwable th) {
            jy.m987(d((-125) - (ViewConfiguration.getTouchSlop() >> 8), (-265909344) - TextUtils.indexOf((CharSequence) "", '0', 0, 0), (byte) (1 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1))), (short) ((-1) - TextUtils.indexOf((CharSequence) "", '0', 0)), (ViewConfiguration.getMaximumDrawingCacheSize() >> 24) + 769349520).intern(), d((-124) - (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)), ExpandableListView.getPackedPositionChild(0L) - 265909360, (byte) View.MeasureSpec.makeMeasureSpec(0, 0), (short) KeyEvent.normalizeMetaState(0), TextUtils.indexOf("", "", 0) + 769349928).intern(), th, false);
        }
        if (i2 % 2 == 0) {
            this.m.onReceivedClientCertRequest(webView, clientCertRequest);
            throw null;
        }
        this.m.onReceivedClientCertRequest(webView, clientCertRequest);
        WebViewClient webViewClient = this.l;
        if ((webViewClient != null ? '-' : (char) 20) != '-') {
            super.onReceivedClientCertRequest(webView, clientCertRequest);
            int i3 = j + 97;
            k = i3 % 128;
            if (i3 % 2 == 0) {
                throw null;
            }
            return;
        }
        int i4 = k + 103;
        j = i4 % 128;
        if (!(i4 % 2 != 0)) {
            webViewClient.onReceivedClientCertRequest(webView, clientCertRequest);
        } else {
            webViewClient.onReceivedClientCertRequest(webView, clientCertRequest);
            throw null;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i2, String str, String str2) {
        try {
            this.m.onReceivedError(webView, i2, str, str2);
        } catch (Throwable th) {
            jy.m987(d((-125) - (ViewConfiguration.getKeyRepeatDelay() >> 16), (-265909342) - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)), (byte) (ViewConfiguration.getMinimumFlingVelocity() >> 16), (short) (Process.myTid() >> 22), Color.alpha(0) + 769349520).intern(), d((-124) - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)), (-265909362) - TextUtils.indexOf((CharSequence) "", '0', 0, 0), (byte) (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)), (short) (ViewConfiguration.getMaximumDrawingCacheSize() >> 24), (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) + 769349809).intern(), th, false);
        }
        WebViewClient webViewClient = this.l;
        if (webViewClient == null) {
            super.onReceivedError(webView, i2, str, str2);
            int i3 = k + 41;
            j = i3 % 128;
            int i4 = i3 % 2;
            return;
        }
        int i5 = j + 51;
        k = i5 % 128;
        int i6 = i5 % 2;
        webViewClient.onReceivedError(webView, i2, str, str2);
    }

    @Override // android.webkit.WebViewClient
    @RequiresApi(api = 23)
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        int i2 = k + 11;
        j = i2 % 128;
        try {
            if (i2 % 2 != 0) {
                this.m.onReceivedError(webView, webResourceRequest, webResourceError);
                int i3 = 7 / 0;
            } else {
                this.m.onReceivedError(webView, webResourceRequest, webResourceError);
            }
        } catch (Throwable th) {
            jy.m987(d(View.MeasureSpec.getSize(0) - 125, KeyEvent.keyCodeFromString("") - 265909343, (byte) ((SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) - 1), (short) Color.green(0), 769349520 - View.getDefaultSize(0, 0)).intern(), d(KeyEvent.keyCodeFromString("") - 125, (-265909360) - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)), (byte) (ViewConfiguration.getMaximumFlingVelocity() >> 16), (short) View.combineMeasuredStates(0, 0), TextUtils.indexOf((CharSequence) "", '0') + 769349811).intern(), th, false);
        }
        WebViewClient webViewClient = this.l;
        if (!(webViewClient != null)) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            return;
        }
        int i4 = k + 111;
        j = i4 % 128;
        int i5 = i4 % 2;
        webViewClient.onReceivedError(webView, webResourceRequest, webResourceError);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpAuthRequest(WebView webView, HttpAuthHandler httpAuthHandler, String str, String str2) {
        int i2 = k + 99;
        j = i2 % 128;
        try {
            if (i2 % 2 != 0) {
                this.m.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
                int i3 = 12 / 0;
            } else {
                this.m.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
            }
        } catch (Throwable th) {
            jy.m987(d((Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) - 126, (-265909343) - ((Process.getThreadPriority(0) + 20) >> 6), (byte) (ViewConfiguration.getJumpTapTimeout() >> 16), (short) KeyEvent.normalizeMetaState(0), 769349520 - Color.green(0)).intern(), f("긶孬\ue7d1\uf360\ue507┄\uf5b4ᚒ笀뮣࢙吸饟煕쪉夆圙\ueae4ᕑ帹킭깦礚\udd04뱔ፘ돂陰耻圚丷䜰㲝훇퇕\uddf5\ue2c8Ꮠ\ued99濾뺊騢쁰䗹쪉夆", 46 - (ViewConfiguration.getKeyRepeatTimeout() >> 16)).intern(), th, false);
        }
        WebViewClient webViewClient = this.l;
        if ((webViewClient != null ? '#' : 'N') != '#') {
            super.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
            return;
        }
        int i4 = j + 59;
        k = i4 % 128;
        if (i4 % 2 == 0) {
            webViewClient.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
            throw null;
        }
        webViewClient.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
    }

    @Override // android.webkit.WebViewClient
    @RequiresApi(api = 23)
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        int i2 = k + 19;
        j = i2 % 128;
        int i3 = i2 % 2;
        try {
            this.m.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        } catch (Throwable th) {
            jy.m987(d((ViewConfiguration.getTouchSlop() >> 8) - 125, (-265909344) - TextUtils.lastIndexOf("", '0', 0), (byte) (1 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1))), (short) (ViewConfiguration.getScrollDefaultDelay() >> 16), (ViewConfiguration.getScrollBarFadeDuration() >> 16) + 769349520).intern(), f("긶孬\ue7d1\uf360\ue507┄\uf5b4ᚒ笀뮣࢙吸饟煕쪉夆圙\ueae4ᕑ帹킭깦礚\udd04뱔ፘ돂陰耻圚丷䜰㲝훇⸃俎췌\ue1ef惩᳨", TextUtils.getOffsetBefore("", 0) + 40).intern(), th, false);
        }
        WebViewClient webViewClient = this.l;
        if (webViewClient == null) {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            return;
        }
        int i4 = j + 99;
        k = i4 % 128;
        int i5 = i4 % 2;
        webViewClient.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedLoginRequest(WebView webView, String str, String str2, String str3) {
        int i2 = j + 9;
        k = i2 % 128;
        int i3 = i2 % 2;
        try {
            this.m.onReceivedLoginRequest(webView, str, str2, str3);
        } catch (Throwable th) {
            jy.m987(d((-125) - TextUtils.getOffsetAfter("", 0), (-265909343) - Color.green(0), (byte) (ViewConfiguration.getMinimumFlingVelocity() >> 16), (short) (ViewConfiguration.getScrollBarFadeDuration() >> 16), ExpandableListView.getPackedPositionChild(0L) + 769349521).intern(), f("긶孬\ue7d1\uf360\ue507┄\uf5b4ᚒ笀뮣࢙吸饟煕쪉夆圙\ueae4ᕑ帹킭깦礚\udd04뱔ፘ돂陰耻圚\ue0af迕\uf3e4꺞\uf5b4ᚒ껫\u09d9ꆢ鬒ⴐ唤夝ㆻ", (ViewConfiguration.getMaximumFlingVelocity() >> 16) + 43).intern(), th, false);
        }
        WebViewClient webViewClient = this.l;
        if ((webViewClient != null ? '\n' : '\b') == '\b') {
            super.onReceivedLoginRequest(webView, str, str2, str3);
            int i4 = k + 75;
            j = i4 % 128;
            int i5 = i4 % 2;
            return;
        }
        int i6 = j + 45;
        k = i6 % 128;
        char c2 = i6 % 2 == 0 ? 'c' : (char) 27;
        webViewClient.onReceivedLoginRequest(webView, str, str2, str3);
        if (c2 != 'c') {
        } else {
            throw null;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        int i2 = j + 61;
        k = i2 % 128;
        int i3 = i2 % 2;
        try {
            this.m.onReceivedSslError(webView, sslErrorHandler, sslError);
        } catch (Throwable th) {
            jy.m987(d((-125) - TextUtils.indexOf("", "", 0, 0), TextUtils.getCapsMode("", 0, 0) - 265909343, (byte) ((AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) - 1), (short) TextUtils.getOffsetBefore("", 0), 769349520 - (ViewConfiguration.getTapTimeout() >> 16)).intern(), f("긶孬\ue7d1\uf360\ue507┄\uf5b4ᚒ笀뮣࢙吸饟煕쪉夆圙\ueae4ᕑ帹킭깦礚\udd04뱔ፘ돂陰耻圚팞詁쁆ᔆ긶孬\ue7d1\uf360ﮝ尣", 38 - TextUtils.indexOf((CharSequence) "", '0', 0, 0)).intern(), th, false);
        }
        WebViewClient webViewClient = this.l;
        if ((webViewClient != null ? (char) 3 : ':') != ':') {
            int i4 = k + 93;
            j = i4 % 128;
            int i5 = i4 % 2;
            webViewClient.onReceivedSslError(webView, sslErrorHandler, sslError);
            return;
        }
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        int i6 = j + 97;
        k = i6 % 128;
        if ((i6 % 2 == 0 ? '-' : (char) 30) != 30) {
            int i7 = 58 / 0;
        }
    }

    @Override // android.webkit.WebViewClient
    @RequiresApi(api = 26)
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        int i2 = k + 119;
        j = i2 % 128;
        int i3 = i2 % 2;
        try {
            this.m.onRenderProcessGone(webView, renderProcessGoneDetail);
        } catch (Throwable th) {
            jy.m987(d((ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) - 126, View.resolveSize(0, 0) - 265909343, (byte) (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)), (short) (TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 1), 769349520 - (ViewConfiguration.getTapTimeout() >> 16)).intern(), d(TextUtils.indexOf((CharSequence) "", '0') - 124, (-265909361) - (KeyEvent.getMaxKeyCode() >> 16), (byte) (AndroidCharacter.getMirror('0') - '0'), (short) ((-1) - MotionEvent.axisFromString("")), (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) + 769350016).intern(), th, false);
        }
        WebViewClient webViewClient = this.l;
        if ((webViewClient != null ? '+' : '[') != '+') {
            int i4 = k + 13;
            j = i4 % 128;
            int i5 = i4 % 2;
            return true;
        }
        int i6 = k + 47;
        j = i6 % 128;
        int i7 = i6 % 2;
        return webViewClient.onRenderProcessGone(webView, renderProcessGoneDetail);
    }

    @Override // android.webkit.WebViewClient
    public void onScaleChanged(WebView webView, float f2, float f3) {
        int i2 = j + 15;
        k = i2 % 128;
        int i3 = i2 % 2;
        try {
            this.m.onScaleChanged(webView, f2, f3);
        } catch (Throwable th) {
            jy.m987(d(View.MeasureSpec.makeMeasureSpec(0, 0) - 125, (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) - 265909344, (byte) KeyEvent.getDeadChar(0, 0), (short) KeyEvent.keyCodeFromString(""), (ViewConfiguration.getMaximumFlingVelocity() >> 16) + 769349520).intern(), f("긶孬\ue7d1\uf360\ue507┄\uf5b4ᚒ笀뮣࢙吸饟煕쪉夆圙\ueae4ᕑ帹킭깦㙭ﴹ亯ꜘ훎㓚鮊\uf4f1\u0ff7挈ꭙ謅䝮㤉", 35 - Color.red(0)).intern(), th, false);
        }
        WebViewClient webViewClient = this.l;
        if ((webViewClient != null ? '7' : (char) 0) != '7') {
            super.onScaleChanged(webView, f2, f3);
            return;
        }
        int i4 = k + 67;
        j = i4 % 128;
        int i5 = i4 % 2;
        webViewClient.onScaleChanged(webView, f2, f3);
        int i6 = k + 19;
        j = i6 % 128;
        int i7 = i6 % 2;
    }

    @Override // android.webkit.WebViewClient
    public void onTooManyRedirects(WebView webView, Message message, Message message2) {
        try {
            this.m.onTooManyRedirects(webView, message, message2);
            int i2 = k + 57;
            j = i2 % 128;
            int i3 = i2 % 2;
        } catch (Throwable th) {
            jy.m987(d((TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)) - 125, (-265909342) - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)), (byte) (ViewConfiguration.getJumpTapTimeout() >> 16), (short) ((-1) - TextUtils.indexOf((CharSequence) "", '0', 0, 0)), 769349520 - View.combineMeasuredStates(0, 0)).intern(), f("긶孬\ue7d1\uf360\ue507┄\uf5b4ᚒ笀뮣࢙吸饟煕쪉夆圙\ueae4ᕑ帹킭깦裨璗\udca4냊ಈ熋ㄝ휫껫\u09d9쭱㦑弊ꩄ꿇둪铡觗", 39 - TextUtils.indexOf("", "")).intern(), th, false);
        }
        WebViewClient webViewClient = this.l;
        if (webViewClient != null) {
            int i4 = j + 13;
            k = i4 % 128;
            int i5 = i4 % 2;
            webViewClient.onTooManyRedirects(webView, message, message2);
            return;
        }
        super.onTooManyRedirects(webView, message, message2);
        int i6 = j + 55;
        k = i6 % 128;
        int i7 = i6 % 2;
    }

    @Override // android.webkit.WebViewClient
    public void onUnhandledKeyEvent(WebView webView, KeyEvent keyEvent) {
        int i2 = j + 93;
        k = i2 % 128;
        int i3 = 1;
        try {
            if (!(i2 % 2 == 0)) {
                this.m.onUnhandledKeyEvent(webView, keyEvent);
            } else {
                this.m.onUnhandledKeyEvent(webView, keyEvent);
                int i4 = 40 / 0;
            }
            int i5 = j + 75;
            i3 = i5 % 128;
            k = i3;
            int i6 = i5 % 2;
        } catch (Throwable th) {
            jy.m987(d(TextUtils.getOffsetBefore("", 0) - 125, (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) - 265909344, (byte) (ViewConfiguration.getScrollBarFadeDuration() >> 16), (short) (TextUtils.indexOf((CharSequence) "", '0', 0, 0) + i3), 769349519 - TextUtils.lastIndexOf("", '0', 0, 0)).intern(), d(View.getDefaultSize(0, 0) - 125, (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) - 265909362, (byte) (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)), (short) KeyEvent.normalizeMetaState(0), (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)) + 769349976).intern(), th, false);
        }
        WebViewClient webViewClient = this.l;
        if (webViewClient == null) {
            super.onUnhandledKeyEvent(webView, keyEvent);
            return;
        }
        int i7 = k + 115;
        j = i7 % 128;
        int i8 = i7 % 2;
        webViewClient.onUnhandledKeyEvent(webView, keyEvent);
    }

    @Override // android.webkit.WebViewClient
    @RequiresApi(api = 21)
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        try {
            this.m.shouldInterceptRequest(webView, webResourceRequest);
        } catch (Throwable th) {
            jy.m987(d((-125) - TextUtils.getOffsetAfter("", 0), (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) - 265909342, (byte) (TextUtils.lastIndexOf("", '0', 0) + 1), (short) ((ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) - 1), (ViewConfiguration.getMinimumFlingVelocity() >> 16) + 769349520).intern(), d((-125) - (ViewConfiguration.getPressedStateDuration() >> 16), TextUtils.getCapsMode("", 0, 0) - 265909361, (byte) Color.alpha(0), (short) KeyEvent.normalizeMetaState(0), TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 769349768).intern(), th, false);
        }
        WebViewClient webViewClient = this.l;
        if ((webViewClient != null ? '7' : '<') != '7') {
            WebResourceResponse webResourceResponseShouldInterceptRequest = super.shouldInterceptRequest(webView, webResourceRequest);
            int i2 = j + 49;
            k = i2 % 128;
            int i3 = i2 % 2;
            return webResourceResponseShouldInterceptRequest;
        }
        WebResourceResponse webResourceResponseShouldInterceptRequest2 = webViewClient.shouldInterceptRequest(webView, webResourceRequest);
        int i4 = k + 37;
        j = i4 % 128;
        if ((i4 % 2 != 0 ? '\'' : (char) 4) != '\'') {
            return webResourceResponseShouldInterceptRequest2;
        }
        throw null;
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        int i2 = k + 91;
        j = i2 % 128;
        try {
            if ((i2 % 2 != 0 ? (char) 21 : (char) 25) != 21) {
                this.m.shouldInterceptRequest(webView, str);
            } else {
                this.m.shouldInterceptRequest(webView, str);
                int i3 = 62 / 0;
            }
        } catch (Throwable th) {
            jy.m987(d((Process.myTid() >> 22) - 125, (Process.myPid() >> 22) - 265909343, (byte) (ViewConfiguration.getPressedStateDuration() >> 16), (short) (1 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1))), 769349520 - (ViewConfiguration.getMaximumFlingVelocity() >> 16)).intern(), d((-125) - (ViewConfiguration.getEdgeSlop() >> 16), (-265909361) - Color.argb(0, 0, 0, 0), (byte) ((-1) - TextUtils.lastIndexOf("", '0', 0)), (short) TextUtils.indexOf("", ""), 769349767 - (KeyEvent.getMaxKeyCode() >> 16)).intern(), th, false);
        }
        WebViewClient webViewClient = this.l;
        if (!(webViewClient != null)) {
            return super.shouldInterceptRequest(webView, str);
        }
        int i4 = k + 35;
        j = i4 % 128;
        int i5 = i4 % 2;
        return webViewClient.shouldInterceptRequest(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        try {
            this.m.shouldOverrideKeyEvent(webView, keyEvent);
            int i2 = j + 101;
            k = i2 % 128;
            int i3 = i2 % 2;
        } catch (Throwable th) {
            jy.m987(d(TextUtils.indexOf((CharSequence) "", '0', 0) - 124, (-265909343) - (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)), (byte) KeyEvent.keyCodeFromString(""), (short) ((ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 1), 769349520 - (ViewConfiguration.getTouchSlop() >> 8)).intern(), f("긶孬\ue7d1\uf360\ue507┄\uf5b4ᚒ笀뮣࢙吸饟煕쪉夆圙\ueae4ᕑ帹孵懦坬賾\t毹㐎ᠲ耻圚췌\ue1ef獬뺒익䍝쪮㐃䝔Ǝ圙\ueae4夝ㆻ", TextUtils.indexOf("", "", 0) + 43).intern(), th, false);
        }
        WebViewClient webViewClient = this.l;
        if ((webViewClient == null ? 'Z' : '+') == 'Z') {
            return super.shouldOverrideKeyEvent(webView, keyEvent);
        }
        int i4 = j + 65;
        k = i4 % 128;
        if ((i4 % 2 == 0 ? (char) 26 : 'C') == 'C') {
            return webViewClient.shouldOverrideKeyEvent(webView, keyEvent);
        }
        webViewClient.shouldOverrideKeyEvent(webView, keyEvent);
        throw null;
    }

    @Override // android.webkit.WebViewClient
    @RequiresApi(api = 24)
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        int i2 = j + 65;
        k = i2 % 128;
        int i3 = i2 % 2;
        boolean zA = a(webView, webResourceRequest, false);
        int i4 = k + 87;
        j = i4 % 128;
        if (i4 % 2 != 0) {
            throw null;
        }
        return zA;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        int i2 = j + 5;
        k = i2 % 128;
        if (i2 % 2 == 0) {
        }
        boolean zB = b(webView, str, false);
        int i3 = k + 33;
        j = i3 % 128;
        int i4 = i3 % 2;
        return zB;
    }

    @Override // com.json.adqualitysdk.sdk.i.jl
    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final WebViewClient mo721() {
        int i2 = k + 69;
        int i3 = i2 % 128;
        j = i3;
        int i4 = i2 % 2;
        WebViewClient webViewClient = this.l;
        int i5 = i3 + 115;
        k = i5 % 128;
        if (i5 % 2 == 0) {
            throw null;
        }
        return webViewClient;
    }

    @Override // com.json.adqualitysdk.sdk.i.cg
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo388(String str, List<Object> list, ch chVar) {
        int i2 = j + 43;
        k = i2 % 128;
        int i3 = i2 % 2;
        byte b2 = -1;
        int iHashCode = str.hashCode();
        if (iHashCode == 368095040) {
            if (str.equals(f("ꭙ謅㔄\uf688\ued16ᤂ秞榺ᓍ늂ꐳ\uec0dꧺ쪵㡼傰탆\udba2", View.combineMeasuredStates(0, 0) + 18).intern())) {
                b2 = 1;
            }
        } else if (iHashCode == 381550901) {
            if ((str.equals(f("ꭙ謅ﮟ澜䏵┫ဟ퐓毷ស₦㬻\uea59﨟㡼傰吷\ue998\udd9dꝧ圙\ueae4夝ㆻ", ((byte) KeyEvent.getModifierMetaStateMask()) + Ascii.CAN).intern()) ? '_' : '^') != '^') {
                b2 = 0;
            }
        }
        if (b2 != 0) {
            if (b2 != 1) {
                return null;
            }
            return e();
        }
        WebViewClient webViewClientMo721 = mo721();
        int i4 = j + 109;
        k = i4 % 128;
        if (i4 % 2 != 0) {
            return webViewClientMo721;
        }
        throw null;
    }
}
