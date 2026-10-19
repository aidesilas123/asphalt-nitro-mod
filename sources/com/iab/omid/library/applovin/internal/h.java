package com.iab.omid.library.applovin.internal;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.applovin.internal.d;
import com.iab.omid.library.applovin.walking.TreeWalker;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class h implements com.iab.omid.library.applovin.devicevolume.c, d.a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static h f4782f;
    private float a = 0.0f;
    private final com.iab.omid.library.applovin.devicevolume.e b;
    private final com.iab.omid.library.applovin.devicevolume.b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.iab.omid.library.applovin.devicevolume.d f4783d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c f4784e;

    public h(com.iab.omid.library.applovin.devicevolume.e eVar, com.iab.omid.library.applovin.devicevolume.b bVar) {
        this.b = eVar;
        this.c = bVar;
    }

    private c a() {
        if (this.f4784e == null) {
            this.f4784e = c.c();
        }
        return this.f4784e;
    }

    public static h c() {
        if (f4782f == null) {
            f4782f = new h(new com.iab.omid.library.applovin.devicevolume.e(), new com.iab.omid.library.applovin.devicevolume.b());
        }
        return f4782f;
    }

    @Override // com.iab.omid.library.applovin.devicevolume.c
    public void a(float f2) {
        this.a = f2;
        Iterator<com.iab.omid.library.applovin.adsession.a> it = a().a().iterator();
        while (it.hasNext()) {
            it.next().getAdSessionStatePublisher().a(f2);
        }
    }

    public void a(Context context) {
        this.f4783d = this.b.a(new Handler(), context, this.c.a(), this);
    }

    @Override // com.iab.omid.library.applovin.internal.d.a
    public void a(boolean z) {
        if (z) {
            TreeWalker.getInstance().h();
        } else {
            TreeWalker.getInstance().g();
        }
    }

    public float b() {
        return this.a;
    }

    public void d() {
        b.g().a(this);
        b.g().e();
        TreeWalker.getInstance().h();
        this.f4783d.c();
    }

    public void e() {
        TreeWalker.getInstance().j();
        b.g().f();
        this.f4783d.d();
    }
}
