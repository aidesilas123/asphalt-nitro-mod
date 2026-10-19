package com.bytedance.sdk.openadsdk.activity;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bytedance.sdk.component.utils.b;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.b.c;
import com.bytedance.sdk.openadsdk.common.h;
import com.bytedance.sdk.openadsdk.core.aa;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGProgressBar;
import com.bytedance.sdk.openadsdk.core.customview.PAGRelativeLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.l;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.bytedance.sdk.openadsdk.utils.i;
import java.net.URLEncoder;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class TTWebsiteActivity extends TTBaseActivity {
    private String a = null;
    private h b;
    private WebView c;

    public static void a(Context context, q qVar, String str) {
        if (context == null) {
            return;
        }
        c.a(qVar, str, "open_policy");
        if (TextUtils.isEmpty(o.d().J())) {
            return;
        }
        Intent intent = new Intent(context, (Class<?>) TTWebsiteActivity.class);
        if (qVar != null) {
            intent.putExtra("_extra_meta", qVar.ao().toString());
            intent.putExtra("_extra_glo_d", qVar.bp());
        }
        b.a(context, intent, null);
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        PAGRelativeLayout pAGRelativeLayout;
        boolean z;
        boolean z2;
        boolean z3;
        super.onCreate(bundle);
        o.a(getApplicationContext());
        if (!l.e()) {
            finish();
            return;
        }
        final String stringExtra = getIntent().getStringExtra("_extra_meta");
        String stringExtra2 = getIntent().getStringExtra("_extra_glo_d");
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(this);
        pAGLinearLayout.setBackgroundColor(-1);
        pAGLinearLayout.setId(520093726);
        pAGLinearLayout.setOrientation(1);
        pAGLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        try {
            setContentView(pAGLinearLayout);
            int iB = ad.b(this, 5.0f);
            int iB2 = ad.b(this, 8.0f);
            int iB3 = ad.b(this, 10.0f);
            int iB4 = ad.b(this, 12.0f);
            int iB5 = ad.b(this, 14.0f);
            int iB6 = ad.b(this, 20.0f);
            int iB7 = ad.b(this, 24.0f);
            int iB8 = ad.b(this, 40.0f);
            int iB9 = ad.b(this, 44.0f);
            int iB10 = ad.b(this, 191.0f);
            PAGRelativeLayout pAGRelativeLayout2 = new PAGRelativeLayout(this);
            pAGRelativeLayout2.setGravity(15);
            pAGRelativeLayout2.setLayoutParams(new LinearLayout.LayoutParams(-1, iB9));
            PAGImageView pAGImageView = new PAGImageView(this);
            pAGImageView.setId(520093720);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iB8, iB9);
            int i = Build.VERSION.SDK_INT;
            if (i >= 17) {
                layoutParams.setMarginStart(iB2);
            } else {
                layoutParams.leftMargin = iB2;
            }
            pAGImageView.setLayoutParams(layoutParams);
            pAGImageView.setClickable(true);
            pAGImageView.setFocusable(true);
            pAGImageView.setPadding(iB5, iB4, iB5, iB4);
            pAGImageView.setImageDrawable(s.c(this, "tt_ad_arrow_backward_wrapper"));
            final PAGImageView pAGImageView2 = new PAGImageView(this);
            pAGImageView2.setId(520093716);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(iB8, iB9);
            if (i >= 17) {
                pAGRelativeLayout = pAGRelativeLayout2;
                layoutParams2.addRule(17, 520093720);
                z = true;
            } else {
                pAGRelativeLayout = pAGRelativeLayout2;
                z = true;
                layoutParams2.addRule(1, 520093720);
            }
            pAGImageView2.setLayoutParams(layoutParams2);
            pAGImageView2.setClickable(z);
            pAGImageView2.setFocusable(z);
            pAGImageView2.setPadding(iB4, iB5, iB4, iB5);
            pAGImageView2.setImageDrawable(s.c(this, "tt_ad_xmark"));
            PAGTextView pAGTextView = new PAGTextView(this);
            pAGTextView.setId(i.ao);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(iB10, iB7);
            if (i >= 17) {
                layoutParams3.setMarginStart(iB);
            } else {
                layoutParams3.leftMargin = iB;
            }
            layoutParams3.addRule(15);
            if (i >= 17) {
                layoutParams3.addRule(16, 520093741);
                layoutParams3.addRule(17, 520093716);
                z2 = true;
            } else {
                layoutParams3.addRule(0, 520093741);
                z2 = true;
                layoutParams3.addRule(1, 520093716);
            }
            pAGTextView.setLayoutParams(layoutParams3);
            pAGTextView.setEllipsize(TextUtils.TruncateAt.MARQUEE);
            pAGTextView.setGravity(17);
            pAGTextView.setSingleLine(z2);
            pAGTextView.setTextColor(Color.parseColor("#222222"));
            pAGTextView.setTextSize(17.0f);
            PAGImageView pAGImageView3 = new PAGImageView(this);
            pAGImageView3.setId(520093741);
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(iB8, iB9);
            if (i >= 17) {
                layoutParams4.addRule(16, 520093742);
            } else {
                layoutParams4.addRule(0, 520093742);
            }
            pAGImageView3.setLayoutParams(layoutParams4);
            pAGImageView3.setPadding(iB3, iB4, iB3, iB4);
            pAGImageView3.setImageDrawable(s.c(this, "tt_ad_link"));
            PAGImageView pAGImageView4 = new PAGImageView(this);
            pAGImageView4.setId(520093742);
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(iB8, iB9);
            if (i >= 17) {
                layoutParams5.addRule(21);
                layoutParams5.setMarginEnd(iB2);
            } else {
                layoutParams5.addRule(11);
                layoutParams5.rightMargin = iB2;
            }
            pAGImageView4.setLayoutParams(layoutParams5);
            pAGImageView4.setPadding(iB4, iB6, iB4, iB6);
            pAGImageView4.setImageDrawable(s.c(this, "tt_ad_threedots"));
            final PAGProgressBar pAGProgressBar = new PAGProgressBar(this, null, R.style.Widget.ProgressBar.Horizontal);
            pAGProgressBar.setId(520093743);
            RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, ad.b(this, 2.0f));
            layoutParams6.addRule(12);
            pAGProgressBar.setLayoutParams(layoutParams6);
            pAGProgressBar.setProgress(1);
            pAGProgressBar.setProgressDrawable(s.c(this, "tt_privacy_progress_style"));
            View view = new View(this);
            RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-1, ad.b(this, 1.0f));
            layoutParams7.addRule(12);
            view.setLayoutParams(layoutParams7);
            RelativeLayout relativeLayout = pAGRelativeLayout;
            relativeLayout.addView(pAGImageView);
            relativeLayout.addView(pAGImageView2);
            relativeLayout.addView(pAGTextView);
            relativeLayout.addView(pAGImageView3);
            relativeLayout.addView(pAGImageView4);
            relativeLayout.addView(pAGProgressBar);
            relativeLayout.addView(view);
            pAGLinearLayout.addView(relativeLayout);
            try {
                WebView webView = new WebView(this);
                this.c = webView;
                webView.setBackgroundColor(-1);
                pAGLinearLayout.addView(this.c, new ViewGroup.LayoutParams(-1, -1));
                pAGImageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (TTWebsiteActivity.this.c.canGoBack()) {
                            TTWebsiteActivity.this.c.goBack();
                        } else {
                            TTWebsiteActivity.this.finish();
                        }
                    }
                });
                pAGImageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        TTWebsiteActivity.this.finish();
                    }
                });
                pAGImageView2.setVisibility(4);
                pAGImageView2.setClickable(false);
                pAGTextView.setText(s.a(this, "tt_privacy_title"));
                pAGImageView3.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        Intent intent = new Intent("android.intent.action.VIEW");
                        String url = TTWebsiteActivity.this.c.getUrl();
                        if (TextUtils.isEmpty(url)) {
                            return;
                        }
                        intent.setData(Uri.parse(url));
                        b.a(TTWebsiteActivity.this, intent, null);
                    }
                });
                pAGImageView4.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (TTWebsiteActivity.this.b == null) {
                            TTWebsiteActivity.this.b = new h(TTWebsiteActivity.this);
                            TTWebsiteActivity.this.b.a(stringExtra);
                            TTWebsiteActivity.this.b.setCanceledOnTouchOutside(false);
                        }
                        TTWebsiteActivity.this.b.show();
                    }
                });
                if (o.d() != null) {
                    this.a = o.d().J();
                    if (!TextUtils.isEmpty(stringExtra2)) {
                        String strEncode = URLEncoder.encode(stringExtra2);
                        if (this.a.contains("?")) {
                            this.a += "&gdid_encrypted=" + strEncode;
                        } else {
                            this.a += "?gdid_encrypted=" + strEncode;
                        }
                    }
                }
                if (this.a == null) {
                    finish();
                    return;
                }
                WebSettings settings = this.c.getSettings();
                if (i >= 21) {
                    z3 = false;
                    settings.setMixedContentMode(0);
                } else {
                    z3 = false;
                }
                try {
                    settings.setJavaScriptEnabled(true);
                    settings.setDomStorageEnabled(true);
                    settings.setSavePassword(z3);
                    settings.setAllowFileAccess(z3);
                } catch (Throwable unused) {
                }
                HashMap map = new HashMap();
                map.put("Referer", TTAdConstant.REQUEST_HEAD_REFERER);
                try {
                    this.c.loadUrl(this.a, map);
                } catch (Throwable unused2) {
                    this.c.loadUrl(this.a);
                }
                this.c.setWebChromeClient(new WebChromeClient() { // from class: com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity.5
                    @Override // android.webkit.WebChromeClient
                    public void onProgressChanged(WebView webView2, int i2) {
                        super.onProgressChanged(webView2, i2);
                        if (pAGProgressBar == null || TTWebsiteActivity.this.isFinishing()) {
                            return;
                        }
                        if (i2 != 100) {
                            pAGProgressBar.setVisibility(0);
                            pAGProgressBar.setProgress(i2);
                            return;
                        }
                        pAGProgressBar.setVisibility(8);
                        if (webView2.canGoBack()) {
                            pAGImageView2.setVisibility(0);
                            pAGImageView2.setClickable(true);
                        } else {
                            pAGImageView2.setVisibility(4);
                            pAGImageView2.setClickable(false);
                        }
                    }
                });
                this.c.setWebViewClient(new SSWebView.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity.6
                    @Override // android.webkit.WebViewClient
                    public void onPageFinished(WebView webView2, String str) {
                        super.onPageFinished(webView2, str);
                    }

                    @Override // android.webkit.WebViewClient
                    public void onReceivedError(WebView webView2, int i2, String str, String str2) {
                        super.onReceivedError(webView2, i2, str, str2);
                    }

                    @Override // android.webkit.WebViewClient
                    @RequiresApi(api = 23)
                    public void onReceivedError(WebView webView2, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                        super.onReceivedError(webView2, webResourceRequest, webResourceError);
                        com.bytedance.sdk.component.utils.l.e("TTAD.TTWebsiteActivity", "onReceivedError invoke....onReceivedError=" + webResourceError.getErrorCode());
                    }

                    @Override // android.webkit.WebViewClient
                    public void onReceivedHttpError(WebView webView2, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                        super.onReceivedHttpError(webView2, webResourceRequest, webResourceResponse);
                        com.bytedance.sdk.component.utils.l.e("TTAD.TTWebsiteActivity", "onReceivedHttpError invoke....errorResponse=" + webResourceResponse);
                    }

                    @Override // android.webkit.WebViewClient
                    public boolean shouldOverrideUrlLoading(WebView webView2, WebResourceRequest webResourceRequest) {
                        if (webView2 == null || webResourceRequest == null) {
                            return false;
                        }
                        if (Build.VERSION.SDK_INT >= 21) {
                            webView2.loadUrl(webResourceRequest.getUrl().toString());
                            return true;
                        }
                        webView2.loadUrl(webResourceRequest.toString());
                        return true;
                    }
                });
                com.bytedance.sdk.openadsdk.core.widget.a.c.b(this.c);
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.l.c("TTAD.TTWebsiteActivity", "onCreate: ", e2);
                finish();
            }
        } catch (Throwable unused3) {
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        aa.a(this.c);
    }
}
