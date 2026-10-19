package com.google.zxing.datamatrix.encoder;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;

/* JADX INFO: loaded from: classes3.dex */
public class SymbolInfo {
    static final SymbolInfo[] a;
    private static SymbolInfo[] b;
    private final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f4354d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f4355e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f4356f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f4357g;
    private final int h;
    private final int i;
    private final int j;

    static {
        SymbolInfo[] symbolInfoArr = {new SymbolInfo(false, 3, 5, 8, 8, 1), new SymbolInfo(false, 5, 7, 10, 10, 1), new SymbolInfo(true, 5, 7, 16, 6, 1), new SymbolInfo(false, 8, 10, 12, 12, 1), new SymbolInfo(true, 10, 11, 14, 6, 2), new SymbolInfo(false, 12, 12, 14, 14, 1), new SymbolInfo(true, 16, 14, 24, 10, 1), new SymbolInfo(false, 18, 14, 16, 16, 1), new SymbolInfo(false, 22, 18, 18, 18, 1), new SymbolInfo(true, 22, 18, 16, 10, 2), new SymbolInfo(false, 30, 20, 20, 20, 1), new SymbolInfo(true, 32, 24, 16, 14, 2), new SymbolInfo(false, 36, 24, 22, 22, 1), new SymbolInfo(false, 44, 28, 24, 24, 1), new SymbolInfo(true, 49, 28, 22, 14, 2), new SymbolInfo(false, 62, 36, 14, 14, 4), new SymbolInfo(false, 86, 42, 16, 16, 4), new SymbolInfo(false, 114, 48, 18, 18, 4), new SymbolInfo(false, 144, 56, 20, 20, 4), new SymbolInfo(false, 174, 68, 22, 22, 4), new SymbolInfo(false, 204, 84, 24, 24, 4, 102, 42), new SymbolInfo(false, 280, 112, 14, 14, 16, IronSourceConstants.USING_CACHE_FOR_INIT_EVENT, 56), new SymbolInfo(false, 368, 144, 16, 16, 16, 92, 36), new SymbolInfo(false, 456, PsExtractor.AUDIO_STREAM, 18, 18, 16, 114, 48), new SymbolInfo(false, 576, 224, 20, 20, 16, 144, 56), new SymbolInfo(false, 696, 272, 22, 22, 16, 174, 68), new SymbolInfo(false, 816, 336, 24, 24, 16, 136, 56), new SymbolInfo(false, 1050, TTAdConstant.DOWNLOAD_URL_CODE, 18, 18, 36, 175, 68), new SymbolInfo(false, 1304, 496, 20, 20, 36, 163, 62), new d()};
        a = symbolInfoArr;
        b = symbolInfoArr;
    }

    public SymbolInfo(boolean z, int i, int i2, int i3, int i4, int i5) {
        this(z, i, i2, i3, i4, i5, i, i2);
    }

    SymbolInfo(boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.c = z;
        this.f4354d = i;
        this.f4355e = i2;
        this.f4356f = i3;
        this.f4357g = i4;
        this.h = i5;
        this.i = i6;
        this.j = i7;
    }

    private int e() {
        int i = this.h;
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2 && i != 4) {
                if (i == 16) {
                    return 4;
                }
                if (i == 36) {
                    return 6;
                }
                throw new IllegalStateException("Cannot handle this number of data regions");
            }
        }
        return i2;
    }

    private int k() {
        int i = this.h;
        if (i == 1 || i == 2) {
            return 1;
        }
        if (i == 4) {
            return 2;
        }
        if (i == 16) {
            return 4;
        }
        if (i == 36) {
            return 6;
        }
        throw new IllegalStateException("Cannot handle this number of data regions");
    }

    private static SymbolInfo l(int i, SymbolShapeHint symbolShapeHint, boolean z) {
        return lookup(i, symbolShapeHint, null, null, z);
    }

    public static SymbolInfo lookup(int i) {
        return l(i, SymbolShapeHint.FORCE_NONE, true);
    }

    public static SymbolInfo lookup(int i, SymbolShapeHint symbolShapeHint) {
        return l(i, symbolShapeHint, true);
    }

    public static SymbolInfo lookup(int i, SymbolShapeHint symbolShapeHint, com.google.zxing.b bVar, com.google.zxing.b bVar2, boolean z) {
        for (SymbolInfo symbolInfo : b) {
            if (!(symbolShapeHint == SymbolShapeHint.FORCE_SQUARE && symbolInfo.c) && ((symbolShapeHint != SymbolShapeHint.FORCE_RECTANGLE || symbolInfo.c) && ((bVar == null || (symbolInfo.j() >= bVar.b() && symbolInfo.i() >= bVar.a())) && ((bVar2 == null || (symbolInfo.j() <= bVar2.b() && symbolInfo.i() <= bVar2.a())) && i <= symbolInfo.f4354d)))) {
                return symbolInfo;
            }
        }
        if (!z) {
            return null;
        }
        throw new IllegalArgumentException("Can't find a symbol arrangement that matches the message. Data codewords: " + i);
    }

    public static SymbolInfo lookup(int i, boolean z, boolean z2) {
        return l(i, z ? SymbolShapeHint.FORCE_NONE : SymbolShapeHint.FORCE_SQUARE, z2);
    }

    public static void overrideSymbolSet(SymbolInfo[] symbolInfoArr) {
        b = symbolInfoArr;
    }

    public final int a() {
        return this.f4354d;
    }

    public int b(int i) {
        return this.i;
    }

    public final int c() {
        return this.f4355e;
    }

    public final int d(int i) {
        return this.j;
    }

    public int f() {
        return this.f4354d / this.i;
    }

    public final int g() {
        return k() * this.f4357g;
    }

    public final int h() {
        return e() * this.f4356f;
    }

    public final int i() {
        return g() + (k() * 2);
    }

    public final int j() {
        return h() + (e() * 2);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.c ? "Rectangular Symbol:" : "Square Symbol:");
        sb.append(" data region ");
        sb.append(this.f4356f);
        sb.append('x');
        sb.append(this.f4357g);
        sb.append(", symbol size ");
        sb.append(j());
        sb.append('x');
        sb.append(i());
        sb.append(", symbol data size ");
        sb.append(h());
        sb.append('x');
        sb.append(g());
        sb.append(", codewords ");
        sb.append(this.f4354d);
        sb.append('+');
        sb.append(this.f4355e);
        return sb.toString();
    }
}
