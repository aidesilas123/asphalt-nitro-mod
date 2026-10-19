package com.google.zxing.oned.rss.expanded.decoders;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractExpandedDecoder {
    private final com.google.zxing.common.a a;
    private final k b;

    AbstractExpandedDecoder(com.google.zxing.common.a aVar) {
        this.a = aVar;
        this.b = new k(aVar);
    }

    public static AbstractExpandedDecoder createDecoder(com.google.zxing.common.a aVar) {
        if (aVar.h(1)) {
            return new g(aVar);
        }
        if (!aVar.h(2)) {
            return new j(aVar);
        }
        int iA = k.a(aVar, 1, 4);
        if (iA == 4) {
            return new a(aVar);
        }
        if (iA == 5) {
            return new b(aVar);
        }
        int iA2 = k.a(aVar, 1, 5);
        if (iA2 == 12) {
            return new c(aVar);
        }
        if (iA2 == 13) {
            return new d(aVar);
        }
        switch (k.a(aVar, 1, 7)) {
            case 56:
                return new e(aVar, "310", "11");
            case 57:
                return new e(aVar, "320", "11");
            case 58:
                return new e(aVar, "310", "13");
            case 59:
                return new e(aVar, "320", "13");
            case 60:
                return new e(aVar, "310", "15");
            case 61:
                return new e(aVar, "320", "15");
            case 62:
                return new e(aVar, "310", "17");
            case 63:
                return new e(aVar, "320", "17");
            default:
                throw new IllegalStateException("unknown decoder: " + aVar);
        }
    }
}
