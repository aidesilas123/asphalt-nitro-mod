package com.fyber.inneractive.sdk.renderers;

import android.view.View;
import com.fyber.inneractive.sdk.activities.InneractiveRichMediaVideoPlayerActivityCore;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.config.a0;
import com.fyber.inneractive.sdk.config.b0;
import com.fyber.inneractive.sdk.config.enums.Orientation;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.external.InneractiveNativeAdEventsListener;
import com.fyber.inneractive.sdk.external.WebViewRendererProcessHasGoneError;
import com.fyber.inneractive.sdk.flow.f0;
import com.fyber.inneractive.sdk.flow.q;
import com.fyber.inneractive.sdk.flow.z;
import com.fyber.inneractive.sdk.interfaces.c;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.k0;
import com.fyber.inneractive.sdk.util.x;
import com.fyber.inneractive.sdk.web.b;

/* JADX WARN: Unexpected interfaces in signature: [com.fyber.inneractive.sdk.player.controller.w] */
/* JADX INFO: loaded from: classes2.dex */
public class j extends z<f0, InneractiveNativeAdEventsListener> implements com.fyber.inneractive.sdk.interfaces.c {
    public boolean x = false;

    @Override // com.fyber.inneractive.sdk.flow.z
    public boolean J() {
        return false;
    }

    @Override // com.fyber.inneractive.sdk.flow.z
    public int L() {
        return 0;
    }

    @Override // com.fyber.inneractive.sdk.flow.z
    public int M() {
        return 0;
    }

    @Override // com.fyber.inneractive.sdk.flow.z
    public long N() {
        return 0L;
    }

    @Override // com.fyber.inneractive.sdk.flow.z
    public boolean O() {
        return false;
    }

    public final void R() {
        b0 b0Var;
        AdContent adcontent = this.b;
        if (adcontent == 0 || (b0Var = ((f0) adcontent).f2019d) == null || ((a0) b0Var).c == null) {
            return;
        }
        IAConfigManager.M.x.a(((a0) b0Var).c.b == UnitDisplayType.REWARDED ? com.fyber.inneractive.sdk.cache.session.enums.b.REWARDED_VIDEO : com.fyber.inneractive.sdk.cache.session.enums.b.INTERSTITIAL_VIDEO, com.fyber.inneractive.sdk.cache.session.enums.a.CLICK);
    }

    @Override // com.fyber.inneractive.sdk.flow.z
    public long a(long j) {
        return 0L;
    }

    public x.a a(k0 k0Var, com.fyber.inneractive.sdk.util.e eVar) {
        R();
        throw null;
    }

    public x.a a(String str, k0 k0Var, b.a aVar, boolean z) {
        com.fyber.inneractive.sdk.model.vast.c cVar;
        com.fyber.inneractive.sdk.model.vast.i iVar;
        AdContent adcontent = this.b;
        if (adcontent == 0) {
            throw null;
        }
        f0 f0Var = (f0) adcontent;
        if (f0Var.a == null || f0Var.b == 0) {
            throw null;
        }
        R();
        com.fyber.inneractive.sdk.model.vast.b bVar = ((com.fyber.inneractive.sdk.response.g) ((f0) this.b).b).K;
        a((bVar == null || (cVar = bVar.h) == null || (iVar = cVar.b) == null) ? null : iVar.toString());
        throw null;
    }

    public void a(View view, String str) {
        if (view == null || view.getContext() == null) {
            return;
        }
        InneractiveRichMediaVideoPlayerActivityCore.startRichMediaIntent(view.getContext(), str);
        D();
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c
    public void a(c.b bVar) {
    }

    public void a(String str, String str2) {
        IAlog.a(IAlog.a(this) + "full screen video ad renderer callback: onSuspiciousNoUserWebActionDetected", new Object[0]);
    }

    public void a(boolean z) {
    }

    public void a(boolean z, Orientation orientation) {
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c
    public void b() {
    }

    @Override // com.fyber.inneractive.sdk.flow.z
    public /* bridge */ /* synthetic */ boolean b(q qVar) {
        return false;
    }

    @Override // com.fyber.inneractive.sdk.flow.z, com.fyber.inneractive.sdk.flow.r, com.fyber.inneractive.sdk.external.InneractiveAdRenderer
    public void destroy() {
        if (!this.x) {
            m();
        }
        this.b = null;
        super.destroy();
    }

    public void e() {
    }

    public void g() {
        T t;
        com.fyber.inneractive.sdk.model.vast.c cVar;
        com.fyber.inneractive.sdk.model.vast.i iVar;
        AdContent adcontent = this.b;
        if (adcontent != 0) {
            f0 f0Var = (f0) adcontent;
            if (f0Var.a == null || (t = f0Var.b) == 0) {
                return;
            }
            String string = null;
            com.fyber.inneractive.sdk.model.vast.b bVar = ((com.fyber.inneractive.sdk.response.g) t).K;
            if (bVar != null && (cVar = bVar.h) != null && (iVar = cVar.b) != null) {
                string = iVar.toString();
            }
            a(string);
        }
    }

    public void h() {
        IAlog.a("%snShownCloseButton", IAlog.a(this));
    }

    public void j() {
        a(new WebViewRendererProcessHasGoneError());
    }

    public void k() {
    }

    public void l() {
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c
    public void m() {
        this.x = true;
        AdContent adcontent = this.b;
        if (adcontent != 0) {
        }
        IAlog.a("%sunit controller is null!", IAlog.a(this));
    }

    @Override // com.fyber.inneractive.sdk.flow.z, com.fyber.inneractive.sdk.interfaces.c
    public void o() {
    }

    public void onCompleted() {
    }

    public void onPlayerError() {
    }

    public void onProgress(int i, int i2) {
    }

    public void s() {
        D();
    }

    @Override // com.fyber.inneractive.sdk.flow.z, com.fyber.inneractive.sdk.interfaces.c
    public void t() {
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c
    public boolean v() {
        return false;
    }
}
