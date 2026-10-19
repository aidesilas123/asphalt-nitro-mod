package com.tapjoy.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class h7 extends IllegalArgumentException {
    public h7(int i, Class cls) {
        super("Unknown enum tag " + i + " for " + cls.getCanonicalName());
    }
}
