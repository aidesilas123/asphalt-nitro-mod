package io.didomi.drawable;

import android.content.SharedPreferences;
import dagger.internal.Preconditions;
import dagger.internal.b;
import e.a.a;

/* JADX INFO: loaded from: classes5.dex */
public final class M implements b<V> {
    private final L a;
    private final a<SharedPreferences> b;
    private final a<V8> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a<H> f8289d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a<C1797j0> f8290e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a<InterfaceC1780h3> f8291f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final a<C1920v3> f8292g;

    public M(L l, a<SharedPreferences> aVar, a<V8> aVar2, a<H> aVar3, a<C1797j0> aVar4, a<InterfaceC1780h3> aVar5, a<C1920v3> aVar6) {
        this.a = l;
        this.b = aVar;
        this.c = aVar2;
        this.f8289d = aVar3;
        this.f8290e = aVar4;
        this.f8291f = aVar5;
        this.f8292g = aVar6;
    }

    public static M a(L l, a<SharedPreferences> aVar, a<V8> aVar2, a<H> aVar3, a<C1797j0> aVar4, a<InterfaceC1780h3> aVar5, a<C1920v3> aVar6) {
        return new M(l, aVar, aVar2, aVar3, aVar4, aVar5, aVar6);
    }

    public static V a(L l, SharedPreferences sharedPreferences, V8 v8, H h, C1797j0 c1797j0, InterfaceC1780h3 interfaceC1780h3, C1920v3 c1920v3) {
        return (V) Preconditions.checkNotNullFromProvides(l.a(sharedPreferences, v8, h, c1797j0, interfaceC1780h3, c1920v3));
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public V get() {
        return a(this.a, this.b.get(), this.c.get(), this.f8289d.get(), this.f8290e.get(), this.f8291f.get(), this.f8292g.get());
    }
}
