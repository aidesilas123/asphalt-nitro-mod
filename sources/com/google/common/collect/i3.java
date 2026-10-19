package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.Maps;
import java.util.Comparator;
import java.util.Map;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: compiled from: StandardRowSortedTable.java */
/* JADX INFO: loaded from: classes3.dex */
class i3<R, C, V> extends j3<R, C, V> implements x2<R, C, V> {
    private static final long serialVersionUID = 0;

    /* JADX INFO: compiled from: StandardRowSortedTable.java */
    private class b extends j3<R, C, V>.h implements SortedMap<R, Map<C, V>> {
        private b() {
            super();
        }

        @Override // java.util.SortedMap
        public Comparator<? super R> comparator() {
            return i3.this.I().comparator();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.o0
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public SortedSet<R> h() {
            return new Maps.d0(this);
        }

        @Override // java.util.SortedMap
        public R firstKey() {
            return (R) i3.this.I().firstKey();
        }

        @Override // com.google.common.collect.Maps.o0, java.util.AbstractMap, java.util.Map, java.util.SortedMap
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public SortedSet<R> keySet() {
            return (SortedSet) super.keySet();
        }

        @Override // java.util.SortedMap
        public SortedMap<R, Map<C, V>> headMap(R r) {
            Preconditions.checkNotNull(r);
            return new i3(i3.this.I().headMap(r), i3.this.f3779d).j();
        }

        @Override // java.util.SortedMap
        public R lastKey() {
            return (R) i3.this.I().lastKey();
        }

        @Override // java.util.SortedMap
        public SortedMap<R, Map<C, V>> subMap(R r, R r2) {
            Preconditions.checkNotNull(r);
            Preconditions.checkNotNull(r2);
            return new i3(i3.this.I().subMap(r, r2), i3.this.f3779d).j();
        }

        @Override // java.util.SortedMap
        public SortedMap<R, Map<C, V>> tailMap(R r) {
            Preconditions.checkNotNull(r);
            return new i3(i3.this.I().tailMap(r), i3.this.f3779d).j();
        }
    }

    i3(SortedMap<R, Map<C, V>> sortedMap, com.google.common.base.m<? extends Map<C, V>> mVar) {
        super(sortedMap, mVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SortedMap<R, Map<C, V>> I() {
        return (SortedMap) this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.j3
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public SortedMap<R, Map<C, V>> A() {
        return new b();
    }

    @Override // com.google.common.collect.j3, com.google.common.collect.l3
    public SortedSet<R> h() {
        return (SortedSet) j().keySet();
    }

    @Override // com.google.common.collect.j3, com.google.common.collect.l3
    public SortedMap<R, Map<C, V>> j() {
        return (SortedMap) super.j();
    }
}
