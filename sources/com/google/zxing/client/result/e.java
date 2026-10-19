package com.google.zxing.client.result;

import java.util.ArrayList;

/* JADX INFO: compiled from: BizcardResultParser.java */
/* JADX INFO: loaded from: classes3.dex */
public final class e extends a {
    private static String p(String str, String str2) {
        if (str == null) {
            return str2;
        }
        if (str2 == null) {
            return str;
        }
        return str + ' ' + str2;
    }

    private static String[] q(String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList(3);
        if (str != null) {
            arrayList.add(str);
        }
        if (str2 != null) {
            arrayList.add(str2);
        }
        if (str3 != null) {
            arrayList.add(str3);
        }
        int size = arrayList.size();
        if (size == 0) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[size]);
    }

    @Override // com.google.zxing.client.result.ResultParser
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public d i(com.google.zxing.d dVar) {
        String strC = ResultParser.c(dVar);
        if (!strC.startsWith("BIZCARD:")) {
            return null;
        }
        String strP = p(a.o("N:", strC, true), a.o("X:", strC, true));
        String strO = a.o("T:", strC, true);
        String strO2 = a.o("C:", strC, true);
        return new d(ResultParser.h(strP), null, null, q(a.o("B:", strC, true), a.o("M:", strC, true), a.o("F:", strC, true)), null, ResultParser.h(a.o("E:", strC, true)), null, null, null, a.n("A:", strC), null, strO2, null, strO, null, null);
    }
}
