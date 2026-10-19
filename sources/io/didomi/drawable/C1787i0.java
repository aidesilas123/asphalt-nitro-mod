package io.didomi.drawable;

import android.content.Context;
import dagger.internal.b;
import e.a.a;

/* JADX INFO: renamed from: io.didomi.sdk.i0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1787i0 implements b<C1777h0> {
    private final a<Context> a;
    private final a<InterfaceC1890s3> b;

    public C1787i0(a<Context> aVar, a<InterfaceC1890s3> aVar2) {
        this.a = aVar;
        this.b = aVar2;
    }

    public static C1777h0 a(Context context, InterfaceC1890s3 interfaceC1890s3) {
        return new C1777h0(context, interfaceC1890s3);
    }

    public static C1787i0 a(a<Context> aVar, a<InterfaceC1890s3> aVar2) {
        return new C1787i0(aVar, aVar2);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public C1777h0 get() {
        return a(this.a.get(), this.b.get());
    }
}
