package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.applovin.exoplayer2.common.base.Ascii;
import com.google.android.gms.drive.DriveFile;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class N8 extends WebViewClient {
    public static byte[] A05;
    public N4 A00 = new N4() { // from class: com.facebook.ads.redexgen.X.TK
        @Override // com.facebook.ads.redexgen.X.N4
        public final boolean A91(String str) {
            return N8.A04(str);
        }
    };
    public WeakReference<N6> A01 = new WeakReference<>(null);
    public final WeakReference<YA> A02;
    public final WeakReference<N5> A03;
    public final WeakReference<N1> A04;

    static {
        A01();
    }

    public N8(WeakReference<YA> weakReference, WeakReference<N5> weakReference2, WeakReference<N1> weakReference3) {
        this.A02 = weakReference;
        this.A03 = weakReference2;
        this.A04 = weakReference3;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 97);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{54, 55, 68, 74, 73, Ascii.SI, 55, 65, 54, 67, 64, 39, 52, 37, 39, 41, 58, 47, 60, 47, 58, 63, 51, 64, 54, 68, 65, 59, 54, 0, 59, 64, 70, 55, 64, 70, 0, 51, 53, 70, 59, 65, 64, 0, 40, Ascii.ESC, Ascii.ETB, 41, 9, Ascii.SYN, Ascii.FF, Ascii.SUB, Ascii.ETB, 17, Ascii.FF, -42, 17, Ascii.SYN, Ascii.FS, Ascii.CR, Ascii.SYN, Ascii.FS, -42, Ascii.VT, 9, Ascii.FS, Ascii.CR, Ascii.SI, Ascii.ETB, Ascii.SUB, 33, -42, -22, -6, -9, -1, -5, -23, -22, -12, -19, 7, Ascii.ETB, Ascii.DC4, Ascii.FS, Ascii.CAN, 10, Ascii.ETB, 4, Ascii.VT, 6, 17, 17, 7, 6, 8, Ascii.DLE, 4, Ascii.SUB, Ascii.ETB, 17, -54, -57, -38, -57, 49, 54, 60, 45, 54, 60, -36, -39, -45, -95, -121, -30, -48, -51, -54, -31, -44, -48, -30};
    }

    private void A02(String str, YA ya) {
        ya.A07().A9M(A00(11, 11, 101), C08417x.A09, new C08427y(A00(111, 5, 6) + str));
    }

    private boolean A03(WebView webView, String str) {
        Intent intent;
        String strA00 = A00(116, 8, 10);
        YA ya = this.A02.get();
        if (ya == null) {
            return false;
        }
        if ((TJ.A0A && (TextUtils.isEmpty(str) || A00(0, 11, 116).equals(str))) || !this.A00.A91(str)) {
            return true;
        }
        try {
            Uri uriA00 = C1132Kc.A00(str);
            String scheme = uriA00.getScheme();
            try {
                boolean zA0x = IP.A0x(ya);
                String strA002 = A00(48, 33, 71);
                String strA003 = A00(22, 26, 113);
                String strA004 = A00(105, 6, 103);
                if (zA0x) {
                    if (!TJ.A0D.contains(scheme) && !A00(101, 4, 5).equals(scheme)) {
                        if (strA004.equalsIgnoreCase(scheme)) {
                            intent = Intent.parseUri(str, 1);
                            intent.setComponent(null);
                            intent.setSelector(null);
                        } else {
                            intent = new Intent(strA003, uriA00);
                        }
                        intent.addCategory(strA002);
                        if (Build.VERSION.SDK_INT >= 30) {
                            intent.setFlags(268436480);
                        } else {
                            intent.setFlags(DriveFile.MODE_READ_ONLY);
                        }
                        try {
                            if (!KN.A0B(ya, intent)) {
                                A02(str, ya);
                            }
                            return true;
                        } catch (KL unused) {
                            if (strA004.equals(scheme)) {
                                String stringExtra = intent.getStringExtra(A00(81, 20, 68));
                                if (!TextUtils.isEmpty(stringExtra)) {
                                    if (!KN.A0B(ya, new Intent(strA003, C1132Kc.A00(stringExtra)))) {
                                        A02(str, ya);
                                    }
                                    return true;
                                }
                            }
                            C08427y c08427y = new C08427y(A00(111, 5, 6) + str);
                            c08427y.A03(1);
                            ya.A07().A9N(A00(11, 11, 101), C08417x.A06, c08427y);
                            return true;
                        }
                    }
                    return false;
                }
                if (TJ.A0A && strA004.equalsIgnoreCase(scheme)) {
                    Intent uri = Intent.parseUri(str, 1);
                    uri.addCategory(strA002);
                    uri.setComponent(null);
                    uri.setSelector(null);
                    if (ya.getPackageManager().resolveActivity(uri, 65536) != null && KN.A0B(ya, uri)) {
                        webView.goBack();
                        return true;
                    }
                } else if ((TJ.A0A && C1152Ky.A04(str)) || !TJ.A0D.contains(scheme)) {
                    return KN.A0B(ya, new Intent(strA003, uriA00));
                }
            } catch (Exception e2) {
                ya.A07().A9N(strA00, C08417x.A2a, new C08427y(e2));
                ya.A0E().A8a(e2.toString());
            }
            return false;
        } catch (SecurityException e3) {
            ya.A07().A9N(strA00, C08417x.A2a, new C08427y(e3));
            return true;
        }
    }

    public static /* synthetic */ boolean A04(String str) {
        return true;
    }

    public final void A05(N4 n4) {
        this.A00 = n4;
    }

    public final void A06(WeakReference<N6> weakReference) {
        this.A01 = weakReference;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        N1 n1 = this.A04.get();
        if (n1 != null) {
            n1.A03();
        }
        N5 n5 = this.A03.get();
        if (n5 != null) {
            n5.ACG(str);
        }
        N6 n6 = this.A01.get();
        if (n6 != null) {
            n6.AAg(webView.canGoBack());
            n6.ABP(webView.canGoForward());
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        N5 n5 = this.A03.get();
        if (n5 != null) {
            n5.ACI(str);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        YA ya = this.A02.get();
        if (ya != null) {
            StringBuilder sb = new StringBuilder();
            String strA00 = A00(0, 0, 27);
            ya.A0E().A8X(C1152Ky.A01(i, sb.append(strA00).append(str).toString(), strA00 + str2));
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        YA ya = this.A02.get();
        if (ya != null) {
            int errorCode = webResourceError.getErrorCode();
            StringBuilder sb = new StringBuilder();
            String strA00 = A00(0, 0, 27);
            ya.A0E().A8X(C1152Ky.A01(errorCode, sb.append(strA00).append((Object) webResourceError.getDescription()).toString(), strA00 + webResourceRequest.getUrl()));
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        YA ya = this.A02.get();
        if (ya != null) {
            ya.A0E().A8Y();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        YA ya = this.A02.get();
        if (ya != null) {
            ya.A0E().A8Z();
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        NB.A02(C08417x.A2b);
        N5 n5 = this.A03.get();
        if (n5 == null) {
            return true;
        }
        n5.ACh();
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        return A03(webView, webResourceRequest.getUrl().toString());
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return A03(webView, str);
    }
}
