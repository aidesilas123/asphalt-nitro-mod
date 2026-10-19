package io.didomi.drawable;

import dagger.internal.Preconditions;
import dagger.internal.b;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: renamed from: io.didomi.sdk.f0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1757f0 implements b<CoroutineDispatcher> {

    /* JADX INFO: renamed from: io.didomi.sdk.f0$a */
    private static final class a {
        private static final C1757f0 a = new C1757f0();
    }

    public static C1757f0 a() {
        return a.a;
    }

    public static CoroutineDispatcher c() {
        return (CoroutineDispatcher) Preconditions.checkNotNullFromProvides(C1747e0.a.a());
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public CoroutineDispatcher get() {
        return c();
    }
}
