package com.mbridge.msdk.reward.d;

import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.out.Frame;
import java.util.List;

/* JADX INFO: compiled from: RewarLoadVideoResponseHandler.java */
/* JADX INFO: loaded from: classes4.dex */
public abstract class a extends c {
    public abstract void a(int i, String str, int i2);

    public abstract void a(CampaignUnit campaignUnit);

    @Override // com.mbridge.msdk.reward.d.c
    public final void a(List<Frame> list) {
    }

    @Override // com.mbridge.msdk.reward.d.c
    public final void a(List<com.mbridge.msdk.foundation.same.net.d.b> list, CampaignUnit campaignUnit) {
        a(campaignUnit);
    }

    @Override // com.mbridge.msdk.reward.d.c
    public final void b(int i, String str, int i2) {
        a(i, str, i2);
    }
}
