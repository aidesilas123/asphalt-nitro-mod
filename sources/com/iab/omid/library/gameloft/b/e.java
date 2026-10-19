package com.iab.omid.library.gameloft.b;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.gameloft.b.b;
import com.iab.omid.library.gameloft.walking.TreeWalker;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class e implements com.iab.omid.library.gameloft.a.c, b.a {
    private static e a;
    private float b = 0.0f;
    private final com.iab.omid.library.gameloft.a.e c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.iab.omid.library.gameloft.a.b f4887d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.iab.omid.library.gameloft.a.d f4888e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a f4889f;

    public e(com.iab.omid.library.gameloft.a.e eVar, com.iab.omid.library.gameloft.a.b bVar) {
        this.c = eVar;
        this.f4887d = bVar;
    }

    public static e a() {
        if (a == null) {
            a = new e(new com.iab.omid.library.gameloft.a.e(), new com.iab.omid.library.gameloft.a.b());
        }
        return a;
    }

    private a e() {
        if (this.f4889f == null) {
            this.f4889f = a.a();
        }
        return this.f4889f;
    }

    @Override // com.iab.omid.library.gameloft.a.c
    public void a(float f2) {
        this.b = f2;
        Iterator<com.iab.omid.library.gameloft.adsession.a> it = e().c().iterator();
        while (it.hasNext()) {
            it.next().getAdSessionStatePublisher().a(f2);
        }
    }

    public void a(Context context) {
        this.f4888e = this.c.a(new Handler(), context, this.f4887d.a(), this);
    }

    @Override // com.iab.omid.library.gameloft.b.b.a
    public void a(boolean z) {
        if (z) {
            TreeWalker.getInstance().a();
        } else {
            TreeWalker.getInstance().c();
        }
    }

    public void b() {
        b.a().a(this);
        b.a().b();
        if (b.a().d()) {
            TreeWalker.getInstance().a();
        }
        this.f4888e.a();
    }

    public void c() {
        TreeWalker.getInstance().b();
        b.a().c();
        this.f4888e.b();
    }

    public float d() {
        return this.b;
    }
}
