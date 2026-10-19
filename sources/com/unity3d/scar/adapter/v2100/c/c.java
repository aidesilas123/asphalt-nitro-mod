package com.unity3d.scar.adapter.v2100.c;

import android.content.Context;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;

/* JADX INFO: compiled from: ScarBannerAd.java */
/* JADX INFO: loaded from: classes4.dex */
public class c extends a<AdView> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private RelativeLayout f8091g;
    private int h;
    private int i;
    private AdView j;

    public c(Context context, RelativeLayout relativeLayout, com.unity3d.scar.adapter.v2100.b.a aVar, com.unity3d.scar.adapter.common.scarads.c cVar, int i, int i2, com.unity3d.scar.adapter.common.b bVar, com.unity3d.scar.adapter.common.e eVar) {
        super(context, cVar, aVar, bVar);
        this.f8091g = relativeLayout;
        this.h = i;
        this.i = i2;
        this.j = new AdView(this.b);
        this.f8089e = new d(eVar, this);
    }

    @Override // com.unity3d.scar.adapter.v2100.c.a
    protected void b(AdRequest adRequest, com.unity3d.scar.adapter.common.scarads.b bVar) {
        AdView adView;
        RelativeLayout relativeLayout = this.f8091g;
        if (relativeLayout == null || (adView = this.j) == null) {
            return;
        }
        relativeLayout.addView(adView);
        this.j.setAdSize(new AdSize(this.h, this.i));
        this.j.setAdUnitId(this.c.b());
        this.j.setAdListener(((d) this.f8089e).d());
        this.j.loadAd(adRequest);
    }

    public void d() {
        AdView adView;
        RelativeLayout relativeLayout = this.f8091g;
        if (relativeLayout == null || (adView = this.j) == null) {
            return;
        }
        relativeLayout.removeView(adView);
    }
}
