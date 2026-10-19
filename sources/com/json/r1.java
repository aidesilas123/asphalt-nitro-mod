package com.json;

import com.json.mediationsdk.IronSourceSegment;
import com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdRewardListener;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.model.Placement;
import com.json.s1;

/* JADX INFO: loaded from: classes2.dex */
public abstract class r1<Smash extends s1<?>> extends o1<Smash, AdapterAdRewardListener> implements c0 {
    public r1(l lVar, o8 o8Var, IronSourceSegment ironSourceSegment, boolean z) {
        super(lVar, o8Var, ironSourceSegment, z);
    }

    @Override // com.json.c0
    public void a(s1<?> s1Var, Placement placement) {
        IronLog.INTERNAL.verbose(J(s1Var.k()));
        this.t.b(placement, s1Var.f());
    }
}
