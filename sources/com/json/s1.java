package com.json;

import com.json.c0;
import com.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdRewardListener;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.p;
import com.json.mediationsdk.utils.IronSourceUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class s1<Listener extends c0> extends p1<Listener> implements AdapterAdRewardListener {
    private t3 r;

    class a extends jb {
        a() {
        }

        @Override // com.json.jb
        public void a() {
            s1.this.p0();
        }
    }

    public s1(pa paVar, p pVar, BaseAdAdapter<?, AdapterAdRewardListener> baseAdAdapter, h0 h0Var, d1 d1Var, Listener listener) {
        super(paVar, pVar, baseAdAdapter, h0Var, d1Var, listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p0() {
        if (this.f6623g == null) {
            IronLog.INTERNAL.verbose(G("placement is null "));
            v vVar = this.f6620d;
            if (vVar != null) {
                vVar.k.c("mCurrentPlacement is null state = " + this.f6621e);
                return;
            }
            return;
        }
        IronLog.INTERNAL.verbose(G("placement name = " + X()));
        if (this.f6620d != null) {
            HashMap map = new HashMap();
            if (p.o().s() != null) {
                for (String str : p.o().s().keySet()) {
                    map.put("custom_" + str, p.o().s().get(str));
                }
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.f6620d.j.a(X(), this.f6623g.getCom.ironsource.mediationsdk.utils.IronSourceConstants.EVENTS_REWARD_NAME java.lang.String(), this.f6623g.getRewardAmount(), jCurrentTimeMillis, IronSourceUtils.getTransId(jCurrentTimeMillis, c()), t3.a(this.r), map, p.o().n());
        }
        ((c0) this.b).a((s1<?>) this, this.f6623g);
    }

    @Override // com.json.p1, com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdClosed() {
        this.r = new t3();
        super.onAdClosed();
    }

    @Override // com.json.t1, com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener, com.json.mediationsdk.adunit.adapter.listener.BannerAdListener, com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    public void onAdOpened() {
        this.r = null;
        super.onAdOpened();
    }

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdRewardListener
    public void onAdRewarded() {
        if (b0().c()) {
            b0().a(new a());
        } else {
            p0();
        }
    }
}
