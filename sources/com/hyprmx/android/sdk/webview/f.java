package com.hyprmx.android.sdk.webview;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.JsResult;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.hyprmx.android.R;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.unity3d.ads.adplayer.AndroidWebViewClient;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: loaded from: classes2.dex */
public final class f extends FrameLayout implements l {
    public WebView a;
    public k b;
    public Activity c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f4751d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f4752e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public q f4753f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(Context context, AttributeSet attributeSet, int i, String str, WebView webView) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(webView, "webView");
        this.a = webView;
        this.f4751d = webView.getUrl();
        this.f4752e = this.a.getProgress();
        a(this.a);
    }

    public /* synthetic */ f(Context context, String str, WebView webView, int i) {
        this(context, null, 0, (i & 8) != 0 ? null : str, (i & 16) != 0 ? m.a(context) : webView);
    }

    public static final void a(JsResult jsResult, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(jsResult, "$jsResult");
        jsResult.cancel();
    }

    public static final void a(JsResult jsResult, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(jsResult, "$jsResult");
        dialogInterface.dismiss();
        jsResult.confirm();
    }

    public static final boolean a(View view, MotionEvent motionEvent) {
        return motionEvent.getAction() == 2;
    }

    public static final void b(JsResult jsResult, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(jsResult, "$jsResult");
        dialogInterface.dismiss();
        jsResult.cancel();
    }

    private final com.hyprmx.android.sdk.presentation.j getPresenterFactory() {
        com.hyprmx.android.sdk.core.j jVar = com.hyprmx.android.sdk.core.t.a.f4521g;
        if (jVar != null) {
            return jVar.a.t();
        }
        return null;
    }

    @Override // com.hyprmx.android.sdk.webview.l
    public final void a() {
        HyprMXLog.d("Removing JS Interfaces");
        if (this.b != null) {
            this.a.removeJavascriptInterface("AndroidOfferViewerJavascriptInterface");
            this.a.removeJavascriptInterface("mraidJSInterface");
        }
    }

    public final void a(WebView webView) {
        webView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(webView);
    }

    @Override // com.hyprmx.android.sdk.webview.l, com.hyprmx.android.sdk.webview.c
    public final void a(String script) {
        Intrinsics.checkNotNullParameter(script, "script");
        this.a.evaluateJavascript(script, null);
    }

    @Override // com.hyprmx.android.sdk.webview.l
    public final void a(String url, String str) {
        Intrinsics.checkNotNullParameter(url, "url");
        b();
        HyprMXLog.d("loadUrl(" + url + ") with userAgent = " + str);
        if (str != null && (StringsKt__StringsJVMKt.isBlank(str) ^ true)) {
            this.a.getSettings().setUserAgentString(str);
        }
        this.a.loadUrl(url);
    }

    @Override // com.hyprmx.android.sdk.webview.l
    public final void a(String url, String data, String mimeType, String encoding) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        Intrinsics.checkNotNullParameter(encoding, "encoding");
        HyprMXLog.d("loadData " + data);
        this.a.loadDataWithBaseURL(url, data, mimeType, encoding, null);
    }

    @Override // com.hyprmx.android.sdk.webview.l
    public final void a(String url, byte[] postData) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(postData, "postData");
        this.a.postUrl(url, postData);
    }

    public final void a(boolean z) {
        if (z) {
            this.a.setOnTouchListener(null);
            return;
        }
        this.a.setOnTouchListener(new View.OnTouchListener() { // from class: com.hyprmx.android.sdk.webview.x
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return f.a(view, motionEvent);
            }
        });
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
    }

    @Override // com.hyprmx.android.sdk.webview.l
    public final void a(boolean z, String message, final JsResult jsResult) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(jsResult, "jsResult");
        Activity containingActivity = getContainingActivity();
        if (containingActivity != null) {
            AlertDialog.Builder positiveButton = new AlertDialog.Builder(containingActivity).setMessage(message).setPositiveButton(R.string.hyprmx_ok, new DialogInterface.OnClickListener() { // from class: com.hyprmx.android.sdk.webview.w
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    f.a(jsResult, dialogInterface, i);
                }
            });
            if (z) {
                positiveButton.setNegativeButton(R.string.hyprmx_cancel, new DialogInterface.OnClickListener() { // from class: com.hyprmx.android.sdk.webview.y
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        f.b(jsResult, dialogInterface, i);
                    }
                }).setCancelable(true).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.hyprmx.android.sdk.webview.z
                    @Override // android.content.DialogInterface.OnCancelListener
                    public final void onCancel(DialogInterface dialogInterface) {
                        f.a(jsResult, dialogInterface);
                    }
                });
            }
            AlertDialog alertDialogCreate = positiveButton.create();
            alertDialogCreate.setCanceledOnTouchOutside(true);
            alertDialogCreate.show();
        }
    }

    @Override // com.hyprmx.android.sdk.webview.l
    public final void a(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, String backgroundColor, String str, boolean z12) {
        Intrinsics.checkNotNullParameter(backgroundColor, "backgroundColor");
        this.f4753f = new q(z, z2, z3, z4, z5, z6, z7, z8, z9, z10, z11, backgroundColor, str, z12);
        d();
    }

    @Override // com.hyprmx.android.sdk.webview.l
    public final void b() {
        HyprMXLog.d("Attaching JS Interfaces");
        k kVar = this.b;
        if (kVar != null) {
            this.a.addJavascriptInterface(new com.hyprmx.android.sdk.jsinterface.a(kVar), "AndroidOfferViewerJavascriptInterface");
            this.a.addJavascriptInterface(new com.hyprmx.android.sdk.jsinterface.b(kVar), "mraidJSInterface");
        }
    }

    public final void b(String viewModelIdentifier, String str) {
        Intrinsics.checkNotNullParameter(viewModelIdentifier, "viewModelIdentifier");
        if ((str == null || StringsKt__StringsJVMKt.isBlank(str)) ? false : true) {
            this.a.getSettings().setUserAgentString(str);
        }
        k kVar = this.b;
        if (kVar != null) {
            kVar.h(viewModelIdentifier);
            return;
        }
        com.hyprmx.android.sdk.presentation.j presenterFactory = getPresenterFactory();
        if (presenterFactory != null) {
            n nVarA = presenterFactory.a(this, viewModelIdentifier);
            HyprMXLog.d("Updating webview with chrome, client, download, js listeners");
            this.a.setWebViewClient(new i(nVarA));
            this.a.setWebChromeClient(new g(nVarA));
            this.a.setDownloadListener(nVarA);
            this.b = nVarA;
        }
        b();
    }

    @Override // com.hyprmx.android.sdk.webview.l
    public final void b(boolean z) {
        HyprMXLog.d("Removing webview {" + this.a.hashCode());
        removeAllViews();
        if (z) {
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            this.a = m.a(context);
            d();
            k kVar = this.b;
            if (kVar != null) {
                this.a.setWebViewClient(new i(kVar));
                this.a.setWebChromeClient(new g(kVar));
                this.a.setDownloadListener(kVar);
            }
            a(this.a);
        }
    }

    public final void c() {
        k kVar = this.b;
        if (kVar != null) {
            kVar.L();
        }
        this.b = null;
        setContainingActivity(null);
        a();
        this.a.setWebChromeClient(null);
        this.a.setWebViewClient(new WebViewClient());
        this.a.loadUrl(AndroidWebViewClient.BLANK_PAGE);
        this.a.destroy();
    }

    public final void d() {
        q qVar = this.f4753f;
        if (qVar != null) {
            a(qVar.a);
            WebView webView = this.a;
            webView.setBackgroundColor(Color.parseColor("#" + qVar.l));
            boolean z = false;
            webView.setOverScrollMode(qVar.b ? 0 : 2);
            String str = qVar.m;
            if (str != null) {
                if (str.length() > 0) {
                    z = true;
                }
            }
            if (z) {
                webView.getSettings().setUserAgentString(qVar.m);
            }
            webView.getSettings().setJavaScriptEnabled(qVar.f4763e);
            webView.getSettings().setDomStorageEnabled(qVar.f4764f);
            webView.getSettings().setLoadWithOverviewMode(qVar.f4765g);
            webView.getSettings().setUseWideViewPort(qVar.h);
            webView.getSettings().setSupportZoom(qVar.c);
            webView.getSettings().setDisplayZoomControls(qVar.i);
            webView.getSettings().setBuiltInZoomControls(qVar.j);
            webView.getSettings().setSupportMultipleWindows(qVar.k);
            webView.getSettings().setMediaPlaybackRequiresUserGesture(qVar.n);
        }
    }

    public Activity getContainingActivity() {
        return this.c;
    }

    public String getCurrentUrl() {
        return this.f4751d;
    }

    public int getProgress() {
        return this.f4752e;
    }

    public final WebView getWebView() {
        return this.a;
    }

    @Override // com.hyprmx.android.sdk.webview.l
    public final void navigateBack() {
        this.a.goBack();
    }

    @Override // com.hyprmx.android.sdk.webview.l
    public final void navigateForward() {
        this.a.goForward();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        StringBuilder sb = new StringBuilder("onAttachedToWindow ");
        k kVar = this.b;
        sb.append(kVar != null ? kVar.a() : null);
        HyprMXLog.d(sb.toString());
        k kVar2 = this.b;
        if (kVar2 != null) {
            kVar2.i("onAttachedToWindow");
        }
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        StringBuilder sb = new StringBuilder("onDetachedFromWindow ");
        k kVar = this.b;
        sb.append(kVar != null ? kVar.a() : null);
        HyprMXLog.d(sb.toString());
        super.onDetachedFromWindow();
        k kVar2 = this.b;
        if (kVar2 != null) {
            kVar2.i("onDetachedFromWindow");
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        k kVar = this.b;
        if (kVar != null) {
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            float fB = com.hyprmx.android.sdk.utility.w.b(i, context);
            Context context2 = getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "context");
            kVar.b(fB, com.hyprmx.android.sdk.utility.w.b(i2, context2));
        }
    }

    @Override // com.hyprmx.android.sdk.webview.l
    public final void pauseJSExecution() {
        this.a.onPause();
    }

    @Override // com.hyprmx.android.sdk.webview.l
    public final void resumeJSExecution() {
        this.a.onResume();
    }

    public void setContainingActivity(Activity activity) {
        this.c = activity;
    }

    public final void setWebView(WebView webView) {
        Intrinsics.checkNotNullParameter(webView, "<set-?>");
        this.a = webView;
    }
}
