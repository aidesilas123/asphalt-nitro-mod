package com.bytedance.sdk.component.adexpress.d;

import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.component.sdk.annotation.UiThread;
import com.bytedance.sdk.component.adexpress.b.g;
import com.bytedance.sdk.component.adexpress.b.h;
import com.bytedance.sdk.component.adexpress.b.k;
import com.bytedance.sdk.component.adexpress.b.m;
import com.bytedance.sdk.component.adexpress.b.n;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.widget.SSWebView;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: compiled from: BaseWebViewRender.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a implements com.bytedance.sdk.component.adexpress.a, com.bytedance.sdk.component.adexpress.b.d<SSWebView>, k, com.bytedance.sdk.component.adexpress.theme.a {
    protected boolean a;
    protected SSWebView b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected com.bytedance.sdk.component.adexpress.a.c.b f688d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f690f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f691g;
    private JSONObject h;
    private String i;
    private volatile g j;
    private boolean k;
    private h l;
    private m m;
    private boolean n;
    private int o;
    protected int c = 8;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected AtomicBoolean f689e = new AtomicBoolean(false);

    public a(Context context, m mVar, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver) {
        this.k = false;
        this.f690f = context;
        this.m = mVar;
        this.f691g = mVar.d();
        themeStatusBroadcastReceiver.a(this);
        if (com.bytedance.sdk.component.adexpress.d.b()) {
            n();
            return;
        }
        SSWebView sSWebViewA = e.a().a(this.f690f, this.f691g);
        this.b = sSWebViewA;
        if (sSWebViewA != null) {
            this.k = true;
            Log.d("WebViewRender", "initWebView: reuse WebView");
        } else {
            Log.d("WebViewRender", "initWebView: create WebView");
            if (com.bytedance.sdk.component.adexpress.d.a() != null) {
                this.b = new SSWebView(com.bytedance.sdk.component.adexpress.d.a());
            }
        }
    }

    @UiThread
    private void a(float f2, float f3) {
        this.m.e().c();
        int iA = (int) com.bytedance.sdk.component.adexpress.c.e.a(this.f690f, f2);
        int iA2 = (int) com.bytedance.sdk.component.adexpress.c.e.a(this.f690f, f3);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) a().getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new FrameLayout.LayoutParams(iA, iA2);
        }
        layoutParams.width = iA;
        layoutParams.height = iA2;
        a().setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(n nVar, float f2, float f3) {
        boolean z = this.a;
        if (!z || this.n) {
            if (z) {
                c(nVar.j());
                return;
            } else {
                e.a().c(this.b);
                return;
            }
        }
        a(f2, f3);
        a(this.c);
        if (this.j != null) {
            this.j.a(a(), nVar);
        }
    }

    private void c(int i) {
        if (this.j != null) {
            this.j.a(i);
        }
    }

    private void n() {
        if (this.f690f == null) {
            if (com.bytedance.sdk.component.adexpress.d.a() != null) {
                Log.d("WebViewRender", "initWebView: create  WebView by global context");
                this.b = new SSWebView(new MutableContextWrapper(com.bytedance.sdk.component.adexpress.d.a()));
                return;
            }
            return;
        }
        SSWebView sSWebViewA = e.a().a(this.f690f, this.f691g);
        this.b = sSWebViewA;
        if (sSWebViewA == null) {
            Log.d("WebViewRender", "initWebView: create WebView by act");
            this.b = new SSWebView(new MutableContextWrapper(this.f690f));
        } else {
            this.k = true;
            Log.d("WebViewRender", "initWebView: reuse WebView");
        }
    }

    public SSWebView a() {
        return this.b;
    }

    public abstract void a(int i);

    @Override // com.bytedance.sdk.component.adexpress.a
    public void a(Activity activity) {
        if (this.o == 0 || activity == null || activity.hashCode() != this.o) {
            return;
        }
        l.b("WebViewRender", "release from activity onDestroy");
        d();
        l();
    }

    @Override // com.bytedance.sdk.component.adexpress.b.k
    public void a(View view, int i, com.bytedance.sdk.component.adexpress.c cVar) {
        h hVar = this.l;
        if (hVar != null) {
            hVar.a(view, i, cVar);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.b.d
    public void a(g gVar) {
        this.j = gVar;
        if (a() == null || a().getWebView() == null) {
            this.j.a(102);
            return;
        }
        if (!com.bytedance.sdk.component.adexpress.a.b.a.f()) {
            this.j.a(102);
            return;
        }
        if (TextUtils.isEmpty(this.i)) {
            this.j.a(102);
            return;
        }
        if (this.f688d == null && !com.bytedance.sdk.component.adexpress.a.b.a.a(this.h)) {
            this.j.a(103);
            return;
        }
        this.m.e().a(this.k);
        if (!this.k) {
            SSWebView sSWebViewA = a();
            sSWebViewA.m();
            this.m.e().b();
            sSWebViewA.a_(this.i);
            return;
        }
        try {
            this.b.m();
            this.m.e().b();
            com.bytedance.sdk.component.utils.k.a(this.b.getWebView(), "javascript:window.SDK_RESET_RENDER();window.SDK_TRIGGER_RENDER();");
        } catch (Exception unused) {
            l.b("WebViewRender", "reuse webview load fail ");
            e.a().c(this.b);
            this.j.a(102);
        }
    }

    public void a(h hVar) {
        this.l = hVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.b.k
    public void a(final n nVar) {
        if (nVar == null) {
            if (this.j != null) {
                this.j.a(105);
                return;
            }
            return;
        }
        boolean zC = nVar.c();
        final float fD = (float) nVar.d();
        final float fE = (float) nVar.e();
        if (fD <= 0.0f || fE <= 0.0f) {
            if (this.j != null) {
                this.j.a(105);
            }
        } else {
            this.a = zC;
            if (Looper.myLooper() == Looper.getMainLooper()) {
                a(nVar, fD, fE);
            } else {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.d.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.a(nVar, fD, fE);
                    }
                });
            }
        }
    }

    public void a(String str) {
        this.i = str;
    }

    public void a(JSONObject jSONObject) {
        this.h = jSONObject;
    }

    public void a(boolean z) {
        this.n = z;
    }

    @Override // com.bytedance.sdk.component.adexpress.b.d
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public SSWebView e() {
        return a();
    }

    @Override // com.bytedance.sdk.component.adexpress.b.d
    public int c() {
        return 0;
    }

    public void d() {
        if (this.f689e.get()) {
            return;
        }
        this.f689e.set(true);
        g();
        if (this.b.getParent() != null) {
            ((ViewGroup) this.b.getParent()).removeView(this.b);
        }
        if (this.a) {
            e.a().a(this.b);
        } else {
            e.a().c(this.b);
        }
    }

    public void f() {
        if (a() == null) {
            return;
        }
        try {
            a().getWebView().resumeTimers();
        } catch (Exception unused) {
        }
    }

    public abstract void g();

    public void h() {
    }

    public void i() {
    }

    public void j() {
        k();
        Activity activityA = com.bytedance.sdk.component.utils.b.a(this.b);
        if (activityA != null) {
            this.o = activityA.hashCode();
        }
    }

    protected void k() {
    }

    protected void l() {
    }

    public m m() {
        return this.m;
    }
}
