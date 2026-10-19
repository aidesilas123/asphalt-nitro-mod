package com.fyber.inneractive.sdk.activities;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.fyber.inneractive.sdk.R;
import com.fyber.inneractive.sdk.external.InneractiveAdSpot;
import com.fyber.inneractive.sdk.external.InneractiveAdSpotManager;
import com.fyber.inneractive.sdk.flow.q;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.l;
import com.fyber.inneractive.sdk.util.x;
import com.google.android.gms.drive.DriveFile;
import com.json.b4;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.net.URLDecoder;

/* JADX INFO: loaded from: classes2.dex */
public class InneractiveInternalBrowserActivity extends InneractiveBaseActivity {
    public static final String EXTRA_KEY_SPOT_ID = "spotId";
    public static final String URL_EXTRA = "extra_url";
    public static String j;
    public static InternalBrowserListener k;
    public q b;
    public String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public LinearLayout f1905d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public WebView f1906e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ImageButton f1907f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ImageButton f1908g;
    public ImageButton h;
    public ImageButton i;

    public interface InternalBrowserListener {
        void onApplicationInBackground();

        void onInternalBrowserDismissed();
    }

    public static void disableWebviewZoomControls(WebView webView) {
        webView.getSettings().setSupportZoom(true);
        webView.getSettings().setBuiltInZoomControls(true);
        webView.getSettings().setDisplayZoomControls(false);
    }

    public static void setHtmlExtra(String str) {
        j = str;
    }

    public static void setInternalBrowserListener(InternalBrowserListener internalBrowserListener) {
        k = internalBrowserListener;
    }

    public final View a() {
        this.f1905d = new LinearLayout(this);
        this.f1905d.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        this.f1905d.setOrientation(1);
        this.f1905d.setContentDescription("IAInternalBrowserView");
        RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        this.f1905d.addView(relativeLayout);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setId(1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, l.b(getResources().getInteger(R.integer.ia_ib_toolbar_height_dp)));
        layoutParams.addRule(12);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setBackground(l.d(R.drawable.ia_ib_background));
        relativeLayout.addView(linearLayout);
        this.f1907f = a(l.d(R.drawable.ia_ib_left_arrow));
        this.f1908g = a(l.d(R.drawable.ia_ib_right_arrow));
        this.h = a(l.d(R.drawable.ia_ib_refresh));
        this.i = a(l.d(R.drawable.ia_ib_close));
        linearLayout.addView(this.f1907f);
        linearLayout.addView(this.f1908g);
        linearLayout.addView(this.h);
        linearLayout.addView(this.i);
        WebView webView = new WebView(this);
        this.f1906e = webView;
        webView.setId(R.id.inneractive_webview_internal_browser);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(2, 1);
        this.f1906e.setLayoutParams(layoutParams2);
        relativeLayout.addView(this.f1906e);
        return this.f1905d;
    }

    public final ImageButton a(Drawable drawable) {
        ImageButton imageButton = new ImageButton(this);
        Resources resources = getResources();
        int i = R.integer.ia_ib_button_size_dp;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(l.b(resources.getInteger(i)), l.b(getResources().getInteger(i)), 1.0f);
        layoutParams.gravity = 16;
        imageButton.setLayoutParams(layoutParams);
        imageButton.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageButton.setImageDrawable(drawable);
        return imageButton;
    }

    @Override // android.app.Activity
    public void finish() {
        InternalBrowserListener internalBrowserListener = k;
        super.finish();
        if (internalBrowserListener != null) {
            internalBrowserListener.onInternalBrowserDismissed();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        finish();
    }

    @Override // com.fyber.inneractive.sdk.activities.InneractiveBaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        InternalBrowserListener internalBrowserListener;
        InneractiveAdSpot spot;
        getWindow().requestFeature(2);
        getWindow().setFeatureInt(2, -1);
        super.onCreate(bundle);
        if (getActionBar() != null) {
            getActionBar().hide();
        }
        try {
            setContentView(a());
            String stringExtra = getIntent().getStringExtra("spotId");
            this.c = stringExtra;
            if (!TextUtils.isEmpty(stringExtra) && (spot = InneractiveAdSpotManager.get().getSpot(this.c)) != null) {
                this.b = spot.getAdContent();
            }
            Intent intent = getIntent();
            WebSettings settings = this.f1906e.getSettings();
            boolean z = true;
            settings.setJavaScriptEnabled(true);
            settings.setSupportZoom(true);
            settings.setBuiltInZoomControls(true);
            settings.setUseWideViewPort(true);
            settings.setLoadWithOverviewMode(true);
            disableWebviewZoomControls(this.f1906e);
            this.f1906e.setWebViewClient(new c(this));
            this.f1906e.setWebChromeClient(new d(this));
            String stringExtra2 = intent.getStringExtra(URL_EXTRA);
            if (!TextUtils.isEmpty(j)) {
                this.f1906e.loadDataWithBaseURL(stringExtra2, j, "text/html", C.UTF8_NAME, null);
            } else if (!x.e(stringExtra2)) {
                this.f1906e.loadUrl(stringExtra2);
            } else if (x.d(stringExtra2)) {
                try {
                    stringExtra2 = URLDecoder.decode(stringExtra2, b4.L);
                    this.f1906e.loadUrl(stringExtra2);
                } catch (Exception unused) {
                    IAlog.e("Failed to open Url: %s", stringExtra2);
                    finish();
                }
            } else {
                Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(stringExtra2));
                intent2.addFlags(DriveFile.MODE_READ_ONLY);
                try {
                    startActivity(intent2);
                } catch (ActivityNotFoundException unused2) {
                    IAlog.e("Failed to start activity for %s. Please ensure that your phone can handle this intent.", stringExtra2);
                    z = false;
                }
                if (z && (internalBrowserListener = k) != null) {
                    internalBrowserListener.onApplicationInBackground();
                }
                finish();
            }
            this.f1907f.setBackgroundColor(0);
            this.f1907f.setOnClickListener(new e(this));
            this.f1907f.setContentDescription("IABackButton");
            this.f1908g.setBackgroundColor(0);
            this.f1908g.setOnClickListener(new f(this));
            this.f1908g.setContentDescription("IAForwardButton");
            this.h.setBackgroundColor(0);
            this.h.setOnClickListener(new g(this));
            this.h.setContentDescription("IARefreshButton");
            this.i.setBackgroundColor(0);
            this.i.setOnClickListener(new h(this));
            this.i.setContentDescription("IACloseButton");
            int i = Build.VERSION.SDK_INT;
            if (i < 21) {
                CookieSyncManager.createInstance(l.a);
                CookieSyncManager.getInstance().startSync();
            }
            if (i < 21) {
                CookieSyncManager.getInstance().startSync();
            }
        } catch (Exception unused3) {
            finish();
        }
    }

    @Override // com.fyber.inneractive.sdk.activities.InneractiveBaseActivity, android.app.Activity
    public void onDestroy() {
        LinearLayout linearLayout = this.f1905d;
        if (linearLayout != null) {
            linearLayout.removeAllViews();
        }
        WebView webView = this.f1906e;
        if (webView != null) {
            webView.destroy();
            this.f1906e = null;
        }
        super.onDestroy();
        setHtmlExtra(null);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setVisible(false);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        if (Build.VERSION.SDK_INT < 21) {
            CookieSyncManager.getInstance().stopSync();
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if (Build.VERSION.SDK_INT < 21) {
            CookieSyncManager.getInstance().startSync();
        }
    }
}
