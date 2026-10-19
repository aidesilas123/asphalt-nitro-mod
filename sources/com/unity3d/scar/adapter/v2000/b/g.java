package com.unity3d.scar.adapter.v2000.b;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.unity3d.scar.adapter.common.GMAAdsError;

/* JADX INFO: compiled from: ScarRewardedAd.java */
/* JADX INFO: loaded from: classes4.dex */
public class g extends a<RewardedAd> implements com.unity3d.scar.adapter.common.scarads.a {
    public g(Context context, QueryInfo queryInfo, com.unity3d.scar.adapter.common.scarads.c cVar, com.unity3d.scar.adapter.common.b bVar, com.unity3d.scar.adapter.common.g gVar) {
        super(context, cVar, queryInfo, bVar);
        this.f8074e = new h(gVar, this);
    }

    @Override // com.unity3d.scar.adapter.v2000.b.a
    protected void b(AdRequest adRequest, com.unity3d.scar.adapter.common.scarads.b bVar) {
        RewardedAd.load(this.b, this.c.b(), adRequest, ((h) this.f8074e).e());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.unity3d.scar.adapter.common.scarads.a
    public void show(Activity activity) {
        T t = this.a;
        if (t != 0) {
            ((RewardedAd) t).show(activity, ((h) this.f8074e).f());
        } else {
            this.f8075f.handleError(GMAAdsError.AdNotLoadedError(this.c));
        }
    }
}
