package com.google.zxing.datamatrix.encoder;

import com.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: compiled from: DataMatrixSymbolInfo144.java */
/* JADX INFO: loaded from: classes3.dex */
final class d extends SymbolInfo {
    d() {
        super(false, 1558, IronSourceError.ERROR_DO_BN_LOAD_DURING_SHOW, 22, 22, 36, -1, 62);
    }

    @Override // com.google.zxing.datamatrix.encoder.SymbolInfo
    public int b(int i) {
        return i <= 8 ? 156 : 155;
    }

    @Override // com.google.zxing.datamatrix.encoder.SymbolInfo
    public int f() {
        return 10;
    }
}
