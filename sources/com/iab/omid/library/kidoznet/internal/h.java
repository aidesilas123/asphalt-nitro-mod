package com.iab.omid.library.kidoznet.internal;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.kidoznet.internal.d;
import com.iab.omid.library.kidoznet.walking.TreeWalker;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class h implements d.a, com.iab.omid.library.kidoznet.devicevolume.c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static h f4995f;
    private float a = 0.0f;
    private final com.iab.omid.library.kidoznet.devicevolume.e b;
    private final com.iab.omid.library.kidoznet.devicevolume.b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.iab.omid.library.kidoznet.devicevolume.d f4996d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c f4997e;

    public h(com.iab.omid.library.kidoznet.devicevolume.e eVar, com.iab.omid.library.kidoznet.devicevolume.b bVar) {
        this.b = eVar;
        this.c = bVar;
    }

    private c a() {
        if (this.f4997e == null) {
            this.f4997e = c.c();
        }
        return this.f4997e;
    }

    public static h c() {
        if (f4995f == null) {
            f4995f = new h(new com.iab.omid.library.kidoznet.devicevolume.e(), new com.iab.omid.library.kidoznet.devicevolume.b());
        }
        return f4995f;
    }

    @Override // com.iab.omid.library.kidoznet.devicevolume.c
    public void a(float f2) {
        this.a = f2;
        Iterator<com.iab.omid.library.kidoznet.adsession.a> it = a().a().iterator();
        while (it.hasNext()) {
            it.next().getAdSessionStatePublisher().a(f2);
        }
    }

    public void a(Context context) {
        this.f4996d = this.b.a(new Handler(), context, this.c.a(), this);
    }

    @Override // com.iab.omid.library.kidoznet.internal.d.a
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
        this.f4996d.c();
    }

    public void e() {
        TreeWalker.getInstance().j();
        b.g().f();
        this.f4996d.d();
    }
}
