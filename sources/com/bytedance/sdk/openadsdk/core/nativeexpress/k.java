package com.bytedance.sdk.openadsdk.core.nativeexpress;

import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.json.o2;
import org.json.JSONObject;

/* JADX INFO: compiled from: ExpressRenderEventMonitor.java */
/* JADX INFO: loaded from: classes2.dex */
public class k implements com.bytedance.sdk.component.adexpress.b.i {
    private final com.bytedance.sdk.openadsdk.b.c.e a;
    private final String b;
    private final q c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f1642d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f1643e;

    public k(com.bytedance.sdk.openadsdk.b.c.e eVar, String str, q qVar, String str2) {
        this.a = eVar;
        this.b = str;
        this.f1642d = str2;
        this.c = qVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.b.i
    public void a() {
        this.a.a();
        com.bytedance.sdk.component.utils.l.b("ExpressRenderEventMonitor", "start render ");
    }

    @Override // com.bytedance.sdk.component.adexpress.b.i
    public void a(int i) {
        this.a.a(i, null);
        i.a(i, this.b, this.f1642d, this.c);
        com.bytedance.sdk.component.utils.l.b("ExpressRenderEventMonitor", "onWebViewFail() called with: errorCode = [" + i + o2.i.f6491e);
    }

    @Override // com.bytedance.sdk.component.adexpress.b.i
    public void a(int i, int i2, boolean z) {
        com.bytedance.sdk.component.utils.l.b("ExpressRenderEventMonitor", "onDynamicFail() called with: renderType = [" + i + "], errorCode = [" + i2 + "], hasNext = [" + z + o2.i.f6491e);
        if (!z) {
            this.a.a(true);
        }
        if (i == 3) {
            this.a.b(i2, "dynamic_render2_error");
        } else {
            this.a.b(i2, "dynamic_render_error");
        }
        i.a(i2, this.b, this.f1642d, this.c);
    }

    @Override // com.bytedance.sdk.component.adexpress.b.i
    public void a(boolean z) {
        this.a.a(z ? 1 : 0);
        com.bytedance.sdk.component.utils.l.b("ExpressRenderEventMonitor", "webview start request");
    }

    @Override // com.bytedance.sdk.component.adexpress.b.i
    public void b() {
        com.bytedance.sdk.component.utils.l.b("ExpressRenderEventMonitor", "WebView start load");
    }

    @Override // com.bytedance.sdk.component.adexpress.b.i
    public void b(int i) {
        com.bytedance.sdk.component.utils.l.b("ExpressRenderEventMonitor", "onDynamicStart() called with: renderType = [" + i + o2.i.f6491e);
        this.f1643e = System.currentTimeMillis();
        if (i == 3) {
            this.a.c("dynamic_render2_start");
        } else {
            this.a.c("dynamic_render_start");
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.b.i
    public void c() {
        com.bytedance.sdk.component.utils.l.b("ExpressRenderEventMonitor", "webview render success");
        this.a.b();
    }

    @Override // com.bytedance.sdk.component.adexpress.b.i
    public void c(int i) {
        com.bytedance.sdk.component.utils.l.b("ExpressRenderEventMonitor", "onDynamicParseStart() called with: renderType = [" + i + o2.i.f6491e);
        if (i == 3) {
            this.a.d("dynamic_sub_analysis2_start");
        } else {
            this.a.d("dynamic_sub_analysis_start");
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.b.i
    public void d() {
        com.bytedance.sdk.component.utils.l.b("ExpressRenderEventMonitor", "native render start");
        this.a.c();
    }

    @Override // com.bytedance.sdk.component.adexpress.b.i
    public void d(int i) {
        com.bytedance.sdk.component.utils.l.b("ExpressRenderEventMonitor", "onDynamicParseEnd() called with: renderType = [" + i + o2.i.f6491e);
        if (i == 3) {
            this.a.d("dynamic_sub_analysis2_end");
        } else {
            this.a.d("dynamic_sub_analysis_end");
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.b.i
    public void e() {
        com.bytedance.sdk.component.utils.l.b("ExpressRenderEventMonitor", "native success");
        this.a.a(true);
        this.a.m();
        aa.b(new com.bytedance.sdk.component.g.h("native_success") { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.k.2
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.b.c.b(k.this.c, k.this.b, "dynamic_backup_render", (JSONObject) null);
            }
        }, 10);
    }

    @Override // com.bytedance.sdk.component.adexpress.b.i
    public void e(int i) {
        com.bytedance.sdk.component.utils.l.b("ExpressRenderEventMonitor", "onDynamicRealRenderStart() called with: renderType = [" + i + o2.i.f6491e);
        if (i == 3) {
            this.a.d("dynamic_sub_render2_start");
        } else {
            this.a.d("dynamic_sub_render_start");
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.b.i
    public void f() {
        com.bytedance.sdk.component.utils.l.b("ExpressRenderEventMonitor", "no native render");
        this.a.n();
    }

    @Override // com.bytedance.sdk.component.adexpress.b.i
    public void f(int i) {
        com.bytedance.sdk.component.utils.l.b("ExpressRenderEventMonitor", "onDynamicRealRenderEnd() called with: renderType = [" + i + o2.i.f6491e);
        if (i == 3) {
            this.a.d("dynamic_sub_render2_end");
        } else {
            this.a.d("dynamic_sub_render_end");
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.b.i
    public void g() {
        com.bytedance.sdk.component.utils.l.b("ExpressRenderEventMonitor", "render fail");
        this.a.o();
    }

    @Override // com.bytedance.sdk.component.adexpress.b.i
    public void g(int i) {
        final String str;
        com.bytedance.sdk.component.utils.l.b("ExpressRenderEventMonitor", "dynamic render success render type: " + i + "; ****cost time(ms): " + (System.currentTimeMillis() - this.f1643e) + "****");
        if (i == 3) {
            this.a.e("dynamic_render2_success");
            str = "dynamic2_render";
        } else {
            this.a.e("dynamic_render_success");
            str = "dynamic_backup_native_render";
        }
        this.a.a(true);
        aa.b(new com.bytedance.sdk.component.g.h("dynamic_success") { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.k.1
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.b.c.b(k.this.c, k.this.b, str, (JSONObject) null);
            }
        }, 10);
    }

    @Override // com.bytedance.sdk.component.adexpress.b.i
    public void h() {
        com.bytedance.sdk.component.utils.l.b("ExpressRenderEventMonitor", "render success");
        this.a.b();
    }

    public void i() {
        this.a.k();
        this.a.l();
    }
}
