package com.google.zxing.client.result;

import java.util.ArrayList;

/* JADX INFO: compiled from: AddressBookAUResultParser.java */
/* JADX INFO: loaded from: classes3.dex */
public final class b extends ResultParser {
    private static String[] n(String str, String str2) {
        ArrayList arrayList = null;
        for (int i = 1; i <= 3; i++) {
            String strG = ResultParser.g(str + i + ':', str2, '\r', true);
            if (strG == null) {
                break;
            }
            if (arrayList == null) {
                arrayList = new ArrayList(3);
            }
            arrayList.add(strG);
        }
        if (arrayList == null) {
            return null;
        }
        return (String[]) arrayList.toArray(ResultParser.f4286e);
    }

    @Override // com.google.zxing.client.result.ResultParser
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public d i(com.google.zxing.d dVar) {
        String strC = ResultParser.c(dVar);
        if (!strC.contains("MEMORY") || !strC.contains("\r\n")) {
            return null;
        }
        String strG = ResultParser.g("NAME1:", strC, '\r', true);
        String strG2 = ResultParser.g("NAME2:", strC, '\r', true);
        String[] strArrN = n("TEL", strC);
        String[] strArrN2 = n("MAIL", strC);
        String strG3 = ResultParser.g("MEMORY:", strC, '\r', false);
        String strG4 = ResultParser.g("ADD:", strC, '\r', true);
        return new d(ResultParser.h(strG), null, strG2, strArrN, null, strArrN2, null, null, strG3, strG4 != null ? new String[]{strG4} : null, null, null, null, null, null, null);
    }
}
