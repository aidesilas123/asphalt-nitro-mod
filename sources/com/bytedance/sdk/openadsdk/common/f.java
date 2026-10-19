package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.model.q;

/* JADX INFO: compiled from: LandingPageNewStyleManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class f {
    private final q a;
    private RelativeLayout b;
    private final Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SSWebView f1262d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ImageView f1263e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f1264f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private i f1265g;
    private g h;

    public f(Context context, q qVar, String str) {
        this.c = context;
        this.a = qVar;
        this.f1264f = str;
        f();
    }

    private static RelativeLayout a(Context context) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setBackgroundColor(-1);
        relativeLayout.addView(new LandingPageBrowserNewTitleBar(context));
        SSWebView sSWebView = new SSWebView(context);
        sSWebView.setId(com.bytedance.sdk.openadsdk.utils.i.O);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(12);
        layoutParams.addRule(3, com.bytedance.sdk.openadsdk.utils.i.ac);
        relativeLayout.addView(sSWebView, layoutParams);
        LandingPageBrowserNewBottomBar landingPageBrowserNewBottomBar = new LandingPageBrowserNewBottomBar(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(landingPageBrowserNewBottomBar.getLayoutParams());
        layoutParams2.addRule(12);
        relativeLayout.addView(landingPageBrowserNewBottomBar, layoutParams2);
        return relativeLayout;
    }

    private void f() {
        RelativeLayout relativeLayoutA = a(this.c);
        this.b = relativeLayoutA;
        this.f1262d = (SSWebView) relativeLayoutA.findViewById(com.bytedance.sdk.openadsdk.utils.i.O);
        i iVar = new i(this.c, (RelativeLayout) this.b.findViewById(com.bytedance.sdk.openadsdk.utils.i.ac), this.a);
        this.f1265g = iVar;
        this.f1263e = iVar.c();
        this.h = new g(this.c, (LinearLayout) this.b.findViewById(com.bytedance.sdk.openadsdk.utils.i.ah), this.f1262d, this.a, this.f1264f);
    }

    public void a() {
        i iVar = this.f1265g;
        if (iVar != null) {
            iVar.a();
        }
        g gVar = this.h;
        if (gVar != null) {
            gVar.a();
        }
    }

    public void a(WebView webView, int i) {
        i iVar = this.f1265g;
        if (iVar != null) {
            iVar.a(i);
        }
        g gVar = this.h;
        if (gVar != null) {
            gVar.a(webView);
        }
    }

    public void b() {
        i iVar = this.f1265g;
        if (iVar != null) {
            iVar.b();
        }
        g gVar = this.h;
        if (gVar != null) {
            gVar.b();
        }
    }

    public ImageView c() {
        return this.f1263e;
    }

    public SSWebView d() {
        return this.f1262d;
    }

    public View e() {
        return this.b;
    }
}
