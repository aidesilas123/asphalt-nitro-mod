package com.bytedance.sdk.component.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.widget.SSWebView;
import com.json.o2;
import java.util.HashSet;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class PangleWebView extends WebView {
    public long a;
    private final HashSet<String> b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1090d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f1091e;

    public PangleWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new HashSet<>();
        this.a = System.currentTimeMillis();
        a();
    }

    public PangleWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new HashSet<>();
        this.a = System.currentTimeMillis();
        a();
    }

    private void a() {
        l.b("TTAD.PangleWebView", "init: ");
        WebSettings settings = getSettings();
        settings.setSupportZoom(false);
        settings.setDisplayZoomControls(false);
        settings.setBuiltInZoomControls(false);
        settings.setSupportMultipleWindows(false);
        settings.setAllowFileAccess(false);
        settings.setSavePassword(false);
        setWebViewClient(new SSWebView.a());
    }

    private void b() {
        if (this.c) {
            return;
        }
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this);
        }
        setOnClickListener(null);
        setOnTouchListener(null);
        for (String str : this.b) {
            l.b("TTAD.PangleWebView", "destroy: auto remove js obj " + str);
            super.removeJavascriptInterface(str);
        }
    }

    @Override // android.webkit.WebView
    public void addJavascriptInterface(Object obj, String str) {
        l.b("TTAD.PangleWebView", "addJavascriptInterface: " + str + ", " + this);
        if (this.c || this.f1091e) {
            l.e("TTAD.PangleWebView", "addJavascriptInterface: has destroyed or has recycler");
        } else {
            super.addJavascriptInterface(obj, str);
            this.b.add(str);
        }
    }

    @Override // android.webkit.WebView
    public void clearCache(boolean z) {
        if (this.c || this.f1091e) {
            l.e("TTAD.PangleWebView", "clearCache: has destroyed or recycler");
        } else {
            super.clearCache(z);
        }
    }

    @Override // android.webkit.WebView
    public void destroy() {
        l.b("TTAD.PangleWebView", "destroy() called, " + this);
        if (this.c) {
            return;
        }
        this.c = true;
        b();
        super.destroy();
    }

    @Override // android.webkit.WebView
    public void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        if (!this.c && !this.f1091e) {
            super.evaluateJavascript(str, valueCallback);
            return;
        }
        if (valueCallback != null) {
            l.e("TTAD.PangleWebView", "evaluateJavascript: has destroyed or recycler, " + str);
            valueCallback.onReceiveValue("");
        }
    }

    @Override // android.webkit.WebView
    public void goBack() {
        if (this.c || this.f1091e) {
            l.e("TTAD.PangleWebView", "goBack: has destroyed or recycler");
        } else {
            super.goBack();
        }
    }

    @Override // android.webkit.WebView
    public void goBackOrForward(int i) {
        if (this.c || this.f1091e) {
            l.e("TTAD.PangleWebView", "goBackOrForward: has destroyed or recycler");
        } else {
            super.goBackOrForward(i);
        }
    }

    @Override // android.webkit.WebView
    public void goForward() {
        if (this.c || this.f1091e) {
            l.e("TTAD.PangleWebView", "goForward: has destroyed or recycler");
        } else {
            super.goForward();
        }
    }

    @Override // android.webkit.WebView
    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        if (this.c || this.f1091e) {
            l.e("TTAD.PangleWebView", "loadDataWithBaseURL: has destroyed or recycler");
        } else {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        }
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        if (this.c || this.f1091e) {
            l.e("TTAD.PangleWebView", "loadUrl: has destroyed or recycler");
            return;
        }
        try {
            super.loadUrl(str);
        } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError e2) {
            l.c("TTAD.PangleWebView", "loadUrl: ", e2);
        }
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str, Map<String, String> map) {
        if (this.c || this.f1091e) {
            l.e("TTAD.PangleWebView", "loadUrl: has destroyed or recycler");
            return;
        }
        try {
            super.loadUrl(str, map);
        } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError e2) {
            l.c("TTAD.PangleWebView", "loadUrl: ", e2);
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        l.b("TTAD.PangleWebView", "onAttachedToWindow: " + this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        l.b("TTAD.PangleWebView", "onDetachedFromWindow: " + this);
        if (this.f1090d) {
            destroy();
        }
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.c || this.f1091e) {
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.c || this.f1091e) {
            setMeasuredDimension(0, 0);
        } else {
            super.onMeasure(i, i2);
        }
    }

    @Override // android.webkit.WebView
    public void onPause() {
        if (this.c || this.f1091e) {
            l.e("TTAD.PangleWebView", "onPause: has destroyed or recycler");
            return;
        }
        try {
            super.onPause();
        } catch (Exception e2) {
            l.c("TTAD.PangleWebView", "onPause: ", e2);
        }
    }

    @Override // android.webkit.WebView
    public void onResume() {
        if (this.c || this.f1091e) {
            l.e("TTAD.PangleWebView", "onResume: has destroyed or recycler");
            return;
        }
        try {
            super.onResume();
        } catch (Exception e2) {
            l.c("TTAD.PangleWebView", "onResume: ", e2);
        }
    }

    @Override // android.webkit.WebView
    public void pauseTimers() {
        l.b("TTAD.PangleWebView", "pauseTimers: ");
        if (this.c || this.f1091e) {
            return;
        }
        super.pauseTimers();
    }

    @Override // android.webkit.WebView
    public void reload() {
        if (this.c || this.f1091e) {
            l.e("TTAD.PangleWebView", "reload: has destroyed or recycler");
        } else {
            super.reload();
        }
    }

    @Override // android.webkit.WebView
    public void removeJavascriptInterface(String str) {
        if (!this.c && !this.f1091e) {
            super.removeJavascriptInterface(str);
            this.b.remove(str);
        } else {
            l.b("TTAD.PangleWebView", "removeJavascriptInterface: has destroyed or recycler, name=" + str);
        }
    }

    @Override // android.webkit.WebView
    public void resumeTimers() {
        l.b("TTAD.PangleWebView", "resumeTimers: ");
        if (this.c || this.f1091e) {
            return;
        }
        super.resumeTimers();
    }

    public void setDestroyOnDetached(boolean z) {
        l.b("TTAD.PangleWebView", "setDestroyOnDetached() called with: destroyOnDetached = [" + z + o2.i.f6491e);
        this.f1090d = z;
    }

    public void setRecycler(boolean z) {
        this.f1091e = z;
    }

    @Override // android.webkit.WebView
    public void stopLoading() {
        if (this.c || this.f1091e) {
            l.e("TTAD.PangleWebView", "stopLoading: has destroyed or recycler");
            return;
        }
        try {
            super.stopLoading();
        } catch (Exception e2) {
            l.c("TTAD.PangleWebView", "stopLoading: ", e2);
        }
    }
}
