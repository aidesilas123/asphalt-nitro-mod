package com.json;

import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.IronSourceSegment;
import com.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdRewardListener;
import com.json.mediationsdk.model.NetworkSettings;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.y;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class za extends r1<ab> {
    public za(List<NetworkSettings> list, bb bbVar, String str, boolean z, o8 o8Var, IronSourceSegment ironSourceSegment, boolean z2) {
        super(new RewardedVideoAdDataManager(str, list, bbVar, z), o8Var, ironSourceSegment, z2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.json.q1
    /* JADX INFO: renamed from: A0, reason: merged with bridge method [inline-methods] */
    public ab a(NetworkSettings networkSettings, BaseAdAdapter<?, AdapterAdRewardListener> baseAdAdapter, int i, String str, d1 d1Var) {
        return new ab(this, new p(IronSource.AD_UNIT.REWARDED_VIDEO, this.o.getUserId(), i, this.f6521g, str, this.f6519e, this.f6520f, networkSettings, this.o.getSmashLoadTimeout()), baseAdAdapter, d1Var, this);
    }

    @Override // com.json.q1
    protected JSONObject K(NetworkSettings networkSettings) {
        return networkSettings.getRewardedVideoSettings();
    }

    @Override // com.json.q1
    protected x X() {
        return new db();
    }

    @Override // com.json.q1
    protected String c0() {
        return IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE;
    }

    @Override // com.json.q1
    protected String g0() {
        return IronSourceConstants.OPW_RV_MANAGER_NAME;
    }

    @Override // com.json.q1
    protected boolean i0() {
        return this.o.getLoadingData().a() == y.a.MANUAL;
    }
}
