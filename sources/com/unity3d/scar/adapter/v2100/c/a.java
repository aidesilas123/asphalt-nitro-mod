package com.unity3d.scar.adapter.v2100.c;

import android.content.Context;
import com.google.android.gms.ads.AdRequest;

/* JADX INFO: compiled from: ScarAdBase.java */
/* JADX INFO: loaded from: classes4.dex */
public abstract class a<T> {
    protected T a;
    protected Context b;
    protected com.unity3d.scar.adapter.common.scarads.c c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected com.unity3d.scar.adapter.v2100.b.a f8088d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected b f8089e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected com.unity3d.scar.adapter.common.b f8090f;

    public a(Context context, com.unity3d.scar.adapter.common.scarads.c cVar, com.unity3d.scar.adapter.v2100.b.a aVar, com.unity3d.scar.adapter.common.b bVar) {
        this.b = context;
        this.c = cVar;
        this.f8088d = aVar;
        this.f8090f = bVar;
    }

    public void a(com.unity3d.scar.adapter.common.scarads.b bVar) {
        AdRequest adRequestB = this.f8088d.b(this.c.a());
        if (bVar != null) {
            this.f8089e.a(bVar);
        }
        b(adRequestB, bVar);
    }

    protected abstract void b(AdRequest adRequest, com.unity3d.scar.adapter.common.scarads.b bVar);

    public void c(T t) {
        this.a = t;
    }
}
