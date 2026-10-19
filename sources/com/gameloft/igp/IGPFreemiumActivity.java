package com.gameloft.igp;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.KeyguardManager;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.media.MediaPlayer;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.ConsoleMessage;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.applovin.sdk.AppLovinEventTypes;
import com.gameloft.android.ANMP.GloftAGHM.GLUtils.Device;
import com.gameloft.android.ANMP.GloftAGHM.GLUtils.Encrypter;
import com.gameloft.android.ANMP.GloftAGHM.R;
import com.google.android.gms.drive.DriveFile;
import com.json.b4;
import com.json.o2;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class IGPFreemiumActivity extends Activity {
    public static boolean a;
    public static String[] b = {"EN", "FR", "DE", "IT", "SP", "JP", "KR", "CN", "BR", "RU", "TR", "AR", "TH", "ID", "VI", "ZT"};
    private Display u;
    private RelativeLayout v;
    private WebView w;
    private int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2936d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f2937e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private RelativeLayout f2938f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private VideoView f2939g = null;
    private boolean h = false;
    private boolean i = false;
    private int j = 800;
    private int k = 480;
    private String l = "https://201205igp.gameloft.com/redir/freemium/hdfreemium.php?from=GAME_CODE&country=COUNTRY_DETECTED&lg=LANG&udid=UDIDPHONE&hdidfv=HDIDFV&d=DEVICE&f=FIRMWARE&game_ver=VERSION&os=android&igp_rev=1006&conn=CONNSPEED";
    private String m = "";
    private String n = "https://signal-back.com";
    private String o = "https://201205igp.gameloft.com/redir/android/index.php?page=gameinformation";
    private String p = "https://201205igp.gameloft.com/redir/?from=";
    private String q = null;
    private int[] r = {R.string.IGP_LOADING_EN, R.string.IGP_LOADING_FR, R.string.IGP_LOADING_DE, R.string.IGP_LOADING_IT, R.string.IGP_LOADING_SP, R.string.IGP_LOADING_JP, R.string.IGP_LOADING_KR, R.string.IGP_LOADING_CN, R.string.IGP_LOADING_BR, R.string.IGP_LOADING_RU, R.string.IGP_LOADING_TR, R.string.IGP_LOADING_AR, R.string.IGP_LOADING_TH, R.string.IGP_LOADING_ID, R.string.IGP_LOADING_VI, R.string.IGP_LOADING_ZT};
    private int[] s = {R.string.IGP_NET_ERROR_EN, R.string.IGP_NET_ERROR_FR, R.string.IGP_NET_ERROR_DE, R.string.IGP_NET_ERROR_IT, R.string.IGP_NET_ERROR_SP, R.string.IGP_NET_ERROR_JP, R.string.IGP_NET_ERROR_KR, R.string.IGP_NET_ERROR_CN, R.string.IGP_NET_ERROR_BR, R.string.IGP_NET_ERROR_RU, R.string.IGP_NET_ERROR_TR, R.string.IGP_NET_ERROR_AR, R.string.IGP_NET_ERROR_TH, R.string.IGP_NET_ERROR_ID, R.string.IGP_NET_ERROR_VI, R.string.IGP_NET_ERROR_ZT};
    private int[] t = {R.string.IGP_OK_EN, R.string.IGP_OK_FR, R.string.IGP_OK_DE, R.string.IGP_OK_IT, R.string.IGP_OK_SP, R.string.IGP_OK_JP, R.string.IGP_OK_KR, R.string.IGP_OK_CN, R.string.IGP_OK_BR, R.string.IGP_OK_RU, R.string.IGP_OK_TR, R.string.IGP_OK_AR, R.string.IGP_OK_TH, R.string.IGP_OK_ID, R.string.IGP_OK_VI, R.string.IGP_OK_ZT};
    private ProgressDialog x = null;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                IGPFreemiumActivity.this.v.removeView(IGPFreemiumActivity.this.w);
                IGPFreemiumActivity.this.w.destroy();
                IGPFreemiumActivity.this.w.destroyDrawingCache();
                IGPFreemiumActivity.this.w = null;
            } catch (Exception unused) {
            }
        }
    }

    class b extends Thread {

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (IGPFreemiumActivity.this.h && IGPFreemiumActivity.this.f2939g != null) {
                    try {
                        IGPFreemiumActivity.this.f2939g.resume();
                    } catch (Exception unused) {
                    }
                }
                if (IGPFreemiumActivity.this.w != null) {
                    IGPFreemiumActivity.this.w.onResume();
                    IGPFreemiumActivity.this.w.resumeTimers();
                    IGPFreemiumActivity.this.w.loadUrl("javascript:onResume()");
                }
            }
        }

        b() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (((KeyguardManager) IGPFreemiumActivity.this.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
            }
            IGPFreemiumActivity.this.runOnUiThread(new a());
        }
    }

    class c implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ int b;
        final /* synthetic */ j c;

        c(String str, int i, j jVar) {
            this.a = str;
            this.b = i;
            this.c = jVar;
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            try {
                String httpResponse = IGPFreemiumActivity.getHttpResponse("https://201205igp.gameloft.com/redir/rewards.php?action=retrieveItems&game_code=" + this.a + "&game_ver=1.8.0a&lang=" + IGPFreemiumActivity.b[this.b] + "&user=" + Device.getSerial() + "&hdidfv=" + Device.getHDIDFV());
                if (httpResponse != null) {
                    JSONObject jSONObject = new JSONObject(httpResponse);
                    int i = jSONObject.getInt("status");
                    if (i == 0) {
                        JSONArray jSONArray = jSONObject.getJSONArray("items");
                        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                            this.c.a(jSONObject2.getInt("id"), jSONObject2.getString("type"), jSONObject2.getInt("amount"), jSONObject2.getInt("isInstall"), jSONObject2.getString("destGameCode"), jSONObject2.getString("creation"));
                        }
                        if (jSONArray.length() != 0) {
                            JSONObject jSONObject3 = jSONObject.getJSONObject("message");
                            this.c.c(jSONObject3.getString("title"), jSONObject3.getString(AppLovinEventTypes.USER_VIEWED_CONTENT));
                        } else {
                            this.c.b(i, "No items retrieved.");
                        }
                    } else {
                        this.c.b(i, jSONObject.getString("message"));
                    }
                } else {
                    this.c.b(-1, "Response is null. Check your network connection.");
                }
            } catch (Exception e2) {
                this.c.b(-1, "Exception occured: " + e2.getMessage());
            }
            System.gc();
        }
    }

    class d implements Runnable {
        final /* synthetic */ String a;

        d(String str) {
            this.a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                IGPFreemiumActivity.this.f();
                IGPFreemiumActivity iGPFreemiumActivity = IGPFreemiumActivity.this;
                iGPFreemiumActivity.x = ProgressDialog.show(iGPFreemiumActivity, null, this.a);
                IGPFreemiumActivity.this.x.setCancelable(true);
            } catch (Exception unused) {
            }
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (IGPFreemiumActivity.this.x != null) {
                    IGPFreemiumActivity.this.x.dismiss();
                }
                IGPFreemiumActivity.this.x = null;
                System.gc();
            } catch (Exception unused) {
            }
        }
    }

    class f extends WebView {
        public f(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 96 && keyCode != 97 && keyCode != 99 && keyCode != 100 && keyCode != 102 && keyCode != 103 && keyCode != 108 && keyCode != 109) {
                return super.dispatchKeyEventPreIme(keyEvent);
            }
            if (keyEvent.getAction() == 0) {
                IGPFreemiumActivity.this.onKeyDown(keyEvent.getKeyCode(), keyEvent);
            } else if (keyEvent.getAction() == 1) {
                IGPFreemiumActivity.this.onKeyUp(keyEvent.getKeyCode(), keyEvent);
            }
            return true;
        }
    }

    class g {
        Context a;
        ViewGroup b;

        class a implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ String b;
            final /* synthetic */ String c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ Bitmap f2940d;

            /* JADX INFO: renamed from: com.gameloft.igp.IGPFreemiumActivity$g$a$a, reason: collision with other inner class name */
            class C0218a implements MediaPlayer.OnPreparedListener {
                final /* synthetic */ ProgressDialog a;

                C0218a(ProgressDialog progressDialog) {
                    this.a = progressDialog;
                }

                @Override // android.media.MediaPlayer.OnPreparedListener
                public void onPrepared(MediaPlayer mediaPlayer) {
                    if (this.a.isShowing()) {
                        this.a.dismiss();
                    }
                    IGPFreemiumActivity.this.f2939g.start();
                }
            }

            class b implements MediaPlayer.OnErrorListener {
                final /* synthetic */ ProgressDialog a;

                b(ProgressDialog progressDialog) {
                    this.a = progressDialog;
                }

                @Override // android.media.MediaPlayer.OnErrorListener
                public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                    if (this.a.isShowing()) {
                        this.a.dismiss();
                    }
                    IGPFreemiumActivity.this.h = false;
                    IGPFreemiumActivity iGPFreemiumActivity = IGPFreemiumActivity.this;
                    iGPFreemiumActivity.setContentView(iGPFreemiumActivity.v);
                    IGPFreemiumActivity.this.f2939g = null;
                    IGPFreemiumActivity.this.w.loadUrl("javascript:" + a.this.b + "()");
                    return true;
                }
            }

            class c implements MediaPlayer.OnCompletionListener {
                final /* synthetic */ ProgressDialog a;

                c(ProgressDialog progressDialog) {
                    this.a = progressDialog;
                }

                @Override // android.media.MediaPlayer.OnCompletionListener
                public void onCompletion(MediaPlayer mediaPlayer) {
                    if (this.a.isShowing()) {
                        this.a.dismiss();
                    }
                    IGPFreemiumActivity.this.h = false;
                    IGPFreemiumActivity iGPFreemiumActivity = IGPFreemiumActivity.this;
                    iGPFreemiumActivity.setContentView(iGPFreemiumActivity.v);
                    IGPFreemiumActivity.this.w.loadUrl("javascript:" + a.this.c + "()");
                }
            }

            class d implements View.OnKeyListener {
                d() {
                }

                @Override // android.view.View.OnKeyListener
                public boolean onKey(View view, int i, KeyEvent keyEvent) {
                    if (i != 4) {
                        return false;
                    }
                    IGPFreemiumActivity.this.h = false;
                    IGPFreemiumActivity iGPFreemiumActivity = IGPFreemiumActivity.this;
                    iGPFreemiumActivity.setContentView(iGPFreemiumActivity.v);
                    IGPFreemiumActivity.this.f2939g.stopPlayback();
                    IGPFreemiumActivity.this.f2939g = null;
                    IGPFreemiumActivity.this.w.loadUrl("javascript:" + a.this.b + "()");
                    return true;
                }
            }

            class e implements View.OnTouchListener {
                e() {
                }

                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    float x = motionEvent.getX();
                    float y = motionEvent.getY();
                    int action = motionEvent.getAction();
                    if (action == 0) {
                        ((ImageButton) view).setColorFilter(Color.argb(100, 0, 0, 0), PorterDuff.Mode.SRC_ATOP);
                        return true;
                    }
                    if (action != 1) {
                        if (action != 2) {
                            return false;
                        }
                        if (x < 0.0f || x > view.getWidth() || y < 0.0f || y > view.getHeight()) {
                            ((ImageButton) view).setColorFilter(Color.argb(0, 0, 0, 0), PorterDuff.Mode.SRC_ATOP);
                        } else {
                            ((ImageButton) view).setColorFilter(Color.argb(100, 0, 0, 0), PorterDuff.Mode.SRC_ATOP);
                        }
                        return true;
                    }
                    if (x < 0.0f || x > view.getWidth() || y < 0.0f || y > view.getHeight()) {
                        ((ImageButton) view).setColorFilter(Color.argb(0, 0, 0, 0), PorterDuff.Mode.SRC_ATOP);
                        return true;
                    }
                    IGPFreemiumActivity.this.h = false;
                    IGPFreemiumActivity iGPFreemiumActivity = IGPFreemiumActivity.this;
                    iGPFreemiumActivity.setContentView(iGPFreemiumActivity.v);
                    IGPFreemiumActivity.this.w.loadUrl("javascript:" + a.this.b + "()");
                    return true;
                }
            }

            a(String str, String str2, String str3, Bitmap bitmap) {
                this.a = str;
                this.b = str2;
                this.c = str3;
                this.f2940d = bitmap;
            }

            @Override // java.lang.Runnable
            public void run() {
                IGPFreemiumActivity.this.h = true;
                IGPFreemiumActivity.this.f2938f = new RelativeLayout(g.this.a);
                IGPFreemiumActivity iGPFreemiumActivity = IGPFreemiumActivity.this;
                iGPFreemiumActivity.setContentView(iGPFreemiumActivity.f2938f);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.addRule(13);
                IGPFreemiumActivity.this.f2939g = new VideoView(g.this.a);
                IGPFreemiumActivity.this.f2938f.addView(IGPFreemiumActivity.this.f2939g, layoutParams);
                IGPFreemiumActivity iGPFreemiumActivity2 = IGPFreemiumActivity.this;
                ProgressDialog progressDialogShow = ProgressDialog.show(iGPFreemiumActivity2, null, iGPFreemiumActivity2.getString(iGPFreemiumActivity2.r[IGPFreemiumActivity.this.c]));
                progressDialogShow.setCancelable(true);
                IGPFreemiumActivity.this.f2939g.setMediaController(null);
                IGPFreemiumActivity.this.f2939g.setVideoURI(Uri.parse(this.a));
                IGPFreemiumActivity.this.f2939g.requestFocus();
                IGPFreemiumActivity.this.f2939g.setOnPreparedListener(new C0218a(progressDialogShow));
                IGPFreemiumActivity.this.f2939g.setOnErrorListener(new b(progressDialogShow));
                IGPFreemiumActivity.this.f2939g.setOnCompletionListener(new c(progressDialogShow));
                IGPFreemiumActivity.this.f2939g.setOnKeyListener(new d());
                if (this.f2940d != null) {
                    ImageButton imageButton = new ImageButton(g.this.a);
                    imageButton.setImageBitmap(this.f2940d);
                    imageButton.setBackgroundColor(0);
                    imageButton.setScaleType(ImageView.ScaleType.FIT_XY);
                    imageButton.setPadding(0, 0, 0, 0);
                    int iApplyDimension = (int) TypedValue.applyDimension(1, 70, IGPFreemiumActivity.this.getResources().getDisplayMetrics());
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(iApplyDimension, iApplyDimension);
                    layoutParams2.addRule(10);
                    layoutParams2.addRule(11);
                    IGPFreemiumActivity.this.f2938f.addView(imageButton, layoutParams2);
                    imageButton.setOnTouchListener(new e());
                }
            }
        }

        g(Context context, ViewGroup viewGroup) {
            this.a = context;
            this.b = viewGroup;
        }

        @JavascriptInterface
        public void checkBackPressed(String str) {
            if (str == null || !str.equals("true")) {
                IGPFreemiumActivity.this.i = false;
            } else {
                IGPFreemiumActivity.this.i = true;
            }
        }

        @JavascriptInterface
        public void playVideo(String str, String str2, String str3, String str4) {
            if (IGPFreemiumActivity.this.h) {
                return;
            }
            IGPFreemiumActivity.this.runOnUiThread(new a(str, str3, str2, IGPFreemiumActivity.this.e(str4)));
        }
    }

    class h extends WebChromeClient {
        h() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            return true;
        }
    }

    class i extends WebViewClient {

        class a implements Runnable {
            final /* synthetic */ WebView a;

            /* JADX INFO: renamed from: com.gameloft.igp.IGPFreemiumActivity$i$a$a, reason: collision with other inner class name */
            class DialogInterfaceOnCancelListenerC0219a implements DialogInterface.OnCancelListener {
                DialogInterfaceOnCancelListenerC0219a() {
                }

                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    IGPFreemiumActivity.this.b();
                }
            }

            class b implements DialogInterface.OnClickListener {
                b() {
                }

                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    IGPFreemiumActivity.this.b();
                }
            }

            a(WebView webView) {
                this.a = webView;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.a.setVisibility(4);
                try {
                    AlertDialog.Builder builder = new AlertDialog.Builder(IGPFreemiumActivity.this);
                    IGPFreemiumActivity iGPFreemiumActivity = IGPFreemiumActivity.this;
                    AlertDialog.Builder onCancelListener = builder.setPositiveButton(iGPFreemiumActivity.getString(iGPFreemiumActivity.t[IGPFreemiumActivity.this.c]), new b()).setOnCancelListener(new DialogInterfaceOnCancelListenerC0219a());
                    IGPFreemiumActivity iGPFreemiumActivity2 = IGPFreemiumActivity.this;
                    AlertDialog alertDialogCreate = onCancelListener.setMessage(iGPFreemiumActivity2.getString(iGPFreemiumActivity2.s[IGPFreemiumActivity.this.c])).create();
                    alertDialogCreate.setCanceledOnTouchOutside(false);
                    alertDialogCreate.show();
                } catch (Exception unused) {
                }
            }
        }

        i() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            IGPFreemiumActivity.this.f();
            webView.loadUrl("javascript:window.Android.checkBackPressed(isBackPressed)");
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            IGPFreemiumActivity.this.p();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            IGPFreemiumActivity.this.runOnUiThread(new a(webView));
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (str.startsWith("play:")) {
                try {
                    Intent launchIntentForPackage = IGPFreemiumActivity.this.getPackageManager().getLaunchIntentForPackage(str.replace("play:", "").split("[?]")[0]);
                    launchIntentForPackage.addCategory("android.intent.category.LAUNCHER");
                    IGPFreemiumActivity.this.startActivity(launchIntentForPackage);
                } catch (Exception unused) {
                    if (IGPFreemiumActivity.this.q != null) {
                        webView.loadUrl(IGPFreemiumActivity.this.q);
                        IGPFreemiumActivity.this.q = null;
                    }
                }
                return true;
            }
            if (str.equals("exit:") || str.equals("unavailable:")) {
                IGPFreemiumActivity.this.b();
                return true;
            }
            if (str.startsWith("market://")) {
                IGPFreemiumActivity.this.l(str);
                return true;
            }
            if (str.startsWith("amzn://")) {
                IGPFreemiumActivity.this.j(str);
                return true;
            }
            if (str.contains("www.amazon.com")) {
                IGPFreemiumActivity.this.j(str.replaceAll("http://", "amzn://").replaceAll("https://", "amzn://"));
                return true;
            }
            if (str.startsWith("skt:")) {
                IGPFreemiumActivity.this.n(str.replaceAll("skt:", ""));
                return true;
            }
            if (str.startsWith("link:")) {
                String strReplaceAll = str.replaceAll("link:", "");
                if (strReplaceAll.contains("www.amazon.com")) {
                    IGPFreemiumActivity.this.j(strReplaceAll.replaceAll("http://", "amzn://").replaceAll("https://", "amzn://"));
                    return true;
                }
                IGPFreemiumActivity.this.k(strReplaceAll);
                return true;
            }
            if (!str.contains("201205igp.gameloft.com/redir/")) {
                IGPFreemiumActivity.this.k(str);
                return true;
            }
            if (str.contains("ctg=PLAY")) {
                IGPFreemiumActivity.this.q = str.replace("t=bundle", "t=game").replace("ctg=PLAY", "ctg=FRINSTALL&old_ctg=PLAY");
            }
            if (!str.contains("type=SKTMARKET") || !str.contains("&pp=1")) {
                return false;
            }
            if (str.contains("ctg=PLAY")) {
                IGPFreemiumActivity iGPFreemiumActivity = IGPFreemiumActivity.this;
                iGPFreemiumActivity.q = iGPFreemiumActivity.q.replaceAll("&pp=1", "");
            }
            webView.loadUrl(str.replaceAll("&pp=1", ""));
            return true;
        }
    }

    public interface j {
        void a(int i, String str, int i2, int i3, String str2, String str3);

        void b(int i, String str);

        void c(String str, String str2);
    }

    private void a() {
        this.w.getSettings().setJavaScriptEnabled(true);
        this.w.getSettings().setCacheMode(2);
        this.w.getSettings().setSupportZoom(false);
        this.w.getSettings().setBuiltInZoomControls(false);
        this.w.getSettings().setDefaultTextEncodingName(b4.L);
        this.w.getSettings().setLightTouchEnabled(true);
        this.w.getSettings().setLoadsImagesAutomatically(true);
        this.w.setWebChromeClient(new h());
        this.w.setWebViewClient(new i());
        this.w.getSettings().setPluginState(WebSettings.PluginState.ON);
        this.w.getSettings().setLoadWithOverviewMode(true);
        this.w.getSettings().setUseWideViewPort(false);
        this.w.setBackgroundColor(Color.argb(1, 255, 255, 255));
        this.w.setVerticalScrollbarOverlay(true);
        this.w.addJavascriptInterface(new g(this, this.v), o2.f6459e);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 19) {
            this.w.getSettings().setUseWideViewPort(true);
            this.w.getSettings().setLoadWithOverviewMode(true);
        }
        if (i2 >= 21) {
            this.w.getSettings().setMixedContentMode(0);
        }
        if (i2 >= 17) {
            this.w.getSettings().setMediaPlaybackRequiresUserGesture(false);
        }
    }

    private void c() {
        if (this.h && this.f2939g != null) {
            try {
                this.h = false;
                setContentView(this.v);
                this.f2939g.stopPlayback();
                this.f2939g = null;
            } catch (Exception unused) {
            }
        }
        if (this.w != null) {
            runOnUiThread(new a());
        }
    }

    private boolean d(int i2) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 8 && i2 == 11) {
            return false;
        }
        if (i3 >= 9 && i2 == 12) {
            return true;
        }
        if (i3 < 11 || !(i2 == 14 || i2 == 13)) {
            return i3 >= 13 && i2 == 15;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap e(String str) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setDoInput(true);
            httpURLConnection.connect();
            return BitmapFactory.decodeStream(httpURLConnection.getInputStream());
        } catch (MalformedURLException | IOException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        runOnUiThread(new e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(9:0|2|(4:30|3|28|4)|(5:5|(1:7)(1:32)|26|9|21)|8|26|9|21|(1:(0))) */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getHttpResponse(java.lang.String r4) throws java.lang.Throwable {
        /*
            r0 = 0
            java.lang.String r1 = "[?]"
            java.lang.String[] r1 = r4.split(r1)     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L71
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L71
            r2.<init>()     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L71
            r3 = 0
            r3 = r1[r3]     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L71
            r2.append(r3)     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L71
            java.lang.String r3 = "?data="
            r2.append(r3)     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L71
            r3 = 1
            r1 = r1[r3]     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L71
            java.lang.String r1 = com.gameloft.android.ANMP.GloftAGHM.GLUtils.Encrypter.crypt(r1)     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L71
            r2.append(r1)     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L71
            java.lang.String r1 = "&enc=1"
            r2.append(r1)     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L71
            r2.toString()     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L71
            org.apache.http.impl.client.DefaultHttpClient r1 = new org.apache.http.impl.client.DefaultHttpClient     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L71
            r1.<init>()     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L71
            org.apache.http.client.methods.HttpGet r2 = new org.apache.http.client.methods.HttpGet     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L71
            r2.<init>(r4)     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L71
            org.apache.http.HttpResponse r4 = r1.execute(r2)     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L71
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L71
            java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L71
            org.apache.http.HttpEntity r4 = r4.getEntity()     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L71
            java.io.InputStream r4 = r4.getContent()     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L71
            r2.<init>(r4)     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L71
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L71
            java.lang.StringBuffer r4 = new java.lang.StringBuffer     // Catch: java.lang.Throwable -> L65 java.lang.Exception -> L68
            java.lang.String r2 = ""
            r4.<init>(r2)     // Catch: java.lang.Throwable -> L65 java.lang.Exception -> L68
        L50:
            java.lang.String r2 = r1.readLine()     // Catch: java.lang.Throwable -> L65 java.lang.Exception -> L68
            if (r2 == 0) goto L5a
            r4.append(r2)     // Catch: java.lang.Throwable -> L65 java.lang.Exception -> L68
            goto L50
        L5a:
            r1.close()     // Catch: java.lang.Throwable -> L65 java.lang.Exception -> L68
            java.lang.String r0 = r4.toString()     // Catch: java.lang.Throwable -> L65 java.lang.Exception -> L68
        L61:
            r1.close()     // Catch: java.lang.Exception -> L75
            goto L75
        L65:
            r4 = move-exception
            r0 = r1
            goto L6b
        L68:
            goto L72
        L6a:
            r4 = move-exception
        L6b:
            if (r0 == 0) goto L70
            r0.close()     // Catch: java.lang.Exception -> L70
        L70:
            throw r4
        L71:
            r1 = r0
        L72:
            if (r1 == 0) goto L75
            goto L61
        L75:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gameloft.igp.IGPFreemiumActivity.getHttpResponse(java.lang.String):java.lang.String");
    }

    private void h() {
        VideoView videoView;
        if (this.h && (videoView = this.f2939g) != null) {
            try {
                videoView.suspend();
            } catch (Exception unused) {
            }
        }
        WebView webView = this.w;
        if (webView != null) {
            webView.loadUrl("javascript:onPause()");
            this.w.onPause();
            this.w.pauseTimers();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(String str) {
        if (!m(str) && str.contains("www.amazon.com")) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str.replaceAll("amzn://", "http://")));
                intent.setFlags(DriveFile.MODE_READ_ONLY);
                startActivity(intent);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(String str) {
        m(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(String str) {
        if (m(str)) {
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str.replaceAll("market://details", "https://play.google.com/store/apps/details").replaceAll("market://search", "https://play.google.com/store/search")));
            intent.setFlags(DriveFile.MODE_READ_ONLY);
            startActivity(intent);
        } catch (Exception unused) {
        }
    }

    private boolean m(String str) {
        try {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            intent.setFlags(DriveFile.MODE_READ_ONLY);
            if (getPackageManager().queryIntentActivities(intent, 65536).size() != 0) {
                startActivity(intent);
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(String str) {
        Intent launchIntentForPackage = getPackageManager().getLaunchIntentForPackage("com.skt.skaf.A000Z00040");
        if (launchIntentForPackage != null) {
            launchIntentForPackage.addFlags(DriveFile.MODE_WRITE_ONLY);
            launchIntentForPackage.setClassName("com.skt.skaf.A000Z00040", "com.skt.skaf.A000Z00040.A000Z00040");
            launchIntentForPackage.setAction("COLLAB_ACTION");
            launchIntentForPackage.putExtra("com.skt.skaf.COL.URI", ("PRODUCT_VIEW/" + str + "/0").getBytes());
            launchIntentForPackage.putExtra("com.skt.skaf.COL.REQUESTER", "A000Z00040");
        } else {
            launchIntentForPackage = new Intent("android.intent.action.VIEW", Uri.parse("http://tsto.re/" + str));
            launchIntentForPackage.setFlags(DriveFile.MODE_READ_ONLY);
        }
        startActivity(launchIntentForPackage);
    }

    private void o(String str) {
        runOnUiThread(new d(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        o(getString(this.r[this.c]));
    }

    private void r(View view) {
        if (view == null) {
            return;
        }
        int i2 = 0;
        if (view.getBackground() != null) {
            try {
                view.getBackground().setCallback(null);
                view.setBackgroundResource(0);
            } catch (Exception unused) {
            }
        }
        if (view instanceof ImageButton) {
            try {
                if (((ImageButton) view).getDrawable() != null) {
                    ((ImageButton) view).getDrawable().setCallback(null);
                    ((ImageButton) view).setImageResource(0);
                }
            } catch (Exception unused2) {
            }
        }
        if (!(view instanceof ViewGroup)) {
            return;
        }
        while (true) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (i2 >= viewGroup.getChildCount()) {
                try {
                    ((ViewGroup) view).removeAllViews();
                    return;
                } catch (Exception unused3) {
                    return;
                }
            } else {
                r(viewGroup.getChildAt(i2));
                i2++;
            }
        }
    }

    public static void retrieveItems(int i2, String str, j jVar) {
        new Thread(new c(str, i2, jVar)).start();
    }

    public void b() {
        try {
            c();
            finish();
        } catch (Exception unused) {
        }
    }

    public boolean g() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            int type = activeNetworkInfo.getType();
            int subtype = activeNetworkInfo.getSubtype();
            if (type == 1) {
                return true;
            }
            if (type == 0) {
                switch (subtype) {
                    case 0:
                    case 1:
                    case 2:
                        break;
                    case 3:
                        return true;
                    case 4:
                        return false;
                    case 5:
                    case 6:
                        return true;
                    case 7:
                        return false;
                    case 8:
                    case 9:
                    case 10:
                        return true;
                    default:
                        return d(subtype);
                }
            }
        }
        return false;
    }

    public void i() {
        new b().start();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        String str;
        int i2;
        super.onCreate(bundle);
        this.u = ((WindowManager) getSystemService("window")).getDefaultDisplay();
        Bundle extras = getIntent().getExtras();
        str = "AGHM";
        int i3 = 0;
        if (extras != null) {
            i2 = extras.getInt("language");
            if (i2 < 0 || i2 >= b.length) {
                i2 = 0;
            }
            this.f2936d = extras.getBoolean("isPortrait");
            String string = extras.getString("gamecode");
            str = string != null ? string : "AGHM";
            if (this.f2936d) {
                setRequestedOrientation(1);
            } else {
                int i4 = Build.VERSION.SDK_INT;
                if (i4 == 26 || i4 == 27) {
                    setRequestedOrientation(-1);
                } else {
                    setRequestedOrientation(6);
                }
            }
        } else {
            i2 = this.c;
            this.f2936d = false;
            int i5 = Build.VERSION.SDK_INT;
            if (i5 == 26 || i5 == 27) {
                setRequestedOrientation(-1);
            } else {
                setRequestedOrientation(6);
            }
        }
        this.k = this.u.getHeight();
        this.j = this.u.getWidth();
        this.v = new RelativeLayout(this);
        this.w = new f(this);
        a();
        setContentView(this.v);
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 9) {
            if (i6 == 26 || i6 == 27) {
                setRequestedOrientation(-1);
            } else {
                setRequestedOrientation(6);
            }
            getRequestedOrientation();
        }
        if (i2 >= 0 && i2 <= b.length) {
            i3 = i2;
        }
        q(i3, str);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        r(this.v);
        System.gc();
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 != 82) {
            return false;
        }
        keyEvent.startTracking();
        return true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyLongPress(int i2, KeyEvent keyEvent) {
        return i2 != 82;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        WebView webView;
        if (i2 != 4) {
            if (i2 == 96) {
                try {
                    WebView webView2 = this.w;
                    if (webView2 != null) {
                        webView2.dispatchKeyEvent(new KeyEvent(0, 66));
                        this.w.dispatchKeyEvent(new KeyEvent(1, 66));
                    }
                } catch (Exception unused) {
                }
                return true;
            }
            if (i2 != 97) {
                if (i2 == 99 || i2 == 100 || i2 == 102 || i2 == 103 || i2 == 108 || i2 == 109) {
                    return true;
                }
                return super.onKeyUp(i2, keyEvent);
            }
        }
        if (this.h) {
            b();
            return true;
        }
        if (!this.i || (webView = this.w) == null) {
            b();
            return true;
        }
        webView.loadUrl("javascript:onBackPressed()");
        return true;
    }

    @Override // android.app.Activity
    public void onPause() {
        h();
        super.onPause();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        i();
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        a = z;
    }

    void q(int i2, String str) {
        a = true;
        this.c = i2;
        Device.getDeviceId();
        String country = Locale.getDefault().getCountry();
        String str2 = Build.MANUFACTURER + "_" + Build.MODEL;
        String str3 = Build.VERSION.RELEASE;
        String strReplace = this.l.replace("LANG", b[this.c]);
        this.m = strReplace;
        String strReplace2 = strReplace.replace("GAME_CODE", str);
        this.m = strReplace2;
        String strReplace3 = strReplace2.replace("COUNTRY_DETECTED", country);
        this.m = strReplace3;
        String strReplace4 = strReplace3.replace("ANDROIDID", Device.getAndroidId());
        this.m = strReplace4;
        String strReplace5 = strReplace4.replace("UDIDPHONE", Device.getSerial());
        this.m = strReplace5;
        String strReplace6 = strReplace5.replace("HDIDFV", Device.getHDIDFV());
        this.m = strReplace6;
        String strReplace7 = strReplace6.replace("DEVICE", str2);
        this.m = strReplace7;
        String strReplace8 = strReplace7.replace("FIRMWARE", str3);
        this.m = strReplace8;
        String strReplace9 = strReplace8.replace("VERSION", "1.8.0a");
        this.m = strReplace9;
        this.m = strReplace9.replace("CONNSPEED", g() ? "fast" : "slow");
        String str4 = this.m + "&google_optout=" + Device.getGoogleAdIdStatus();
        this.m = str4;
        this.m = str4.replaceAll(" ", "");
        Display defaultDisplay = ((WindowManager) getSystemService("window")).getDefaultDisplay();
        this.m += "&width=" + defaultDisplay.getWidth();
        String str5 = this.m + "&height=" + defaultDisplay.getHeight();
        this.m = str5;
        String[] strArrSplit = str5.split("[?]");
        this.m = strArrSplit[0] + "?data=" + Encrypter.crypt(strArrSplit[1]) + "&enc=1";
        int i3 = Build.VERSION.SDK_INT;
        if (i3 == 11 || i3 == 12) {
            this.k -= 48;
        } else if (str2.toLowerCase().contains("kindle")) {
            this.k -= 20;
        }
        this.v.addView(this.w, -1, -1);
        this.w.loadUrl(this.m);
    }
}
