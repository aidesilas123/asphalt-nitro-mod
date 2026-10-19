package com.gameloft.android2d.iap.utils;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.telephony.SmsManager;
import android.view.KeyEvent;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.gameloft.android.ANMP.GloftAGHM.R;
import com.gameloft.android2d.iap.IAPLib;
import com.gameloft.android2d.iap.IAP_CallBack;
import com.json.b4;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class MyWebView extends Activity {
    private static com.gameloft.android2d.iap.billings.a a;
    private static String b;
    private static HashMap<String, String> c = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WebView f2883d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f2884e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f2885f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f2886g;
    private String h;

    class a implements Runnable {

        /* JADX INFO: renamed from: com.gameloft.android2d.iap.utils.MyWebView$a$a, reason: collision with other inner class name */
        class RunnableC0216a implements Runnable {
            RunnableC0216a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                MyWebView.a.k(false);
            }
        }

        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyWebView myWebView = MyWebView.this;
            myWebView.f2883d = (WebView) myWebView.findViewById(R.id.webview);
            String url = MyWebView.this.f2883d.getUrl();
            if (MyWebView.a.t().equals(SUtils.getStringRS(R.string.k_VBGamerBilling))) {
                if (url != null) {
                    if ((url.indexOf(SUtils.getStringRS(R.string.k_keySuccessVBGamer)) > 0 || url.indexOf("&error=") > 0) && !MyWebView.this.f2884e) {
                        MyWebView.this.f2884e = true;
                        if (url.indexOf(SUtils.getStringRS(R.string.k_keySuccessVBGamer)) > 0) {
                            RMS.saveWAPPurchaseID((String) MyWebView.c.get(SUtils.getStringRS(R.string.k_headerVBGamerPurchaseID)));
                            MyWebView.a.l();
                        } else {
                            IAPLib.setResult(3);
                            IAPLib.setError(SUtils.parseIntNumber(MyWebView.this.a()));
                        }
                        MyWebView.this.d();
                        return;
                    }
                    return;
                }
                return;
            }
            if (MyWebView.this.f2883d.findAll(SUtils.getStringRS(R.string.k_keyPurchaseIDWP)) == 0) {
                if (url == null) {
                    return;
                }
                if (url.indexOf(SUtils.getStringRS(R.string.k_keySuccessWP) + "&id=") <= 0 && url.indexOf("&error=") <= 0 && url.indexOf("?error=") <= 0) {
                    return;
                }
            }
            if (MyWebView.this.f2884e) {
                return;
            }
            MyWebView.this.f2884e = true;
            if (url.indexOf(SUtils.getStringRS(R.string.k_keySuccessWP) + "&id=") > 0) {
                RMS.saveWAPPurchaseID(MyWebView.this.b());
                RMS.rms_SaveInfo(MyWebView.this.c(), 39);
                new Thread(new RunnableC0216a()).start();
            } else if (url.indexOf(SUtils.getStringRS(R.string.k_keyFraudError)) > 0 || url.indexOf(SUtils.getStringRS(R.string.k_keyGLLimits)) > 0 || url.indexOf(SUtils.getStringRS(R.string.k_keyWPLimits)) > 0) {
                IAPLib.CheckWPLimitation(url, MyWebView.c);
            } else if (url.indexOf("error=E00007") > 0) {
                IAPLib.setResult(10);
                IAPLib.setError(-100);
                IAP_CallBack.IAP_OnPurchaseRequestCancelCallback();
            } else {
                IAPLib.setResult(3);
                IAPLib.setError(-5);
            }
            MyWebView.this.d();
        }
    }

    class b extends WebViewClient {
        ProgressDialog a = null;
        MyWebView b;

        public b(MyWebView myWebView) {
            this.b = null;
            this.b = myWebView;
        }

        @Override // android.webkit.WebViewClient
        public void onLoadResource(WebView webView, String str) {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            MyWebView.this.f2885f = false;
            try {
                ProgressDialog progressDialog = this.a;
                if (progressDialog == null) {
                    this.a = new ProgressDialog(MyWebView.this);
                } else {
                    progressDialog.dismiss();
                    this.a = null;
                }
                this.b.e();
            } catch (Exception unused) {
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            MyWebView.this.f2885f = true;
            if (this.a == null) {
                this.a = new ProgressDialog(MyWebView.this);
            }
            this.a.setProgressStyle(0);
            this.a.setMessage(SUtils.getLocalizedString(R.string.IAP_SAMSUNG_WAITING));
            try {
                this.a.show();
            } catch (Exception unused) {
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            ProgressDialog progressDialog = this.a;
            if (progressDialog != null) {
                progressDialog.dismiss();
                this.a = null;
            }
            IAPLib.setResult(3);
            IAPLib.setError(-1);
            MyWebView.this.d();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            if (sslError.getPrimaryError() != 4) {
                IAPLib.setResult(3);
                IAPLib.setError(-26);
                MyWebView.this.d();
            } else {
                IAPLib.setResult(3);
                IAPLib.setError(-25);
                MyWebView.this.d();
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (!MyWebView.a.t().equals(SUtils.getStringRS(R.string.k_VBGamerBilling)) || str == null || !str.startsWith("sms:")) {
                return false;
            }
            int iIndexOf = str.indexOf("sms:");
            int iIndexOf2 = str.indexOf("?body=");
            MyWebView.this.f2886g = str.substring(iIndexOf + 4, iIndexOf2);
            MyWebView.this.h = str.substring(iIndexOf2 + 6);
            try {
                MyWebView myWebView = MyWebView.this;
                myWebView.h = URLDecoder.decode(myWebView.h, b4.L);
            } catch (UnsupportedEncodingException unused) {
            }
            if (Build.VERSION.SDK_INT <= 22) {
                MyWebView.this.f();
                MyWebView.this.d();
                return true;
            }
            if (this.b.checkSelfPermission("android.permission.SEND_SMS") != 0) {
                this.b.requestPermissions(new String[]{"android.permission.SEND_SMS"}, 0);
                return true;
            }
            MyWebView.this.f();
            MyWebView.this.d();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a() {
        return this.f2883d.getUrl().substring(this.f2883d.getUrl().indexOf("&error=") + 7, this.f2883d.getUrl().indexOf("&message="));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b() {
        String strSubstring = this.f2883d.getUrl().substring(this.f2883d.getUrl().indexOf("&id=") + 4, this.f2883d.getUrl().length());
        return strSubstring.substring(0, strSubstring.indexOf("&trxid="));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String c() {
        String strSubstring = this.f2883d.getUrl().substring(this.f2883d.getUrl().indexOf("&trxid=") + 7, this.f2883d.getUrl().length());
        return strSubstring.substring(0, strSubstring.indexOf("&v="));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        try {
            WebView webView = this.f2883d;
            if (webView != null) {
                webView.clearHistory();
            }
        } catch (Exception unused) {
        }
        finish();
    }

    public static void startWebView(com.gameloft.android2d.iap.billings.a aVar, String str, HashMap<String, String> map) {
        a = aVar;
        b = str;
        c = map;
        SUtils.getContext().startActivity(new Intent(SUtils.getContext(), (Class<?>) MyWebView.class));
    }

    public void e() {
        runOnUiThread(new a());
    }

    public void f() {
        SmsManager.getDefault().sendTextMessage(this.f2886g, null, this.h, null, null);
        RMS.saveWAPPurchaseID(c.get(SUtils.getStringRS(R.string.k_headerVBGamerPurchaseID)));
        a.m(System.currentTimeMillis());
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f2884e = false;
        setContentView(R.layout.iap_webview);
        WebView webView = (WebView) findViewById(R.id.webview);
        this.f2883d = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f2883d.removeJavascriptInterface("searchBoxJavaBridge_");
        this.f2883d.removeJavascriptInterface("accessibility");
        this.f2883d.removeJavascriptInterface("accessibilityTraversal");
        this.f2883d.getSettings().setSavePassword(false);
        this.f2883d.loadUrl(b, c);
        this.f2883d.setWebViewClient(new b(this));
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        WebView webView = this.f2883d;
        if (webView != null) {
            webView.removeAllViews();
            this.f2883d.destroy();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        WebView webView;
        if (i != 4 || (webView = this.f2883d) == null || this.f2885f) {
            return super.onKeyDown(i, keyEvent);
        }
        if (webView.canGoBack()) {
            this.f2883d.goBack();
            return true;
        }
        if (this.f2884e) {
            return true;
        }
        IAPLib.setResult(10);
        IAPLib.setError(-100);
        IAP_CallBack.IAP_OnPurchaseRequestCancelCallback();
        d();
        return true;
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (strArr[0].equals("android.permission.SEND_SMS")) {
            if (iArr[0] == 0) {
                f();
            } else {
                IAPLib.showWarningPermissionDialog("android.permission.SEND_SMS");
            }
        }
        d();
    }
}
