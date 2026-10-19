package com.fyber.inneractive.sdk.player;

import android.view.View;
import com.fyber.inneractive.sdk.config.global.s;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.external.InneractiveError;
import com.fyber.inneractive.sdk.external.InneractiveErrorCode;
import com.fyber.inneractive.sdk.external.InneractiveInfrastructureError;
import com.fyber.inneractive.sdk.external.InneractiveVideoError;
import com.fyber.inneractive.sdk.flow.f0;
import com.fyber.inneractive.sdk.flow.m;
import com.fyber.inneractive.sdk.model.vast.o;
import com.fyber.inneractive.sdk.model.vast.t;
import com.fyber.inneractive.sdk.network.m0;
import com.fyber.inneractive.sdk.network.q;
import com.fyber.inneractive.sdk.network.s;
import com.fyber.inneractive.sdk.player.a;
import com.fyber.inneractive.sdk.player.enums.VideoClickOrigin;
import com.fyber.inneractive.sdk.util.IAlog;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class h implements g {
    public com.fyber.inneractive.sdk.player.a a;
    public InneractiveAdRequest b;
    public com.fyber.inneractive.sdk.response.g c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public b f2633d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public o f2634e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public a.InterfaceC0168a f2635f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2636g = false;
    public s h;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[InneractiveVideoError.Error.values().length];
            a = iArr;
            try {
                iArr[InneractiveVideoError.Error.ERROR_NO_MEDIA_FILES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[InneractiveVideoError.Error.ERROR_FAILED_PLAYING_MEDIA_FILE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[InneractiveVideoError.Error.ERROR_FAILED_PLAYING_ALL_MEDIA_FILES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[InneractiveVideoError.Error.ERROR_PRE_BUFFER_TIMEOUT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[InneractiveVideoError.Error.ERROR_BUFFER_TIMEOUT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public interface b {
    }

    public h(com.fyber.inneractive.sdk.response.g gVar, InneractiveAdRequest inneractiveAdRequest, f0 f0Var, b bVar) {
        this.b = inneractiveAdRequest;
        this.c = gVar;
        this.f2633d = bVar;
        this.h = f0Var.b();
        this.a = new com.fyber.inneractive.sdk.player.a(f0Var);
    }

    public final q a(InneractiveVideoError.Error error) {
        int i = a.a[error.ordinal()];
        if (i == 1) {
            return q.VAST_ERROR_NO_MEDIA_FILES;
        }
        if (i == 2) {
            return q.VAST_ERROR_FAILED_PLAYING_MEDIA_FILE;
        }
        if (i == 3) {
            return q.VAST_ERROR_FAILED_PLAYING_ALL_MEDIA_FILES;
        }
        if (i == 4) {
            return q.VAST_ERROR_PRE_BUFFER_TIMEOUT;
        }
        if (i == 5) {
            return q.VAST_ERROR_BUFFER_TIMEOUT;
        }
        IAlog.a("IAReportError, Does not know player error " + error.getErrorString(), new Object[0]);
        return q.VAST_UNKNOWN_PLAYER_ERROR;
    }

    public void a() {
        a.InterfaceC0168a interfaceC0168a = this.a.b;
        if (interfaceC0168a != null) {
            e eVar = (e) interfaceC0168a;
            eVar.o = true;
            IAlog.a("IAMediaPlayerFlowManager: destroy", new Object[0]);
            View viewB = eVar.b();
            if (viewB != null && (viewB instanceof com.fyber.inneractive.sdk.web.g)) {
                ((com.fyber.inneractive.sdk.web.g) viewB).destroy();
            }
            com.fyber.inneractive.sdk.util.o oVar = eVar.l;
            if (oVar != null) {
                oVar.cancel(true);
                oVar.b = null;
                eVar.m = null;
            }
            com.fyber.inneractive.sdk.player.controller.g gVar = eVar.b;
            if (gVar != null) {
                gVar.b();
                eVar.b = null;
            }
            eVar.k = null;
            eVar.r = null;
            m mVar = eVar.z;
            if (mVar != null) {
                for (com.fyber.inneractive.sdk.flow.vast.a aVar : mVar.k) {
                    if (aVar.b != null && (aVar instanceof com.fyber.inneractive.sdk.flow.vast.e)) {
                        aVar.a();
                    }
                }
                mVar.l.a();
                m0 m0Var = mVar.h;
                if (m0Var != null) {
                    m0Var.a = true;
                }
            }
            eVar.z = null;
        }
    }

    public void a(InneractiveVideoError inneractiveVideoError, InneractiveErrorCode inneractiveErrorCode, JSONObject jSONObject, boolean z) {
        com.fyber.inneractive.sdk.flow.g gVar;
        InneractiveErrorCode inneractiveErrorCode2;
        com.fyber.inneractive.sdk.model.vast.b bVar;
        if (jSONObject == null && inneractiveVideoError != null) {
            jSONObject = new JSONObject();
            ((e) this.f2635f).b(inneractiveVideoError, jSONObject);
        }
        com.fyber.inneractive.sdk.flow.g gVar2 = com.fyber.inneractive.sdk.flow.g.UNSPECIFIED;
        if (inneractiveVideoError != null) {
            s.a aVar = new s.a(a(inneractiveVideoError.getPlayerError()), this.b, this.c, this.h.c());
            if (jSONObject != null) {
                try {
                    aVar.f2120f.put(new JSONObject(jSONObject.toString()));
                } catch (Exception unused) {
                }
            }
            aVar.a((String) null);
        }
        if (InneractiveErrorCode.NON_SECURE_CONTENT_DETECTED == null) {
            new s.a(q.VPAID_ERROR_UNSECURE_CONTENT, this.b, this.c, this.h.c()).a((String) null);
        }
        if (inneractiveVideoError != null) {
            IAlog.a("got onMediaPlayerLoadError with: " + inneractiveVideoError.getPlayerError(), new Object[0]);
            if (z) {
                inneractiveErrorCode2 = InneractiveErrorCode.LOAD_TIMEOUT;
                gVar = com.fyber.inneractive.sdk.flow.g.VIDEO_AD_LOAD_TIMEOUT;
            } else {
                gVar = gVar2;
                inneractiveErrorCode2 = null;
            }
            IAlog.a("got onMediaPlayerLoadError with: " + inneractiveVideoError.description(), new Object[0]);
            if (inneractiveVideoError.getPlayerError().isFatal()) {
                inneractiveErrorCode2 = InneractiveErrorCode.SERVER_INVALID_RESPONSE;
                gVar = com.fyber.inneractive.sdk.flow.g.VIDEO_FATAL_ERROR;
            }
            if (inneractiveErrorCode2 == null) {
                inneractiveErrorCode2 = InneractiveErrorCode.SERVER_INVALID_RESPONSE;
                gVar = com.fyber.inneractive.sdk.flow.g.VIDEO_ERROR_UNSPECIFIED;
            }
        } else {
            gVar = gVar2;
            inneractiveErrorCode2 = null;
        }
        if (z) {
            return;
        }
        this.f2634e = null;
        com.fyber.inneractive.sdk.response.g gVar3 = this.c;
        if (gVar3 != null && (bVar = gVar3.K) != null) {
            this.f2634e = bVar.f2073d.poll();
        }
        if (this.f2634e != null) {
            if (this.f2636g) {
                return;
            }
            e();
            d();
            return;
        }
        b();
        b bVar2 = this.f2633d;
        if (bVar2 != null) {
            if (inneractiveVideoError != null) {
                InneractiveInfrastructureError inneractiveInfrastructureError = new InneractiveInfrastructureError(inneractiveErrorCode2, gVar, inneractiveVideoError.getCause());
                com.fyber.inneractive.sdk.flow.o oVar = (com.fyber.inneractive.sdk.flow.o) bVar2;
                oVar.a((InneractiveError) inneractiveInfrastructureError);
                oVar.a(inneractiveInfrastructureError);
            } else {
                InneractiveInfrastructureError inneractiveInfrastructureError2 = new InneractiveInfrastructureError(inneractiveErrorCode2, com.fyber.inneractive.sdk.flow.g.VIDEO_ERROR_NULL);
                com.fyber.inneractive.sdk.flow.o oVar2 = (com.fyber.inneractive.sdk.flow.o) bVar2;
                oVar2.a((InneractiveError) inneractiveInfrastructureError2);
                oVar2.a(inneractiveInfrastructureError2);
            }
            a();
        }
    }

    public void a(String str, String... strArr) {
        a.InterfaceC0168a interfaceC0168a = this.f2635f;
        if (interfaceC0168a != null) {
            e eVar = (e) interfaceC0168a;
            if ("TRACKING_COMPLETED".equalsIgnoreCase(str)) {
                eVar.x = true;
                return;
            }
            if ("EVENT_TRACKING".equalsIgnoreCase(str)) {
                for (String str2 : strArr) {
                    eVar.a(eVar.v, VideoClickOrigin.InvalidOrigin, t.a(str2));
                }
            }
        }
    }

    public final void b() {
        new s.a(a(new InneractiveVideoError(InneractiveVideoError.Error.ERROR_FAILED_PLAYING_ALL_MEDIA_FILES).getPlayerError()), this.b, this.c, this.h.c()).a((String) null);
    }

    public a.InterfaceC0168a c() {
        return this.f2635f;
    }

    public final void d() {
        a.InterfaceC0168a interfaceC0168a = this.f2635f;
        if (interfaceC0168a == null) {
            b bVar = this.f2633d;
            InneractiveInfrastructureError inneractiveInfrastructureError = new InneractiveInfrastructureError(InneractiveErrorCode.SDK_INTERNAL_ERROR, com.fyber.inneractive.sdk.flow.g.COULD_NOT_LOAD_USING_FLOW_MANAGER, new Exception("loadNextMediaFile flowManager is null"));
            com.fyber.inneractive.sdk.flow.o oVar = (com.fyber.inneractive.sdk.flow.o) bVar;
            oVar.a((InneractiveError) inneractiveInfrastructureError);
            oVar.a(inneractiveInfrastructureError);
            return;
        }
        o oVar2 = this.f2634e;
        e eVar = (e) interfaceC0168a;
        eVar.r = this;
        if (oVar2 != null) {
            String str = oVar2.f2095g;
            eVar.t = oVar2;
            eVar.q++;
            eVar.n = false;
            eVar.p = false;
            eVar.c = str;
            IAlog.a("IAMediaPlayerFlowManager: playNextMediaFile - loading video url: %s", str);
            com.fyber.inneractive.sdk.util.o oVar3 = eVar.l;
            if (oVar3 != null) {
                oVar3.cancel(true);
                oVar3.b = null;
                eVar.m = null;
            }
            if (eVar.m == null) {
                eVar.m = new com.fyber.inneractive.sdk.player.b(eVar);
            }
            IAlog.a("IAMediaPlayerFlowManager: start - start fetching video frame", new Object[0]);
            if (!eVar.b.a()) {
                com.fyber.inneractive.sdk.util.o oVar4 = new com.fyber.inneractive.sdk.util.o(eVar.a, eVar.m, eVar.c, null, 81920);
                eVar.l = oVar4;
                oVar4.executeOnExecutor(com.fyber.inneractive.sdk.util.m.a, new Void[0]);
            }
            if (!eVar.o) {
                eVar.b.a(str, eVar.s);
            }
            m mVar = eVar.z;
            if (mVar != null) {
                mVar.a();
            }
        }
    }

    public final void e() {
        try {
            this.f2635f = this.a.a();
        } catch (Throwable th) {
            b bVar = this.f2633d;
            InneractiveInfrastructureError inneractiveInfrastructureError = new InneractiveInfrastructureError(InneractiveErrorCode.SDK_INTERNAL_ERROR, com.fyber.inneractive.sdk.flow.g.COULD_NOT_CREATE_FLOW_MANAGER, th);
            com.fyber.inneractive.sdk.flow.o oVar = (com.fyber.inneractive.sdk.flow.o) bVar;
            oVar.a((InneractiveError) inneractiveInfrastructureError);
            oVar.a(inneractiveInfrastructureError);
        }
    }
}
