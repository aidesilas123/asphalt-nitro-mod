package com.json;

import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.IronSourceSegment;
import com.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener;
import com.json.mediationsdk.model.NetworkSettings;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class m7 extends o1<o7, AdapterAdInteractionListener> {
    public m7(List<NetworkSettings> list, p7 p7Var, String str, o8 o8Var, IronSourceSegment ironSourceSegment, boolean z) {
        super(new InterstitialAdManagerData(str, list, p7Var), o8Var, ironSourceSegment, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.json.q1
    /* JADX INFO: renamed from: A0, reason: merged with bridge method [inline-methods] */
    public o7 a(NetworkSettings networkSettings, BaseAdAdapter<?, AdapterAdInteractionListener> baseAdAdapter, int i, String str, d1 d1Var) {
        return new o7(this, new p(IronSource.AD_UNIT.INTERSTITIAL, this.o.getUserId(), i, this.f6521g, str, this.f6519e, this.f6520f, networkSettings, this.o.getSmashLoadTimeout()), baseAdAdapter, d1Var, this);
    }

    @Override // com.json.q1
    protected JSONObject K(NetworkSettings networkSettings) {
        return networkSettings.getInterstitialSettings();
    }

    @Override // com.json.q1
    protected x X() {
        return new r7();
    }

    @Override // com.json.q1
    protected String c0() {
        return IronSourceConstants.INTERSTITIAL_EVENT_TYPE;
    }

    @Override // com.json.q1
    protected String g0() {
        return IronSourceConstants.OPW_IS_MANAGER_NAME;
    }
}
