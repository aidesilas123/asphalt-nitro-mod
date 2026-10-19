package com.google.common.collect;

/* JADX INFO: compiled from: EmptyImmutableListMultimap.java */
/* JADX INFO: loaded from: classes3.dex */
class k0 extends ImmutableListMultimap<Object, Object> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final k0 f3792f = new k0();
    private static final long serialVersionUID = 0;

    private k0() {
        super(ImmutableMap.of(), 0);
    }

    private Object readResolve() {
        return f3792f;
    }
}
