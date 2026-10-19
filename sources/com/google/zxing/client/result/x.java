package com.google.zxing.client.result;

/* JADX INFO: compiled from: TelResultParser.java */
/* JADX INFO: loaded from: classes3.dex */
public final class x extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public w i(com.google.zxing.d dVar) {
        String str;
        String strC = ResultParser.c(dVar);
        if (!strC.startsWith("tel:") && !strC.startsWith("TEL:")) {
            return null;
        }
        if (strC.startsWith("TEL:")) {
            str = "tel:" + strC.substring(4);
        } else {
            str = strC;
        }
        int iIndexOf = strC.indexOf(63, 4);
        return new w(iIndexOf < 0 ? strC.substring(4) : strC.substring(4, iIndexOf), str, null);
    }
}
