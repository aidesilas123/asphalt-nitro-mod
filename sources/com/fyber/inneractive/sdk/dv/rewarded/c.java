package com.fyber.inneractive.sdk.dv.rewarded;

import android.app.Activity;
import com.fyber.inneractive.sdk.dv.f;
import com.fyber.inneractive.sdk.external.InneractiveFullscreenAdEventsListener;
import com.fyber.inneractive.sdk.external.InneractiveFullscreenUnitController;
import com.fyber.inneractive.sdk.external.InneractiveUnitController;
import com.fyber.inneractive.sdk.flow.q;
import com.fyber.inneractive.sdk.flow.z;
import com.fyber.inneractive.sdk.interfaces.c;
import com.fyber.inneractive.sdk.response.e;
import com.fyber.inneractive.sdk.util.IAlog;

/* JADX WARN: Unexpected interfaces in signature: [com.fyber.inneractive.sdk.dv.interstitial.a] */
/* JADX INFO: loaded from: classes2.dex */
public class c extends z<com.fyber.inneractive.sdk.a, InneractiveFullscreenAdEventsListener> implements com.fyber.inneractive.sdk.interfaces.c {
    public c.b x;
    public boolean y = false;

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

    @Override // com.fyber.inneractive.sdk.flow.z
    public long a(long j) {
        return 0L;
    }

    @Override // com.fyber.inneractive.sdk.flow.z, com.fyber.inneractive.sdk.interfaces.c
    public void a(c.a aVar, Activity activity) throws InneractiveUnitController.AdDisplayError {
        super.a(aVar, activity);
        if (activity == null) {
            IAlog.e("%sYou must pass activity in order to show rewarded", IAlog.a(this));
            throw new InneractiveUnitController.AdDisplayError("No activity context");
        }
        AdContent adcontent = this.b;
        if (adcontent != 0) {
            com.fyber.inneractive.sdk.a aVar2 = (com.fyber.inneractive.sdk.a) adcontent;
            if (aVar2.i != 0) {
                aVar2.a(this, activity);
                return;
            }
        }
        IAlog.e("%sad content is null aborting", IAlog.a(this));
        throw new InneractiveUnitController.AdDisplayError("Ad content is null");
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c
    public void a(c.b bVar) {
        this.x = bVar;
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c
    public void b() {
    }

    @Override // com.fyber.inneractive.sdk.flow.z
    public /* bridge */ /* synthetic */ boolean b(q qVar) {
        return false;
    }

    public void d() {
        AdContent adcontent = this.b;
        if (adcontent != 0) {
            e eVar = ((com.fyber.inneractive.sdk.a) adcontent).b;
            if (((f) eVar) != null) {
                a((f) eVar);
            }
        }
        a(com.fyber.inneractive.sdk.cache.session.enums.a.CLICK, com.fyber.inneractive.sdk.cache.session.enums.b.REWARDED_VIDEO);
        D();
    }

    public void i() {
        EventsListener eventslistener;
        if (this.y || (eventslistener = this.c) == 0) {
            return;
        }
        this.y = true;
        ((InneractiveFullscreenAdEventsListener) eventslistener).onAdDismissed(this.a);
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c
    public void m() {
    }

    public void onReward() {
        c.b bVar = this.x;
        if (bVar != null) {
            ((InneractiveFullscreenUnitController.a) bVar).a();
            I();
        }
        a(com.fyber.inneractive.sdk.cache.session.enums.a.COMPLETION, com.fyber.inneractive.sdk.cache.session.enums.b.REWARDED_VIDEO);
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c
    public boolean v() {
        return false;
    }

    public void w() {
        AdContent adcontent = this.b;
        if (adcontent != 0) {
            b((f) ((com.fyber.inneractive.sdk.a) adcontent).b);
        }
        a(com.fyber.inneractive.sdk.cache.session.enums.a.IMPRESSION, com.fyber.inneractive.sdk.cache.session.enums.b.REWARDED_VIDEO);
        E();
    }
}
