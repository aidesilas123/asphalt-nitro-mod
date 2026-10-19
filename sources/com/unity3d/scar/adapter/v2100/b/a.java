package com.unity3d.scar.adapter.v2100.b;

import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdRequest;

/* JADX INFO: compiled from: AdRequestFactory.java */
/* JADX INFO: loaded from: classes4.dex */
public class a {
    private com.unity3d.scar.adapter.common.k.a a;

    public a(com.unity3d.scar.adapter.common.k.a aVar) {
        this.a = aVar;
    }

    public AdRequest a() {
        return c().build();
    }

    public AdRequest b(String str) {
        return c().setAdString(str).build();
    }

    public AdRequest.Builder c() {
        return new AdRequest.Builder().setRequestAgent(this.a.b()).addNetworkExtrasBundle(AdMobAdapter.class, this.a.a());
    }
}
