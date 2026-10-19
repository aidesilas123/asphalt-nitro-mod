package com.json.sdk.controller;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.CountDownTimer;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.DownloadListener;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.Toast;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.drive.DriveFile;
import com.json.MessageToNative;
import com.json.a6;
import com.json.b4;
import com.json.bd;
import com.json.da;
import com.json.e5;
import com.json.e9;
import com.json.f0;
import com.json.fa;
import com.json.g6;
import com.json.g8;
import com.json.gb;
import com.json.h6;
import com.json.ha;
import com.json.hb;
import com.json.i2;
import com.json.i6;
import com.json.i8;
import com.json.j3;
import com.json.j6;
import com.json.ja;
import com.json.k0;
import com.json.k2;
import com.json.k3;
import com.json.l2;
import com.json.m6;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.n3;
import com.json.nd;
import com.json.o2;
import com.json.o6;
import com.json.od;
import com.json.p2;
import com.json.p8;
import com.json.q2;
import com.json.q5;
import com.json.q6;
import com.json.s3;
import com.json.s8;
import com.json.sdk.controller.f;
import com.json.sdk.controller.k;
import com.json.sdk.controller.l;
import com.json.sdk.utils.IronSourceStorageUtils;
import com.json.sdk.utils.Logger;
import com.json.sdk.utils.SDKUtils;
import com.json.v4;
import com.json.w2;
import com.json.wc;
import com.json.x2;
import com.json.y2;
import com.json.y6;
import com.json.z2;
import com.kidoz.sdk.api.general.UniquePlacement.UniquePlacementId;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;
import com.unity3d.ads.adplayer.AndroidWebViewClient;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import com.vungle.ads.internal.model.AdPayload;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class t implements com.json.sdk.controller.k, fa, DownloadListener {
    public static int Z = 0;
    private static String a = "success";
    public static String a0 = "is_store";
    private static String b = "fail";
    public static String b0 = "external_url";
    public static String c0 = "secondary_web_view";
    private y2 A;
    private da B;
    private x2 C;
    private String D;
    private com.json.sdk.controller.d E;
    private bd F;
    private f0 G;
    private k3 J;
    private com.json.sdk.controller.n K;
    private com.json.sdk.controller.o L;
    private com.json.sdk.controller.s M;
    private com.json.sdk.controller.i N;
    private com.json.sdk.controller.a O;
    private com.json.sdk.controller.p P;
    private nd Q;
    private com.json.sdk.controller.g R;
    private i2 S;
    private JSONObject T;
    private k.a U;
    private k.b V;
    q2 X;
    final i8 Y;
    private final q5 c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f6601g;
    private String h;
    private Map<String, String> i;
    private ha i0;
    private final s3 j;
    private boolean k;
    private s l;
    public CountDownTimer m;
    private boolean n;
    private CountDownTimer o;
    private final r s;
    private View t;
    private FrameLayout u;
    private WebChromeClient.CustomViewCallback v;
    private FrameLayout w;
    private x x;
    private String y;
    private z2 z;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6598d = t.class.getSimpleName();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6599e = IronSourceConstants.IRONSOURCE_CONFIG_NAME;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f6600f = "We're sorry, some error occurred. we will investigate it";
    private int p = 50;
    private int q = 50;
    private String r = o2.e.b;
    private Object H = new Object();
    private boolean I = false;
    private final e5 W = e9.h().c();

    class a implements Runnable {
        final /* synthetic */ h6.e a;
        final /* synthetic */ j3 b;
        final /* synthetic */ String c;

        a(h6.e eVar, j3 j3Var, String str) {
            this.a = eVar;
            this.b = j3Var;
            this.c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            h6.e eVar = h6.e.RewardedVideo;
            h6.e eVar2 = this.a;
            if (eVar != eVar2 && h6.e.Interstitial != eVar2 && h6.e.Banner != eVar2) {
                if (h6.e.OfferWall == eVar2) {
                    t.this.B.onOfferwallInitFail(this.c);
                    return;
                } else {
                    if (h6.e.OfferWallCredits == eVar2) {
                        t.this.B.onGetOWCreditsFailed(this.c);
                        return;
                    }
                    return;
                }
            }
            j3 j3Var = this.b;
            if (j3Var == null || TextUtils.isEmpty(j3Var.h())) {
                return;
            }
            w2 w2VarV = t.this.v(this.a);
            Log.d(t.this.f6598d, "onAdProductInitFailed (message:" + this.c + ")(" + this.a + ")");
            if (w2VarV != null) {
                w2VarV.a(this.a, this.b.h(), this.c);
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.a(1);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.a(1);
        }
    }

    class d implements Runnable {
        final /* synthetic */ i6 a;

        d(i6 i6Var) {
            this.a = i6Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.R.b("controller html - failed to download - " + this.a.b());
        }
    }

    class e implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;

        e(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (t.this.k() == h6.d.MODE_3.a()) {
                Toast.makeText(t.this.j(), this.a + " : " + this.b, 1).show();
            }
        }
    }

    class f implements Runnable {
        final /* synthetic */ Context a;

        f(Context context) {
            this.a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.y0(this.a);
        }
    }

    class g implements Runnable {
        final /* synthetic */ Context a;

        g(Context context) {
            this.a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.C0(this.a);
        }
    }

    class h implements Runnable {
        final /* synthetic */ h6.e a;
        final /* synthetic */ String b;

        h(h6.e eVar, String str) {
            this.a = eVar;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            h6.e eVar = this.a;
            if (eVar != h6.e.RewardedVideo && eVar != h6.e.Interstitial) {
                if (eVar == h6.e.OfferWall) {
                    t.this.B.onOWAdClosed();
                }
            } else {
                w2 w2VarV = t.this.v(eVar);
                if (w2VarV != null) {
                    w2VarV.a(this.a, this.b);
                }
            }
        }
    }

    class i extends i2 {
        i(JSONObject jSONObject, Context context) {
            super(jSONObject, context);
        }

        @Override // com.json.i2, com.json.d5
        public void a() {
            if (t.this.k) {
                t.this.m("none");
            }
        }

        @Override // com.json.i2, com.json.d5
        public void a(String str, JSONObject jSONObject) {
            if (t.this.k) {
                t.this.m(str);
            }
        }

        @Override // com.json.i2, com.json.d5
        public void b(String str, JSONObject jSONObject) {
            if (jSONObject == null || !t.this.k) {
                return;
            }
            try {
                jSONObject.put("connectionType", str);
                t.this.e(jSONObject);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    class j implements nd {
        j() {
        }

        @Override // com.json.nd
        public void a(String str, JSONObject jSONObject) {
            t.this.N0(t.this.j0(str, jSONObject.toString()));
        }
    }

    class k implements Runnable {
        final /* synthetic */ JSONObject a;
        final /* synthetic */ WebView b;
        final /* synthetic */ String c;

        k(JSONObject jSONObject, WebView webView, String str) {
            this.a = jSONObject;
            this.b = webView;
            this.c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.R(this.a, this.b);
            t.this.S0(AndroidWebViewClient.BLANK_PAGE);
            t.this.S0(this.c);
        }
    }

    class l extends CountDownTimer {
        final /* synthetic */ int a;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                t.this.R.b(o2.c.j);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(long j, long j2, int i) {
            super(j, j2);
            this.a = i;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            Logger.i(t.this.f6598d, "Loading Controller Timer Finish");
            int i = this.a;
            if (i == 3) {
                t.this.f0(new a());
            } else {
                t.this.a(i + 1);
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
            Logger.i(t.this.f6598d, "Loading Controller Timer Tick " + j);
        }
    }

    class m implements v {
        m() {
        }

        @Override // com.ironsource.sdk.controller.t.v
        public void a(String str, h6.e eVar, j3 j3Var) {
            t.this.O(str, eVar, j3Var);
        }
    }

    class n implements v {
        n() {
        }

        @Override // com.ironsource.sdk.controller.t.v
        public void a(String str, h6.e eVar, j3 j3Var) {
            t.this.O(str, eVar, j3Var);
        }
    }

    class o implements v {
        o() {
        }

        @Override // com.ironsource.sdk.controller.t.v
        public void a(String str, h6.e eVar, j3 j3Var) {
            t.this.O(str, eVar, j3Var);
        }
    }

    class p implements v {
        p() {
        }

        @Override // com.ironsource.sdk.controller.t.v
        public void a(String str, h6.e eVar, j3 j3Var) {
            t.this.O(str, eVar, j3Var);
        }
    }

    class q implements v {
        q() {
        }

        @Override // com.ironsource.sdk.controller.t.v
        public void a(String str, h6.e eVar, j3 j3Var) {
            t.this.O(str, eVar, j3Var);
        }
    }

    private class r extends WebChromeClient {
        private r() {
        }

        /* synthetic */ r(t tVar, i iVar) {
            this();
        }

        @Override // android.webkit.WebChromeClient
        public View getVideoLoadingProgressView() {
            FrameLayout frameLayout = new FrameLayout(t.this.Y.getContext());
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            return frameLayout;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            Logger.i("MyApplication", consoleMessage.message() + " -- From line " + consoleMessage.lineNumber() + " of " + consoleMessage.sourceId());
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
            WebView webView2 = new WebView(webView.getContext());
            webView2.setWebChromeClient(this);
            webView2.setWebViewClient(new C0368t(t.this, null));
            ((WebView.WebViewTransport) message.obj).setWebView(webView2);
            message.sendToTarget();
            Logger.i("onCreateWindow", "onCreateWindow");
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public void onHideCustomView() {
            Logger.i("Test", "onHideCustomView");
            if (t.this.t == null) {
                return;
            }
            t.this.t.setVisibility(8);
            t.this.u.removeView(t.this.t);
            t.this.t = null;
            t.this.u.setVisibility(8);
            t.this.v.onCustomViewHidden();
            t.this.Y.setVisibility(0);
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            Logger.i("Test", "onShowCustomView");
            t.this.Y.setVisibility(8);
            if (t.this.t != null) {
                Logger.i("Test", "mCustomView != null");
                customViewCallback.onCustomViewHidden();
                return;
            }
            Logger.i("Test", "mCustomView == null");
            t.this.u.addView(view);
            t.this.t = view;
            t.this.v = customViewCallback;
            t.this.u.setVisibility(0);
        }
    }

    static class s {
        h6.e a;
        String b;

        public s(h6.e eVar, String str) {
            this.a = eVar;
            this.b = str;
        }

        String a() {
            return this.b;
        }

        h6.e b() {
            return this.a;
        }
    }

    /* JADX INFO: renamed from: com.ironsource.sdk.controller.t$t, reason: collision with other inner class name */
    private class C0368t extends WebViewClient {
        private C0368t() {
        }

        /* synthetic */ C0368t(t tVar, i iVar) {
            this();
        }

        @Override // android.webkit.WebViewClient
        @TargetApi(26)
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            Logger.e(t.this.f6598d, "Chromium process crashed - detail.didCrash(): " + renderProcessGoneDetail.didCrash());
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Context contextJ = t.this.j();
            Intent intent = new Intent(contextJ, (Class<?>) OpenUrlActivity.class);
            intent.putExtra(t.b0, str);
            intent.putExtra(t.c0, false);
            contextJ.startActivity(intent);
            return true;
        }
    }

    public class u {

        class a implements Runnable {
            final /* synthetic */ String a;

            a(String str) {
                this.a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    t.this.P.g(new JSONObject(this.a), u.this.new e0());
                } catch (Exception e2) {
                    e2.printStackTrace();
                    Logger.i(t.this.f6598d, "fileSystemAPI failed with exception " + e2.getMessage());
                }
            }
        }

        class a0 implements Runnable {
            final /* synthetic */ String a;

            a0(String str) {
                this.a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    Logger.i(t.this.f6598d, "omidAPI(" + this.a + ")");
                    t.this.K.b(new hb(this.a).toString(), u.this.new e0());
                } catch (Exception e2) {
                    e2.printStackTrace();
                    Logger.i(t.this.f6598d, "omidAPI failed with exception " + e2.getMessage());
                }
            }
        }

        class b implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ String b;

            b(String str, String str2) {
                this.a = str;
                this.b = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = this.a;
                if (str == null) {
                    str = "We're sorry, some error occurred. we will investigate it";
                }
                Log.d(t.this.f6598d, "onRVInitFail(message:" + str + ")");
                t.this.z.a(h6.e.RewardedVideo, this.b, str);
            }
        }

        class b0 implements Runnable {
            b0() {
            }

            @Override // java.lang.Runnable
            public void run() {
                t.this.Y.removeJavascriptInterface(o2.f6460f);
            }
        }

        class c implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ String b;
            final /* synthetic */ int c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ boolean f6604d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ int f6605e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ boolean f6606f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            final /* synthetic */ String f6607g;
            final /* synthetic */ String h;

            c(String str, String str2, int i, boolean z, int i2, boolean z2, String str3, String str4) {
                this.a = str;
                this.b = str2;
                this.c = i;
                this.f6604d = z;
                this.f6605e = i2;
                this.f6606f = z2;
                this.f6607g = str3;
                this.h = str4;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.a.equalsIgnoreCase(h6.e.RewardedVideo.toString())) {
                    t.this.z.a(this.b, this.c);
                    return;
                }
                if (this.a.equalsIgnoreCase(h6.e.OfferWall.toString()) && this.f6604d && t.this.B.onOWAdCredited(this.c, this.f6605e, this.f6606f) && !TextUtils.isEmpty(this.f6607g)) {
                    if (g8.e().a(this.f6607g, t.this.f6601g, t.this.h)) {
                        t.this.Q(this.h, true, null, null);
                    } else {
                        t.this.Q(this.h, false, "Time Stamp could not be stored", null);
                    }
                }
            }
        }

        class c0 implements Runnable {
            c0() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (Build.VERSION.SDK_INT >= 21) {
                    t.this.Y.getSettings().setMixedContentMode(0);
                }
            }
        }

        class d implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ String b;

            d(String str, String str2) {
                this.a = str;
                this.b = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = this.a;
                if (str == null) {
                    str = "We're sorry, some error occurred. we will investigate it";
                }
                Log.d(t.this.f6598d, "onRVShowFail(message:" + this.a + ")");
                t.this.z.d(this.b, str);
            }
        }

        class d0 implements Runnable {
            final /* synthetic */ int a;
            final /* synthetic */ String b;
            final /* synthetic */ com.json.e0 c;

            d0(int i, String str, com.json.e0 e0Var) {
                this.a = i;
                this.b = str;
                this.c = e0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.a <= 0) {
                    t.this.z.d(this.b);
                } else {
                    Log.d(t.this.f6598d, "onRVInitSuccess()");
                    t.this.z.a(h6.e.RewardedVideo, this.b, this.c);
                }
            }
        }

        class e implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ int b;

            e(String str, int i) {
                this.a = str;
                this.b = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                t.this.A.onInterstitialAdRewarded(this.a, this.b);
            }
        }

        public class e0 implements p8 {
            public e0() {
            }

            @Override // com.json.p8
            public void a(boolean z, String str, hb hbVar) {
                hbVar.b(z ? t.a : t.b, str);
                t.this.Q(hbVar.toString(), z, null, null);
            }

            @Override // com.json.p8
            public void a(boolean z, String str, String str2) {
                hb hbVar = new hb();
                hbVar.b(z ? t.a : t.b, str);
                hbVar.b("data", str2);
                t.this.Q(hbVar.toString(), z, null, null);
            }

            @Override // com.json.p8
            public void a(boolean z, String str, JSONObject jSONObject) {
                try {
                    jSONObject.put(z ? t.a : t.b, str);
                    t.this.Q(jSONObject.toString(), z, null, null);
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        }

        class f implements Runnable {
            final /* synthetic */ String a;

            f(String str) {
                this.a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                t.this.B.onOWShowSuccess(this.a);
            }
        }

        class g implements Runnable {
            g() {
            }

            @Override // java.lang.Runnable
            public void run() {
                t tVar = t.this;
                tVar.Y.setOnTouchListener(new y(tVar, null));
            }
        }

        class h implements Runnable {
            final /* synthetic */ String a;

            h(String str) {
                this.a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = this.a;
                if (str == null) {
                    str = "We're sorry, some error occurred. we will investigate it";
                }
                t.this.B.onOWShowFail(str);
            }
        }

        class i implements Runnable {
            final /* synthetic */ String a;

            i(String str) {
                this.a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                Log.d(t.this.f6598d, "onInterstitialInitSuccess()");
                t.this.A.a(h6.e.Interstitial, this.a, (com.json.e0) null);
            }
        }

        class j implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ String b;

            j(String str, String str2) {
                this.a = str;
                this.b = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = this.a;
                if (str == null) {
                    str = "We're sorry, some error occurred. we will investigate it";
                }
                Log.d(t.this.f6598d, "onInterstitialInitFail(message:" + str + ")");
                t.this.A.a(h6.e.Interstitial, this.b, str);
            }
        }

        class k implements Runnable {
            final /* synthetic */ w2 a;
            final /* synthetic */ h6.e b;
            final /* synthetic */ String c;

            k(w2 w2Var, h6.e eVar, String str) {
                this.a = w2Var;
                this.b = eVar;
                this.c = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.a.c(this.b, this.c);
            }
        }

        class l implements Runnable {
            final /* synthetic */ String a;

            l(String str) {
                this.a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                t.this.A.b(h6.e.Interstitial, this.a);
                t.this.A.c(this.a);
            }
        }

        class m implements Runnable {
            m() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Log.d(t.this.f6598d, "onOfferWallInitSuccess()");
                t.this.B.onOfferwallInitSuccess();
            }
        }

        class n implements Runnable {
            final /* synthetic */ String a;

            n(String str) {
                this.a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = this.a;
                if (str == null) {
                    str = "We're sorry, some error occurred. we will investigate it";
                }
                Log.d(t.this.f6598d, "onOfferWallInitFail(message:" + str + ")");
                t.this.B.onOfferwallInitFail(str);
            }
        }

        class o implements Runnable {
            o() {
            }

            @Override // java.lang.Runnable
            public void run() {
                t.this.y();
            }
        }

        class p implements Runnable {
            final /* synthetic */ String a;

            p(String str) {
                this.a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                t.this.A.b(this.a);
            }
        }

        class q implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ String b;

            q(String str, String str2) {
                this.a = str;
                this.b = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = this.a;
                if (str == null) {
                    str = "We're sorry, some error occurred. we will investigate it";
                }
                t.this.A.c(this.b, str);
            }
        }

        class r implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ String b;

            r(String str, String str2) {
                this.a = str;
                this.b = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = this.a;
                if (str == null) {
                    str = "We're sorry, some error occurred. we will investigate it";
                }
                t.this.A.b(this.b, str);
            }
        }

        class s implements Runnable {
            final /* synthetic */ String a;

            s(String str) {
                this.a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                Log.d(t.this.f6598d, "onBannerInitSuccess()");
                t.this.C.a(h6.e.Banner, this.a, (com.json.e0) null);
            }
        }

        /* JADX INFO: renamed from: com.ironsource.sdk.controller.t$u$t, reason: collision with other inner class name */
        class RunnableC0369t implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ String b;

            RunnableC0369t(String str, String str2) {
                this.a = str;
                this.b = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = this.a;
                if (str == null) {
                    str = "We're sorry, some error occurred. we will investigate it";
                }
                Log.d(t.this.f6598d, "onBannerInitFail(message:" + str + ")");
                t.this.C.a(h6.e.Banner, this.b, str);
            }
        }

        /* JADX INFO: renamed from: com.ironsource.sdk.controller.t$u$u, reason: collision with other inner class name */
        class RunnableC0370u implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ a6 b;

            RunnableC0370u(String str, a6 a6Var) {
                this.a = str;
                this.b = a6Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                Log.d(t.this.f6598d, "onBannerLoadSuccess()");
                t.this.C.a(this.a, this.b);
            }
        }

        class v implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ String b;

            v(String str, String str2) {
                this.a = str;
                this.b = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                Log.d(t.this.f6598d, "onLoadBannerFail()");
                String str = this.a;
                if (str == null) {
                    str = "We're sorry, some error occurred. we will investigate it";
                }
                t.this.C.a(this.b, str);
            }
        }

        class w implements Runnable {
            final /* synthetic */ String a;

            w(String str) {
                this.a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (new JSONObject(this.a).has(f.b.MSG_ID)) {
                        t.this.U.a(f.CallbackToNative.a(this.a));
                    } else {
                        t.this.V.a(MessageToNative.a(this.a));
                    }
                } catch (JSONException e2) {
                    Logger.e(t.this.f6598d, "failed to parse received message");
                    e2.printStackTrace();
                }
            }
        }

        class x implements Runnable {
            final /* synthetic */ String a;

            x(String str) {
                this.a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = this.a;
                if (str == null) {
                    str = "We're sorry, some error occurred. we will investigate it";
                }
                t.this.B.onGetOWCreditsFailed(str);
            }
        }

        class y implements Runnable {
            final /* synthetic */ h6.e a;
            final /* synthetic */ String b;
            final /* synthetic */ String c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ JSONObject f6610d;

            y(h6.e eVar, String str, String str2, JSONObject jSONObject) {
                this.a = eVar;
                this.b = str;
                this.c = str2;
                this.f6610d = jSONObject;
            }

            @Override // java.lang.Runnable
            public void run() {
                h6.e eVar = this.a;
                if (eVar != h6.e.Interstitial && eVar != h6.e.RewardedVideo && eVar != h6.e.Banner) {
                    if (eVar == h6.e.OfferWall) {
                        t.this.B.onOfferwallEventNotificationReceived(this.c, this.f6610d);
                    }
                } else {
                    w2 w2VarV = t.this.v(eVar);
                    if (w2VarV != null) {
                        w2VarV.a(this.a, this.b, this.c, this.f6610d);
                    }
                }
            }
        }

        class z implements Runnable {
            z() {
            }

            @Override // java.lang.Runnable
            public void run() {
                t.this.u();
            }
        }

        public u() {
        }

        private void a(String str, int i2) {
            j3 j3VarA;
            t tVar = t.this;
            h6.e eVar = h6.e.Interstitial;
            if (tVar.b1(eVar.toString()) && (j3VarA = t.this.J.a(eVar, str)) != null && j3VarA.k()) {
                t.this.f0(new e(str, i2));
            }
        }

        private void b(String str, String str2) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            t.this.N0(t.this.j0(str, str2));
        }

        private void c(String str, boolean z2) {
            j3 j3VarA = t.this.J.a(h6.e.Interstitial, str);
            if (j3VarA != null) {
                j3VarA.a(z2);
            }
        }

        private void d(JSONObject jSONObject) {
            try {
                jSONObject.put("controllerSourceData", t.this.E.n());
            } catch (Exception unused) {
            }
        }

        private void e(JSONObject jSONObject, String str) {
            if (f(str)) {
                try {
                    JSONObject jSONObject2 = new JSONObject(str);
                    jSONObject.putOpt("testerABGroup", jSONObject2.get("testerABGroup"));
                    jSONObject.putOpt("testFriendlyName", jSONObject2.get("testFriendlyName"));
                } catch (JSONException unused) {
                    Logger.d(t.this.f6598d, "getControllerConfig Error while parsing Tester AB Group parameters");
                }
            }
        }

        private void h(JSONObject jSONObject) {
            try {
                FeaturesManager featuresManager = FeaturesManager.getInstance();
                if (featuresManager.a().isEmpty()) {
                    return;
                }
                jSONObject.put(o2.a.f6465g, new JSONArray((Collection) featuresManager.a()));
            } catch (Exception e2) {
                o6.a(gb.p, new j6().a(b4.z, e2.getMessage()).a());
                Logger.d(t.this.f6598d, "getControllerConfig Error while adding supported features data from FeaturesManager");
            }
        }

        private void i(JSONObject jSONObject) {
            h(jSONObject);
            e(jSONObject, SDKUtils.getTesterParameters());
            d(jSONObject);
        }

        @JavascriptInterface
        public void adClicked(String str) {
            Logger.i(t.this.f6598d, "adClicked(" + str + ")");
            hb hbVar = new hb(str);
            String strD = hbVar.d(o2.h.m);
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(hbVar);
            if (TextUtils.isEmpty(strFetchDemandSourceId)) {
                return;
            }
            h6.e eVarG0 = t.this.G0(strD);
            w2 w2VarV = t.this.v(eVarG0);
            if (eVarG0 == null || w2VarV == null) {
                return;
            }
            t.this.f0(new k(w2VarV, eVarG0, strFetchDemandSourceId));
        }

        @JavascriptInterface
        public void adCredited(String str) {
            String strD;
            boolean z2;
            boolean z3;
            Log.d(t.this.f6599e, "adCredited(" + str + ")");
            hb hbVar = new hb(str);
            String strD2 = hbVar.d(o2.h.k);
            boolean z4 = false;
            int i2 = strD2 != null ? Integer.parseInt(strD2) : 0;
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(hbVar);
            String strD3 = hbVar.d(o2.h.m);
            if (TextUtils.isEmpty(strD3)) {
                Log.d(t.this.f6599e, "adCredited | product type is missing");
            }
            if (h6.e.Interstitial.toString().equalsIgnoreCase(strD3)) {
                a(strFetchDemandSourceId, i2);
                return;
            }
            String strD4 = hbVar.d(o2.h.l);
            int i3 = strD4 != null ? Integer.parseInt(strD4) : 0;
            if (!h6.e.OfferWall.toString().equalsIgnoreCase(strD3)) {
                strD = null;
                z2 = false;
                z3 = false;
            } else {
                if (hbVar.e(InAppPurchaseMetaData.KEY_SIGNATURE) || hbVar.e("timestamp") || hbVar.e("totalCreditsFlag")) {
                    t.this.Q(str, false, "One of the keys are missing: signature/timestamp/totalCreditsFlag", null);
                    return;
                }
                if (hbVar.d(InAppPurchaseMetaData.KEY_SIGNATURE).equalsIgnoreCase(SDKUtils.getMD5(strD4 + t.this.f6601g + t.this.h))) {
                    z4 = true;
                } else {
                    t.this.Q(str, false, "Controller signature is not equal to SDK signature", null);
                }
                boolean zC = hbVar.c("totalCreditsFlag");
                strD = hbVar.d("timestamp");
                z3 = zC;
                z2 = z4;
            }
            if (t.this.b1(strD3)) {
                t.this.f0(new c(strD3, strFetchDemandSourceId, i2, z2, i3, z3, strD, str));
            }
        }

        @JavascriptInterface
        public void adUnitsReady(String str) {
            Logger.i(t.this.f6598d, "adUnitsReady(" + str + ")");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(new hb(str));
            com.json.e0 e0Var = new com.json.e0(str);
            if (!e0Var.g()) {
                t.this.Q(str, false, o2.c.t, null);
                return;
            }
            t.this.Q(str, true, null, null);
            String strD = e0Var.d();
            if (h6.e.RewardedVideo.toString().equalsIgnoreCase(strD) && t.this.b1(strD)) {
                t.this.f0(new d0(Integer.parseInt(e0Var.c()), strFetchDemandSourceId, e0Var));
            }
        }

        @JavascriptInterface
        public void adViewAPI(String str) {
            try {
                Logger.i(t.this.f6598d, "adViewAPI(" + str + ")");
                t.this.O.b(new hb(str).toString(), new e0());
            } catch (Exception e2) {
                e2.printStackTrace();
                Logger.i(t.this.f6598d, "adViewAPI failed with exception " + e2.getMessage());
            }
        }

        @JavascriptInterface
        public void bannerViewAPI(String str) {
            Logger.i(t.this.f6598d, "bannerViewAPI is not supported in this native version, only adview API");
        }

        @JavascriptInterface
        public void cleanAdInstance(String str) {
            h6.e eVarG0;
            try {
                Logger.i(t.this.f6598d, "cleanAdInstance(" + str + ")");
                hb hbVar = new hb(str);
                String strD = hbVar.d(o2.h.m);
                String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(hbVar);
                if (TextUtils.isEmpty(strFetchDemandSourceId) || (eVarG0 = t.this.G0(strD)) == null) {
                    return;
                }
                t.this.J.b(eVarG0, strFetchDemandSourceId);
            } catch (Exception e2) {
                t.this.Q(str, false, e2.getMessage(), null);
                e2.printStackTrace();
            }
        }

        @JavascriptInterface
        public void clearLastUpdateTimeData(String str) {
            try {
                ArrayList<String> arrayListA = g8.e().a();
                hb hbVar = new hb(str);
                if (!arrayListA.isEmpty()) {
                    hbVar.b(o2.h.x0, arrayListA.toString());
                }
                t.this.Q(hbVar.toString(), true, null, null);
            } catch (Exception e2) {
                t.this.Q(str, false, e2.getMessage(), null);
                e2.printStackTrace();
            }
        }

        @JavascriptInterface
        public void deleteFile(String str) {
            try {
                Logger.i(t.this.f6598d, "deleteFile(" + str + ")");
                hb hbVar = new hb(str);
                String strD = hbVar.d("file");
                String strD2 = hbVar.d("path");
                if (strD2 != null && !TextUtils.isEmpty(strD)) {
                    q6 q6Var = new q6(IronSourceStorageUtils.buildAbsolutePathToDirInCache(t.this.D, strD2), strD);
                    IronSourceStorageUtils.ensurePathSafety(q6Var, t.this.D);
                    if (!q6Var.exists()) {
                        t.this.Q(str, false, o2.c.f6470f, "1");
                        return;
                    } else {
                        t.this.Q(str, IronSourceStorageUtils.deleteFile(q6Var), null, null);
                        return;
                    }
                }
                t.this.Q(str, false, o2.c.f6471g, "1");
            } catch (Exception e2) {
                t.this.Q(str, false, e2.getMessage(), null);
                e2.printStackTrace();
            }
        }

        @JavascriptInterface
        public void deleteFolder(String str) {
            try {
                Logger.i(t.this.f6598d, "deleteFolder(" + str + ")");
                String strD = new hb(str).d("path");
                if (strD == null) {
                    t.this.Q(str, false, o2.c.f6471g, "1");
                    return;
                }
                q6 q6Var = new q6(IronSourceStorageUtils.buildAbsolutePathToDirInCache(t.this.D, strD));
                IronSourceStorageUtils.ensurePathSafety(q6Var, t.this.D);
                if (!q6Var.exists()) {
                    t.this.Q(str, false, o2.c.f6469e, "1");
                } else {
                    t.this.Q(str, IronSourceStorageUtils.deleteFolder(q6Var.getPath()), null, null);
                }
            } catch (Exception e2) {
                t.this.Q(str, false, e2.getMessage(), null);
                e2.printStackTrace();
            }
        }

        @JavascriptInterface
        public void deviceDataAPI(String str) {
            try {
                Logger.i(t.this.f6598d, "deviceDataAPI(" + str + ")");
                t.this.N.c(new hb(str).toString(), new e0());
            } catch (Exception e2) {
                e2.printStackTrace();
                Logger.i(t.this.f6598d, "deviceDataAPI failed with exception " + e2.getMessage());
            }
        }

        @JavascriptInterface
        public void displayWebView(String str) {
            Logger.i(t.this.f6598d, "displayWebView(" + str + ")");
            t.this.Q(str, true, null, null);
            hb hbVar = new hb(str);
            boolean zBooleanValue = ((Boolean) hbVar.b("display")).booleanValue();
            String strD = hbVar.d(o2.h.m);
            boolean zC = hbVar.c(o2.h.u);
            String strD2 = hbVar.d("adViewId");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(hbVar);
            boolean zC2 = hbVar.c(o2.h.z0);
            if (!zBooleanValue) {
                t.this.a(x.Gone);
                t.this.K0();
                return;
            }
            t.this.I = hbVar.c(o2.h.v);
            boolean zC3 = hbVar.c(o2.h.y);
            x xVarO = t.this.o();
            x xVar = x.Display;
            if (xVarO == xVar) {
                Logger.i(t.this.f6598d, "State: " + t.this.x);
                return;
            }
            t.this.a(xVar);
            Logger.i(t.this.f6598d, "State: " + t.this.x);
            Context contextJ = t.this.j();
            String strM = t.this.m();
            int I = t.this.W.I(contextJ);
            if (zC) {
                com.json.sdk.controller.h hVar = new com.json.sdk.controller.h(contextJ);
                hVar.addView(t.this.w);
                hVar.a(t.this);
                return;
            }
            Intent intent = zC3 ? new Intent(contextJ, (Class<?>) InterstitialActivity.class) : new Intent(contextJ, (Class<?>) ControllerActivity.class);
            h6.e eVar = h6.e.RewardedVideo;
            if (eVar.toString().equalsIgnoreCase(strD)) {
                if ("application".equals(strM)) {
                    strM = SDKUtils.translateRequestedOrientation(t.this.W.K(contextJ));
                }
                intent.putExtra(o2.h.m, eVar.toString());
                t.this.G.a(eVar.ordinal());
                t.this.G.f(strFetchDemandSourceId);
                if (t.this.b1(eVar.toString())) {
                    t.this.z.b(eVar, strFetchDemandSourceId);
                }
            } else {
                h6.e eVar2 = h6.e.OfferWall;
                if (eVar2.toString().equalsIgnoreCase(strD)) {
                    intent.putExtra(o2.h.m, eVar2.toString());
                    t.this.G.a(eVar2.ordinal());
                } else {
                    h6.e eVar3 = h6.e.Interstitial;
                    if (eVar3.toString().equalsIgnoreCase(strD)) {
                        if ("application".equals(strM)) {
                            strM = SDKUtils.translateRequestedOrientation(t.this.W.K(contextJ));
                        }
                        intent.putExtra(o2.h.m, eVar3.toString());
                    }
                }
            }
            if (strD2 != null) {
                intent.putExtra("adViewId", strD2);
            }
            intent.putExtra(o2.h.z0, zC2);
            intent.setFlags(DriveFile.MODE_WRITE_ONLY);
            intent.putExtra(o2.h.v, t.this.I);
            intent.putExtra(o2.h.A, strM);
            intent.putExtra(o2.h.B, I);
            t tVar = t.this;
            tVar.l = new s(tVar.G0(strD), strFetchDemandSourceId);
            contextJ.startActivity(intent);
        }

        boolean f(String str) {
            if (TextUtils.isEmpty(str) || str.contains(UniquePlacementId.NO_ID)) {
                return false;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.getString("testerABGroup").isEmpty()) {
                    return false;
                }
                return !jSONObject.getString("testFriendlyName").isEmpty();
            } catch (JSONException e2) {
                e2.printStackTrace();
                return false;
            }
        }

        @JavascriptInterface
        public void fileSystemAPI(String str) {
            Logger.i(t.this.f6598d, "fileSystemAPI(" + str + ")");
            t.this.N(new a(str));
        }

        void g(String str) {
            t.this.N0(t.this.E(o2.g.f6482d, str, null, null));
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x005f  */
        @android.webkit.JavascriptInterface
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void getApplicationInfo(java.lang.String r5) {
            /*
                r4 = this;
                com.ironsource.sdk.controller.t r0 = com.json.sdk.controller.t.this
                java.lang.String r0 = com.json.sdk.controller.t.a(r0)
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "getApplicationInfo("
                r1.append(r2)
                r1.append(r5)
                java.lang.String r2 = ")"
                r1.append(r2)
                java.lang.String r1 = r1.toString()
                com.json.sdk.utils.Logger.i(r0, r1)
                com.ironsource.sdk.controller.t r0 = com.json.sdk.controller.t.this
                java.lang.String r0 = com.json.sdk.controller.t.B(r0, r5)
                com.ironsource.sdk.controller.t r1 = com.json.sdk.controller.t.this
                java.lang.String r1 = com.json.sdk.controller.t.Z(r1, r5)
                com.ironsource.hb r2 = new com.ironsource.hb
                r2.<init>(r5)
                java.lang.String r5 = "productType"
                java.lang.String r5 = r2.d(r5)
                java.lang.String r2 = com.json.sdk.utils.SDKUtils.fetchDemandSourceId(r2)
                com.ironsource.sdk.controller.t r3 = com.json.sdk.controller.t.this
                java.lang.Object[] r5 = com.json.sdk.controller.t.V(r3, r5, r2)
                r2 = 0
                r2 = r5[r2]
                java.lang.String r2 = (java.lang.String) r2
                r3 = 1
                r5 = r5[r3]
                java.lang.Boolean r5 = (java.lang.Boolean) r5
                boolean r5 = r5.booleanValue()
                if (r5 == 0) goto L58
                boolean r5 = android.text.TextUtils.isEmpty(r1)
                if (r5 != 0) goto L5f
                r0 = r1
                goto L60
            L58:
                boolean r5 = android.text.TextUtils.isEmpty(r0)
                if (r5 != 0) goto L5f
                goto L60
            L5f:
                r0 = 0
            L60:
                boolean r5 = android.text.TextUtils.isEmpty(r0)
                if (r5 != 0) goto L75
                com.ironsource.sdk.controller.t r5 = com.json.sdk.controller.t.this
                java.lang.String r1 = "onGetApplicationInfoSuccess"
                java.lang.String r3 = "onGetApplicationInfoFail"
                java.lang.String r5 = com.json.sdk.controller.t.C(r5, r0, r2, r1, r3)
                com.ironsource.sdk.controller.t r0 = com.json.sdk.controller.t.this
                com.json.sdk.controller.t.z0(r0, r5)
            L75:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ironsource.sdk.controller.t.u.getApplicationInfo(java.lang.String):void");
        }

        @JavascriptInterface
        public void getCachedFilesMap(String str) {
            t tVar;
            String str2;
            Logger.i(t.this.f6598d, "getCachedFilesMap(" + str + ")");
            String strX0 = t.this.x0(str);
            if (TextUtils.isEmpty(strX0)) {
                return;
            }
            hb hbVar = new hb(str);
            if (hbVar.a("path")) {
                String str3 = (String) hbVar.b("path");
                if (IronSourceStorageUtils.isPathExist(t.this.D, str3)) {
                    t.this.N0(t.this.E(strX0, IronSourceStorageUtils.getCachedFilesMap(t.this.D, str3), o2.g.r, o2.g.q));
                    return;
                }
                tVar = t.this;
                str2 = o2.c.v;
            } else {
                tVar = t.this;
                str2 = o2.c.u;
            }
            tVar.Q(str, false, str2, null);
        }

        @JavascriptInterface
        public void getConnectivityInfo(String str) {
            String strJ0;
            Logger.i(t.this.f6598d, "getConnectivityInfo(" + str + ")");
            hb hbVar = new hb(str);
            String strD = hbVar.d(t.a);
            String strD2 = hbVar.d(t.b);
            JSONObject jSONObject = new JSONObject();
            if (t.this.S != null) {
                jSONObject = t.this.S.a(t.this.Y.getContext());
            }
            if (jSONObject.length() > 0) {
                strJ0 = t.this.j0(strD, jSONObject.toString());
            } else {
                strJ0 = t.this.j0(strD2, t.this.F("errMsg", o2.c.C, null, null, null, null, null, null, null, false));
            }
            t.this.N0(strJ0);
        }

        @JavascriptInterface
        public void getControllerConfig(String str) {
            Logger.i(t.this.f6598d, "getControllerConfig(" + str + ")");
            String strD = new hb(str).d(t.a);
            if (TextUtils.isEmpty(strD)) {
                return;
            }
            JSONObject controllerConfigAsJSONObject = SDKUtils.getControllerConfigAsJSONObject();
            i(controllerConfigAsJSONObject);
            t.this.N0(t.this.j0(strD, controllerConfigAsJSONObject.toString()));
        }

        @JavascriptInterface
        public void getDemandSourceState(String str) {
            String strS0;
            Logger.i(t.this.f6598d, "getMediationState(" + str + ")");
            hb hbVar = new hb(str);
            String strD = hbVar.d("demandSourceName");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(hbVar);
            String strD2 = hbVar.d(o2.h.m);
            if (strD2 == null || strD == null) {
                return;
            }
            try {
                h6.e productType = SDKUtils.getProductType(strD2);
                if (productType != null) {
                    j3 j3VarA = t.this.J.a(productType, strFetchDemandSourceId);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(o2.h.m, strD2);
                    jSONObject.put("demandSourceName", strD);
                    jSONObject.put("demandSourceId", strFetchDemandSourceId);
                    if (j3VarA == null || j3VarA.a(-1)) {
                        strS0 = t.this.s0(str);
                    } else {
                        strS0 = t.this.x0(str);
                        jSONObject.put("state", j3VarA.j());
                    }
                    b(strS0, jSONObject.toString());
                }
            } catch (Exception e2) {
                t.this.Q(str, false, e2.getMessage(), null);
                e2.printStackTrace();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0056  */
        @android.webkit.JavascriptInterface
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void getDeviceStatus(java.lang.String r5) {
            /*
                r4 = this;
                com.ironsource.sdk.controller.t r0 = com.json.sdk.controller.t.this
                java.lang.String r0 = com.json.sdk.controller.t.a(r0)
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "getDeviceStatus("
                r1.append(r2)
                r1.append(r5)
                java.lang.String r2 = ")"
                r1.append(r2)
                java.lang.String r1 = r1.toString()
                com.json.sdk.utils.Logger.i(r0, r1)
                com.ironsource.sdk.controller.t r0 = com.json.sdk.controller.t.this
                java.lang.String r0 = com.json.sdk.controller.t.B(r0, r5)
                com.ironsource.sdk.controller.t r1 = com.json.sdk.controller.t.this
                java.lang.String r5 = com.json.sdk.controller.t.Z(r1, r5)
                com.ironsource.sdk.controller.t r1 = com.json.sdk.controller.t.this
                com.ironsource.i8 r2 = r1.Y
                android.content.Context r2 = r2.getContext()
                java.lang.Object[] r1 = com.json.sdk.controller.t.U(r1, r2)
                r2 = 0
                r2 = r1[r2]
                java.lang.String r2 = (java.lang.String) r2
                r3 = 1
                r1 = r1[r3]
                java.lang.Boolean r1 = (java.lang.Boolean) r1
                boolean r1 = r1.booleanValue()
                if (r1 == 0) goto L4f
                boolean r0 = android.text.TextUtils.isEmpty(r5)
                if (r0 != 0) goto L56
                r0 = r5
                goto L57
            L4f:
                boolean r5 = android.text.TextUtils.isEmpty(r0)
                if (r5 != 0) goto L56
                goto L57
            L56:
                r0 = 0
            L57:
                boolean r5 = android.text.TextUtils.isEmpty(r0)
                if (r5 != 0) goto L6c
                com.ironsource.sdk.controller.t r5 = com.json.sdk.controller.t.this
                java.lang.String r1 = "onGetDeviceStatusSuccess"
                java.lang.String r3 = "onGetDeviceStatusFail"
                java.lang.String r5 = com.json.sdk.controller.t.C(r5, r0, r2, r1, r3)
                com.ironsource.sdk.controller.t r0 = com.json.sdk.controller.t.this
                com.json.sdk.controller.t.z0(r0, r5)
            L6c:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ironsource.sdk.controller.t.u.getDeviceStatus(java.lang.String):void");
        }

        @JavascriptInterface
        public void getDeviceVolume(String str) {
            Logger.i(t.this.f6598d, "getDeviceVolume(" + str + ")");
            try {
                Context context = t.this.Y.getContext();
                float fA = n3.b(context).a(context);
                hb hbVar = new hb(str);
                hbVar.b("deviceVolume", String.valueOf(fA));
                t.this.Q(hbVar.toString(), true, null, null);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @JavascriptInterface
        public void getInitSummery(String str) {
            Logger.i(t.this.f6598d, "getInitSummery(" + str + ")");
            hb hbVar = new hb(str);
            hbVar.a(o2.i.q0, t.this.T);
            t.this.Q(hbVar.toString(), true, null, null);
        }

        @JavascriptInterface
        public void getOrientation(String str) {
            o6.a(gb.z, new j6().a(b4.x, str).a());
            String strX0 = t.this.x0(str);
            String string = SDKUtils.getOrientation(t.this.Y.getContext()).toString();
            if (TextUtils.isEmpty(strX0)) {
                return;
            }
            t.this.N0(t.this.E(strX0, string, o2.g.c0, o2.g.d0));
        }

        @JavascriptInterface
        public void getUserData(String str) {
            Logger.i(t.this.f6598d, "getUserData(" + str + ")");
            hb hbVar = new hb(str);
            if (!hbVar.a("key")) {
                t.this.Q(str, false, o2.c.H, null);
                return;
            }
            String strX0 = t.this.x0(str);
            String strD = hbVar.d("key");
            t.this.N0(t.this.j0(strX0, t.this.F(strD, g8.e().a(strD), null, null, null, null, null, null, null, false)));
        }

        @JavascriptInterface
        public void iabTokenAPI(String str) {
            try {
                Logger.i(t.this.f6598d, "iabTokenAPI(" + str + ")");
                t.this.M.d(new hb(str).toString(), new e0());
            } catch (Exception e2) {
                e2.printStackTrace();
                Logger.i(t.this.f6598d, "iabTokenAPI failed with exception " + e2.getMessage());
            }
        }

        @JavascriptInterface
        public void initController(String str) {
            Logger.i(t.this.f6598d, "initController(" + str + ")");
            hb hbVar = new hb(str);
            CountDownTimer countDownTimer = t.this.m;
            if (countDownTimer != null) {
                countDownTimer.cancel();
                t.this.m = null;
            }
            if (hbVar.a(o2.h.q)) {
                String strD = hbVar.d(o2.h.q);
                if (o2.h.s.equalsIgnoreCase(strD)) {
                    t.this.k = true;
                    t.this.R.g();
                    return;
                }
                if (o2.h.r.equalsIgnoreCase(strD)) {
                    t.this.R.a();
                    return;
                }
                if (!o2.h.t.equalsIgnoreCase(strD)) {
                    Logger.i(t.this.f6598d, "No STAGE mentioned! should not get here!");
                    return;
                }
                String strD2 = hbVar.d("errMsg");
                t.this.R.b("controller js failed to initialize : " + strD2);
            }
        }

        @JavascriptInterface
        public void omidAPI(String str) {
            t.this.m0(new a0(str));
        }

        @JavascriptInterface
        public void onAdWindowsClosed(String str) {
            Logger.i(t.this.f6598d, "onAdWindowsClosed(" + str + ")");
            t.this.G.a();
            t.this.G.f(null);
            t.this.l = null;
            hb hbVar = new hb(str);
            String strD = hbVar.d(o2.h.m);
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(hbVar);
            h6.e eVarG0 = t.this.G0(strD);
            Log.d(t.this.f6599e, "onAdClosed() with type " + eVarG0);
            if (t.this.b1(strD)) {
                t.this.I(eVarG0, strFetchDemandSourceId);
            }
        }

        @JavascriptInterface
        public void onCleanUpNonDisplayBannersSuccess(String str) {
            Logger.i(t.this.f6598d, "onCleanUpNonDisplayBannersSuccess() value=" + str);
        }

        @JavascriptInterface
        public void onGetApplicationInfoFail(String str) {
            Logger.i(t.this.f6598d, "onGetApplicationInfoFail(" + str + ")");
            t.this.Q(str, true, null, null);
            t.this.E0(o2.g.n, str);
        }

        @JavascriptInterface
        public void onGetApplicationInfoSuccess(String str) {
            Logger.i(t.this.f6598d, "onGetApplicationInfoSuccess(" + str + ")");
            t.this.Q(str, true, null, null);
            t.this.E0(o2.g.m, str);
        }

        @JavascriptInterface
        public void onGetCachedFilesMapFail(String str) {
            Logger.i(t.this.f6598d, "onGetCachedFilesMapFail(" + str + ")");
            t.this.Q(str, true, null, null);
            t.this.E0(o2.g.q, str);
        }

        @JavascriptInterface
        public void onGetCachedFilesMapSuccess(String str) {
            Logger.i(t.this.f6598d, "onGetCachedFilesMapSuccess(" + str + ")");
            t.this.Q(str, true, null, null);
            t.this.E0(o2.g.r, str);
        }

        @JavascriptInterface
        public void onGetDeviceStatusFail(String str) {
            Logger.i(t.this.f6598d, "onGetDeviceStatusFail(" + str + ")");
            t.this.Q(str, true, null, null);
            t.this.E0(o2.g.l, str);
        }

        @JavascriptInterface
        public void onGetDeviceStatusSuccess(String str) {
            Logger.i(t.this.f6598d, "onGetDeviceStatusSuccess(" + str + ")");
            t.this.Q(str, true, null, null);
            t.this.E0(o2.g.k, str);
        }

        @JavascriptInterface
        public void onGetUserCreditsFail(String str) {
            Logger.i(t.this.f6598d, "onGetUserCreditsFail(" + str + ")");
            String strD = new hb(str).d("errMsg");
            if (t.this.b1(h6.e.OfferWall.toString())) {
                t.this.f0(new x(strD));
            }
            t.this.Q(str, true, null, null);
            t.this.E0(o2.g.g0, str);
        }

        @JavascriptInterface
        public void onInitBannerFail(String str) {
            Logger.i(t.this.f6598d, "onInitBannerFail(" + str + ")");
            hb hbVar = new hb(str);
            String strD = hbVar.d("errMsg");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(hbVar);
            if (TextUtils.isEmpty(strFetchDemandSourceId)) {
                Logger.i(t.this.f6598d, "onInitBannerFail failed with no demand source");
                return;
            }
            k3 k3Var = t.this.J;
            h6.e eVar = h6.e.Banner;
            j3 j3VarA = k3Var.a(eVar, strFetchDemandSourceId);
            if (j3VarA != null) {
                j3VarA.b(3);
            }
            if (t.this.b1(eVar.toString())) {
                t.this.f0(new RunnableC0369t(strD, strFetchDemandSourceId));
            }
            t.this.Q(str, true, null, null);
            t.this.E0(o2.g.S, str);
        }

        @JavascriptInterface
        public void onInitBannerSuccess(String str) {
            Logger.i(t.this.f6598d, "onInitBannerSuccess()");
            t.this.E0(o2.g.R, "true");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(new hb(str));
            if (TextUtils.isEmpty(strFetchDemandSourceId)) {
                Logger.i(t.this.f6598d, "onInitBannerSuccess failed with no demand source");
            } else if (t.this.b1(h6.e.Banner.toString())) {
                t.this.f0(new s(strFetchDemandSourceId));
            }
        }

        @JavascriptInterface
        public void onInitInterstitialFail(String str) {
            Logger.i(t.this.f6598d, "onInitInterstitialFail(" + str + ")");
            hb hbVar = new hb(str);
            String strD = hbVar.d("errMsg");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(hbVar);
            if (TextUtils.isEmpty(strFetchDemandSourceId)) {
                Logger.i(t.this.f6598d, "onInitInterstitialSuccess failed with no demand source");
                return;
            }
            k3 k3Var = t.this.J;
            h6.e eVar = h6.e.Interstitial;
            j3 j3VarA = k3Var.a(eVar, strFetchDemandSourceId);
            if (j3VarA != null) {
                j3VarA.b(3);
            }
            if (t.this.b1(eVar.toString())) {
                t.this.f0(new j(strD, strFetchDemandSourceId));
            }
            t.this.Q(str, true, null, null);
            t.this.E0(o2.g.J, str);
        }

        @JavascriptInterface
        public void onInitInterstitialSuccess(String str) {
            Logger.i(t.this.f6598d, "onInitInterstitialSuccess()");
            t.this.E0(o2.g.I, "true");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(new hb(str));
            if (TextUtils.isEmpty(strFetchDemandSourceId)) {
                Logger.i(t.this.f6598d, "onInitInterstitialSuccess failed with no demand source");
            } else if (t.this.b1(h6.e.Interstitial.toString())) {
                t.this.f0(new i(strFetchDemandSourceId));
            }
        }

        @JavascriptInterface
        public void onInitOfferWallFail(String str) {
            Logger.i(t.this.f6598d, "onInitOfferWallFail(" + str + ")");
            t.this.G.a(false);
            String strD = new hb(str).d("errMsg");
            if (t.this.G.l()) {
                t.this.G.b(false);
                if (t.this.b1(h6.e.OfferWall.toString())) {
                    t.this.f0(new n(strD));
                }
            }
            t.this.Q(str, true, null, null);
            t.this.E0(o2.g.B, str);
        }

        @JavascriptInterface
        public void onInitOfferWallSuccess(String str) {
            t.this.E0(o2.g.A, "true");
            t.this.G.a(true);
            if (t.this.G.l()) {
                t.this.G.b(false);
                if (t.this.b1(h6.e.OfferWall.toString())) {
                    t.this.f0(new m());
                }
            }
        }

        @JavascriptInterface
        public void onInitRewardedVideoFail(String str) {
            Logger.i(t.this.f6598d, "onInitRewardedVideoFail(" + str + ")");
            hb hbVar = new hb(str);
            String strD = hbVar.d("errMsg");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(hbVar);
            k3 k3Var = t.this.J;
            h6.e eVar = h6.e.RewardedVideo;
            j3 j3VarA = k3Var.a(eVar, strFetchDemandSourceId);
            if (j3VarA != null) {
                j3VarA.b(3);
            }
            if (t.this.b1(eVar.toString())) {
                t.this.f0(new b(strD, strFetchDemandSourceId));
            }
            t.this.Q(str, true, null, null);
            t.this.E0(o2.g.f6485g, str);
        }

        @JavascriptInterface
        public void onLoadBannerFail(String str) {
            Logger.i(t.this.f6598d, "onLoadBannerFail()");
            hb hbVar = new hb(str);
            String strD = hbVar.d("errMsg");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(hbVar);
            t.this.Q(str, true, null, null);
            if (!TextUtils.isEmpty(strFetchDemandSourceId) && t.this.b1(h6.e.Banner.toString())) {
                t.this.f0(new v(strD, strFetchDemandSourceId));
            }
        }

        @JavascriptInterface
        public void onLoadBannerSuccess(String str) {
            Logger.i(t.this.f6598d, "onLoadBannerSuccess()");
            hb hbVar = new hb(str);
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(hbVar);
            String strD = hbVar.d("adViewId");
            t.this.Q(str, true, null, null);
            y6 y6VarA = g6.a().a(strD);
            if (y6VarA == null) {
                t.this.C.a(strFetchDemandSourceId, "not found view for the current adViewId= " + strD);
                return;
            }
            if (y6VarA instanceof a6) {
                a6 a6Var = (a6) y6VarA;
                if (t.this.b1(h6.e.Banner.toString())) {
                    t.this.f0(new RunnableC0370u(strFetchDemandSourceId, a6Var));
                }
            }
        }

        @JavascriptInterface
        public void onLoadInterstitialFail(String str) {
            Logger.i(t.this.f6598d, "onLoadInterstitialFail(" + str + ")");
            hb hbVar = new hb(str);
            String strD = hbVar.d("errMsg");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(hbVar);
            t.this.Q(str, true, null, null);
            if (TextUtils.isEmpty(strFetchDemandSourceId)) {
                return;
            }
            c(strFetchDemandSourceId, false);
            if (t.this.b1(h6.e.Interstitial.toString())) {
                t.this.f0(new q(strD, strFetchDemandSourceId));
            }
            t.this.E0(o2.g.M, "true");
        }

        @JavascriptInterface
        public void onLoadInterstitialSuccess(String str) {
            Logger.i(t.this.f6598d, "onLoadInterstitialSuccess(" + str + ")");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(new hb(str));
            c(strFetchDemandSourceId, true);
            t.this.Q(str, true, null, null);
            if (t.this.b1(h6.e.Interstitial.toString())) {
                t.this.f0(new p(strFetchDemandSourceId));
            }
            t.this.E0(o2.g.L, "true");
        }

        @JavascriptInterface
        public void onOfferWallGeneric(String str) {
            Logger.i(t.this.f6598d, "onOfferWallGeneric(" + str + ")");
        }

        @JavascriptInterface
        public void onReceivedMessage(String str) {
            Logger.i(t.this.f6598d, "onReceivedMessage(" + str + ")");
            q5.a.a(new w(str));
        }

        @JavascriptInterface
        public void onShowInterstitialFail(String str) {
            Logger.i(t.this.f6598d, "onShowInterstitialFail(" + str + ")");
            hb hbVar = new hb(str);
            String strD = hbVar.d("errMsg");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(hbVar);
            t.this.Q(str, true, null, null);
            if (TextUtils.isEmpty(strFetchDemandSourceId)) {
                return;
            }
            c(strFetchDemandSourceId, false);
            if (t.this.b1(h6.e.Interstitial.toString())) {
                t.this.f0(new r(strD, strFetchDemandSourceId));
            }
            t.this.E0(o2.g.P, str);
        }

        @JavascriptInterface
        public void onShowInterstitialSuccess(String str) {
            Logger.i(t.this.f6598d, "onShowInterstitialSuccess(" + str + ")");
            t.this.Q(str, true, null, null);
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(new hb(str));
            if (TextUtils.isEmpty(strFetchDemandSourceId)) {
                Logger.i(t.this.f6598d, "onShowInterstitialSuccess called with no demand");
                return;
            }
            f0 f0Var = t.this.G;
            h6.e eVar = h6.e.Interstitial;
            f0Var.a(eVar.ordinal());
            t.this.G.f(strFetchDemandSourceId);
            if (t.this.b1(eVar.toString())) {
                t.this.f0(new l(strFetchDemandSourceId));
                t.this.E0(o2.g.O, str);
            }
            c(strFetchDemandSourceId, false);
        }

        @JavascriptInterface
        public void onShowOfferWallFail(String str) {
            Logger.i(t.this.f6598d, "onShowOfferWallFail(" + str + ")");
            String strD = new hb(str).d("errMsg");
            if (t.this.b1(h6.e.OfferWall.toString())) {
                t.this.f0(new h(strD));
            }
            t.this.Q(str, true, null, null);
            t.this.E0(o2.g.F, str);
        }

        @JavascriptInterface
        public void onShowOfferWallSuccess(String str) {
            Logger.i(t.this.f6598d, "onShowOfferWallSuccess(" + str + ")");
            f0 f0Var = t.this.G;
            h6.e eVar = h6.e.OfferWall;
            f0Var.a(eVar.ordinal());
            String valueFromJsonObject = SDKUtils.getValueFromJsonObject(str, o2.i);
            if (t.this.b1(eVar.toString())) {
                t.this.f0(new f(valueFromJsonObject));
            }
            t.this.Q(str, true, null, null);
            t.this.E0(o2.g.E, str);
        }

        @JavascriptInterface
        public void onShowRewardedVideoFail(String str) {
            Logger.i(t.this.f6598d, "onShowRewardedVideoFail(" + str + ")");
            hb hbVar = new hb(str);
            String strD = hbVar.d("errMsg");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(hbVar);
            if (t.this.b1(h6.e.RewardedVideo.toString())) {
                t.this.f0(new d(strD, strFetchDemandSourceId));
            }
            t.this.Q(str, true, null, null);
            t.this.E0(o2.g.j, str);
        }

        @JavascriptInterface
        public void onShowRewardedVideoSuccess(String str) {
            Logger.i(t.this.f6598d, "onShowRewardedVideoSuccess(" + str + ")");
            t.this.Q(str, true, null, null);
            t.this.E0(o2.g.i, str);
        }

        @JavascriptInterface
        public void onVideoStatusChanged(String str) {
            Log.d(t.this.f6598d, "onVideoStatusChanged(" + str + ")");
            hb hbVar = new hb(str);
            String strD = hbVar.d(o2.h.m);
            if (t.this.F == null || TextUtils.isEmpty(strD)) {
                return;
            }
            String strD2 = hbVar.d("status");
            if (o2.h.e0.equalsIgnoreCase(strD2)) {
                t.this.F.onVideoStarted();
                return;
            }
            if (o2.h.f0.equalsIgnoreCase(strD2)) {
                t.this.F.onVideoPaused();
                return;
            }
            if (o2.h.g0.equalsIgnoreCase(strD2)) {
                t.this.F.onVideoResumed();
                return;
            }
            if (o2.h.h0.equalsIgnoreCase(strD2)) {
                t.this.F.onVideoEnded();
                return;
            }
            if (o2.h.i0.equalsIgnoreCase(strD2)) {
                t.this.F.onVideoStopped();
                return;
            }
            Logger.i(t.this.f6598d, "onVideoStatusChanged: unknown status: " + strD2);
        }

        @JavascriptInterface
        public void openUrl(String str) {
            Logger.i(t.this.f6598d, "openUrl(" + str + ")");
            hb hbVar = new hb(str);
            String strD = hbVar.d("url");
            String strD2 = hbVar.d("method");
            String strD3 = hbVar.d("package_name");
            try {
                Context contextJ = t.this.j();
                String lowerCase = strD2.toLowerCase();
                byte b2 = -1;
                int iHashCode = lowerCase.hashCode();
                if (iHashCode != -1455867212) {
                    if (iHashCode != 109770977) {
                        if (iHashCode == 1224424441 && lowerCase.equals(o2.h.K)) {
                            b2 = 1;
                        }
                    } else if (lowerCase.equals(o2.h.U)) {
                        b2 = 2;
                    }
                } else if (lowerCase.equals(o2.h.J)) {
                    b2 = 0;
                }
                if (b2 == 0) {
                    wc.a(contextJ, strD, strD3);
                } else if (b2 == 1) {
                    Intent intent = new Intent(contextJ, (Class<?>) OpenUrlActivity.class);
                    intent.putExtra(t.b0, strD);
                    intent.putExtra(t.c0, true);
                    intent.putExtra(o2.h.v, t.this.I);
                    contextJ.startActivity(intent);
                } else {
                    if (b2 != 2) {
                        t.this.Q(str, false, "method " + strD2 + " is unsupported", null);
                        return;
                    }
                    Intent intent2 = new Intent(contextJ, (Class<?>) OpenUrlActivity.class);
                    intent2.putExtra(t.b0, strD);
                    intent2.putExtra(t.a0, true);
                    intent2.putExtra(t.c0, true);
                    contextJ.startActivity(intent2);
                }
                t.this.Q(str, true, null, null);
            } catch (Exception e2) {
                t.this.Q(str, false, e2.getMessage(), null);
                e2.printStackTrace();
            }
        }

        @JavascriptInterface
        public void pauseControllerWebview() {
            t.this.m0(new z());
        }

        @JavascriptInterface
        public void permissionsAPI(String str) {
            try {
                Logger.i(t.this.f6598d, "permissionsAPI(" + str + ")");
                t.this.L.b(new hb(str).toString(), new e0());
            } catch (Exception e2) {
                e2.printStackTrace();
                Logger.i(t.this.f6598d, "permissionsAPI failed with exception " + e2.getMessage());
            }
        }

        @JavascriptInterface
        public void postAdEventNotification(String str) {
            try {
                Logger.i(t.this.f6598d, "postAdEventNotification(" + str + ")");
                hb hbVar = new hb(str);
                String strD = hbVar.d(o2.h.k0);
                if (TextUtils.isEmpty(strD)) {
                    t.this.Q(str, false, o2.c.y, null);
                    return;
                }
                String strD2 = hbVar.d(o2.h.l0);
                String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(hbVar);
                String str2 = !TextUtils.isEmpty(strFetchDemandSourceId) ? strFetchDemandSourceId : strD2;
                JSONObject jSONObject = (JSONObject) hbVar.b(o2.h.m0);
                String strD3 = hbVar.d(o2.h.m);
                h6.e eVarG0 = t.this.G0(strD3);
                if (!t.this.b1(strD3)) {
                    t.this.Q(str, false, o2.c.x, null);
                    return;
                }
                String strX0 = t.this.x0(str);
                if (!TextUtils.isEmpty(strX0)) {
                    t.this.N0(t.this.E(strX0, t.this.F(o2.h.m, strD3, o2.h.k0, strD, "demandSourceName", strD2, "demandSourceId", str2, null, false), o2.g.h0, o2.g.i0));
                }
                t.this.f0(new y(eVarG0, str2, strD, jSONObject));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @JavascriptInterface
        public void removeCloseEventHandler(String str) {
            Logger.i(t.this.f6598d, "removeCloseEventHandler(" + str + ")");
            if (t.this.o != null) {
                t.this.o.cancel();
            }
            t.this.n = true;
        }

        @JavascriptInterface
        public void removeMessagingInterface(String str) {
            t.this.m0(new b0());
        }

        @JavascriptInterface
        public void requestToDestroyBanner(String str) {
            Logger.i(t.this.f6598d, "onCleanUpNonDisplayBannersFail() value=" + str);
        }

        @JavascriptInterface
        public void resumeControllerWebview() {
            t.this.m0(new o());
        }

        @JavascriptInterface
        public void saveFile(String str) {
            try {
                Logger.i(t.this.f6598d, "saveFile(" + str + ")");
                hb hbVar = new hb(str);
                String strD = hbVar.d("path");
                String strD2 = hbVar.d("file");
                if (TextUtils.isEmpty(strD2)) {
                    t.this.Q(str, false, o2.c.f6471g, "1");
                    return;
                }
                q6 q6Var = new q6(IronSourceStorageUtils.buildAbsolutePathToDirInCache(t.this.D, strD), SDKUtils.getFileName(strD2));
                IronSourceStorageUtils.ensurePathSafety(q6Var, t.this.D);
                if (t.this.W.a(t.this.D) <= 0) {
                    t.this.Q(str, false, p2.A, null);
                    return;
                }
                if (!SDKUtils.isExternalStorageAvailable()) {
                    t.this.Q(str, false, p2.B, null);
                    return;
                }
                if (q6Var.exists()) {
                    t.this.Q(str, false, p2.z, null);
                    return;
                }
                if (!k2.g(t.this.Y.getContext())) {
                    t.this.Q(str, false, p2.C, null);
                    return;
                }
                t.this.Q(str, true, null, null);
                t.this.j.a(q6Var, strD2, hbVar.a("connectionTimeout", 0), hbVar.a("readTimeout", 0));
            } catch (Exception e2) {
                t.this.Q(str, false, e2.getMessage(), null);
                e2.printStackTrace();
            }
        }

        @JavascriptInterface
        public void setBackButtonState(String str) {
            Logger.i(t.this.f6598d, "setBackButtonState(" + str + ")");
            g8.e().c(new hb(str).d("state"));
        }

        @JavascriptInterface
        public void setForceClose(String str) {
            Logger.i(t.this.f6598d, "setForceClose(" + str + ")");
            hb hbVar = new hb(str);
            String strD = hbVar.d("width");
            String strD2 = hbVar.d("height");
            t.this.p = Integer.parseInt(strD);
            t.this.q = Integer.parseInt(strD2);
            t.this.r = hbVar.d(o2.h.L);
        }

        @JavascriptInterface
        public void setMixedContentAlwaysAllow(String str) {
            Logger.i(t.this.f6598d, "setMixedContentAlwaysAllow(" + str + ")");
            t.this.m0(new c0());
        }

        @JavascriptInterface
        public void setOrientation(String str) {
            try {
                Logger.i(t.this.f6598d, "setOrientation(" + str + ")");
                String strD = new hb(str).d("orientation");
                t.this.n(strD);
                if (t.this.i0 != null) {
                    t.this.i0.onOrientationChanged(strD, t.this.W.I(t.this.Y.getContext()));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @JavascriptInterface
        public void setStoreSearchKeys(String str) {
            Logger.i(t.this.f6598d, "setStoreSearchKeys(" + str + ")");
            g8.e().e(str);
        }

        @JavascriptInterface
        public void setTouchListener(String str) {
            Logger.i(t.this.f6598d, "removeCloseEventHandler(" + str + ")");
            t.this.m0(new g());
        }

        @JavascriptInterface
        public void setUserData(String str) {
            Logger.i(t.this.f6598d, "setUserData(" + str + ")");
            hb hbVar = new hb(str);
            if (!hbVar.a("key")) {
                t.this.Q(str, false, o2.c.H, null);
                return;
            }
            if (!hbVar.a("value")) {
                t.this.Q(str, false, o2.c.I, null);
                return;
            }
            String strD = hbVar.d("key");
            String strD2 = hbVar.d("value");
            g8.e().a(strD, strD2);
            t.this.N0(t.this.j0(t.this.x0(str), t.this.F(strD, strD2, null, null, null, null, null, null, null, false)));
        }

        @JavascriptInterface
        public void setWebviewBackgroundColor(String str) {
            Logger.i(t.this.f6598d, "setWebviewBackgroundColor(" + str + ")");
            t.this.Z0(str);
        }
    }

    private interface v {
        void a(String str, h6.e eVar, j3 j3Var);
    }

    static class w {
        String a;
        String b;

        w() {
        }
    }

    public enum x {
        Display,
        Gone
    }

    private class y implements View.OnTouchListener {

        class a extends CountDownTimer {
            a(long j, long j2) {
                super(j, j2);
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                Logger.i(t.this.f6598d, "Close Event Timer Finish");
                if (t.this.n) {
                    t.this.n = false;
                } else {
                    t.this.c(o2.h.i);
                }
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j) {
                Logger.i(t.this.f6598d, "Close Event Timer Tick " + j);
            }
        }

        private y() {
        }

        /* synthetic */ y(t tVar, i iVar) {
            this();
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                String str = t.this.f6598d;
                StringBuilder sb = new StringBuilder();
                sb.append("X:");
                int i = (int) x;
                sb.append(i);
                sb.append(" Y:");
                int i2 = (int) y;
                sb.append(i2);
                Logger.i(str, sb.toString());
                int iR = t.this.W.r();
                int iA = t.this.W.a();
                Logger.i(t.this.f6598d, "Width:" + iR + " Height:" + iA);
                int iDpToPx = SDKUtils.dpToPx((long) t.this.p);
                int iDpToPx2 = SDKUtils.dpToPx((long) t.this.q);
                if (o2.e.b.equalsIgnoreCase(t.this.r)) {
                    i = iR - i;
                } else if (!o2.e.c.equalsIgnoreCase(t.this.r)) {
                    if (o2.e.f6476d.equalsIgnoreCase(t.this.r)) {
                        i = iR - i;
                    } else if (!o2.e.f6477e.equalsIgnoreCase(t.this.r)) {
                        i = 0;
                        i2 = 0;
                    }
                    i2 = iA - i2;
                }
                if (i <= iDpToPx && i2 <= iDpToPx2) {
                    t.this.n = false;
                    if (t.this.o != null) {
                        t.this.o.cancel();
                    }
                    t.this.o = new a(AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS, 500L).start();
                }
            }
            return false;
        }
    }

    private class z extends WebViewClient {
        private z() {
        }

        /* synthetic */ z(t tVar, i iVar) {
            this();
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            Logger.i("onPageFinished", str);
            if (str.contains("adUnit") || str.contains("index.html")) {
                t.this.t();
            }
            super.onPageFinished(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            Logger.i("onPageStarted", str);
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            Logger.i("onReceivedError", str2 + " " + str);
            if (str2.contains(o2.f6461g) && t.this.R != null) {
                t.this.R.b("controller html - web-view receivedError on loading - " + str + " (errorCode: " + i + ")");
            }
            super.onReceivedError(webView, i, str, str2);
        }

        @Override // android.webkit.WebViewClient
        @TargetApi(26)
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            Log.e(t.this.f6598d, "Chromium process crashed - detail.didCrash(): " + renderProcessGoneDetail.didCrash());
            String str = renderProcessGoneDetail.didCrash() ? "Render process was observed to crash" : "Render process was killed by the system";
            if (t.this.R != null) {
                t.this.R.c(str);
            }
            t.this.p();
            return true;
        }

        @Override // android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            boolean zContains;
            Logger.i("shouldInterceptRequest", str);
            try {
                zContains = new URL(str).getFile().contains("mraid.js");
            } catch (MalformedURLException unused) {
                zContains = false;
            }
            if (zContains) {
                String str2 = AdPayload.FILE_SCHEME + t.this.D + File.separator + "mraid.js";
                try {
                    new FileInputStream(new File(str2));
                    return new WebResourceResponse("text/javascript", C.UTF8_NAME, getClass().getResourceAsStream(str2));
                } catch (FileNotFoundException unused2) {
                }
            }
            return super.shouldInterceptRequest(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Logger.i("shouldOverrideUrlLoading", str);
            try {
                if (t.this.h(str)) {
                    t.this.s();
                    return true;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return super.shouldOverrideUrlLoading(webView, str);
        }
    }

    public t(Context context, k3 k3Var, q2 q2Var, com.json.sdk.controller.g gVar, q5 q5Var, int i2, s3 s3Var, String str, k.a aVar, k.b bVar, String str2, String str3) throws Throwable {
        i8 i8Var = new i8(context, new s8.a());
        this.Y = i8Var;
        Logger.i(this.f6598d, "C'tor");
        this.X = q2Var;
        this.R = gVar;
        this.c = q5Var;
        this.J = k3Var;
        G(context, i8Var);
        this.D = str;
        this.G = new f0();
        this.T = new JSONObject();
        this.j = s3Var;
        s3Var.a(this);
        this.U = aVar;
        this.V = bVar;
        this.E = new com.json.sdk.controller.d(SDKUtils.getNetworkConfiguration(), this.D, SDKUtils.getControllerUrl(), s3Var);
        i iVar = null;
        r rVar = new r(this, iVar);
        this.s = rVar;
        i8Var.setWebViewClient(new z(this, iVar));
        i8Var.setWebChromeClient(rVar);
        od.a(i8Var);
        H(i8Var);
        i8Var.setDownloadListener(this);
        this.S = h0(context);
        b(context);
        c(i2);
        this.f6601g = str2;
        this.h = str3;
    }

    private String A(h6.e eVar, JSONObject jSONObject) {
        HashMap map = new HashMap();
        map.put("sessionDepth", Integer.toString(jSONObject.optInt("sessionDepth")));
        String strOptString = jSONObject.optString("demandSourceName");
        String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(jSONObject);
        j3 j3VarA = this.J.a(eVar, strFetchDemandSourceId);
        if (j3VarA != null) {
            if (j3VarA.g() != null) {
                map.putAll(j3VarA.g());
            }
            if (!TextUtils.isEmpty(strOptString)) {
                map.put("demandSourceName", strOptString);
            }
            if (!TextUtils.isEmpty(strFetchDemandSourceId)) {
                map.put("demandSourceId", strFetchDemandSourceId);
            }
        }
        Map<String, String> mapD0 = d0(eVar);
        if (mapD0 != null) {
            map.putAll(mapD0);
        }
        String strFlatMapToJsonAsString = SDKUtils.flatMapToJsonAsString(map);
        o2.g gVarB = o2.g.b(eVar);
        return E(gVarB.a, strFlatMapToJsonAsString, gVarB.b, gVarB.c);
    }

    private String B0(String str) {
        return new l.a(str).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C0(Context context) {
        try {
            i2 i2Var = this.S;
            if (i2Var == null) {
                return;
            }
            i2Var.c(context);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String E(String str, String str2, String str3, String str4) {
        return new l.a(str, str2, str3, str4).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E0(String str, String str2) {
        String strD = new hb(str2).d("errMsg");
        if (TextUtils.isEmpty(strD)) {
            return;
        }
        m0(new e(str, strD));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String F(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, boolean z2) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                jSONObject.put(str, SDKUtils.encodeString(str2));
            }
            if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str4)) {
                jSONObject.put(str3, SDKUtils.encodeString(str4));
            }
            if (!TextUtils.isEmpty(str5) && !TextUtils.isEmpty(str6)) {
                jSONObject.put(str5, SDKUtils.encodeString(str6));
            }
            if (!TextUtils.isEmpty(str7) && !TextUtils.isEmpty(str8)) {
                jSONObject.put(str7, SDKUtils.encodeString(str8));
            }
            if (!TextUtils.isEmpty(str9)) {
                jSONObject.put(str9, z2);
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject.toString();
    }

    private void G(Context context, WebView webView) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        this.w = new FrameLayout(context);
        this.u = new FrameLayout(context);
        this.u.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.u.setVisibility(8);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        frameLayout.addView(webView);
        this.w.addView(this.u, layoutParams);
        this.w.addView(frameLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public h6.e G0(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        h6.e eVar = h6.e.Interstitial;
        if (str.equalsIgnoreCase(eVar.toString())) {
            return eVar;
        }
        h6.e eVar2 = h6.e.RewardedVideo;
        if (str.equalsIgnoreCase(eVar2.toString())) {
            return eVar2;
        }
        h6.e eVar3 = h6.e.OfferWall;
        if (str.equalsIgnoreCase(eVar3.toString())) {
            return eVar3;
        }
        h6.e eVar4 = h6.e.Banner;
        if (str.equalsIgnoreCase(eVar4.toString())) {
            return eVar4;
        }
        return null;
    }

    private void H(WebView webView) {
        com.json.sdk.controller.u uVar = new com.json.sdk.controller.u(com.json.sdk.controller.u.a());
        webView.addJavascriptInterface(s(uVar), o2.f6459e);
        webView.addJavascriptInterface(Y(uVar), o2.f6460f);
    }

    private void J(j3 j3Var, Map<String, String> map) {
        Map<String, String> mapMergeHashMaps = SDKUtils.mergeHashMaps(new Map[]{map, j3Var.b()});
        this.G.d(j3Var.h(), true);
        N0(E(o2.g.K, SDKUtils.flatMapToJsonAsString(mapMergeHashMaps), o2.g.L, o2.g.M));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K0() {
        ha haVar = this.i0;
        if (haVar != null) {
            haVar.onCloseRequested();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N0(final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        m0(new Runnable() { // from class: com.ironsource.sdk.controller.b
            @Override // java.lang.Runnable
            public final void run() {
                this.a.P0(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O(String str, h6.e eVar, j3 j3Var) {
        if (b1(eVar.toString())) {
            f0(new a(eVar, j3Var, str));
        }
    }

    private void P(String str, h6.e eVar, j3 j3Var, v vVar) {
        if (TextUtils.isEmpty(str)) {
            vVar.a("Application key are missing", eVar, j3Var);
        } else {
            N0(u(eVar, j3Var).b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void P0(String str) {
        this.Y.a(new l.b(str, k()).a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void Q(java.lang.String r4, boolean r5, java.lang.String r6, java.lang.String r7) {
        /*
            r3 = this;
            com.ironsource.hb r0 = new com.ironsource.hb
            r0.<init>(r4)
            java.lang.String r1 = com.json.sdk.controller.t.a
            java.lang.String r1 = r0.d(r1)
            java.lang.String r2 = com.json.sdk.controller.t.b
            java.lang.String r0 = r0.d(r2)
            if (r5 == 0) goto L1a
            boolean r5 = android.text.TextUtils.isEmpty(r1)
            if (r5 != 0) goto L22
            goto L23
        L1a:
            boolean r5 = android.text.TextUtils.isEmpty(r0)
            if (r5 != 0) goto L22
            r1 = r0
            goto L23
        L22:
            r1 = 0
        L23:
            boolean r5 = android.text.TextUtils.isEmpty(r1)
            if (r5 != 0) goto L5c
            boolean r5 = android.text.TextUtils.isEmpty(r6)
            if (r5 != 0) goto L40
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: org.json.JSONException -> L3f
            r5.<init>(r4)     // Catch: org.json.JSONException -> L3f
            java.lang.String r0 = "errMsg"
            org.json.JSONObject r5 = r5.put(r0, r6)     // Catch: org.json.JSONException -> L3f
            java.lang.String r4 = r5.toString()     // Catch: org.json.JSONException -> L3f
            goto L40
        L3f:
        L40:
            boolean r5 = android.text.TextUtils.isEmpty(r7)
            if (r5 != 0) goto L55
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: org.json.JSONException -> L55
            r5.<init>(r4)     // Catch: org.json.JSONException -> L55
            java.lang.String r6 = "errCode"
            org.json.JSONObject r5 = r5.put(r6, r7)     // Catch: org.json.JSONException -> L55
            java.lang.String r4 = r5.toString()     // Catch: org.json.JSONException -> L55
        L55:
            java.lang.String r4 = r3.j0(r1, r4)
            r3.N0(r4)
        L5c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.sdk.controller.t.Q(java.lang.String, boolean, java.lang.String, java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R(JSONObject jSONObject, WebView webView) {
        if (!jSONObject.optBoolean("inspectWebview") || Build.VERSION.SDK_INT < 19) {
            return;
        }
        WebView.setWebContentsDebuggingEnabled(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S0(String str) {
        try {
            Logger.i(this.f6598d, "load(): " + str);
            this.Y.loadUrl(str);
        } catch (Throwable th) {
            Logger.e(this.f6598d, "WebViewController::load: " + th);
        }
    }

    private void W0(String str) {
        WebSettings settings;
        int i2;
        if (str.equalsIgnoreCase("0")) {
            settings = this.Y.getSettings();
            i2 = 2;
        } else {
            settings = this.Y.getSettings();
            i2 = -1;
        }
        settings.setCacheMode(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z0(String str) {
        WebView presentingView;
        hb hbVar = new hb(str);
        String strD = hbVar.d("color");
        String strD2 = hbVar.d("adViewId");
        int color = !o2.h.T.equalsIgnoreCase(strD) ? Color.parseColor(strD) : 0;
        if (strD2 != null) {
            presentingView = g6.a().a(strD2).getPresentingView();
            if (presentingView == null) {
                return;
            }
        } else {
            presentingView = this.Y;
        }
        presentingView.setBackgroundColor(color);
    }

    private String b0(String str) {
        String str2 = this.D + File.separator;
        return str.contains(str2) ? str.substring(str2.length()) : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b1(String str) {
        boolean z2 = false;
        if (TextUtils.isEmpty(str)) {
            Logger.d(this.f6598d, "Trying to trigger a listener - no product was found");
            return false;
        }
        if (!str.equalsIgnoreCase(h6.e.Interstitial.toString()) ? !str.equalsIgnoreCase(h6.e.RewardedVideo.toString()) ? !str.equalsIgnoreCase(h6.e.Banner.toString()) ? (str.equalsIgnoreCase(h6.e.OfferWall.toString()) || str.equalsIgnoreCase(h6.e.OfferWallCredits.toString())) && this.B != null : this.C != null : this.z != null : this.A != null) {
            z2 = true;
        }
        if (!z2) {
            Logger.d(this.f6598d, "Trying to trigger a listener - no listener was found for product " + str);
        }
        return z2;
    }

    private String c0(String str, String str2, String str3) {
        return new l.a(str, null, str2, str3).a();
    }

    private Map<String, String> d0(h6.e eVar) {
        if (eVar == h6.e.OfferWall) {
            return this.i;
        }
        return null;
    }

    private i2 h0(Context context) {
        return new i(SDKUtils.getControllerConfigAsJSONObject(), context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String j0(String str, String str2) {
        return new l.a(str, str2).a();
    }

    private void n0(JSONObject jSONObject) throws JSONException {
        jSONObject.put(SDKUtils.encodeString("gpi"), ja.d(this.Y.getContext()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String s0(String str) {
        return new hb(str).d(b);
    }

    private String t0(JSONObject jSONObject) {
        n3 n3VarB = n3.b(this.Y.getContext());
        StringBuilder sb = new StringBuilder();
        String sDKVersion = SDKUtils.getSDKVersion();
        if (!TextUtils.isEmpty(sDKVersion)) {
            sb.append("SDKVersion");
            sb.append(o2.i.b);
            sb.append(sDKVersion);
            sb.append(o2.i.c);
        }
        String strE = n3VarB.e();
        if (!TextUtils.isEmpty(strE)) {
            sb.append("deviceOs");
            sb.append(o2.i.b);
            sb.append(strE);
        }
        Uri uri = Uri.parse(SDKUtils.getControllerUrl());
        if (uri != null) {
            String str = uri.getScheme() + CertificateUtil.DELIMITER;
            String host = uri.getHost();
            int port = uri.getPort();
            if (port != -1) {
                host = host + CertificateUtil.DELIMITER + port;
            }
            sb.append(o2.i.c);
            sb.append("protocol");
            sb.append(o2.i.b);
            sb.append(str);
            sb.append(o2.i.c);
            sb.append(o2.i.C);
            sb.append(o2.i.b);
            sb.append(host);
            if (jSONObject.keys().hasNext()) {
                try {
                    String string = new JSONObject(jSONObject, new String[]{o2.i.Y, "applicationKey"}).toString();
                    if (!TextUtils.isEmpty(string)) {
                        sb.append(o2.i.c);
                        sb.append(o2.i.M);
                        sb.append(o2.i.b);
                        sb.append(string);
                    }
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
            sb.append(o2.i.c);
            sb.append("debug");
            sb.append(o2.i.b);
            sb.append(k());
        }
        return sb.toString();
    }

    private w u(h6.e eVar, j3 j3Var) {
        w wVar = new w();
        if (eVar == h6.e.RewardedVideo || eVar == h6.e.Interstitial || eVar == h6.e.OfferWall || eVar == h6.e.Banner) {
            HashMap map = new HashMap();
            map.put("applicationKey", this.f6601g);
            if (!TextUtils.isEmpty(this.h)) {
                map.put("applicationUserId", this.h);
            }
            if (j3Var != null) {
                if (j3Var.g() != null) {
                    map.putAll(j3Var.g());
                    map.put(o2.h.y0, String.valueOf(com.json.j.a.c(j3Var.h())));
                }
                map.put("demandSourceName", j3Var.f());
                map.put("demandSourceId", j3Var.h());
            }
            Map<String, String> mapD0 = d0(eVar);
            if (mapD0 != null) {
                map.putAll(mapD0);
            }
            String strFlatMapToJsonAsString = SDKUtils.flatMapToJsonAsString(map);
            o2.g gVarA = o2.g.a(eVar);
            String strE = E(gVarA.a, strFlatMapToJsonAsString, gVarA.b, gVarA.c);
            wVar.a = gVarA.a;
            wVar.b = strE;
        } else if (eVar == h6.e.OfferWallCredits) {
            String strE2 = E(o2.g.D, F(o2.h.m, o2.h.a0, "applicationKey", this.f6601g, "applicationUserId", this.h, null, null, null, false), "null", o2.g.g0);
            wVar.a = o2.g.D;
            wVar.b = strE2;
        }
        return wVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] u0(Context context) {
        boolean z2;
        n3 n3VarB = n3.b(context);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appOrientation", "none");
            jSONObject.put(o2.i.z, SDKUtils.translateDeviceOrientation(this.W.E(context)));
            String strD = n3VarB.d();
            if (strD != null) {
                jSONObject.put(SDKUtils.encodeString("deviceOEM"), SDKUtils.encodeString(strD));
            }
            String strC = n3VarB.c();
            if (strC != null) {
                jSONObject.put(SDKUtils.encodeString("deviceModel"), SDKUtils.encodeString(strC));
                z2 = false;
            } else {
                z2 = true;
            }
            try {
                SDKUtils.loadGoogleAdvertiserInfo(context);
                String advertiserId = SDKUtils.getAdvertiserId();
                if (!TextUtils.isEmpty(advertiserId)) {
                    Logger.i(this.f6598d, "add AID");
                    jSONObject.put("deviceIds" + o2.i.f6490d + "AID" + o2.i.f6491e, SDKUtils.encodeString(advertiserId));
                }
                String limitAdTracking = SDKUtils.getLimitAdTracking();
                if (!TextUtils.isEmpty(limitAdTracking)) {
                    Logger.i(this.f6598d, "add LAT");
                    jSONObject.put("isLimitAdTrackingEnabled", Boolean.parseBoolean(limitAdTracking));
                }
                String strE = n3VarB.e();
                if (strE != null) {
                    jSONObject.put(SDKUtils.encodeString("deviceOs"), SDKUtils.encodeString(strE));
                } else {
                    z2 = true;
                }
                String strF = n3VarB.f();
                if (strF != null) {
                    jSONObject.put(SDKUtils.encodeString("deviceOSVersion"), strF.replaceAll("[^0-9/.]", ""));
                } else {
                    z2 = true;
                }
                String strF2 = n3VarB.f();
                if (strF2 != null) {
                    jSONObject.put(SDKUtils.encodeString("deviceOSVersionFull"), SDKUtils.encodeString(strF2));
                }
                String strValueOf = String.valueOf(n3VarB.a());
                if (strValueOf != null) {
                    jSONObject.put(SDKUtils.encodeString("deviceApiLevel"), strValueOf);
                } else {
                    z2 = true;
                }
                jSONObject.put(v4.V, String.valueOf(com.json.o.a()));
                String sDKVersion = SDKUtils.getSDKVersion();
                if (sDKVersion != null) {
                    jSONObject.put(SDKUtils.encodeString("SDKVersion"), SDKUtils.encodeString(sDKVersion));
                }
                if (n3VarB.b() != null && n3VarB.b().length() > 0) {
                    jSONObject.put(SDKUtils.encodeString("mobileCarrier"), SDKUtils.encodeString(n3VarB.b()));
                }
                String strB = l2.b(context);
                if (strB.equals("none")) {
                    z2 = true;
                } else {
                    jSONObject.put(SDKUtils.encodeString("connectionType"), SDKUtils.encodeString(strB));
                }
                if (Build.VERSION.SDK_INT >= 23) {
                    jSONObject.put(SDKUtils.encodeString("hasVPN"), l2.d(context));
                }
                jSONObject.put("uxt", IronSourceStorageUtils.isUxt());
                String language = context.getResources().getConfiguration().locale.getLanguage();
                if (!TextUtils.isEmpty(language)) {
                    jSONObject.put(SDKUtils.encodeString("deviceLanguage"), SDKUtils.encodeString(language.toUpperCase()));
                }
                if (SDKUtils.isExternalStorageAvailable()) {
                    jSONObject.put(SDKUtils.encodeString("diskFreeSize"), SDKUtils.encodeString(String.valueOf(this.W.a(this.D))));
                } else {
                    z2 = true;
                }
                String strValueOf2 = String.valueOf(this.W.r());
                if (TextUtils.isEmpty(strValueOf2)) {
                    z2 = true;
                } else {
                    jSONObject.put(SDKUtils.encodeString(o2.i.F) + o2.i.f6490d + SDKUtils.encodeString("width") + o2.i.f6491e, SDKUtils.encodeString(strValueOf2));
                }
                jSONObject.put(SDKUtils.encodeString(o2.i.F) + o2.i.f6490d + SDKUtils.encodeString("height") + o2.i.f6491e, SDKUtils.encodeString(String.valueOf(this.W.a())));
                String strG = k0.g(this.Y.getContext());
                if (!TextUtils.isEmpty(strG)) {
                    jSONObject.put(SDKUtils.encodeString("bundleId"), SDKUtils.encodeString(strG));
                }
                String strValueOf3 = String.valueOf(this.W.h());
                if (!TextUtils.isEmpty(strValueOf3)) {
                    jSONObject.put(SDKUtils.encodeString("deviceScreenScale"), SDKUtils.encodeString(strValueOf3));
                }
                String strValueOf4 = String.valueOf(this.W.f());
                if (!TextUtils.isEmpty(strValueOf4)) {
                    jSONObject.put(SDKUtils.encodeString("unLocked"), SDKUtils.encodeString(strValueOf4));
                }
                jSONObject.put(SDKUtils.encodeString("deviceVolume"), n3.b(context).a(context));
                jSONObject.put(SDKUtils.encodeString("batteryLevel"), this.W.w(context));
                jSONObject.put(SDKUtils.encodeString("mcc"), k2.b(context));
                jSONObject.put(SDKUtils.encodeString("mnc"), k2.c(context));
                jSONObject.put(SDKUtils.encodeString("phoneType"), k2.e(context));
                jSONObject.put(SDKUtils.encodeString("simOperator"), SDKUtils.encodeString(k2.f(context)));
                jSONObject.put(SDKUtils.encodeString("lastUpdateTime"), k0.f(context));
                jSONObject.put(SDKUtils.encodeString("firstInstallTime"), k0.d(context));
                jSONObject.put(SDKUtils.encodeString("appVersion"), SDKUtils.encodeString(k0.b(context)));
                String strE2 = k0.e(context);
                if (!TextUtils.isEmpty(strE2)) {
                    jSONObject.put(SDKUtils.encodeString("installerPackageName"), SDKUtils.encodeString(strE2));
                }
                n0(jSONObject);
                jSONObject.put(SDKUtils.encodeString(o2.i.o0), this.W.z(context));
            } catch (JSONException e2) {
                e = e2;
                e.printStackTrace();
            }
        } catch (JSONException e3) {
            e = e3;
            z2 = false;
        }
        return new Object[]{jSONObject.toString(), Boolean.valueOf(z2)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public w2 v(h6.e eVar) {
        if (eVar == h6.e.Interstitial) {
            return this.A;
        }
        if (eVar == h6.e.RewardedVideo) {
            return this.z;
        }
        if (eVar == h6.e.Banner) {
            return this.C;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] v0(String str, String str2) {
        boolean z2;
        JSONObject jSONObject = new JSONObject();
        Map<String, String> mapG = null;
        if (TextUtils.isEmpty(str)) {
            z2 = true;
        } else {
            h6.e eVarG0 = G0(str);
            if (eVarG0 == h6.e.OfferWall) {
                mapG = this.i;
            } else {
                j3 j3VarA = this.J.a(eVarG0, str2);
                if (j3VarA != null) {
                    mapG = j3VarA.g();
                    mapG.put("demandSourceName", j3VarA.f());
                    mapG.put("demandSourceId", j3VarA.h());
                }
            }
            try {
                jSONObject.put(o2.h.m, str);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            try {
                Map<String, String> initSDKParams = SDKUtils.getInitSDKParams();
                if (initSDKParams != null) {
                    jSONObject = SDKUtils.mergeJSONObjects(jSONObject, new JSONObject(initSDKParams));
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            z2 = false;
        }
        if (!TextUtils.isEmpty(this.h)) {
            try {
                jSONObject.put(SDKUtils.encodeString("applicationUserId"), SDKUtils.encodeString(this.h));
            } catch (JSONException e4) {
                e4.printStackTrace();
            }
        }
        if (TextUtils.isEmpty(this.f6601g)) {
            z2 = true;
        } else {
            try {
                jSONObject.put(SDKUtils.encodeString("applicationKey"), SDKUtils.encodeString(this.f6601g));
            } catch (JSONException e5) {
                e5.printStackTrace();
            }
        }
        if (mapG != null && !mapG.isEmpty()) {
            for (Map.Entry<String, String> entry : mapG.entrySet()) {
                if (entry.getKey().equalsIgnoreCase("sdkWebViewCache")) {
                    W0(entry.getValue());
                }
                try {
                    jSONObject.put(SDKUtils.encodeString(entry.getKey()), SDKUtils.encodeString(entry.getValue()));
                } catch (JSONException e6) {
                    e6.printStackTrace();
                }
            }
        }
        return new Object[]{jSONObject.toString(), Boolean.valueOf(z2)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String x0(String str) {
        return new hb(str).d(a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y0(Context context) {
        try {
            i2 i2Var = this.S;
            if (i2Var == null) {
                return;
            }
            i2Var.b(context);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    void I(h6.e eVar, String str) {
        f0(new h(eVar, str));
    }

    void N(Runnable runnable) {
        q5 q5Var = this.c;
        if (q5Var != null) {
            q5Var.a(runnable);
        }
    }

    com.json.sdk.controller.q Y(com.json.sdk.controller.u uVar) {
        return new com.json.sdk.controller.q(uVar);
    }

    public void a(int i2) {
        b(i2);
    }

    @Override // com.json.sdk.controller.k
    public void a(Activity activity) {
        this.X.a(activity);
    }

    @Override // com.json.sdk.controller.k
    public void a(Context context) {
        N(new g(context));
    }

    public void a(bd bdVar) {
        this.F = bdVar;
    }

    public void a(f0 f0Var) {
        String strB;
        w2 w2VarV;
        synchronized (this.H) {
            if (f0Var.m() && this.k) {
                Log.d(this.f6598d, "restoreState(state:" + f0Var + ")");
                int iC = f0Var.c();
                if (iC != -1) {
                    h6.e eVar = h6.e.RewardedVideo;
                    if (iC == eVar.ordinal()) {
                        Log.d(this.f6598d, "onRVAdClosed()");
                        strB = f0Var.b();
                        w2VarV = v(eVar);
                        if (w2VarV != null && !TextUtils.isEmpty(strB)) {
                            w2VarV.a(eVar, strB);
                        }
                        f0Var.a(-1);
                        f0Var.f(null);
                    } else {
                        eVar = h6.e.Interstitial;
                        if (iC == eVar.ordinal()) {
                            Log.d(this.f6598d, "onInterstitialAdClosed()");
                            strB = f0Var.b();
                            w2VarV = v(eVar);
                            if (w2VarV != null && !TextUtils.isEmpty(strB)) {
                                w2VarV.a(eVar, strB);
                            }
                        } else if (iC == h6.e.OfferWall.ordinal()) {
                            Log.d(this.f6598d, "onOWAdClosed()");
                            da daVar = this.B;
                            if (daVar != null) {
                                daVar.onOWAdClosed();
                            }
                        }
                        f0Var.a(-1);
                        f0Var.f(null);
                    }
                }
                Log.d(this.f6598d, "No ad was opened");
                String strD = f0Var.d();
                String strF = f0Var.f();
                for (j3 j3Var : this.J.a(h6.e.Interstitial)) {
                    if (j3Var.e() == 2) {
                        Log.d(this.f6598d, "initInterstitial(appKey:" + strD + ", userId:" + strF + ", demandSource:" + j3Var.f() + ")");
                        a(strD, strF, j3Var, this.A);
                    }
                }
                String strI = f0Var.i();
                String strJ = f0Var.j();
                for (j3 j3Var2 : this.J.a(h6.e.RewardedVideo)) {
                    if (j3Var2.e() == 2) {
                        String strF2 = j3Var2.f();
                        Log.d(this.f6598d, "onRVNoMoreOffers()");
                        this.z.d(strF2);
                        Log.d(this.f6598d, "initRewardedVideo(appKey:" + strI + ", userId:" + strJ + ", demandSource:" + strF2 + ")");
                        a(strI, strJ, j3Var2, this.z);
                    }
                }
                f0Var.c(false);
            }
            this.G = f0Var;
        }
    }

    public void a(ha haVar) {
        this.i0 = haVar;
        this.Y.a(haVar);
    }

    @Override // com.json.sdk.controller.k
    public void a(j3 j3Var) {
        Map<String, String> mapB = j3Var.b();
        if (mapB != null) {
            N0(E(o2.g.Y, SDKUtils.flatMapToJsonAsString(mapB), o2.g.V, o2.g.W));
        }
    }

    @Override // com.json.sdk.controller.k
    public void a(j3 j3Var, Map<String, String> map, x2 x2Var) {
        Map<String, String> mapMergeHashMaps = SDKUtils.mergeHashMaps(new Map[]{map, j3Var.b()});
        if (map != null) {
            N0(E(o2.g.T, SDKUtils.flatMapToJsonAsString(mapMergeHashMaps), o2.g.U, o2.g.X));
        }
    }

    @Override // com.json.sdk.controller.k
    public void a(j3 j3Var, Map<String, String> map, y2 y2Var) {
        N0(A(h6.e.Interstitial, new JSONObject(SDKUtils.mergeHashMaps(new Map[]{map, j3Var.b()}))));
    }

    @Override // com.json.fa
    public void a(q6 q6Var) {
        if (q6Var.getName().contains(o2.f6461g)) {
            this.E.f(new b());
        } else {
            a(q6Var.getName(), q6Var.getParent());
        }
    }

    @Override // com.json.fa
    public void a(q6 q6Var, i6 i6Var) {
        if (q6Var.getName().contains(o2.f6461g)) {
            this.E.g(new c(), new d(i6Var));
        } else {
            a(q6Var.getName(), q6Var.getParent(), i6Var.b());
        }
    }

    public void a(com.json.sdk.controller.a aVar) {
        this.O = aVar;
        aVar.a(i());
    }

    @Override // com.json.sdk.controller.k
    public void a(f.MessageToController messageToController, k.a aVar) {
        N0(E(messageToController.e(), messageToController.h(), o2.g.Z, o2.g.Z));
    }

    public void a(com.json.sdk.controller.i iVar) {
        this.N = iVar;
    }

    public void a(com.json.sdk.controller.n nVar) {
        this.K = nVar;
    }

    public void a(com.json.sdk.controller.o oVar) {
        this.L = oVar;
    }

    public void a(com.json.sdk.controller.p pVar) {
        this.P = pVar;
    }

    public void a(com.json.sdk.controller.s sVar) {
        this.M = sVar;
    }

    public void a(x xVar) {
        this.x = xVar;
    }

    @Override // com.json.sdk.controller.k
    public void a(String str, y2 y2Var) {
        HashMap map = new HashMap();
        map.put("demandSourceName", str);
        String strFlatMapToJsonAsString = SDKUtils.flatMapToJsonAsString(map);
        this.G.d(str, true);
        N0(E(o2.g.K, strFlatMapToJsonAsString, o2.g.L, o2.g.M));
    }

    public void a(String str, String str2) {
        try {
            N0(j0(o2.g.o, F("file", str, "path", b0(str2), null, null, null, null, null, false)));
        } catch (Exception e2) {
            a(str, str2, e2.getMessage());
        }
    }

    @Override // com.json.sdk.controller.k
    public void a(String str, String str2, da daVar) {
        this.f6601g = str;
        this.h = str2;
        this.B = daVar;
        if (TextUtils.isEmpty(str2)) {
            O("UserId missing", h6.e.OfferWallCredits, null);
        } else {
            P(this.f6601g, h6.e.OfferWallCredits, null, new p());
        }
    }

    @Override // com.json.sdk.controller.k
    public void a(String str, String str2, j3 j3Var, x2 x2Var) {
        this.f6601g = str;
        this.h = str2;
        this.C = x2Var;
        P(str, h6.e.Banner, j3Var, new q());
    }

    @Override // com.json.sdk.controller.k
    public void a(String str, String str2, j3 j3Var, y2 y2Var) {
        this.f6601g = str;
        this.h = str2;
        this.A = y2Var;
        this.G.g(str);
        this.G.h(this.h);
        P(this.f6601g, h6.e.Interstitial, j3Var, new n());
    }

    @Override // com.json.sdk.controller.k
    public void a(String str, String str2, j3 j3Var, z2 z2Var) {
        this.f6601g = str;
        this.h = str2;
        this.z = z2Var;
        this.G.i(str);
        this.G.j(str2);
        P(str, h6.e.RewardedVideo, j3Var, new m());
    }

    public void a(String str, String str2, String str3) {
        try {
            N0(j0(o2.g.p, F("file", str, "path", b0(str2), "errMsg", str3, null, null, null, false)));
        } catch (Exception unused) {
        }
    }

    @Override // com.json.sdk.controller.k
    public void a(String str, String str2, Map<String, String> map, da daVar) {
        this.f6601g = str;
        this.h = str2;
        this.i = map;
        this.B = daVar;
        this.G.b(map);
        this.G.b(true);
        if (TextUtils.isEmpty(str2)) {
            O("UserId missing", h6.e.OfferWall, null);
        } else {
            P(this.f6601g, h6.e.OfferWall, null, new o());
        }
    }

    @Override // com.json.sdk.controller.k
    public void a(Map<String, String> map, da daVar) {
        this.i = map;
        N0(c0(o2.g.C, o2.g.E, o2.g.F));
    }

    @Override // com.json.sdk.controller.k
    public void a(JSONObject jSONObject) {
        N0(j0(o2.g.j0, jSONObject != null ? jSONObject.toString() : null));
    }

    @Override // com.json.sdk.controller.k
    public void a(JSONObject jSONObject, x2 x2Var) {
        N0(E(o2.g.T, jSONObject.toString(), o2.g.U, o2.g.X));
    }

    @Override // com.json.sdk.controller.k
    public void a(JSONObject jSONObject, y2 y2Var) {
        N0(A(h6.e.Interstitial, jSONObject));
    }

    @Override // com.json.sdk.controller.k
    public void a(JSONObject jSONObject, z2 z2Var) {
        N0(A(h6.e.RewardedVideo, jSONObject));
    }

    public void a(boolean z2, String str) {
        N0(j0(o2.g.a0, F(o2.h.K, str, null, null, null, null, null, null, o2.h.o, z2)));
    }

    @Override // com.json.sdk.controller.k
    public boolean a(String str) {
        j3 j3VarA = this.J.a(h6.e.Interstitial, str);
        return j3VarA != null && j3VarA.d();
    }

    @Override // com.json.sdk.controller.k
    public void b() {
        N0(B0(o2.g.s));
    }

    public void b(int i2) {
        if (!this.E.u()) {
            Logger.i(this.f6598d, "load(): Mobile Controller HTML Does not exist");
            return;
        }
        JSONObject controllerConfigAsJSONObject = SDKUtils.getControllerConfigAsJSONObject();
        String strT0 = t0(controllerConfigAsJSONObject);
        Map<String, String> initSDKParams = SDKUtils.getInitSDKParams();
        if (initSDKParams != null && initSDKParams.containsKey(b4.f6059g)) {
            strT0 = String.format("%s&sessionid=%s", strT0, initSDKParams.get(b4.f6059g));
        }
        this.c.c(new k(controllerConfigAsJSONObject, this.Y, this.E.o().toURI().toString() + "?" + strT0));
        this.m = new l(50000L, 1000L, i2).start();
    }

    @Override // com.json.sdk.controller.k
    public void b(Context context) {
        N(new f(context));
    }

    @Override // com.json.sdk.controller.k
    public void b(j3 j3Var, Map<String, String> map, y2 y2Var) {
        J(j3Var, map);
    }

    public void b(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            str2 = o2.c.B;
        }
        String str3 = str2;
        if (TextUtils.isEmpty(str)) {
            str = o2.c.A;
        }
        N0(j0(o2.g.f0, F("errMsg", str, "url", str3, null, null, null, null, null, false)));
    }

    @Override // com.json.sdk.controller.k
    public void b(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.T = jSONObject;
        }
    }

    @Override // com.json.sdk.controller.k
    public void c() {
        a(this.G);
    }

    public void c(int i2) {
        Z = i2;
    }

    public void c(String str) {
        if (str.equals(o2.h.i)) {
            K0();
        }
        N0(j0(o2.g.y, F("action", str, null, null, null, null, null, null, null, false)));
    }

    @Override // com.json.sdk.controller.k
    public void d() {
        N0(B0(o2.g.t));
    }

    @Override // com.json.sdk.controller.k
    public void destroy() {
        this.Y.destroy();
        s3 s3Var = this.j;
        if (s3Var != null) {
            s3Var.d();
        }
        i2 i2Var = this.S;
        if (i2Var != null) {
            i2Var.b();
        }
        CountDownTimer countDownTimer = this.m;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    @Override // com.json.sdk.controller.k
    public h6.c e() {
        return h6.c.Web;
    }

    public void e(String str, String str2) {
        N0(j0(o2.g.b0, F(o2.h.p, str2, o2.h.m, str, null, null, null, null, null, false)));
    }

    public void e(JSONObject jSONObject) {
        Logger.i(this.f6598d, "device connection info changed: " + jSONObject.toString());
        N0(j0(o2.g.x, F(o2.i.g0, jSONObject.toString(), null, null, null, null, null, null, null, false)));
    }

    @Override // com.json.sdk.controller.k
    public void f() {
        this.E.c(new j6());
        if (this.E.s()) {
            a(1);
        }
    }

    void f0(Runnable runnable) {
        q5 q5Var = this.c;
        if (q5Var != null) {
            q5Var.b(runnable);
        }
    }

    public boolean h(String str) {
        List<String> listD = g8.e().d();
        if (listD == null) {
            return false;
        }
        try {
            if (listD.isEmpty()) {
                return false;
            }
            Iterator<String> it = listD.iterator();
            while (it.hasNext()) {
                if (str.contains(it.next())) {
                    wc.a(j(), str);
                    return true;
                }
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public nd i() {
        if (this.Q == null) {
            this.Q = new j();
        }
        return this.Q;
    }

    public Context j() {
        return this.X.a();
    }

    public int k() {
        return Z;
    }

    public void k(String str) {
        N0(j0(o2.g.v, F("action", str, null, null, null, null, null, null, null, false)));
    }

    public FrameLayout l() {
        return this.w;
    }

    public String m() {
        return this.y;
    }

    public void m(String str) {
        Logger.i(this.f6598d, "device status changed, connection type " + str);
        m6.a(str);
        N0(j0(o2.g.w, F("connectionType", str, null, null, null, null, null, null, null, false)));
    }

    void m0(Runnable runnable) {
        q5 q5Var = this.c;
        if (q5Var != null) {
            q5Var.c(runnable);
        }
    }

    public f0 n() {
        return this.G;
    }

    public void n(String str) {
        this.y = str;
    }

    public x o() {
        return this.x;
    }

    @Override // android.webkit.DownloadListener
    public void onDownloadStart(String str, String str2, String str3, String str4, long j2) {
        Logger.i(this.f6598d, str + " " + str4);
    }

    public void p() {
        if (this.l == null) {
            return;
        }
        K0();
        h6.e eVarB = this.l.b();
        String strA = this.l.a();
        if (b1(eVarB.toString())) {
            I(eVarB, strA);
        }
    }

    public void q() {
        this.s.onHideCustomView();
    }

    public boolean r() {
        return this.t != null;
    }

    com.json.sdk.controller.j s(com.json.sdk.controller.u uVar) {
        return new com.json.sdk.controller.j(new com.json.sdk.controller.c(new u()), uVar);
    }

    public void s() {
        N0(B0(o2.g.e0));
    }

    public void t() {
        N0(B0(o2.g.G));
    }

    public void u() {
        try {
            this.Y.onPause();
        } catch (Throwable th) {
            Logger.i(this.f6598d, "WebViewController: onPause() - " + th);
        }
    }

    public void v() {
        this.F = null;
    }

    public void w() {
        this.i0 = null;
    }

    public void x() {
        this.Y.requestFocus();
    }

    public void y() {
        try {
            this.Y.onResume();
        } catch (Throwable th) {
            Logger.i(this.f6598d, "WebViewController: onResume() - " + th);
        }
    }
}
