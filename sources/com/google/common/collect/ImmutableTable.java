package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Tables;
import com.google.common.collect.l3;
import java.io.Serializable;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ImmutableTable<R, C, V> extends s<R, C, V> implements Serializable {

    public static final class a<R, C, V> {
        private final List<l3.a<R, C, V>> a = Lists.newArrayList();
        private Comparator<? super R> b;
        private Comparator<? super C> c;

        public ImmutableTable<R, C, V> a() {
            return b();
        }

        public ImmutableTable<R, C, V> b() {
            int size = this.a.size();
            return size != 0 ? size != 1 ? u2.F(this.a, this.b, this.c) : new b3((l3.a) Iterables.getOnlyElement(this.a)) : ImmutableTable.of();
        }

        public a<R, C, V> c(l3.a<? extends R, ? extends C, ? extends V> aVar) {
            if (aVar instanceof Tables.c) {
                Preconditions.checkNotNull(aVar.c(), "row");
                Preconditions.checkNotNull(aVar.d(), "column");
                Preconditions.checkNotNull(aVar.getValue(), "value");
                this.a.add(aVar);
            } else {
                d(aVar.c(), aVar.d(), aVar.getValue());
            }
            return this;
        }

        public a<R, C, V> d(R r, C c, V v) {
            this.a.add(ImmutableTable.q(r, c, v));
            return this;
        }
    }

    static final class b implements Serializable {
        private static final long serialVersionUID = 0;
        private final Object[] a;
        private final Object[] b;
        private final Object[] c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int[] f3603d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int[] f3604e;

        private b(Object[] objArr, Object[] objArr2, Object[] objArr3, int[] iArr, int[] iArr2) {
            this.a = objArr;
            this.b = objArr2;
            this.c = objArr3;
            this.f3603d = iArr;
            this.f3604e = iArr2;
        }

        static b a(ImmutableTable<?, ?, ?> immutableTable, int[] iArr, int[] iArr2) {
            return new b(immutableTable.h().toArray(), immutableTable.z().toArray(), immutableTable.values().toArray(), iArr, iArr2);
        }

        Object readResolve() {
            Object[] objArr = this.c;
            if (objArr.length == 0) {
                return ImmutableTable.of();
            }
            int i = 0;
            if (objArr.length == 1) {
                return ImmutableTable.of(this.a[0], this.b[0], objArr[0]);
            }
            ImmutableList.a aVar = new ImmutableList.a(objArr.length);
            while (true) {
                Object[] objArr2 = this.c;
                if (i >= objArr2.length) {
                    return u2.H(aVar.k(), ImmutableSet.copyOf(this.a), ImmutableSet.copyOf(this.b));
                }
                aVar.a(ImmutableTable.q(this.a[this.f3603d[i]], this.b[this.f3604e[i]], objArr2[i]));
                i++;
            }
        }
    }

    ImmutableTable() {
    }

    public static <R, C, V> a<R, C, V> builder() {
        return new a<>();
    }

    public static <R, C, V> ImmutableTable<R, C, V> copyOf(l3<? extends R, ? extends C, ? extends V> l3Var) {
        return l3Var instanceof ImmutableTable ? (ImmutableTable) l3Var : w(l3Var.t());
    }

    public static <R, C, V> ImmutableTable<R, C, V> of() {
        return (ImmutableTable<R, C, V>) h3.c;
    }

    public static <R, C, V> ImmutableTable<R, C, V> of(R r, C c, V v) {
        return new b3(r, c, v);
    }

    static <R, C, V> l3.a<R, C, V> q(R r, C c, V v) {
        return Tables.immutableCell(Preconditions.checkNotNull(r, "rowKey"), Preconditions.checkNotNull(c, "columnKey"), Preconditions.checkNotNull(v, "value"));
    }

    static <R, C, V> ImmutableTable<R, C, V> w(Iterable<? extends l3.a<? extends R, ? extends C, ? extends V>> iterable) {
        a aVarBuilder = builder();
        Iterator<? extends l3.a<? extends R, ? extends C, ? extends V>> it = iterable.iterator();
        while (it.hasNext()) {
            aVarBuilder.c(it.next());
        }
        return aVarBuilder.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.s
    /* JADX INFO: renamed from: A */
    public abstract n1<V> f();

    @Override // com.google.common.collect.l3
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public ImmutableSet<R> h() {
        return j().keySet();
    }

    @Override // com.google.common.collect.l3
    /* JADX INFO: renamed from: C */
    public abstract ImmutableMap<R, Map<C, V>> j();

    @Override // com.google.common.collect.s, com.google.common.collect.l3
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public n1<V> values() {
        return (n1) super.values();
    }

    @Override // com.google.common.collect.s, com.google.common.collect.l3
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.s, com.google.common.collect.l3
    public boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    @Override // com.google.common.collect.s, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.s
    public /* bridge */ /* synthetic */ Object g(Object obj, Object obj2) {
        return super.g(obj, obj2);
    }

    @Override // com.google.common.collect.s, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.s
    public /* bridge */ /* synthetic */ boolean i() {
        return super.i();
    }

    @Override // com.google.common.collect.s
    final Iterator<V> m() {
        throw new AssertionError("should never be called");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.s
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public final o3<l3.a<R, C, V>> c() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.s, com.google.common.collect.l3
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public ImmutableSet<l3.a<R, C, V>> t() {
        return (ImmutableSet) super.t();
    }

    @Override // com.google.common.collect.l3
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public ImmutableSet<C> z() {
        return n().keySet();
    }

    @Override // com.google.common.collect.s
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.l3
    /* JADX INFO: renamed from: u */
    public abstract ImmutableMap<C, Map<R, V>> n();

    @Override // com.google.common.collect.s, com.google.common.collect.l3
    @Deprecated
    public final V v(R r, C c, V v) {
        throw new UnsupportedOperationException();
    }

    final Object writeReplace() {
        return y();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.s
    /* JADX INFO: renamed from: x */
    public abstract ImmutableSet<l3.a<R, C, V>> e();

    abstract b y();
}
