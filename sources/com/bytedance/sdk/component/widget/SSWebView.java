package com.bytedance.sdk.component.widget;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Paint;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.webkit.DownloadListener;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ScrollView;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.utils.t;
import com.vungle.ads.internal.model.AdPayload;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class SSWebView extends FrameLayout {
    private static c x;
    private com.bytedance.sdk.component.widget.b.a a;
    private String b;
    private JSONObject c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1092d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f1093e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f1094f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f1095g;
    private long h;
    private long i;
    private boolean j;
    private volatile WebView k;
    private float l;
    private float m;
    private float n;
    private int o;
    private b p;
    private t q;
    private AttributeSet r;
    private Context s;
    private AtomicBoolean t;
    private AtomicBoolean u;
    private AtomicBoolean v;
    private d w;
    private long y;
    private long z;

    public static class a extends WebViewClient {
        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(final WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            if (Build.VERSION.SDK_INT < 26) {
                return super.onRenderProcessGone(webView, renderProcessGoneDetail);
            }
            if (webView == null) {
                return true;
            }
            webView.post(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.a.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ViewGroup viewGroup = (ViewGroup) webView.getParent();
                        if (viewGroup != null) {
                            viewGroup.removeView(webView);
                        }
                        webView.destroy();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            });
            return true;
        }
    }

    public interface b {
    }

    public interface c {
        WebView createWebView(Context context, AttributeSet attributeSet, int i);
    }

    public interface d {
        void a(boolean z);
    }

    public SSWebView(Context context) {
        this(a(context), false);
    }

    public SSWebView(Context context, boolean z) {
        super(a(context));
        this.f1093e = 0.0f;
        this.f1094f = 0.0f;
        this.f1095g = 0L;
        this.h = 0L;
        this.i = 0L;
        this.j = false;
        this.l = 20.0f;
        this.n = 50.0f;
        this.t = new AtomicBoolean();
        this.u = new AtomicBoolean();
        this.v = new AtomicBoolean();
        this.s = context;
        if (z) {
            return;
        }
        try {
            this.k = a((AttributeSet) null, 0);
            b();
        } catch (Throwable unused) {
        }
        b(a(context));
    }

    private static Context a(Context context) {
        int i = Build.VERSION.SDK_INT;
        return (i < 21 || i >= 23) ? context : context.createConfigurationContext(new Configuration());
    }

    private WebView a(AttributeSet attributeSet, int i) {
        c cVar = x;
        return cVar != null ? cVar.createWebView(getContext(), attributeSet, i) : attributeSet == null ? new WebView(a(this.s)) : new WebView(a(this.s), attributeSet);
    }

    private void a(MotionEvent motionEvent) {
        if (!this.f1092d || this.a == null) {
            return;
        }
        if ((this.b == null && this.c == null) || motionEvent == null) {
            return;
        }
        try {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f1093e = motionEvent.getRawX();
                this.f1094f = motionEvent.getRawY();
                this.f1095g = System.currentTimeMillis();
                this.c = new JSONObject();
                if (this.k != null) {
                    this.y = this.f1095g;
                    return;
                }
                return;
            }
            if (action == 1 || action == 3) {
                this.c.put("start_x", String.valueOf(this.f1093e));
                this.c.put("start_y", String.valueOf(this.f1094f));
                this.c.put("offset_x", String.valueOf(motionEvent.getRawX() - this.f1093e));
                this.c.put("offset_y", String.valueOf(motionEvent.getRawY() - this.f1094f));
                this.c.put("url", String.valueOf(getUrl()));
                this.c.put("tag", "");
                this.h = System.currentTimeMillis();
                if (this.k != null) {
                    this.z = this.h;
                }
                this.c.put("down_time", this.f1095g);
                this.c.put("up_time", this.h);
                if (com.bytedance.sdk.component.widget.a.a.a().b() != null) {
                    long j = this.i;
                    long j2 = this.f1095g;
                    if (j != j2) {
                        this.i = j2;
                        com.bytedance.sdk.component.widget.a.a.a().b().a(this.a, this.b, "in_web_click", this.c, this.h - this.f1095g);
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void b(Context context) {
        c(context);
        p();
        o();
    }

    private static boolean b(View view) {
        try {
            Class<?> clsLoadClass = view.getClass().getClassLoader().loadClass("android.support.v4.view.ViewPager");
            if (clsLoadClass != null) {
                if (clsLoadClass.isInstance(view)) {
                    return true;
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            Class<?> clsLoadClass2 = view.getClass().getClassLoader().loadClass("androidx.viewpager.widget.ViewPager");
            if (clsLoadClass2 != null) {
                return clsLoadClass2.isInstance(view);
            }
            return false;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return false;
        }
    }

    private static void c(Context context) {
        if (Build.VERSION.SDK_INT != 17 || context == null) {
            return;
        }
        try {
            AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
            if (accessibilityManager != null && accessibilityManager.isEnabled()) {
                Method declaredMethod = accessibilityManager.getClass().getDeclaredMethod("setState", Integer.TYPE);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(accessibilityManager, 0);
            }
        } catch (Throwable unused) {
        }
    }

    private static boolean c(View view) {
        try {
            Class<?> clsLoadClass = view.getClass().getClassLoader().loadClass("android.support.v4.view.ScrollingView");
            if (clsLoadClass != null) {
                if (clsLoadClass.isInstance(view)) {
                    return true;
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            Class<?> clsLoadClass2 = view.getClass().getClassLoader().loadClass("androidx.core.view.ScrollingView");
            if (clsLoadClass2 != null) {
                return clsLoadClass2.isInstance(view);
            }
            return false;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return false;
        }
    }

    private void o() {
        if (this.k == null) {
            return;
        }
        try {
            this.k.removeJavascriptInterface("searchBoxJavaBridge_");
            this.k.removeJavascriptInterface("accessibility");
            this.k.removeJavascriptInterface("accessibilityTraversal");
        } catch (Throwable unused) {
        }
    }

    private void p() {
        try {
            WebSettings settings = this.k.getSettings();
            if (settings != null) {
                settings.setSavePassword(false);
            }
        } catch (Throwable unused) {
        }
    }

    private void q() {
        if (this.q == null) {
            this.v.set(false);
            this.q = new t(getContext());
        }
        this.q.a(this.l);
        this.q.c(this.m);
        this.q.b(this.n);
        this.q.a(this.o);
        this.q.a(new t.a() { // from class: com.bytedance.sdk.component.widget.SSWebView.1
        });
        this.v.set(true);
        this.q.a();
    }

    public static void setDataDirectorySuffix(String str) {
        if (Build.VERSION.SDK_INT >= 28) {
            WebView.setDataDirectorySuffix(str);
        }
    }

    private void setJavaScriptEnabled(String str) {
        WebSettings settings;
        try {
            if (TextUtils.isEmpty(str) || (settings = this.k.getSettings()) == null) {
                return;
            }
            if (Uri.parse(str).getScheme().equals("file")) {
                settings.setJavaScriptEnabled(false);
            } else {
                settings.setJavaScriptEnabled(true);
            }
        } catch (Throwable unused) {
        }
    }

    public static void setWebViewProvider(c cVar) {
        x = cVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected ViewParent a(View view) {
        ViewParent parent = view.getParent();
        if ((parent instanceof AbsListView) || (parent instanceof ScrollView) || (parent instanceof HorizontalScrollView) || !(parent instanceof View)) {
            return parent;
        }
        View view2 = (View) parent;
        return (b(view2) || c(view2)) ? parent : a(view2);
    }

    @SuppressLint({"JavascriptInterface"})
    public void a(Object obj, String str) {
        try {
            this.k.addJavascriptInterface(obj, str);
        } catch (Throwable unused) {
        }
    }

    public void a(String str, String str2, String str3, String str4, String str5) {
        try {
            setJavaScriptEnabled(str);
            this.k.loadDataWithBaseURL(str, str2, str3, str4, str5);
        } catch (Throwable unused) {
        }
    }

    @TargetApi(19)
    public void a(String str, Map<String, String> map) {
        try {
            setJavaScriptEnabled(str);
            this.k.loadUrl(str, map);
        } catch (Throwable unused) {
        }
    }

    public void a(boolean z) {
        try {
            this.k.clearCache(z);
        } catch (Throwable unused) {
        }
    }

    public void a_(String str) {
        try {
            setJavaScriptEnabled(str);
            this.k.loadUrl(str);
        } catch (Throwable unused) {
        }
    }

    public void b() {
        if (this.k != null) {
            removeAllViews();
            setBackground(null);
            try {
                this.k.setId(520093704);
            } catch (Throwable unused) {
            }
            addView(this.k, new FrameLayout.LayoutParams(-1, -1));
        }
    }

    public void b_(String str) {
        try {
            this.k.removeJavascriptInterface(str);
        } catch (Throwable unused) {
        }
    }

    public void c() {
        try {
            this.k.stopLoading();
        } catch (Throwable unused) {
        }
    }

    public void c_() {
        try {
            this.k = a(this.r, 0);
            b();
            b(a(this.s));
        } catch (Throwable th) {
            l.e("SSWebView.TAG", "initWebview: " + th.getMessage());
        }
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.k == null) {
            return;
        }
        try {
            this.k.computeScroll();
        } catch (Throwable unused) {
        }
    }

    public void d() {
        try {
            this.k.reload();
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        d dVar = this.w;
        if (dVar != null) {
            dVar.a(true);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public boolean e() {
        if (this.k == null) {
            return false;
        }
        try {
            return this.k.canGoBack();
        } catch (Throwable unused) {
            return false;
        }
    }

    public void f() {
        try {
            this.k.goBack();
        } catch (Throwable unused) {
        }
    }

    public boolean g() {
        if (this.k == null) {
            return false;
        }
        try {
            return this.k.canGoForward();
        } catch (Throwable unused) {
            return false;
        }
    }

    public int getContentHeight() {
        if (this.k == null) {
            return 0;
        }
        try {
            return this.k.getContentHeight();
        } catch (Throwable unused) {
            return 1;
        }
    }

    public long getLandingPageClickBegin() {
        return this.y;
    }

    public long getLandingPageClickEnd() {
        return this.z;
    }

    public com.bytedance.sdk.component.widget.b.a getMaterialMeta() {
        return this.a;
    }

    public String getOriginalUrl() {
        String url;
        if (this.k == null) {
            return null;
        }
        try {
            String originalUrl = this.k.getOriginalUrl();
            return (originalUrl == null || !originalUrl.startsWith("data:text/html") || (url = this.k.getUrl()) == null) ? originalUrl : url.startsWith(AdPayload.FILE_SCHEME) ? url : originalUrl;
        } catch (Throwable unused) {
            return null;
        }
    }

    public int getProgress() {
        if (this.k == null) {
            return 0;
        }
        try {
            return this.k.getProgress();
        } catch (Throwable unused) {
            return 100;
        }
    }

    @Override // android.view.View
    public String getTag() {
        return this.b;
    }

    public String getUrl() {
        if (this.k == null) {
            return null;
        }
        try {
            return this.k.getUrl();
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getUserAgentString() {
        if (this.k == null) {
            return "";
        }
        try {
            return this.k.getSettings().getUserAgentString();
        } catch (Throwable unused) {
            return "";
        }
    }

    public WebView getWebView() {
        return this.k;
    }

    public void h() {
        try {
            this.k.goForward();
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public void i() {
        if (this.k != null) {
            this.k.onResume();
        }
    }

    public void j() {
        try {
            this.k.clearHistory();
        } catch (Throwable unused) {
        }
    }

    public void k() {
        if (this.k == null) {
            return;
        }
        try {
            this.k.onPause();
            d dVar = this.w;
            if (dVar != null) {
                dVar.a(false);
            }
        } catch (Throwable unused) {
        }
    }

    public void l() {
        if (this.k == null) {
            return;
        }
        try {
            this.k.destroy();
        } catch (Throwable unused) {
        }
    }

    public void m() {
        try {
            this.k.clearView();
        } catch (Throwable unused) {
        }
    }

    public void n() {
        try {
            this.k.pauseTimers();
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.t.set(true);
        if (!this.u.get() || this.v.get()) {
            return;
        }
        q();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.t.set(false);
        t tVar = this.q;
        if (tVar != null) {
            tVar.b();
        }
    }

    @Override // android.view.ViewGroup
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        ViewParent viewParentA;
        try {
            a(motionEvent);
            boolean zOnInterceptTouchEvent = super.onInterceptTouchEvent(motionEvent);
            if ((motionEvent.getActionMasked() == 2 || motionEvent.getActionMasked() == 0) && this.j && (viewParentA = a(this)) != null) {
                viewParentA.requestDisallowInterceptTouchEvent(true);
            }
            return zOnInterceptTouchEvent;
        } catch (Throwable unused) {
            return super.onInterceptTouchEvent(motionEvent);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        t tVar = this.q;
        if (tVar != null) {
            if (z) {
                tVar.a();
            } else {
                tVar.b();
            }
        }
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        try {
            this.k.removeAllViews();
        } catch (Throwable unused) {
        }
    }

    public void setAllowFileAccess(boolean z) {
        try {
            this.k.getSettings().setAllowFileAccess(z);
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.View
    public void setAlpha(float f2) {
        try {
            super.setAlpha(f2);
            this.k.setAlpha(f2);
        } catch (Throwable unused) {
        }
    }

    public void setAppCacheEnabled(boolean z) {
        try {
            this.k.getSettings().setAppCacheEnabled(z);
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        try {
            this.k.setBackgroundColor(i);
        } catch (Throwable unused) {
        }
    }

    public void setBuiltInZoomControls(boolean z) {
        try {
            this.k.getSettings().setBuiltInZoomControls(z);
        } catch (Throwable unused) {
        }
    }

    public void setCacheMode(int i) {
        try {
            this.k.getSettings().setCacheMode(i);
        } catch (Throwable unused) {
        }
    }

    public void setCalculationMethod(int i) {
        this.o = i;
    }

    public void setDatabaseEnabled(boolean z) {
        try {
            this.k.getSettings().setDatabaseEnabled(z);
        } catch (Throwable unused) {
        }
    }

    public void setDeepShakeValue(float f2) {
        this.m = f2;
    }

    public void setDefaultFontSize(int i) {
        try {
            this.k.getSettings().setDefaultFontSize(i);
        } catch (Throwable unused) {
        }
    }

    public void setDefaultTextEncodingName(String str) {
        try {
            this.k.getSettings().setDefaultTextEncodingName(str);
        } catch (Throwable unused) {
        }
    }

    public void setDisplayZoomControls(boolean z) {
        try {
            this.k.getSettings().setDisplayZoomControls(z);
        } catch (Throwable unused) {
        }
    }

    public void setDomStorageEnabled(boolean z) {
        try {
            this.k.getSettings().setDomStorageEnabled(z);
        } catch (Throwable unused) {
        }
    }

    public void setDownloadListener(DownloadListener downloadListener) {
        try {
            this.k.setDownloadListener(downloadListener);
        } catch (Throwable unused) {
        }
    }

    public void setIsPreventTouchEvent(boolean z) {
        this.j = z;
    }

    public void setJavaScriptCanOpenWindowsAutomatically(boolean z) {
        try {
            this.k.getSettings().setJavaScriptCanOpenWindowsAutomatically(z);
        } catch (Throwable unused) {
        }
    }

    public void setJavaScriptEnabled(boolean z) {
        try {
            this.k.getSettings().setJavaScriptEnabled(z);
        } catch (Throwable unused) {
        }
    }

    public void setLandingPage(boolean z) {
        this.f1092d = z;
    }

    public void setLandingPageClickBegin(long j) {
        this.y = j;
    }

    public void setLandingPageClickEnd(long j) {
        this.z = j;
    }

    @Override // android.view.View
    public void setLayerType(int i, Paint paint) {
        try {
            this.k.setLayerType(i, paint);
        } catch (Throwable unused) {
        }
    }

    public void setLayoutAlgorithm(WebSettings.LayoutAlgorithm layoutAlgorithm) {
        try {
            this.k.getSettings().setLayoutAlgorithm(layoutAlgorithm);
        } catch (Throwable unused) {
        }
    }

    public void setLoadWithOverviewMode(boolean z) {
        try {
            this.k.getSettings().setLoadWithOverviewMode(z);
        } catch (Throwable unused) {
        }
    }

    public void setMaterialMeta(com.bytedance.sdk.component.widget.b.a aVar) {
        this.a = aVar;
    }

    public void setMixedContentMode(int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                this.k.getSettings().setMixedContentMode(i);
            } catch (Throwable unused) {
            }
        }
    }

    public void setNetworkAvailable(boolean z) {
        try {
            this.k.setNetworkAvailable(z);
        } catch (Throwable unused) {
        }
    }

    public void setOnShakeListener(b bVar) {
        this.p = bVar;
    }

    @Override // android.view.View
    public void setOverScrollMode(int i) {
        try {
            this.k.setOverScrollMode(i);
            super.setOverScrollMode(i);
        } catch (Throwable unused) {
        }
    }

    public void setRecycler(boolean z) {
        if (this.k == null || !(this.k instanceof PangleWebView)) {
            return;
        }
        ((PangleWebView) this.k).setRecycler(z);
    }

    public void setShakeValue(float f2) {
        this.l = f2;
    }

    public void setSupportZoom(boolean z) {
        try {
            this.k.getSettings().setSupportZoom(z);
        } catch (Throwable unused) {
        }
    }

    public void setTag(String str) {
        this.b = str;
    }

    public void setTouchStateListener(d dVar) {
        this.w = dVar;
    }

    public void setUseWideViewPort(boolean z) {
        try {
            this.k.getSettings().setUseWideViewPort(z);
        } catch (Throwable unused) {
        }
    }

    public void setUserAgentString(String str) {
        try {
            this.k.getSettings().setUserAgentString(str);
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        try {
            super.setVisibility(i);
            this.k.setVisibility(i);
        } catch (Throwable unused) {
        }
    }

    public void setWebChromeClient(WebChromeClient webChromeClient) {
        try {
            this.k.setWebChromeClient(webChromeClient);
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setWebViewClient(WebViewClient webViewClient) {
        try {
            if (webViewClient instanceof d) {
                setTouchStateListener((d) webViewClient);
            } else {
                setTouchStateListener(null);
            }
            if (webViewClient == 0) {
                webViewClient = new a();
            }
            this.k.setWebViewClient(webViewClient);
        } catch (Throwable unused) {
        }
    }

    public void setWriggleValue(float f2) {
        this.n = f2;
    }
}
