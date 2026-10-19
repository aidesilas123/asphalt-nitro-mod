package io.didomi.drawable;

import dagger.internal.b;
import e.a.a;

/* JADX INFO: renamed from: io.didomi.sdk.w3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1930w3 implements b<C1920v3> {
    private final a<H> a;
    private final a<C1892s5> b;
    private final a<DidomiInitializeParameters> c;

    public C1930w3(a<H> aVar, a<C1892s5> aVar2, a<DidomiInitializeParameters> aVar3) {
        this.a = aVar;
        this.b = aVar2;
        this.c = aVar3;
    }

    public static C1920v3 a(H h, C1892s5 c1892s5, DidomiInitializeParameters didomiInitializeParameters) {
        return new C1920v3(h, c1892s5, didomiInitializeParameters);
    }

    public static C1930w3 a(a<H> aVar, a<C1892s5> aVar2, a<DidomiInitializeParameters> aVar3) {
        return new C1930w3(aVar, aVar2, aVar3);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public C1920v3 get() {
        return a(this.a.get(), this.b.get(), this.c.get());
    }
}
