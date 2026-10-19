package com.gameloft.glads;

import android.graphics.BitmapFactory;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AbsoluteLayout;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.unity3d.ads.adplayer.AndroidWebViewClient;
import com.vungle.ads.internal.model.AdPayload;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class AndroidWebView implements View.OnTouchListener {
    private static String TAG = "GLADS";
    long parent;
    WebView webView = null;
    int orientation = 0;
    boolean isPresentingFullScreen = false;
    boolean isReleased = false;
    boolean openWithModalWebview = false;
    String modalWebviewParams = JsonUtils.EMPTY_JSON;
    HashMap buttons = new HashMap();

    class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;

        a(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            WebView webView = AndroidWebView.this.webView;
            if (webView == null) {
                return;
            }
            webView.loadDataWithBaseURL(this.a, this.b, "text/html", C.UTF8_NAME, null);
        }
    }

    class b implements Runnable {
        final /* synthetic */ String a;

        b(String str) {
            this.a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            WebView webView = AndroidWebView.this.webView;
            if (webView == null) {
                return;
            }
            webView.loadUrl(this.a);
        }
    }

    class c implements Runnable {
        final /* synthetic */ String a;

        c(String str) {
            this.a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            WebView webView = AndroidWebView.this.webView;
            if (webView == null) {
                return;
            }
            webView.loadUrl("javascript:" + this.a);
        }
    }

    class d implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ int b;

        d(String str, int i) {
            this.a = str;
            this.b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            WebView webView = AndroidWebView.this.webView;
            if (webView == null) {
                return;
            }
            webView.loadUrl(String.format("javascript:GLAdsV2.OnJavaScriptEvaluated(eval(\"%s\"), %d);", this.a, Integer.valueOf(this.b)));
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AndroidWebView.this.CloseFullScreen();
        }
    }

    class f implements Runnable {
        final /* synthetic */ int a;
        final /* synthetic */ byte[] b;
        final /* synthetic */ int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f2927d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f2928e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f2929f;

        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidWebView.NativeButtonClicked(AndroidWebView.this.parent, view.getId());
            }
        }

        f(int i, byte[] bArr, int i2, int i3, int i4, int i5) {
            this.a = i;
            this.b = bArr;
            this.c = i2;
            this.f2927d = i3;
            this.f2928e = i4;
            this.f2929f = i5;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AndroidWebView.this.webView == null) {
                return;
            }
            ImageButton imageButton = new ImageButton(Utils.GetContext());
            imageButton.setId(this.a);
            imageButton.setOnClickListener(new a());
            imageButton.setBackgroundColor(0);
            imageButton.setScaleType(ImageView.ScaleType.CENTER_CROP);
            imageButton.setPadding(0, 0, 0, 0);
            byte[] bArr = this.b;
            imageButton.setImageBitmap(BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
            AndroidWebView.this.buttons.put(Integer.valueOf(this.a), imageButton);
            AndroidWebView.this.webView.addView(imageButton, new AbsoluteLayout.LayoutParams(this.c, this.f2927d, this.f2928e, this.f2929f));
        }
    }

    class g implements Runnable {
        final /* synthetic */ int a;

        g(int i) {
            this.a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            ImageButton imageButton;
            AndroidWebView androidWebView = AndroidWebView.this;
            if (androidWebView.webView == null || (imageButton = (ImageButton) androidWebView.buttons.get(Integer.valueOf(this.a))) == null) {
                return;
            }
            AndroidWebView.this.webView.removeView(imageButton);
        }
    }

    class h implements Runnable {
        final /* synthetic */ int a;
        final /* synthetic */ int b;
        final /* synthetic */ int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f2931d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f2932e;

        h(int i, int i2, int i3, int i4, int i5) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.f2931d = i4;
            this.f2932e = i5;
        }

        @Override // java.lang.Runnable
        public void run() {
            ImageButton imageButton = (ImageButton) AndroidWebView.this.buttons.get(Integer.valueOf(this.a));
            if (imageButton != null) {
                imageButton.setLayoutParams(new AbsoluteLayout.LayoutParams(this.b, this.c, this.f2931d, this.f2932e));
            }
        }
    }

    class i implements Runnable {
        final /* synthetic */ String a;

        i(String str) {
            this.a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            WebView webView = AndroidWebView.this.webView;
            if (webView == null) {
                return;
            }
            webView.getSettings().setUserAgentString(this.a);
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WebView webView = AndroidWebView.this.webView;
            if (webView == null) {
                return;
            }
            webView.clearCache(true);
            AndroidWebView.this.webView.clearHistory();
            if (Build.VERSION.SDK_INT >= 22) {
                CookieManager.getInstance().removeAllCookies(null);
                CookieManager.getInstance().flush();
                return;
            }
            CookieSyncManager cookieSyncManagerCreateInstance = CookieSyncManager.createInstance(AndroidWebView.this.webView.getContext());
            cookieSyncManagerCreateInstance.startSync();
            CookieManager cookieManager = CookieManager.getInstance();
            cookieManager.removeAllCookie();
            cookieManager.removeSessionCookie();
            cookieSyncManagerCreateInstance.stopSync();
            cookieSyncManagerCreateInstance.sync();
        }
    }

    class k implements Runnable {
        final /* synthetic */ int a;

        k(int i) {
            this.a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            WebView webView = AndroidWebView.this.webView;
            if (webView == null) {
                return;
            }
            webView.setInitialScale(this.a);
        }
    }

    class l implements Runnable {
        final /* synthetic */ boolean a;

        l(boolean z) {
            this.a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            WebView webView = AndroidWebView.this.webView;
            if (webView == null) {
                return;
            }
            webView.getSettings().setUseWideViewPort(this.a);
        }
    }

    class m implements Runnable {
        final /* synthetic */ AndroidWebView a;

        m(AndroidWebView androidWebView) {
            this.a = androidWebView;
        }

        @Override // java.lang.Runnable
        public void run() {
            AndroidWebView.this.webView = new WebView(Utils.GetContext());
            AndroidWebView.this.webView.setScrollContainer(false);
            AndroidWebView.this.webView.setVerticalScrollBarEnabled(false);
            AndroidWebView.this.webView.setHorizontalScrollBarEnabled(false);
            AndroidWebView.this.webView.setScrollBarStyle(33554432);
            AndroidWebView.this.webView.getSettings().setJavaScriptEnabled(true);
            AndroidWebView.this.webView.setWebViewClient(new GLWebViewClient(this.a));
            AndroidWebView.this.webView.setWebChromeClient(new com.gameloft.glads.a(this.a));
            AndroidWebView.this.webView.setVisibility(8);
            AndroidWebView.this.webView.setBackgroundColor(0);
            AndroidWebView.this.webView.getSettings().setCacheMode(2);
            AndroidWebView.this.webView.getSettings().setSupportZoom(false);
            AndroidWebView.this.webView.getSettings().setDefaultTextEncodingName(C.UTF8_NAME);
            AndroidWebView.this.webView.getSettings().setSupportMultipleWindows(true);
            AndroidWebView.this.webView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
            int i = Build.VERSION.SDK_INT;
            if (i >= 16) {
                AndroidWebView.this.webView.getSettings().setAllowUniversalAccessFromFileURLs(true);
                AndroidWebView.this.webView.getSettings().setAllowFileAccessFromFileURLs(true);
            }
            if (i >= 21) {
                AndroidWebView.this.webView.getSettings().setMixedContentMode(0);
            }
            if (i >= 19) {
                AndroidWebView.this.webView.getSettings().setLoadWithOverviewMode(true);
            }
            if (i >= 17) {
                AndroidWebView.this.webView.getSettings().setMediaPlaybackRequiresUserGesture(false);
            }
            AndroidWebView.this.webView.setOnTouchListener(this.a);
            AndroidWebView androidWebView = AndroidWebView.this;
            androidWebView.webView.setLayoutParams(androidWebView.GetLayoutParams());
            Utils.GetParentView().addView(AndroidWebView.this.webView);
            AndroidWebView.this.webView.addJavascriptInterface(new WebViewJavaScriptInterface(this.a), "GLAdsV2");
        }
    }

    class n implements Runnable {
        final /* synthetic */ int a;

        n(int i) {
            this.a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            AndroidWebView androidWebView = AndroidWebView.this;
            WebView webView = androidWebView.webView;
            if (webView == null) {
                return;
            }
            androidWebView.isPresentingFullScreen = true;
            webView.setLayoutParams(androidWebView.GetLayoutParams());
            AndroidWebView.this.webView.bringToFront();
            AndroidWebView.this.SetOrientation(this.a);
            AndroidWebView.this.webView.setVisibility(0);
        }
    }

    class o implements Runnable {

        class a implements Runnable {
            final /* synthetic */ WebView a;

            a(WebView webView) {
                this.a = webView;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.a.loadUrl(AndroidWebViewClient.BLANK_PAGE);
            }
        }

        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AndroidWebView.this.CloseFullScreen();
            WebView webView = AndroidWebView.this.webView;
            if (webView == null) {
                return;
            }
            webView.setWebViewClient(new WebViewClient());
            AndroidWebView.this.webView.setWebChromeClient(new WebChromeClient());
            Utils.GetParentView().removeView(AndroidWebView.this.webView);
            Utils.GetParentView().postDelayed(new a(AndroidWebView.this.webView), 3000L);
            AndroidWebView.this.webView = null;
        }
    }

    class p implements Runnable {
        final /* synthetic */ int a;
        final /* synthetic */ int b;
        final /* synthetic */ int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f2934d;

        p(int i, int i2, int i3, int i4) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.f2934d = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AndroidWebView androidWebView = AndroidWebView.this;
            WebView webView = androidWebView.webView;
            if (webView == null) {
                return;
            }
            webView.setLayoutParams(androidWebView.GetLayoutParams(this.a, this.b, this.c, this.f2934d));
        }
    }

    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WebView webView = AndroidWebView.this.webView;
            if (webView == null) {
                return;
            }
            webView.bringToFront();
        }
    }

    class r implements Runnable {
        final /* synthetic */ boolean a;

        r(boolean z) {
            this.a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            WebView webView = AndroidWebView.this.webView;
            if (webView == null) {
                return;
            }
            webView.setVisibility(this.a ? 0 : 8);
        }
    }

    class s implements Runnable {
        final /* synthetic */ String a;

        s(String str) {
            this.a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            WebView webView = AndroidWebView.this.webView;
            if (webView == null) {
                return;
            }
            webView.loadUrl(AdPayload.FILE_SCHEME + this.a);
        }
    }

    public AndroidWebView(long j2) {
        this.parent = j2;
        StartWebView();
    }

    public static native void NativeButtonClicked(long j2, int i2);

    public static native void NativeOnCreateWindow(long j2, long j3, String str);

    public static native void NativeOnFailedLoad(long j2, String str);

    public static native void NativeOnFinishLoad(long j2);

    public static native void NativeOnJavaScriptEvaluated(long j2, String str, int i2);

    public static native void NativeOnTouch(long j2);

    public static native void NativeOnWebViewCrashed(long j2);

    public static native boolean NativeShouldOpenURL(long j2, String str);

    void AddButton(byte[] bArr, int i2, int i3, int i4, int i5, int i6) {
        Utils.RunOnMainThread(new f(i6, bArr, i4, i5, i2, i3));
    }

    public void BringToFront() {
        Utils.RunOnMainThread(new q());
    }

    void ClearCacheAndCookies() {
        Utils.RunOnMainThread(new j());
    }

    synchronized void CloseFullScreen() {
        if (this.isPresentingFullScreen) {
            this.isPresentingFullScreen = false;
            Utils.RestoreOrientation();
        }
    }

    public void DismissFullScreen() {
        Utils.RunOnMainThread(new e());
    }

    void EnableModalWebView() {
        this.openWithModalWebview = true;
    }

    public void EvaluateJavaScript(String str, int i2) {
        Utils.RunOnMainThreadAsync(new d(str, i2));
    }

    public ViewGroup.LayoutParams GetLayoutParams() {
        ViewGroup viewGroupGetParentView = Utils.GetParentView();
        if (viewGroupGetParentView instanceof RelativeLayout) {
            return new RelativeLayout.LayoutParams(-1, -1);
        }
        if (viewGroupGetParentView instanceof FrameLayout) {
            return new FrameLayout.LayoutParams(-1, -1);
        }
        if (viewGroupGetParentView instanceof AbsoluteLayout) {
            return new AbsoluteLayout.LayoutParams(viewGroupGetParentView.getWidth(), viewGroupGetParentView.getHeight(), 0, 0);
        }
        return null;
    }

    public ViewGroup.LayoutParams GetLayoutParams(int i2, int i3, int i4, int i5) {
        ViewGroup viewGroupGetParentView = Utils.GetParentView();
        if (viewGroupGetParentView instanceof RelativeLayout) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i4, i5);
            layoutParams.addRule(9);
            layoutParams.addRule(10);
            layoutParams.setMargins(i2, i3, 0, 0);
            return layoutParams;
        }
        if (viewGroupGetParentView instanceof FrameLayout) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i4, i5);
            layoutParams2.setMargins(i2, i3, 0, 0);
            return layoutParams2;
        }
        if (viewGroupGetParentView instanceof AbsoluteLayout) {
            return new AbsoluteLayout.LayoutParams(i4, i5, i2, i3);
        }
        return null;
    }

    public WebView GetWebView() {
        return this.webView;
    }

    public boolean IsParentViewHardwareAccelerated() {
        return Utils.GetParentView().isHardwareAccelerated();
    }

    public void LoadHTMLFile(String str) {
        Utils.RunOnMainThread(new s(str));
    }

    public void LoadHTMLString(String str, String str2) {
        Utils.RunOnMainThread(new a(str2, str));
    }

    public void LoadURL(String str) {
        Utils.RunOnMainThread(new b(str));
    }

    public void OnCreateWindow(long j2, String str) {
        if (this.webView == null) {
            return;
        }
        NativeOnCreateWindow(this.parent, j2, str);
    }

    public void OnFailedLoad(String str) {
        if (this.webView == null) {
            return;
        }
        NativeOnFailedLoad(this.parent, str);
    }

    public void OnFinishLoad() {
        if (this.webView == null) {
            return;
        }
        NativeOnFinishLoad(this.parent);
    }

    @JavascriptInterface
    public void OnJavaScriptEvaluated(String str, int i2) {
        if (this.webView == null) {
            return;
        }
        NativeOnJavaScriptEvaluated(this.parent, str, i2);
    }

    public void OnWebViewCrashed() {
        if (this.webView == null) {
            return;
        }
        Utils.GetParentView().removeView(this.webView);
        this.webView = null;
        NativeOnWebViewCrashed(this.parent);
    }

    public void PresentFullScreen(int i2) {
        Utils.RunOnMainThread(new n(i2));
    }

    public void Release() {
        Utils.RunOnMainThread(new o());
    }

    void RemoveButton(int i2) {
        Utils.RunOnMainThread(new g(i2));
    }

    public void RunJavaScript(String str) {
        Utils.RunOnMainThreadAsync(new c(str));
    }

    public void SetBounds(int i2, int i3, int i4, int i5) {
        Utils.RunOnMainThread(new p(i2, i3, i4, i5));
    }

    void SetButtonBounds(int i2, int i3, int i4, int i5, int i6) {
        Utils.RunOnMainThread(new h(i2, i5, i6, i3, i4));
    }

    public void SetInitialScale(int i2) {
        Utils.RunOnMainThread(new k(i2));
    }

    public void SetOrientation(int i2) {
        this.orientation = i2;
        Utils.SetOrientation(i2);
    }

    public void SetUseWideViewPort(boolean z) {
        Utils.RunOnMainThread(new l(z));
    }

    void SetUserAgent(String str) {
        Utils.RunOnMainThread(new i(str));
    }

    public void SetVisible(boolean z) {
        Utils.RunOnMainThread(new r(z));
    }

    public boolean ShouldOpenURL(String str) {
        if (this.webView == null) {
            return false;
        }
        return NativeShouldOpenURL(this.parent, str);
    }

    public void StartWebView() {
        Utils.RunOnMainThread(new m(this));
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.webView == null) {
            return false;
        }
        NativeOnTouch(this.parent);
        return false;
    }
}
