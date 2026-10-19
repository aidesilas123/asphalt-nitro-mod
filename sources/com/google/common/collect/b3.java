package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableTable;
import com.google.common.collect.l3;
import java.util.Map;

/* JADX INFO: compiled from: SingletonImmutableTable.java */
/* JADX INFO: loaded from: classes3.dex */
class b3<R, C, V> extends ImmutableTable<R, C, V> {
    final R c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final C f3727d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final V f3728e;

    b3(l3.a<R, C, V> aVar) {
        this(aVar.c(), aVar.d(), aVar.getValue());
    }

    b3(R r, C c, V v) {
        this.c = (R) Preconditions.checkNotNull(r);
        this.f3727d = (C) Preconditions.checkNotNull(c);
        this.f3728e = (V) Preconditions.checkNotNull(v);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.s
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public n1<V> f() {
        return ImmutableSet.of(this.f3728e);
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.l3
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public ImmutableMap<R, Map<C, V>> j() {
        return ImmutableMap.of(this.c, ImmutableMap.of(this.f3727d, (Object) this.f3728e));
    }

    @Override // com.google.common.collect.l3
    public int size() {
        return 1;
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.l3
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public ImmutableMap<C, Map<R, V>> n() {
        return ImmutableMap.of(this.f3727d, ImmutableMap.of(this.c, (Object) this.f3728e));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.s
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public ImmutableSet<l3.a<R, C, V>> e() {
        return ImmutableSet.of(ImmutableTable.q(this.c, this.f3727d, this.f3728e));
    }

    @Override // com.google.common.collect.ImmutableTable
    ImmutableTable.b y() {
        return ImmutableTable.b.a(this, new int[]{0}, new int[]{0});
    }
}
