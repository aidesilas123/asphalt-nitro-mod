package com.google.zxing.client.result;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: compiled from: SMSMMSResultParser.java */
/* JADX INFO: loaded from: classes3.dex */
public final class s extends ResultParser {
    private static void n(Collection<String> collection, Collection<String> collection2, String str) {
        int iIndexOf = str.indexOf(59);
        if (iIndexOf < 0) {
            collection.add(str);
            collection2.add(null);
        } else {
            collection.add(str.substring(0, iIndexOf));
            String strSubstring = str.substring(iIndexOf + 1);
            collection2.add(strSubstring.startsWith("via=") ? strSubstring.substring(4) : null);
        }
    }

    @Override // com.google.zxing.client.result.ResultParser
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public t i(com.google.zxing.d dVar) {
        String str;
        String strC = ResultParser.c(dVar);
        String str2 = null;
        if (!strC.startsWith("sms:") && !strC.startsWith("SMS:") && !strC.startsWith("mms:") && !strC.startsWith("MMS:")) {
            return null;
        }
        Map<String, String> mapK = ResultParser.k(strC);
        boolean z = false;
        if (mapK == null || mapK.isEmpty()) {
            str = null;
        } else {
            str2 = mapK.get("subject");
            str = mapK.get("body");
            z = true;
        }
        int iIndexOf = strC.indexOf(63, 4);
        String strSubstring = (iIndexOf < 0 || !z) ? strC.substring(4) : strC.substring(4, iIndexOf);
        int i = -1;
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        while (true) {
            int i2 = i + 1;
            int iIndexOf2 = strSubstring.indexOf(44, i2);
            if (iIndexOf2 <= i) {
                n(arrayList, arrayList2, strSubstring.substring(i2));
                String[] strArr = ResultParser.f4286e;
                return new t((String[]) arrayList.toArray(strArr), (String[]) arrayList2.toArray(strArr), str2, str);
            }
            n(arrayList, arrayList2, strSubstring.substring(i2, iIndexOf2));
            i = iIndexOf2;
        }
    }
}
