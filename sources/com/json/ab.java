package com.json;

import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdRewardListener;
import com.json.mediationsdk.adunit.adapter.listener.RewardedVideoAdListener;

/* JADX INFO: loaded from: classes2.dex */
public class ab extends s1<c0> implements RewardedVideoAdListener {
    public ab(pa paVar, p pVar, BaseAdAdapter<?, AdapterAdRewardListener> baseAdAdapter, d1 d1Var, c0 c0Var) {
        super(paVar, pVar, baseAdAdapter, new h0(pVar.g(), pVar.g().getRewardedVideoSettings(), IronSource.AD_UNIT.REWARDED_VIDEO), d1Var, c0Var);
    }
}
