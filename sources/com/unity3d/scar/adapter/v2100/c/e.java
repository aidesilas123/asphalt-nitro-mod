package com.unity3d.scar.adapter.v2100.c;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.unity3d.scar.adapter.common.GMAAdsError;

/* JADX INFO: compiled from: ScarInterstitialAd.java */
/* JADX INFO: loaded from: classes4.dex */
public class e extends a<InterstitialAd> implements com.unity3d.scar.adapter.common.scarads.a {
    public e(Context context, com.unity3d.scar.adapter.v2100.b.a aVar, com.unity3d.scar.adapter.common.scarads.c cVar, com.unity3d.scar.adapter.common.b bVar, com.unity3d.scar.adapter.common.f fVar) {
        super(context, cVar, aVar, bVar);
        this.f8089e = new f(fVar, this);
    }

    @Override // com.unity3d.scar.adapter.v2100.c.a
    protected void b(AdRequest adRequest, com.unity3d.scar.adapter.common.scarads.b bVar) {
        InterstitialAd.load(this.b, this.c.b(), adRequest, ((f) this.f8089e).e());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.unity3d.scar.adapter.common.scarads.a
    public void show(Activity activity) {
        T t = this.a;
        if (t != 0) {
            ((InterstitialAd) t).show(activity);
        } else {
            this.f8090f.handleError(GMAAdsError.AdNotLoadedError(this.c));
        }
    }
}
