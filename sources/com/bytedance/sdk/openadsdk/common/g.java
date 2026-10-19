package com.bytedance.sdk.openadsdk.common;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebBackForwardList;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.model.q;
import org.json.JSONObject;

/* JADX INFO: compiled from: TTBottomNewStyleManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class g {
    private final LinearLayout a;
    private final SSWebView b;
    private final q c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f1266d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Context f1267e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ImageView f1268f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ImageView f1269g;

    public g(Context context, LinearLayout linearLayout, SSWebView sSWebView, q qVar, String str) {
        this.f1267e = context;
        this.a = linearLayout;
        this.b = sSWebView;
        this.c = qVar;
        this.f1266d = str;
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        WebBackForwardList webBackForwardListCopyBackForwardList;
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.b.getWebView() != null && (webBackForwardListCopyBackForwardList = this.b.getWebView().copyBackForwardList()) != null) {
                int currentIndex = webBackForwardListCopyBackForwardList.getCurrentIndex();
                String url = webBackForwardListCopyBackForwardList.getItemAtIndex(currentIndex).getUrl();
                if (TextUtils.isEmpty(url)) {
                    url = this.b.getUrl();
                }
                String url2 = str.equals("backward") ? webBackForwardListCopyBackForwardList.getItemAtIndex(currentIndex - 1).getUrl() : "";
                int i = 1;
                if (str.equals("forward")) {
                    url2 = webBackForwardListCopyBackForwardList.getItemAtIndex(currentIndex + 1).getUrl();
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("url", url);
                jSONObject2.putOpt("next_url", url2);
                if (webBackForwardListCopyBackForwardList.getCurrentIndex() != 0) {
                    i = 0;
                }
                jSONObject2.putOpt("first_page", Integer.valueOf(i));
                jSONObject.put("ad_extra_data", jSONObject2.toString());
            }
        } catch (Exception unused) {
        }
        com.bytedance.sdk.openadsdk.b.c.c(this.c, this.f1266d, str, jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        WebBackForwardList webBackForwardListCopyBackForwardList;
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.b.getWebView() != null && (webBackForwardListCopyBackForwardList = this.b.getWebView().copyBackForwardList()) != null) {
                String url = webBackForwardListCopyBackForwardList.getItemAtIndex(webBackForwardListCopyBackForwardList.getCurrentIndex()).getUrl();
                if (TextUtils.isEmpty(url)) {
                    url = this.b.getUrl();
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("url", url);
                jSONObject2.putOpt("first_page", Integer.valueOf(webBackForwardListCopyBackForwardList.getCurrentIndex() == 0 ? 1 : 0));
                jSONObject.put("ad_extra_data", jSONObject2.toString());
            }
        } catch (Exception unused) {
        }
        com.bytedance.sdk.openadsdk.b.c.c(this.c, this.f1266d, str, jSONObject);
    }

    private void c() {
        this.f1268f = (ImageView) this.a.findViewById(com.bytedance.sdk.openadsdk.utils.i.ai);
        this.f1269g = (ImageView) this.a.findViewById(com.bytedance.sdk.openadsdk.utils.i.aj);
        ImageView imageView = (ImageView) this.a.findViewById(com.bytedance.sdk.openadsdk.utils.i.ak);
        ImageView imageView2 = (ImageView) this.a.findViewById(com.bytedance.sdk.openadsdk.utils.i.al);
        this.f1268f.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.g.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (g.this.b == null || !g.this.b.e()) {
                    return;
                }
                g.this.a("backward");
                g.this.b.f();
            }
        });
        this.f1269g.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.g.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (g.this.b == null || !g.this.b.g()) {
                    return;
                }
                g.this.a("forward");
                g.this.b.h();
            }
        });
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.g.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (g.this.b != null) {
                    g.this.b("refresh");
                    g.this.b.d();
                }
            }
        });
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.g.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (g.this.b != null) {
                    g.this.b("external_btn_click");
                    Intent intent = new Intent("android.intent.action.VIEW");
                    String url = g.this.b.getUrl();
                    if (TextUtils.isEmpty(url)) {
                        return;
                    }
                    intent.setData(Uri.parse(url));
                    com.bytedance.sdk.component.utils.b.a(g.this.f1267e, intent, null);
                }
            }
        });
        this.a.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.g.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        this.f1268f.setClickable(false);
        this.f1269g.setClickable(false);
        this.f1268f.setColorFilter(Color.parseColor("#A8FFFFFF"), PorterDuff.Mode.ADD);
        this.f1269g.setColorFilter(Color.parseColor("#A8FFFFFF"), PorterDuff.Mode.ADD);
    }

    public void a() {
        if (this.a.getAlpha() == 0.0f) {
            ObjectAnimator.ofFloat(this.a, "alpha", 0.0f, 1.0f).setDuration(300L).start();
        }
    }

    public void a(WebView webView) {
        try {
            if (this.f1268f != null) {
                if (webView.canGoBack()) {
                    this.f1268f.setClickable(true);
                    this.f1268f.clearColorFilter();
                } else {
                    this.f1268f.setClickable(false);
                    this.f1268f.setColorFilter(Color.parseColor("#A8FFFFFF"), PorterDuff.Mode.ADD);
                }
            }
            if (this.f1269g != null) {
                if (webView.canGoForward()) {
                    this.f1269g.setClickable(true);
                    this.f1269g.clearColorFilter();
                } else {
                    this.f1269g.setClickable(false);
                    this.f1269g.setColorFilter(Color.parseColor("#A8FFFFFF"), PorterDuff.Mode.ADD);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void b() {
        if (this.a.getAlpha() == 1.0f) {
            ObjectAnimator.ofFloat(this.a, "alpha", 1.0f, 0.0f).setDuration(300L).start();
        }
    }
}
