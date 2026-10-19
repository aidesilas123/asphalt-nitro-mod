package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import java.util.Map;
import java.util.NavigableMap;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes3.dex */
public class TreeRangeSet<C extends Comparable<?>> extends m<C> implements Serializable {
    final NavigableMap<e0<C>, Range<C>> a;
    private transient Set<Range<C>> b;

    final class a extends u0<Range<C>> implements Set<Range<C>> {
        final Collection<Range<C>> a;

        a(TreeRangeSet treeRangeSet, Collection<Range<C>> collection) {
            this.a = collection;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.d1
        public Collection<Range<C>> C() {
            return this.a;
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            return Sets.a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return Sets.b(this);
        }
    }

    private TreeRangeSet(NavigableMap<e0<C>, Range<C>> navigableMap) {
        this.a = navigableMap;
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create() {
        return new TreeRangeSet<>(new TreeMap());
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create(l2<C> l2Var) {
        TreeRangeSet<C> treeRangeSetCreate = create();
        treeRangeSetCreate.d(l2Var);
        return treeRangeSetCreate;
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create(Iterable<Range<C>> iterable) {
        TreeRangeSet<C> treeRangeSetCreate = create();
        treeRangeSetCreate.e(iterable);
        return treeRangeSetCreate;
    }

    private void f(Range<C> range) {
        if (range.j()) {
            this.a.remove(range.b);
        } else {
            this.a.put(range.b, range);
        }
    }

    @Override // com.google.common.collect.l2
    public boolean a(Range<C> range) {
        Preconditions.checkNotNull(range);
        Map.Entry<e0<C>, Range<C>> entryFloorEntry = this.a.floorEntry(range.b);
        return entryFloorEntry != null && entryFloorEntry.getValue().e(range);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.google.common.collect.m
    public void b(Range<C> range) {
        Preconditions.checkNotNull(range);
        if (range.j()) {
            return;
        }
        e0<C> e0Var = range.b;
        e0<C> e0Var2 = range.c;
        Map.Entry<e0<C>, Range<C>> entryLowerEntry = this.a.lowerEntry(e0Var);
        if (entryLowerEntry != null) {
            Range<C> value = entryLowerEntry.getValue();
            if (value.c.compareTo(e0Var) >= 0) {
                if (value.c.compareTo(e0Var2) >= 0) {
                    e0Var2 = value.c;
                }
                e0Var = value.b;
            }
        }
        Map.Entry<e0<C>, Range<C>> entryFloorEntry = this.a.floorEntry(e0Var2);
        if (entryFloorEntry != null) {
            Range<C> value2 = entryFloorEntry.getValue();
            if (value2.c.compareTo(e0Var2) >= 0) {
                e0Var2 = value2.c;
            }
        }
        this.a.subMap(e0Var, e0Var2).clear();
        f(Range.d(e0Var, e0Var2));
    }

    @Override // com.google.common.collect.l2
    public Set<Range<C>> c() {
        Set<Range<C>> set = this.b;
        if (set != null) {
            return set;
        }
        a aVar = new a(this, this.a.values());
        this.b = aVar;
        return aVar;
    }

    @Override // com.google.common.collect.m
    public /* bridge */ /* synthetic */ void d(l2 l2Var) {
        super.d(l2Var);
    }

    @Override // com.google.common.collect.m
    public /* bridge */ /* synthetic */ void e(Iterable iterable) {
        super.e(iterable);
    }

    @Override // com.google.common.collect.m
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.m, com.google.common.collect.l2
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }
}
