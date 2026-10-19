package com.google.common.collect;

import java.lang.Comparable;
import java.util.Set;

/* JADX INFO: compiled from: RangeSet.java */
/* JADX INFO: loaded from: classes3.dex */
public interface l2<C extends Comparable> {
    boolean a(Range<C> range);

    Set<Range<C>> c();

    boolean isEmpty();
}
