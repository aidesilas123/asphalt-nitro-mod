package io.didomi.drawable;

import dagger.internal.b;
import e.a.a;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: renamed from: io.didomi.sdk.j3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1800j3 implements b<C1790i3> {
    private final a<CoroutineDispatcher> a;

    public C1800j3(a<CoroutineDispatcher> aVar) {
        this.a = aVar;
    }

    public static C1790i3 a(CoroutineDispatcher coroutineDispatcher) {
        return new C1790i3(coroutineDispatcher);
    }

    public static C1800j3 a(a<CoroutineDispatcher> aVar) {
        return new C1800j3(aVar);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public C1790i3 get() {
        return a(this.a.get());
    }
}
