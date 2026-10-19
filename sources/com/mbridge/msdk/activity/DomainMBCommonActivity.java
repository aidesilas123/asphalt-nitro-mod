package com.mbridge.msdk.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.WebView;
import android.widget.Toast;
import androidx.webkit.ProxyConfig;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.drive.DriveFile;
import com.mbridge.msdk.click.b;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ae;
import com.mbridge.msdk.foundation.tools.ao;
import com.mbridge.msdk.foundation.webview.BrowserView;

/* JADX INFO: loaded from: classes4.dex */
public class DomainMBCommonActivity extends Activity {
    private CampaignEx b;
    protected BrowserView browserView;
    String a = "";
    private BrowserView.a c = new BrowserView.a() { // from class: com.mbridge.msdk.activity.DomainMBCommonActivity.1
        @Override // com.mbridge.msdk.foundation.webview.BrowserView.a
        public final void a() {
            DomainMBCommonActivity.this.finish();
        }

        @Override // com.mbridge.msdk.foundation.webview.BrowserView.a
        public final void a(WebView webView, int i, String str, String str2) {
        }

        @Override // com.mbridge.msdk.foundation.webview.BrowserView.a
        public final void a(WebView webView, String str) {
        }

        @Override // com.mbridge.msdk.foundation.webview.BrowserView.a
        public final void a(WebView webView, String str, Bitmap bitmap) {
            aa.d("MBCommonActivity", "onPageStarted  " + str);
        }

        @Override // com.mbridge.msdk.foundation.webview.BrowserView.a
        public final boolean b(WebView webView, String str) {
            aa.d("MBCommonActivity", "shouldOverrideUrlLoading  " + str);
            if (ae.a.a(str) && ae.a.a(DomainMBCommonActivity.this, str, null)) {
                DomainMBCommonActivity.this.finish();
            }
            return DomainMBCommonActivity.this.a(webView, str);
        }

        @Override // com.mbridge.msdk.foundation.webview.BrowserView.a
        public final void c(WebView webView, String str) {
            aa.d("MBCommonActivity", "onPageFinished  " + str);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(WebView webView, String str) {
        String str2;
        try {
        } catch (Throwable th) {
            aa.d("MBCommonActivity", th.getMessage());
            return false;
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Uri uri = Uri.parse(str);
        if (uri.getScheme().equals(ProxyConfig.MATCH_HTTP) || uri.getScheme().equals("https")) {
            return false;
        }
        if (uri.getScheme().equals(SDKConstants.PARAM_INTENT)) {
            Intent uri2 = Intent.parseUri(str, 1);
            try {
                str2 = uri2.getPackage();
            } catch (Throwable th2) {
                aa.d("MBCommonActivity", th2.getMessage());
            }
            if (!TextUtils.isEmpty(str2) && getPackageManager().getLaunchIntentForPackage(str2) != null) {
                uri2.setFlags(DriveFile.MODE_READ_ONLY);
                startActivityForResult(uri2, 0);
                finish();
                return true;
            }
            try {
                String stringExtra = uri2.getStringExtra("browser_fallback_url");
                if (!TextUtils.isEmpty(stringExtra)) {
                    Uri uri3 = Uri.parse(str);
                    if (uri3.getScheme().equals(ProxyConfig.MATCH_HTTP) || uri3.getScheme().equals("https")) {
                        webView.loadUrl(stringExtra);
                        return false;
                    }
                    str = stringExtra;
                }
            } catch (Throwable th3) {
                aa.d("MBCommonActivity", th3.getMessage());
            }
            aa.d("MBCommonActivity", th.getMessage());
            return false;
        }
        if (b.d(this, str)) {
            aa.d("MBCommonActivity", "openDeepLink");
            finish();
            return true;
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return !(str.startsWith(ProxyConfig.MATCH_HTTP) || str.startsWith("https"));
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            requestWindowFeature(1);
        } catch (Throwable th) {
            aa.d("MBCommonActivity", th.getMessage());
        }
        if (com.mbridge.msdk.foundation.controller.b.d().g() == null) {
            com.mbridge.msdk.foundation.controller.b.d().b(getApplicationContext());
        }
        com.mbridge.msdk.foundation.controller.b.d().a((Context) this);
        String stringExtra = getIntent().getStringExtra("url");
        this.a = stringExtra;
        if (TextUtils.isEmpty(stringExtra)) {
            Toast.makeText(this, "Error: no data", 0).show();
            return;
        }
        this.b = (CampaignEx) getIntent().getSerializableExtra("mvcommon");
        if (com.mbridge.msdk.foundation.webview.b.a.containsKey(this.a)) {
            BrowserView browserView = com.mbridge.msdk.foundation.webview.b.a.get(this.a);
            this.browserView = browserView;
            if (browserView != null) {
                browserView.setListener(this.c);
            }
        } else {
            BrowserView browserView2 = new BrowserView(this, this.b);
            this.browserView = browserView2;
            browserView2.setListener(this.c);
            this.browserView.loadUrl(this.a);
        }
        BrowserView browserView3 = this.browserView;
        if (browserView3 != null) {
            ao.a(browserView3);
            setContentView(this.browserView);
        }
    }
}
