package com.google.common.collect;

import java.util.Map;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: compiled from: RowSortedTable.java */
/* JADX INFO: loaded from: classes3.dex */
public interface x2<R, C, V> extends l3<R, C, V> {
    @Override // com.google.common.collect.l3
    SortedSet<R> h();

    @Override // com.google.common.collect.l3
    SortedMap<R, Map<C, V>> j();
}
