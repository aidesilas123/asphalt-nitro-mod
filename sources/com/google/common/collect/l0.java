package com.google.common.collect;

/* JADX INFO: compiled from: EmptyImmutableSetMultimap.java */
/* JADX INFO: loaded from: classes3.dex */
class l0 extends ImmutableSetMultimap<Object, Object> {
    static final l0 h = new l0();
    private static final long serialVersionUID = 0;

    private l0() {
        super(ImmutableMap.of(), 0, null);
    }

    private Object readResolve() {
        return h;
    }
}
