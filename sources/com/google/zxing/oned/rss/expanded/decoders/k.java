package com.google.zxing.oned.rss.expanded.decoders;

/* JADX INFO: compiled from: GeneralAppIdDecoder.java */
/* JADX INFO: loaded from: classes3.dex */
final class k {
    private final com.google.zxing.common.a a;
    private final CurrentParsingState b = new CurrentParsingState();
    private final StringBuilder c = new StringBuilder();

    k(com.google.zxing.common.a aVar) {
        this.a = aVar;
    }

    static int a(com.google.zxing.common.a aVar, int i, int i2) {
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            if (aVar.h(i + i4)) {
                i3 |= 1 << ((i2 - i4) - 1);
            }
        }
        return i3;
    }
}
