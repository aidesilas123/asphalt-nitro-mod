package com.json;

import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener;
import com.json.mediationsdk.adunit.adapter.listener.InterstitialAdListener;

/* JADX INFO: loaded from: classes2.dex */
public class o7 extends p1<w> implements InterstitialAdListener {
    public o7(pa paVar, p pVar, BaseAdAdapter<?, AdapterAdInteractionListener> baseAdAdapter, d1 d1Var, w wVar) {
        super(paVar, pVar, baseAdAdapter, new h0(pVar.g(), pVar.g().getInterstitialSettings(), IronSource.AD_UNIT.INTERSTITIAL), d1Var, wVar);
    }
}
