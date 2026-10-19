package com.iab.omid.library.fyber.internal;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.fyber.internal.d;
import com.iab.omid.library.fyber.walking.TreeWalker;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class h implements d.a, com.iab.omid.library.fyber.devicevolume.c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static h f4854f;
    private float a = 0.0f;
    private final com.iab.omid.library.fyber.devicevolume.e b;
    private final com.iab.omid.library.fyber.devicevolume.b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.iab.omid.library.fyber.devicevolume.d f4855d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c f4856e;

    public h(com.iab.omid.library.fyber.devicevolume.e eVar, com.iab.omid.library.fyber.devicevolume.b bVar) {
        this.b = eVar;
        this.c = bVar;
    }

    private c a() {
        if (this.f4856e == null) {
            this.f4856e = c.c();
        }
        return this.f4856e;
    }

    public static h c() {
        if (f4854f == null) {
            f4854f = new h(new com.iab.omid.library.fyber.devicevolume.e(), new com.iab.omid.library.fyber.devicevolume.b());
        }
        return f4854f;
    }

    @Override // com.iab.omid.library.fyber.devicevolume.c
    public void a(float f2) {
        this.a = f2;
        Iterator<com.iab.omid.library.fyber.adsession.a> it = a().a().iterator();
        while (it.hasNext()) {
            it.next().getAdSessionStatePublisher().a(f2);
        }
    }

    public void a(Context context) {
        this.f4855d = this.b.a(new Handler(), context, this.c.a(), this);
    }

    @Override // com.iab.omid.library.fyber.internal.d.a
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
        this.f4855d.c();
    }

    public void e() {
        TreeWalker.getInstance().j();
        b.g().f();
        this.f4855d.d();
    }
}
