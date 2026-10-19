package com.unity3d.scar.adapter.v2000.b;

import android.content.Context;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.query.AdInfo;
import com.google.android.gms.ads.query.QueryInfo;
import com.unity3d.scar.adapter.common.GMAAdsError;

/* JADX INFO: compiled from: ScarAdBase.java */
/* JADX INFO: loaded from: classes4.dex */
public abstract class a<T> {
    protected T a;
    protected Context b;
    protected com.unity3d.scar.adapter.common.scarads.c c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected QueryInfo f8073d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected b f8074e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected com.unity3d.scar.adapter.common.b f8075f;

    public a(Context context, com.unity3d.scar.adapter.common.scarads.c cVar, QueryInfo queryInfo, com.unity3d.scar.adapter.common.b bVar) {
        this.b = context;
        this.c = cVar;
        this.f8073d = queryInfo;
        this.f8075f = bVar;
    }

    public void a(com.unity3d.scar.adapter.common.scarads.b bVar) {
        if (this.f8073d == null) {
            this.f8075f.handleError(GMAAdsError.QueryNotFoundError(this.c));
            return;
        }
        AdRequest adRequestBuild = new AdRequest.Builder().setAdInfo(new AdInfo(this.f8073d, this.c.a())).build();
        if (bVar != null) {
            this.f8074e.a(bVar);
        }
        b(adRequestBuild, bVar);
    }

    protected abstract void b(AdRequest adRequest, com.unity3d.scar.adapter.common.scarads.b bVar);

    public void c(T t) {
        this.a = t;
    }
}
