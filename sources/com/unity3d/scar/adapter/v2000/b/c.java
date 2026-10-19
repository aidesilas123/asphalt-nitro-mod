package com.unity3d.scar.adapter.v2000.b;

import android.content.Context;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.query.QueryInfo;

/* JADX INFO: compiled from: ScarBannerAd.java */
/* JADX INFO: loaded from: classes4.dex */
public class c extends a<AdView> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private RelativeLayout f8076g;
    private int h;
    private int i;
    private AdView j;

    public c(Context context, QueryInfo queryInfo, RelativeLayout relativeLayout, com.unity3d.scar.adapter.common.scarads.c cVar, int i, int i2, com.unity3d.scar.adapter.common.b bVar, com.unity3d.scar.adapter.common.e eVar) {
        super(context, cVar, queryInfo, bVar);
        this.f8076g = relativeLayout;
        this.h = i;
        this.i = i2;
        this.j = new AdView(this.b);
        this.f8074e = new d(eVar, this);
    }

    @Override // com.unity3d.scar.adapter.v2000.b.a
    protected void b(AdRequest adRequest, com.unity3d.scar.adapter.common.scarads.b bVar) {
        AdView adView;
        RelativeLayout relativeLayout = this.f8076g;
        if (relativeLayout == null || (adView = this.j) == null) {
            return;
        }
        relativeLayout.addView(adView);
        this.j.setAdSize(new AdSize(this.h, this.i));
        this.j.setAdUnitId(this.c.b());
        this.j.setAdListener(((d) this.f8074e).d());
        this.j.loadAd(adRequest);
    }

    public void d() {
        AdView adView;
        RelativeLayout relativeLayout = this.f8076g;
        if (relativeLayout == null || (adView = this.j) == null) {
            return;
        }
        relativeLayout.removeView(adView);
    }
}
