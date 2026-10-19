package com.applovin.sdk;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.applovin.impl.sdk.ab;
import com.applovin.impl.sdk.c.b;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.u;
import com.applovin.impl.sdk.x;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class AppLovinWebViewActivity extends Activity {
    public static final String EVENT_DISMISSED_VIA_BACK_BUTTON = "dismissed_via_back_button";
    public static final String INTENT_EXTRA_KEY_IMMERSIVE_MODE_ON = "immersive_mode_on";
    public static final String INTENT_EXTRA_KEY_LOAD_URL = "load_url";
    public static final String INTENT_EXTRA_KEY_SDK_KEY = "sdk_key";
    public static final String URI_PATH_WEBVIEW_EVENT = "webview_event";
    private final AtomicBoolean aZB = new AtomicBoolean();
    private String aZC;
    private EventListener aZD;
    private WebView webView;

    /* JADX INFO: renamed from: com.applovin.sdk.AppLovinWebViewActivity$1, reason: invalid class name */
    class AnonymousClass1 extends ab {
        final /* synthetic */ n atm;

        AnonymousClass1(n nVar) {
            this.atm = nVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void T(n nVar) {
            if (!((Boolean) nVar.a(b.aQq)).booleanValue() || !AppLovinWebViewActivity.this.aZB.compareAndSet(false, true)) {
                AppLovinWebViewActivity.this.finish();
                return;
            }
            AppLovinWebViewActivity.this.S(nVar);
            if (StringUtils.isValidString(AppLovinWebViewActivity.this.aZC)) {
                AppLovinWebViewActivity.this.webView.loadUrl(AppLovinWebViewActivity.this.aZC);
            }
        }

        @Override // com.applovin.impl.sdk.ab, android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            if (AppLovinWebViewActivity.this.webView == webView) {
                AppLovinWebViewActivity.this.webView.destroy();
                AppLovinWebViewActivity.this.webView = null;
                AppLovinWebViewActivity appLovinWebViewActivity = AppLovinWebViewActivity.this;
                final n nVar = this.atm;
                appLovinWebViewActivity.runOnUiThread(new Runnable() { // from class: com.applovin.sdk.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.T(nVar);
                    }
                });
            }
            return super.onRenderProcessGone(webView, renderProcessGoneDetail);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Uri uri = Uri.parse(str);
            String scheme = uri.getScheme();
            String host = uri.getHost();
            String path = uri.getPath();
            this.atm.BN();
            if (x.Fn()) {
                this.atm.BN().f("AppLovinWebViewActivity", "Handling url load: " + str);
            }
            if (!"applovin".equalsIgnoreCase(scheme) || !"com.applovin.sdk".equalsIgnoreCase(host) || AppLovinWebViewActivity.this.aZD == null) {
                return super.shouldOverrideUrlLoading(webView, str);
            }
            if (!path.endsWith(AppLovinWebViewActivity.URI_PATH_WEBVIEW_EVENT)) {
                return true;
            }
            Set<String> queryParameterNames = uri.getQueryParameterNames();
            String str2 = queryParameterNames.isEmpty() ? "" : (String) queryParameterNames.toArray()[0];
            if (!StringUtils.isValidString(str2)) {
                this.atm.BN();
                if (!x.Fn()) {
                    return true;
                }
                this.atm.BN().i("AppLovinWebViewActivity", "Failed to parse WebView event parameter");
                return true;
            }
            String queryParameter = uri.getQueryParameter(str2);
            this.atm.BN();
            if (x.Fn()) {
                this.atm.BN().f("AppLovinWebViewActivity", "Parsed WebView event parameter name: " + str2 + " and value: " + queryParameter);
            }
            AppLovinWebViewActivity.this.aZD.onReceivedEvent(queryParameter);
            return true;
        }
    }

    public interface EventListener {
        void onReceivedEvent(String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S(n nVar) {
        WebView webViewB = u.b(this, "WebView Activity");
        this.webView = webViewB;
        if (webViewB == null) {
            finish();
            return;
        }
        setContentView(webViewB);
        WebSettings settings = this.webView.getSettings();
        settings.setSupportMultipleWindows(false);
        settings.setJavaScriptEnabled(true);
        this.webView.setVerticalScrollBarEnabled(true);
        this.webView.setHorizontalScrollBarEnabled(true);
        this.webView.setScrollBarStyle(33554432);
        this.webView.setWebViewClient(new AnonymousClass1(nVar));
    }

    public void loadUrl(String str, EventListener eventListener) {
        this.aZD = eventListener;
        this.aZC = str;
        this.aZB.set(false);
        WebView webView = this.webView;
        if (webView != null) {
            webView.loadUrl(str);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        EventListener eventListener = this.aZD;
        if (eventListener != null) {
            eventListener.onReceivedEvent(EVENT_DISMISSED_VIA_BACK_BUTTON);
        }
        super.onBackPressed();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra(INTENT_EXTRA_KEY_SDK_KEY);
        if (TextUtils.isEmpty(stringExtra)) {
            x.H("AppLovinWebViewActivity", "No SDK key specified");
            finish();
            return;
        }
        S(AppLovinSdk.getInstance(stringExtra, new AppLovinSdkSettings(getApplicationContext()), getApplicationContext()).a());
        if (getIntent().getBooleanExtra(INTENT_EXTRA_KEY_IMMERSIVE_MODE_ON, false)) {
            getWindow().getDecorView().setSystemUiVisibility(5894);
        }
        String stringExtra2 = getIntent().getStringExtra(INTENT_EXTRA_KEY_LOAD_URL);
        this.aZC = stringExtra2;
        if (StringUtils.isValidString(stringExtra2)) {
            this.webView.loadUrl(this.aZC);
        }
    }
}
