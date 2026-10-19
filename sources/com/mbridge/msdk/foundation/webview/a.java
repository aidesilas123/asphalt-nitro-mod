package com.mbridge.msdk.foundation.webview;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import androidx.webkit.ProxyConfig;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.drive.DriveFile;
import com.mbridge.msdk.c.e;
import com.mbridge.msdk.c.f;
import com.mbridge.msdk.click.entity.JumpLoaderResult;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ae;
import com.mbridge.msdk.foundation.webview.BrowserView;
import com.mbridge.msdk.out.BaseTrackingListener;

/* JADX INFO: compiled from: BackPointBrowserViewListener.java */
/* JADX INFO: loaded from: classes4.dex */
public class a implements BrowserView.a {
    private static String a = "a";
    private Context b;
    private BaseTrackingListener c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CampaignEx f7252d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private BrowserView f7254f;
    private com.mbridge.msdk.click.a h;
    private long i;
    private int j;
    private JumpLoaderResult l;
    private String m;
    private boolean n;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f7253e = true;
    private boolean k = false;
    private final Runnable o = new Runnable() { // from class: com.mbridge.msdk.foundation.webview.a.1
        @Override // java.lang.Runnable
        public final void run() {
            aa.d(a.a, "webview js！超时上限：" + a.this.j + "ms");
            if (a.this.h != null && a.this.l != null) {
                a.this.l.setSuccess(false);
                a.this.l.setUrl(a.this.m);
                a.this.l.setType(2);
                a.this.l.setExceptionMsg("linktype 8 time out");
                a.this.h.a(a.this.l, a.this.f7252d, 1, false);
            }
            a aVar = a.this;
            if (aVar.d(null, aVar.m) && !a.this.k) {
                a.this.k = true;
                a aVar2 = a.this;
                aVar2.a(aVar2.b, a.this.m, a.this.f7252d);
            }
            if (a.this.c != null) {
                a.this.c.onFinishRedirection(a.this.f7252d, a.this.m);
            }
        }
    };

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Handler f7255g = new Handler(Looper.getMainLooper());

    public a(Context context, CampaignEx campaignEx, com.mbridge.msdk.click.a aVar, BrowserView browserView, BaseTrackingListener baseTrackingListener) {
        this.j = 10000;
        this.l = null;
        this.b = context;
        this.f7252d = campaignEx;
        this.f7254f = browserView;
        this.c = baseTrackingListener;
        e eVarB = f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
        eVarB = eVarB == null ? f.a().b() : eVarB;
        this.h = aVar;
        this.l = new JumpLoaderResult();
        this.j = (int) eVarB.aa();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str, CampaignEx campaignEx) {
        if (context == null) {
            return;
        }
        String currentLRid = campaignEx != null ? campaignEx.getCurrentLRid() : "";
        try {
            Class.forName("com.mbridge.msdk.activity.MBCommonActivity");
            Intent intent = new Intent(context, Class.forName("com.mbridge.msdk.activity.MBCommonActivity"));
            if (TextUtils.isEmpty(str)) {
                return;
            }
            b.a.put(str, this.f7254f);
            if (ae.a.b(str)) {
                str = "https://play.google.com/store/apps/details?id=" + str.replace("market://details?id=", "");
            }
            intent.putExtra("url", str);
            aa.b("url", "webview url = " + str);
            intent.setFlags(DriveFile.MODE_READ_WRITE);
            intent.putExtra("mvcommon", campaignEx);
            context.startActivity(intent);
        } catch (Exception unused) {
            ae.a(context, str, this.c, currentLRid);
        }
    }

    private void c() {
        this.f7255g.postDelayed(this.o, this.j);
    }

    private void d() {
        this.f7255g.removeCallbacks(this.o);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0084  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean d(android.webkit.WebView r7, java.lang.String r8) {
        /*
            r6 = this;
            java.lang.String r7 = "http"
            r0 = 1
            boolean r1 = android.text.TextUtils.isEmpty(r8)     // Catch: java.lang.Throwable -> La5
            if (r1 == 0) goto La
            return r0
        La:
            android.net.Uri r1 = android.net.Uri.parse(r8)     // Catch: java.lang.Throwable -> La5
            java.lang.String r2 = r1.getScheme()     // Catch: java.lang.Throwable -> La5
            boolean r2 = r2.equals(r7)     // Catch: java.lang.Throwable -> La5
            java.lang.String r3 = "https"
            r4 = 0
            if (r2 != 0) goto L28
            java.lang.String r2 = r1.getScheme()     // Catch: java.lang.Throwable -> La5
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> La5
            if (r2 == 0) goto L26
            goto L28
        L26:
            r2 = 0
            goto L29
        L28:
            r2 = 1
        L29:
            if (r2 == 0) goto L2c
            return r0
        L2c:
            java.lang.String r1 = r1.getScheme()     // Catch: java.lang.Throwable -> La5
            java.lang.String r2 = "intent"
            boolean r1 = r1.equals(r2)     // Catch: java.lang.Throwable -> La5
            if (r1 == 0) goto L94
            android.content.Intent r1 = android.content.Intent.parseUri(r8, r0)     // Catch: java.lang.Throwable -> La5
            java.lang.String r2 = r1.getPackage()     // Catch: java.lang.Throwable -> L53
            boolean r5 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Throwable -> L53
            if (r5 != 0) goto L5d
            android.content.Context r5 = r6.b     // Catch: java.lang.Throwable -> L53
            android.content.pm.PackageManager r5 = r5.getPackageManager()     // Catch: java.lang.Throwable -> L53
            android.content.Intent r2 = r5.getLaunchIntentForPackage(r2)     // Catch: java.lang.Throwable -> L53
            if (r2 == 0) goto L5d
            return r4
        L53:
            r2 = move-exception
            java.lang.String r5 = com.mbridge.msdk.foundation.webview.a.a     // Catch: java.lang.Throwable -> La5
            java.lang.String r2 = r2.getMessage()     // Catch: java.lang.Throwable -> La5
            com.mbridge.msdk.foundation.tools.aa.d(r5, r2)     // Catch: java.lang.Throwable -> La5
        L5d:
            java.lang.String r2 = "browser_fallback_url"
            java.lang.String r1 = r1.getStringExtra(r2)     // Catch: java.lang.Throwable -> L8a
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L8a
            if (r2 != 0) goto L94
            android.net.Uri r2 = android.net.Uri.parse(r8)     // Catch: java.lang.Throwable -> L8a
            java.lang.String r5 = r2.getScheme()     // Catch: java.lang.Throwable -> L8a
            boolean r7 = r5.equals(r7)     // Catch: java.lang.Throwable -> L8a
            if (r7 != 0) goto L84
            java.lang.String r7 = r2.getScheme()     // Catch: java.lang.Throwable -> L8a
            boolean r7 = r7.equals(r3)     // Catch: java.lang.Throwable -> L8a
            if (r7 == 0) goto L82
            goto L84
        L82:
            r7 = 0
            goto L85
        L84:
            r7 = 1
        L85:
            if (r7 == 0) goto L88
            return r0
        L88:
            r8 = r1
            goto L94
        L8a:
            r7 = move-exception
            java.lang.String r1 = com.mbridge.msdk.foundation.webview.a.a     // Catch: java.lang.Throwable -> La5
            java.lang.String r7 = r7.getMessage()     // Catch: java.lang.Throwable -> La5
            com.mbridge.msdk.foundation.tools.aa.d(r1, r7)     // Catch: java.lang.Throwable -> La5
        L94:
            android.content.Context r7 = r6.b     // Catch: java.lang.Throwable -> La5
            boolean r7 = com.mbridge.msdk.click.b.d(r7, r8)     // Catch: java.lang.Throwable -> La5
            if (r7 == 0) goto La4
            java.lang.String r7 = com.mbridge.msdk.foundation.webview.a.a     // Catch: java.lang.Throwable -> La5
            java.lang.String r8 = "openDeepLink"
            com.mbridge.msdk.foundation.tools.aa.d(r7, r8)     // Catch: java.lang.Throwable -> La5
            return r4
        La4:
            return r0
        La5:
            r7 = move-exception
            java.lang.String r8 = com.mbridge.msdk.foundation.webview.a.a
            java.lang.String r7 = r7.getMessage()
            com.mbridge.msdk.foundation.tools.aa.d(r8, r7)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.webview.a.d(android.webkit.WebView, java.lang.String):boolean");
    }

    private boolean e(WebView webView, String str) {
        String str2;
        try {
        } catch (Throwable th) {
            aa.d(a, th.getMessage());
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
                aa.d(a, th2.getMessage());
            }
            if (!TextUtils.isEmpty(str2) && this.b.getPackageManager().getLaunchIntentForPackage(str2) != null) {
                uri2.setFlags(DriveFile.MODE_READ_ONLY);
                this.b.startActivity(uri2);
                this.k = true;
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
                aa.d(a, th3.getMessage());
            }
            aa.d(a, th.getMessage());
            return false;
        }
        if (!com.mbridge.msdk.click.b.d(this.b, str)) {
            return false;
        }
        aa.d(a, "openDeepLink");
        this.k = true;
        return true;
    }

    @Override // com.mbridge.msdk.foundation.webview.BrowserView.a
    public final void a() {
    }

    @Override // com.mbridge.msdk.foundation.webview.BrowserView.a
    public final void a(WebView webView, int i, final String str, final String str2) {
        aa.c(a, str);
        d();
        com.mbridge.msdk.foundation.same.f.b.b().execute(new Runnable() { // from class: com.mbridge.msdk.foundation.webview.a.4
            @Override // java.lang.Runnable
            public final void run() {
                if (a.this.c != null) {
                    a.this.c.onFinishRedirection(a.this.f7252d, str2);
                }
                if (a.this.h == null || a.this.l == null) {
                    return;
                }
                a.this.l.setSuccess(false);
                a.this.l.setUrl(str2);
                a.this.l.setType(2);
                a.this.l.setExceptionMsg(str);
                a.this.h.a(a.this.l, a.this.f7252d, 1, true);
            }
        });
        if (!d(webView, str2) || this.k) {
            return;
        }
        this.k = true;
        a(this.b, str2, this.f7252d);
    }

    @Override // com.mbridge.msdk.foundation.webview.BrowserView.a
    public final void a(WebView webView, String str) {
        if (this.i == 0) {
            this.i = System.currentTimeMillis();
            if (!this.n) {
                this.n = true;
                c();
            }
        }
        this.m = str;
        this.f7253e = true;
    }

    @Override // com.mbridge.msdk.foundation.webview.BrowserView.a
    public final void a(WebView webView, String str, Bitmap bitmap) {
        if (this.i == 0) {
            this.i = System.currentTimeMillis();
            if (!this.n) {
                this.n = true;
                c();
            }
            this.k = false;
        }
        this.m = str;
        this.f7253e = true;
    }

    @Override // com.mbridge.msdk.foundation.webview.BrowserView.a
    public final boolean b(WebView webView, final String str) {
        aa.d(a, "shouldOverrideUrlLoading1  " + str);
        this.f7253e = false;
        if (ae.a.a(str) && ae.a.a(this.b, str, null)) {
            this.k = true;
        }
        boolean zE = e(webView, str);
        if (zE) {
            this.i = 0L;
            this.f7253e = false;
            d();
            com.mbridge.msdk.foundation.same.f.b.b().execute(new Runnable() { // from class: com.mbridge.msdk.foundation.webview.a.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (a.this.h != null && a.this.l != null) {
                        a.this.l.setSuccess(true);
                        a.this.l.setUrl(str);
                        a.this.l.setType(2);
                        a.this.h.a(a.this.l, a.this.f7252d, 1, true);
                    }
                    if (a.this.c != null) {
                        a.this.c.onFinishRedirection(a.this.f7252d, str);
                    }
                }
            });
        }
        return zE;
    }

    @Override // com.mbridge.msdk.foundation.webview.BrowserView.a
    public final void c(WebView webView, final String str) {
        aa.d(a, "onPageFinished1  " + str);
        if (this.f7253e) {
            this.i = 0L;
            this.f7253e = false;
            com.mbridge.msdk.foundation.same.f.b.b().execute(new Runnable() { // from class: com.mbridge.msdk.foundation.webview.a.3
                @Override // java.lang.Runnable
                public final void run() {
                    if (a.this.c != null) {
                        a.this.c.onFinishRedirection(a.this.f7252d, str);
                    }
                    if (a.this.h == null || a.this.l == null) {
                        return;
                    }
                    a.this.l.setSuccess(true);
                    a.this.l.setUrl(str);
                    a.this.l.setType(2);
                    a.this.h.a(a.this.l, a.this.f7252d, 1, true);
                }
            });
            if (TextUtils.isEmpty(str)) {
                return;
            }
            d();
            Uri uri = Uri.parse(str);
            if (!(uri.getScheme().equals(ProxyConfig.MATCH_HTTP) || uri.getScheme().equals("https")) || this.k) {
                return;
            }
            this.k = true;
            a(this.b, str, this.f7252d);
        }
    }
}
