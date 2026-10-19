package com.google.zxing.client.result;

/* JADX INFO: compiled from: URLTOResultParser.java */
/* JADX INFO: loaded from: classes3.dex */
public final class a0 extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public y i(com.google.zxing.d dVar) {
        int iIndexOf;
        String strC = ResultParser.c(dVar);
        if ((strC.startsWith("urlto:") || strC.startsWith("URLTO:")) && (iIndexOf = strC.indexOf(58, 6)) >= 0) {
            return new y(strC.substring(iIndexOf + 1), iIndexOf > 6 ? strC.substring(6, iIndexOf) : null);
        }
        return null;
    }
}
