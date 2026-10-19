package com.bytedance.sdk.component.adexpress.b;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.component.adexpress.b.j;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: WebViewRenderInterceptor.java */
/* JADX INFO: loaded from: classes.dex */
public class p implements j {
    private Context a;
    private com.bytedance.sdk.component.adexpress.d.a b;
    private h c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private m f682d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ScheduledFuture<?> f683e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AtomicBoolean f684f = new AtomicBoolean(false);

    /* JADX INFO: compiled from: WebViewRenderInterceptor.java */
    private class a implements Runnable {
        j.a a;
        private int c;

        public a(int i, j.a aVar) {
            this.c = i;
            this.a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.c == 1) {
                com.bytedance.sdk.component.utils.l.b("RenderInterceptor", "WebView Render timeout");
                p.this.b.a(true);
                p.this.a(this.a, 107);
            }
        }
    }

    public p(Context context, m mVar, com.bytedance.sdk.component.adexpress.d.a aVar, h hVar) {
        this.a = context;
        this.f682d = mVar;
        this.c = hVar;
        this.b = aVar;
        aVar.a(this.c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(j.a aVar, int i) {
        if (aVar.c() || this.f684f.get()) {
            return;
        }
        e();
        this.f682d.e().a(i);
        if (aVar.b(this)) {
            aVar.a(this);
        } else {
            o oVarB = aVar.b();
            if (oVarB == null) {
                return;
            } else {
                oVarB.a_(i);
            }
        }
        this.f684f.getAndSet(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        try {
            ScheduledFuture<?> scheduledFuture = this.f683e;
            if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
                this.f683e.cancel(false);
                this.f683e = null;
            }
            com.bytedance.sdk.component.utils.l.b("RenderInterceptor", "WebView Render cancel timeout timer");
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.b.j
    public void a() {
        this.b.d();
        e();
    }

    @Override // com.bytedance.sdk.component.adexpress.b.j
    public boolean a(final j.a aVar) {
        int iF = this.f682d.f();
        if (iF < 0) {
            a(aVar, 107);
        } else {
            this.f683e = com.bytedance.sdk.component.g.f.f().schedule(new a(1, aVar), iF, TimeUnit.MILLISECONDS);
            this.b.a(new g() { // from class: com.bytedance.sdk.component.adexpress.b.p.1
                @Override // com.bytedance.sdk.component.adexpress.b.g
                public void a(int i) {
                    p.this.a(aVar, i);
                }

                @Override // com.bytedance.sdk.component.adexpress.b.g
                public void a(View view, n nVar) {
                    o oVarB;
                    p.this.e();
                    if (aVar.c() || (oVarB = aVar.b()) == null) {
                        return;
                    }
                    oVarB.a(p.this.b, nVar);
                    aVar.a(true);
                }
            });
        }
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.b.j
    public void b() {
        this.b.h();
    }

    @Override // com.bytedance.sdk.component.adexpress.b.j
    public void c() {
        this.b.i();
    }

    public com.bytedance.sdk.component.adexpress.d.a d() {
        return this.b;
    }
}
