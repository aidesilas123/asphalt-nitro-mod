package io.didomi.drawable;

import android.content.SharedPreferences;
import dagger.internal.b;
import e.a.a;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: renamed from: io.didomi.sdk.k0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1807k0 implements b<C1797j0> {
    private final a<H> a;
    private final a<SharedPreferences> b;
    private final a<M8> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a<C1777h0> f8666d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a<CoroutineDispatcher> f8667e;

    public C1807k0(a<H> aVar, a<SharedPreferences> aVar2, a<M8> aVar3, a<C1777h0> aVar4, a<CoroutineDispatcher> aVar5) {
        this.a = aVar;
        this.b = aVar2;
        this.c = aVar3;
        this.f8666d = aVar4;
        this.f8667e = aVar5;
    }

    public static C1797j0 a(H h, SharedPreferences sharedPreferences, M8 m8, C1777h0 c1777h0, CoroutineDispatcher coroutineDispatcher) {
        return new C1797j0(h, sharedPreferences, m8, c1777h0, coroutineDispatcher);
    }

    public static C1807k0 a(a<H> aVar, a<SharedPreferences> aVar2, a<M8> aVar3, a<C1777h0> aVar4, a<CoroutineDispatcher> aVar5) {
        return new C1807k0(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public C1797j0 get() {
        return a(this.a.get(), this.b.get(), this.c.get(), this.f8666d.get(), this.f8667e.get());
    }
}
