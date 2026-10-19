package com.google.zxing.client.result;

import com.json.o2;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ResultParser {
    private static final ResultParser[] a = {new f(), new c(), new j(), new b(), new b0(), new e(), new c0(), new i(), new v(), new x(), new s(), new u(), new n(), new g0(), new a0(), new z(), new p(), new r(), new l(), new e0()};
    private static final Pattern b = Pattern.compile("\\d+");
    private static final Pattern c = Pattern.compile(o2.i.c);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Pattern f4285d = Pattern.compile(o2.i.b);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final String[] f4286e = new String[0];

    private static void a(CharSequence charSequence, Map<String, String> map) {
        String[] strArrSplit = f4285d.split(charSequence, 2);
        if (strArrSplit.length == 2) {
            try {
                map.put(strArrSplit[0], m(strArrSplit[1]));
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    private static int b(CharSequence charSequence, int i) {
        int i2 = 0;
        for (int i3 = i - 1; i3 >= 0 && charSequence.charAt(i3) == '\\'; i3--) {
            i2++;
        }
        return i2;
    }

    protected static String c(com.google.zxing.d dVar) {
        throw null;
    }

    protected static boolean d(CharSequence charSequence, int i) {
        return charSequence != null && i > 0 && i == charSequence.length() && b.matcher(charSequence).matches();
    }

    protected static boolean e(CharSequence charSequence, int i, int i2) {
        int i3;
        return charSequence != null && i2 > 0 && charSequence.length() >= (i3 = i2 + i) && b.matcher(charSequence.subSequence(i, i3)).matches();
    }

    static String[] f(String str, String str2, char c2, boolean z) {
        int length = str2.length();
        ArrayList arrayList = null;
        int i = 0;
        while (i < length) {
            int iIndexOf = str2.indexOf(str, i);
            if (iIndexOf < 0) {
                break;
            }
            int length2 = iIndexOf + str.length();
            ArrayList arrayList2 = arrayList;
            boolean z2 = true;
            int length3 = length2;
            while (z2) {
                int iIndexOf2 = str2.indexOf(c2, length3);
                if (iIndexOf2 < 0) {
                    length3 = str2.length();
                } else if (b(str2, iIndexOf2) % 2 != 0) {
                    length3 = iIndexOf2 + 1;
                } else {
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList(3);
                    }
                    String strL = l(str2.substring(length2, iIndexOf2));
                    if (z) {
                        strL = strL.trim();
                    }
                    if (!strL.isEmpty()) {
                        arrayList2.add(strL);
                    }
                    length3 = iIndexOf2 + 1;
                }
                z2 = false;
            }
            i = length3;
            arrayList = arrayList2;
        }
        if (arrayList == null || arrayList.isEmpty()) {
            return null;
        }
        return (String[]) arrayList.toArray(f4286e);
    }

    static String g(String str, String str2, char c2, boolean z) {
        String[] strArrF = f(str, str2, c2, z);
        if (strArrF == null) {
            return null;
        }
        return strArrF[0];
    }

    protected static String[] h(String str) {
        if (str == null) {
            return null;
        }
        return new String[]{str};
    }

    protected static int j(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        char c3 = 'a';
        if (c2 < 'a' || c2 > 'f') {
            c3 = 'A';
            if (c2 < 'A' || c2 > 'F') {
                return -1;
            }
        }
        return (c2 - c3) + 10;
    }

    static Map<String, String> k(String str) {
        int iIndexOf = str.indexOf(63);
        if (iIndexOf < 0) {
            return null;
        }
        HashMap map = new HashMap(3);
        for (String str2 : c.split(str.substring(iIndexOf + 1))) {
            a(str2, map);
        }
        return map;
    }

    protected static String l(String str) {
        int iIndexOf = str.indexOf(92);
        if (iIndexOf < 0) {
            return str;
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length - 1);
        sb.append(str.toCharArray(), 0, iIndexOf);
        boolean z = false;
        while (iIndexOf < length) {
            char cCharAt = str.charAt(iIndexOf);
            if (z || cCharAt != '\\') {
                sb.append(cCharAt);
                z = false;
            } else {
                z = true;
            }
            iIndexOf++;
        }
        return sb.toString();
    }

    static String m(String str) {
        try {
            return URLDecoder.decode(str, C.UTF8_NAME);
        } catch (UnsupportedEncodingException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public static ParsedResult parseResult(com.google.zxing.d dVar) {
        for (ResultParser resultParser : a) {
            ParsedResult parsedResultI = resultParser.i(dVar);
            if (parsedResultI != null) {
                return parsedResultI;
            }
        }
        throw null;
    }

    public abstract ParsedResult i(com.google.zxing.d dVar);
}
