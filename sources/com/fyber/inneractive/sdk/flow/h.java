package com.fyber.inneractive.sdk.flow;

import android.os.Handler;
import android.os.HandlerThread;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.external.InneractiveError;
import com.fyber.inneractive.sdk.external.InneractiveErrorCode;
import com.fyber.inneractive.sdk.external.InneractiveInfrastructureError;
import com.fyber.inneractive.sdk.flow.q;
import com.fyber.inneractive.sdk.interfaces.a;
import com.fyber.inneractive.sdk.response.e;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h<Response extends com.fyber.inneractive.sdk.response.e, Content extends q> implements com.fyber.inneractive.sdk.interfaces.a, a.b {
    public InneractiveAdRequest a;
    public Response b;
    public Content c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public a.InterfaceC0163a f2005d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public a.b f2006e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public com.fyber.inneractive.sdk.config.b0 f2007f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public com.fyber.inneractive.sdk.config.global.s f2008g;
    public com.fyber.inneractive.sdk.network.timeouts.content.a j;
    public boolean h = false;
    public int i = 0;
    public final Runnable l = new a();
    public b k = new b(this);

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h hVar = h.this;
            hVar.getClass();
            IAlog.a("%s : IAAdContentLoaderImpl : retry load ad task started execution", IAlog.a(hVar));
            h.this.c();
        }
    }

    public int a(int i) {
        com.fyber.inneractive.sdk.network.timeouts.content.a aVar = this.j;
        if (aVar != null) {
            return aVar.a(i);
        }
        return 0;
    }

    @Override // com.fyber.inneractive.sdk.interfaces.a
    public void a() {
        this.k.a();
        d();
        this.a = null;
        this.b = null;
        this.c = null;
        this.f2005d = null;
        this.f2006e = null;
        this.f2007f = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a(InneractiveAdRequest inneractiveAdRequest, com.fyber.inneractive.sdk.response.e eVar, com.fyber.inneractive.sdk.config.global.s sVar, a.InterfaceC0163a interfaceC0163a, a.b bVar) {
        this.a = inneractiveAdRequest;
        this.b = eVar;
        this.f2005d = interfaceC0163a;
        this.f2006e = bVar;
        this.k = new b(this);
        this.f2008g = sVar;
        this.j = new com.fyber.inneractive.sdk.network.timeouts.content.a(q0.a(eVar), com.fyber.inneractive.sdk.response.a.a(eVar.f2722g) == com.fyber.inneractive.sdk.response.a.RETURNED_ADTYPE_VAST ? "video" : "display", (int) eVar.I, eVar.B, IAConfigManager.M.m, this.f2008g);
        if (this.a == null) {
            this.f2007f = com.fyber.inneractive.sdk.config.a.b(eVar.m);
        }
        try {
            k();
        } catch (Throwable th) {
            IAlog.e("Failed to start ContentLoader", IAlog.a(this));
            com.fyber.inneractive.sdk.network.t.a(th, inneractiveAdRequest, eVar);
            this.k.a();
            a(new InneractiveInfrastructureError(InneractiveErrorCode.SDK_INTERNAL_ERROR, g.CONTENT_LOADER_START_FAILED));
        }
    }

    public void a(InneractiveError inneractiveError) {
        com.fyber.inneractive.sdk.util.m.a(new c(new d(this.b, this.a, f(), this.f2008g.c()), inneractiveError));
    }

    public void a(InneractiveInfrastructureError inneractiveInfrastructureError) {
        IAlog.a("%s : IAAdContentLoaderImpl : Handle Retry for error: %s", IAlog.a(this), inneractiveInfrastructureError.getErrorCode().toString());
        this.k.b();
        boolean zI = i();
        IAlog.a("%s : IAAdContentLoaderImpl : should retry: %s", IAlog.a(this), Boolean.valueOf(zI));
        if (zI) {
            Content content = this.c;
            if (content != null) {
                content.a();
                this.c = null;
            }
            com.fyber.inneractive.sdk.network.timeouts.content.a aVar = this.j;
            int i = aVar != null ? aVar.f2127e : 0;
            IAlog.a("%s : IAAdContentLoaderImpl : retryLoad : post load ad content retry task with delay: %d", IAlog.a(this), Integer.valueOf(i));
            com.fyber.inneractive.sdk.util.m.b.postDelayed(this.l, i);
            return;
        }
        a.InterfaceC0163a interfaceC0163a = this.f2005d;
        if (interfaceC0163a != null) {
            interfaceC0163a.a(inneractiveInfrastructureError);
        }
        a();
        InneractiveAdRequest inneractiveAdRequest = this.a;
        Response response = this.b;
        com.fyber.inneractive.sdk.config.global.s sVar = this.f2008g;
        com.fyber.inneractive.sdk.flow.a.a(inneractiveAdRequest, inneractiveInfrastructureError, this.c, response, sVar != null ? sVar.c() : null);
    }

    public void b() {
        IAlog.a("%s : IAAdContentLoaderImpl : onTimeout() attempt: %d timeout: %d", IAlog.a(this), Integer.valueOf(this.i - 1), Integer.valueOf(a(this.i - 1)));
        a.b bVar = this.f2006e;
        if (bVar != null) {
            bVar.b();
        }
        InneractiveInfrastructureError inneractiveInfrastructureErrorE = i() ? e() : new InneractiveInfrastructureError(InneractiveErrorCode.IN_FLIGHT_TIMEOUT, g.NO_TIME_TO_LOAD_AD_CONTENT);
        a((InneractiveError) inneractiveInfrastructureErrorE);
        a(inneractiveInfrastructureErrorE);
    }

    @Override // com.fyber.inneractive.sdk.interfaces.a.b
    public void c() {
        IAlog.a("%s : IAAdContentLoaderImpl : onRetry() attempt: %d timeout: %d", IAlog.a(this), Integer.valueOf(this.i - 1), Integer.valueOf(a(this.i - 1)));
        a.b bVar = this.f2006e;
        if (bVar != null) {
            bVar.c();
        }
        k();
    }

    public void d() {
        IAlog.a("%s: IAAdContentLoaderImpl : cancel load ad content retry task", IAlog.a(this));
        com.fyber.inneractive.sdk.util.m.b.removeCallbacks(this.l);
    }

    public InneractiveInfrastructureError e() {
        g gVar = g.WEBVIEW_LOAD_TIMEOUT;
        if ("video".equalsIgnoreCase(com.fyber.inneractive.sdk.response.a.a(this.b.f2722g) == com.fyber.inneractive.sdk.response.a.RETURNED_ADTYPE_VAST ? "video" : "display")) {
            gVar = g.VIDEO_AD_LOAD_TIMEOUT;
        }
        return new InneractiveInfrastructureError(InneractiveErrorCode.LOAD_TIMEOUT, gVar);
    }

    public abstract String f();

    public com.fyber.inneractive.sdk.config.b0 g() {
        InneractiveAdRequest inneractiveAdRequest = this.a;
        return inneractiveAdRequest == null ? this.f2007f : inneractiveAdRequest.getSelectedUnitConfig();
    }

    public void h() {
        String str;
        this.k.a();
        InneractiveAdRequest inneractiveAdRequest = this.a;
        if (inneractiveAdRequest != null) {
            str = inneractiveAdRequest.b;
        } else {
            Response response = this.b;
            if (response == null || (str = response.z) == null) {
                str = null;
            }
        }
        com.fyber.inneractive.sdk.metrics.c.f2066d.a(str).i();
        Content content = this.c;
        if (content != null) {
            content.a(str);
        }
        a.InterfaceC0163a interfaceC0163a = this.f2005d;
        if (interfaceC0163a != null) {
            interfaceC0163a.a(this.a);
        }
    }

    public boolean i() {
        com.fyber.inneractive.sdk.network.timeouts.content.a aVar = this.j;
        return this.i <= (aVar != null ? aVar.a : 0);
    }

    public abstract void j();

    public final void k() {
        int i = this.i;
        this.i = i + 1;
        int iA = a(i);
        IAlog.a("%s : IAAdContentLoaderImpl : Start timeout: %d, attempt number: %d", IAlog.a(this), Integer.valueOf(iA), Integer.valueOf(this.i - 1));
        b bVar = this.k;
        if (bVar.a == null) {
            HandlerThread handlerThread = new HandlerThread("TimeoutHandlerThread");
            handlerThread.start();
            bVar.a = new Handler(handlerThread.getLooper());
        }
        bVar.a.postDelayed(bVar.f1999d, iA);
        j();
    }
}
