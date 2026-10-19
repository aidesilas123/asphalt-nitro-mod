package com.gameloft.android.ANMP.GloftAGHM;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Build;
import android.webkit.ConsoleMessage;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import com.gameloft.android.ANMP.GloftAGHM.GLUtils.TopLayer;
import com.gameloft.android.ANMP.GloftAGHM.PopUpsManager;
import com.json.b4;
import com.json.o2;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class PopUpsViewComponent {
    private f a;
    RelativeLayout.LayoutParams b;
    private PopUpsManager c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WebView f2841d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private e f2842e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f2843f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f2844g = false;
    private boolean h = false;
    private boolean i = false;
    private boolean j = false;
    private boolean k = false;
    private final boolean l = true;
    String m = "";
    private RelativeLayout n;

    class a implements Runnable {
        final /* synthetic */ String a;

        a(String str) {
            this.a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            PopUpsViewComponent.this.f2841d.loadUrl(this.a);
        }
    }

    class b implements Runnable {
        final /* synthetic */ boolean a;
        final /* synthetic */ int b;

        b(boolean z, int i) {
            this.a = z;
            this.b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!PopUpsViewComponent.this.i) {
                PopUpsBridgeClass.Log(1, "setting visibility ", "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java", 211);
                PopUpsViewComponent.this.f2841d.setVisibility(8);
                PopUpsViewComponent.this.f2844g = false;
                if (8 != this.b) {
                    PopUpsBridgeClass.OnViewState(PopUpsManager.ViewState.E_VS_INVISIBLE.e());
                    return;
                } else {
                    PopUpsBridgeClass.OnViewState(PopUpsManager.ViewState.E_VS_VISIBLE.e());
                    return;
                }
            }
            if (true == this.a) {
                PopUpsBridgeClass.Log(1, "PopUpsViewComponent.ShowComponent() runOnUiThread: show: true", "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java", 199);
            } else {
                PopUpsBridgeClass.Log(1, "PopUpsViewComponent.ShowComponent() runOnUiThread: show: false", "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java", 201);
            }
            PopUpsViewComponent.this.f2841d.setVisibility(this.a ? 0 : 8);
            PopUpsViewComponent.this.f2844g = this.a;
            if (PopUpsViewComponent.this.f2841d.getVisibility() != this.b) {
                PopUpsBridgeClass.OnViewState(PopUpsViewComponent.this.f2841d.getVisibility() == 0 ? PopUpsManager.ViewState.E_VS_VISIBLE.e() : PopUpsManager.ViewState.E_VS_INVISIBLE.e());
            }
        }
    }

    class c extends WebChromeClient {
        c() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            PopUpsBridgeClass.Log(1, consoleMessage.message() + " -- From line " + consoleMessage.lineNumber(), "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java", 245);
            return true;
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PopUpsViewComponent.this.f2841d.loadUrl(String.format("javascript:onControllerEvent(%d, %f)", 16, Double.valueOf(0.0d)));
            PopUpsViewComponent.this.i();
        }
    }

    private class e extends WebViewClient {
        public boolean a;
        public boolean b;

        private e() {
            this.a = false;
            this.b = false;
        }

        /* synthetic */ e(PopUpsViewComponent popUpsViewComponent, a aVar) {
            this();
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            PopUpsViewComponent.this.f(this, webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            PopUpsViewComponent.this.g(this, webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            PopUpsViewComponent.this.e(this, webView, i, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return PopUpsViewComponent.this.h(this, webView, str);
        }
    }

    private class f {
        public int a;
        public int b;
        public int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2845d;

        public f(int i, int i2, int i3, int i4) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.f2845d = i4;
        }
    }

    public PopUpsViewComponent(PopUpsManager popUpsManager) {
        this.c = popUpsManager;
    }

    private RelativeLayout.LayoutParams a() {
        f fVar = this.a;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(fVar.c, fVar.f2845d);
        layoutParams.addRule(9);
        layoutParams.addRule(10);
        return layoutParams;
    }

    private void c() {
        o();
        this.f2842e = new e(this, null);
        WebView webView = new WebView(this.c.b());
        this.f2841d = webView;
        m(webView);
        RelativeLayout.LayoutParams layoutParamsA = a();
        this.b = layoutParamsA;
        this.n.addView(this.f2841d, layoutParamsA);
        TopLayer.Present(this.n);
        this.f2841d.bringToFront();
        PopUpsBridgeClass.Log(1, "Creating web view", "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java", 134);
    }

    private void d() {
        WebView webView = this.f2841d;
        if (webView != null) {
            webView.setVisibility(8);
            this.c.c().removeView(this.n);
            this.n = null;
            this.f2841d.destroy();
            this.f2841d = null;
        }
        if (this.f2842e != null) {
            this.f2842e = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(e eVar, WebView webView, int i, String str, String str2) {
        eVar.a = true;
        this.i = false;
        this.k = false;
        this.j = true;
        PopUpsBridgeClass.Log(3, "failed loading url" + str2, "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java", 369);
        PopUpsBridgeClass.OnErrorMessage(PopUpsManager.PopUpsError.E_UNDEFINED.e());
        if (this.f2844g) {
            i();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(e eVar, WebView webView, String str) {
        int i;
        if (eVar.b) {
            return;
        }
        PopUpsBridgeClass.Log(1, "Page finished loading " + str, "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java", 380);
        webView.getVisibility();
        if (this.f2843f) {
            PopUpsBridgeClass.Log(1, "Control visible", "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java", 389);
            this.f2844g = true;
            i = 0;
        } else {
            PopUpsBridgeClass.Log(2, "Control not visible", "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java", 385);
            i = 8;
            this.f2844g = false;
        }
        this.i = true;
        PopUpsBridgeClass.Log(1, "Setting visibility " + i + " expected 0", "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java", 395);
        webView.setVisibility(i);
        this.k = true;
        this.j = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(e eVar, WebView webView, String str, Bitmap bitmap) {
        PopUpsBridgeClass.Log(1, "navigating to " + str, "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java", 402);
        eVar.a = false;
        eVar.b = false;
        this.h = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00db  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean h(com.gameloft.android.ANMP.GloftAGHM.PopUpsViewComponent.e r5, android.webkit.WebView r6, java.lang.String r7) {
        /*
            Method dump skipped, instruction units count: 245
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gameloft.android.ANMP.GloftAGHM.PopUpsViewComponent.h(com.gameloft.android.ANMP.GloftAGHM.PopUpsViewComponent$e, android.webkit.WebView, java.lang.String):boolean");
    }

    private void m(WebView webView) {
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setAllowFileAccess(true);
        webView.getSettings().setCacheMode(2);
        webView.getSettings().setSupportZoom(false);
        webView.getSettings().setDefaultTextEncodingName(b4.L);
        webView.getSettings().setLightTouchEnabled(true);
        webView.getSettings().setLoadsImagesAutomatically(true);
        webView.setWebViewClient(this.f2842e);
        webView.setWebChromeClient(new c());
        webView.getSettings().setDefaultZoom(WebSettings.ZoomDensity.FAR);
        webView.setHorizontalScrollBarEnabled(false);
        webView.setVerticalScrollBarEnabled(false);
        webView.setBackgroundColor(0);
        webView.setVisibility(8);
        if (Build.VERSION.SDK_INT >= 11) {
            webView.setLayerType(1, null);
        }
    }

    private void o() {
        RelativeLayout relativeLayout = new RelativeLayout(this.c.b());
        this.n = relativeLayout;
        f fVar = this.a;
        relativeLayout.setPaddingRelative(fVar.a, fVar.b, 0, 0);
        this.c.c().addView(this.n, new RelativeLayout.LayoutParams(-1, -1));
    }

    public void b(String str) {
        try {
            this.f2841d.post(new a("javascript:" + str));
        } catch (Exception unused) {
        }
    }

    public void i() {
        n(false, "", "");
        try {
            RelativeLayout relativeLayout = this.n;
            if (relativeLayout != null) {
                relativeLayout.setClickable(false);
            }
        } catch (Exception e2) {
            PopUpsBridgeClass.Log(3, "HideComponent error: " + e2.getMessage(), "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java", 319);
        }
    }

    public void j(int i, double d2) {
        b(String.format("onControllerEvent(%d, %f)", Integer.valueOf(i), Double.valueOf(d2)));
    }

    public void k() {
        WebView webView = this.f2841d;
        if (webView != null) {
            webView.setVisibility(8);
            this.c.c().removeView(this.n);
            this.n.removeView(this.f2841d);
            this.f2841d.destroy();
            this.f2841d = null;
            this.n = null;
        }
        if (this.f2842e != null) {
            this.f2842e = null;
        }
    }

    public void l(String str) {
        this.m = str;
    }

    public PopUpsManager.PopUpsError n(boolean z, String str, String str2) {
        this.f2843f = z;
        PopUpsManager.PopUpsError popUpsError = PopUpsManager.PopUpsError.E_UNDEFINED;
        PopUpsBridgeClass.Log(1, "PopUpsViewComponent.ShowComponent() start", "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java", 147);
        if (!z && this.f2841d == null) {
            PopUpsBridgeClass.Log(2, "PopUpsViewComponent.ShowComponent() error: (false == bShow && null == webView) is true", "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java", 151);
            return popUpsError;
        }
        if (z) {
            PopUpsBridgeClass.Log(1, "PopUpsViewComponent.ShowComponent() creating view", "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java", 158);
            d();
            c();
            if (!new File(str).exists()) {
                PopUpsBridgeClass.Log(3, "PopUpsViewComponent.ShowComponent() error: E_FILE_NOT_VALID", "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java", 182);
                popUpsError = PopUpsManager.PopUpsError.E_FILE_NOT_VALID;
                PopUpsBridgeClass.OnErrorMessage(popUpsError.e());
                z = false;
            } else if (this.f2841d != null) {
                PopUpsBridgeClass.Log(1, "PopUpsViewComponent.ShowComponent() loading file", "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java", 164);
                if (this.c != null) {
                    String str3 = "file:///" + str + "?OS=android&width=" + Integer.toString(this.a.c) + "&height=" + Integer.toString(this.a.f2845d);
                    if (str2 == null || str2.isEmpty()) {
                        PopUpsBridgeClass.Log(2, "PopUpsViewComponent.ShowComponent() customQueryString invalid", "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java", 171);
                    } else {
                        PopUpsBridgeClass.Log(1, "PopUpsViewComponent.ShowComponent() customQueryString: " + str2, "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java", 168);
                        str3 = str3 + o2.i.c + str2;
                    }
                    this.f2841d.loadUrl(str3);
                    popUpsError = PopUpsManager.PopUpsError.E_SUCCESSFUL;
                }
            } else {
                popUpsError = PopUpsManager.PopUpsError.E_FAILED_TO_CREATE_WEBVIEW;
            }
        }
        int visibility = this.f2841d.getVisibility();
        if (!z) {
            d();
            c();
        }
        this.c.b().runOnUiThread(new b(z, visibility));
        return popUpsError;
    }

    public int p() {
        WebView webView = this.f2841d;
        if (webView != null && this.f2843f) {
            return PopUpsManager.ViewState.E_VS_VISIBLE.e();
        }
        if ((webView == null || this.f2844g || !this.i) && !this.h && this.i) {
            return PopUpsManager.ViewState.E_VS_UNDEFINED.e();
        }
        return PopUpsManager.ViewState.E_VS_INVISIBLE.e();
    }

    public Boolean q() {
        if (this.f2841d == null || !this.f2843f) {
            return Boolean.FALSE;
        }
        PopUpsBridgeClass.OnAssetTracking("exit:");
        this.f2842e.b = true;
        this.f2841d.post(new d());
        return Boolean.TRUE;
    }

    public void r(int i, int i2, int i3, int i4) {
        this.a = new f(i, i2, i3, i4);
    }
}
