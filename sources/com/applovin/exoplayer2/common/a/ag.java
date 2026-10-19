package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.base.Preconditions;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
final class ag extends ai<Comparable> implements Serializable {
    static final ag qN = new ag();

    private ag() {
    }

    @Override // com.applovin.exoplayer2.common.a.ai, java.util.Comparator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(Comparable comparable, Comparable comparable2) {
        Preconditions.checkNotNull(comparable);
        Preconditions.checkNotNull(comparable2);
        return comparable.compareTo(comparable2);
    }

    @Override // com.applovin.exoplayer2.common.a.ai
    public <S extends Comparable> ai<S> gO() {
        return an.qX;
    }

    public String toString() {
        return "Ordering.natural()";
    }
}
