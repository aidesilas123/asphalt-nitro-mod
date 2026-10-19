package com.json.sdk.controller;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.core.view.InputDeviceCompat;
import com.json.g8;
import com.json.o2;
import com.json.sdk.utils.Logger;
import com.json.sdk.utils.SDKUtils;
import com.json.u7;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class OpenUrlActivity extends Activity {
    private static final int a = SDKUtils.generateViewId();
    private static final int b = SDKUtils.generateViewId();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private t f6549d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ProgressBar f6550e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f6551f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private RelativeLayout f6552g;
    private String h;
    private WebView c = null;
    private Handler i = new Handler();
    private boolean j = false;
    private final Runnable k = new b();

    class a implements View.OnSystemUiVisibilityChangeListener {
        a() {
        }

        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public void onSystemUiVisibilityChange(int i) {
            if ((i & InputDeviceCompat.SOURCE_TOUCHSCREEN) == 0) {
                OpenUrlActivity.this.i.removeCallbacks(OpenUrlActivity.this.k);
                OpenUrlActivity.this.i.postDelayed(OpenUrlActivity.this.k, 500L);
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            OpenUrlActivity.this.getWindow().getDecorView().setSystemUiVisibility(SDKUtils.getActivityUIFlags(OpenUrlActivity.this.j));
        }
    }

    private class c extends WebViewClient {
        private c() {
        }

        /* synthetic */ c(OpenUrlActivity openUrlActivity, a aVar) {
            this();
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            OpenUrlActivity.this.f6550e.setVisibility(4);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            OpenUrlActivity.this.f6550e.setVisibility(0);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
        }

        @Override // android.webkit.WebViewClient
        @TargetApi(26)
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            Logger.e("OpenUrlActivity", "Chromium process crashed - detail.didCrash():" + renderProcessGoneDetail.didCrash());
            OpenUrlActivity.this.finish();
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            List<String> listD = g8.e().d();
            if (listD != null && !listD.isEmpty()) {
                Iterator<String> it = listD.iterator();
                while (it.hasNext()) {
                    if (str.contains(it.next())) {
                        try {
                            OpenUrlActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                            OpenUrlActivity.this.f6549d.s();
                        } catch (Exception e2) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(e2 instanceof ActivityNotFoundException ? o2.c.z : o2.c.A);
                            if (OpenUrlActivity.this.f6549d != null) {
                                OpenUrlActivity.this.f6549d.b(sb.toString(), str);
                            }
                        }
                        OpenUrlActivity.this.finish();
                        return true;
                    }
                }
            }
            return super.shouldOverrideUrlLoading(webView, str);
        }
    }

    private void b() {
        if (this.f6550e == null) {
            this.f6550e = Build.VERSION.SDK_INT >= 11 ? new ProgressBar(new ContextThemeWrapper(this, R.style.Theme.Holo.Light.Dialog)) : new ProgressBar(this);
            this.f6550e.setId(b);
        }
        if (findViewById(b) == null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            this.f6550e.setLayoutParams(layoutParams);
            this.f6550e.setVisibility(4);
            this.f6552g.addView(this.f6550e);
        }
    }

    private void d() {
        if (this.c == null) {
            WebView webView = new WebView(getApplicationContext());
            this.c = webView;
            webView.setId(a);
            this.c.getSettings().setJavaScriptEnabled(true);
            this.c.setWebViewClient(new c(this, null));
            loadUrl(this.h);
        }
        if (findViewById(a) == null) {
            this.f6552g.addView(this.c, new RelativeLayout.LayoutParams(-1, -1));
        }
        b();
        t tVar = this.f6549d;
        if (tVar != null) {
            tVar.a(true, o2.h.Y);
        }
    }

    private void f() {
        WebView webView = this.c;
        if (webView != null) {
            webView.destroy();
        }
    }

    private void h() {
        requestWindowFeature(1);
    }

    private void j() {
        getWindow().setFlags(1024, 1024);
    }

    private void k() {
        ViewGroup viewGroup;
        t tVar = this.f6549d;
        if (tVar != null) {
            tVar.a(false, o2.h.Y);
            if (this.f6552g == null || (viewGroup = (ViewGroup) this.c.getParent()) == null) {
                return;
            }
            if (viewGroup.findViewById(a) != null) {
                viewGroup.removeView(this.c);
            }
            if (viewGroup.findViewById(b) != null) {
                viewGroup.removeView(this.f6550e);
            }
        }
    }

    @Override // android.app.Activity
    public void finish() {
        t tVar;
        if (this.f6551f && (tVar = this.f6549d) != null) {
            tVar.c(o2.h.j);
        }
        super.finish();
    }

    public void loadUrl(String str) {
        this.c.stopLoading();
        this.c.clearHistory();
        try {
            this.c.loadUrl(str);
        } catch (Throwable th) {
            Logger.e("OpenUrlActivity", "OpenUrlActivity:: loadUrl: " + th.toString());
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.c.canGoBack()) {
            this.c.goBack();
        } else {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Logger.i("OpenUrlActivity", "onCreate()");
        try {
            this.f6549d = (t) u7.b((Context) this).a().j();
            h();
            j();
            Bundle extras = getIntent().getExtras();
            this.h = extras.getString(t.b0);
            this.f6551f = extras.getBoolean(t.c0);
            boolean booleanExtra = getIntent().getBooleanExtra(o2.h.v, false);
            this.j = booleanExtra;
            if (booleanExtra) {
                getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new a());
                runOnUiThread(this.k);
            }
            RelativeLayout relativeLayout = new RelativeLayout(this);
            this.f6552g = relativeLayout;
            setContentView(relativeLayout, new ViewGroup.LayoutParams(-1, -1));
        } catch (Exception e2) {
            e2.printStackTrace();
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        f();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.j && (i == 25 || i == 24)) {
            this.i.postDelayed(this.k, 500L);
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        k();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        d();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (this.j && z) {
            runOnUiThread(this.k);
        }
    }
}
