package com.iab.omid.library.jungroup.b;

import com.iab.omid.library.jungroup.b.b;

/* JADX INFO: loaded from: classes2.dex */
public final class g implements com.iab.omid.library.jungroup.a.c, b.a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static g f4962f;
    public float a = 0.0f;
    public final com.iab.omid.library.jungroup.a.e b;
    public final com.iab.omid.library.jungroup.a.b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public com.iab.omid.library.jungroup.a.d f4963d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public a f4964e;

    public g(com.iab.omid.library.jungroup.a.e eVar, com.iab.omid.library.jungroup.a.b bVar) {
        this.b = eVar;
        this.c = bVar;
    }

    public static g a() {
        if (f4962f == null) {
            f4962f = new g(new com.iab.omid.library.jungroup.a.e(), new com.iab.omid.library.jungroup.a.b());
        }
        return f4962f;
    }
}
