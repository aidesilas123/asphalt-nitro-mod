package com.google.zxing.client.result;

import com.facebook.share.internal.ShareConstants;
import com.json.o2;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: VCardResultParser.java */
/* JADX INFO: loaded from: classes3.dex */
public final class b0 extends ResultParser {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Pattern f4287f = Pattern.compile("BEGIN:VCARD", 2);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Pattern f4288g = Pattern.compile("\\d{4}-?\\d{2}-?\\d{2}");
    private static final Pattern h = Pattern.compile("\r\n[ \t]");
    private static final Pattern i = Pattern.compile("\\\\[nN]");
    private static final Pattern j = Pattern.compile("\\\\([,;\\\\])");
    private static final Pattern k = Pattern.compile(o2.i.b);
    private static final Pattern l = Pattern.compile(";");
    private static final Pattern m = Pattern.compile("(?<!\\\\);+");
    private static final Pattern n = Pattern.compile(",");
    private static final Pattern o = Pattern.compile("[;,]");

    private static String n(CharSequence charSequence, String str) {
        char cCharAt;
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i2 = 0;
        while (i2 < length) {
            char cCharAt2 = charSequence.charAt(i2);
            if (cCharAt2 != '\n' && cCharAt2 != '\r') {
                if (cCharAt2 != '=') {
                    t(byteArrayOutputStream, str, sb);
                    sb.append(cCharAt2);
                } else if (i2 < length - 2 && (cCharAt = charSequence.charAt(i2 + 1)) != '\r' && cCharAt != '\n') {
                    i2 += 2;
                    char cCharAt3 = charSequence.charAt(i2);
                    int iJ = ResultParser.j(cCharAt);
                    int iJ2 = ResultParser.j(cCharAt3);
                    if (iJ >= 0 && iJ2 >= 0) {
                        byteArrayOutputStream.write((iJ << 4) + iJ2);
                    }
                }
            }
            i2++;
        }
        t(byteArrayOutputStream, str, sb);
        return sb.toString();
    }

    private static void o(Iterable<List<String>> iterable) {
        int iIndexOf;
        if (iterable != null) {
            for (List<String> list : iterable) {
                String str = list.get(0);
                String[] strArr = new String[5];
                int i2 = 0;
                int i3 = 0;
                while (i2 < 4 && (iIndexOf = str.indexOf(59, i3)) >= 0) {
                    strArr[i2] = str.substring(i3, iIndexOf);
                    i2++;
                    i3 = iIndexOf + 1;
                }
                strArr[i2] = str.substring(i3);
                StringBuilder sb = new StringBuilder(100);
                s(strArr, 3, sb);
                s(strArr, 1, sb);
                s(strArr, 2, sb);
                s(strArr, 0, sb);
                s(strArr, 4, sb);
                list.set(0, sb.toString().trim());
            }
        }
    }

    private static boolean p(CharSequence charSequence) {
        return charSequence == null || f4288g.matcher(charSequence).matches();
    }

    static List<String> q(CharSequence charSequence, String str, boolean z, boolean z2) {
        List<List<String>> listR = r(charSequence, str, z, z2);
        if (listR == null || listR.isEmpty()) {
            return null;
        }
        return listR.get(0);
    }

    static List<List<String>> r(CharSequence charSequence, String str, boolean z, boolean z2) {
        ArrayList arrayList;
        boolean z3;
        String str2;
        String str3;
        int iIndexOf;
        int i2;
        String strReplaceAll;
        int length = str.length();
        int i3 = 0;
        int i4 = 0;
        ArrayList arrayList2 = null;
        while (i4 < length) {
            int i5 = 2;
            Matcher matcher = Pattern.compile("(?:^|\n)" + ((Object) charSequence) + "(?:;([^:]*))?:", 2).matcher(str);
            if (i4 > 0) {
                i4--;
            }
            if (!matcher.find(i4)) {
                break;
            }
            int iEnd = matcher.end(i3);
            String strGroup = matcher.group(1);
            if (strGroup != null) {
                String[] strArrSplit = l.split(strGroup);
                int length2 = strArrSplit.length;
                int i6 = 0;
                arrayList = null;
                z3 = false;
                str2 = null;
                str3 = null;
                while (i6 < length2) {
                    String str4 = strArrSplit[i6];
                    if (arrayList == null) {
                        arrayList = new ArrayList(1);
                    }
                    arrayList.add(str4);
                    String[] strArrSplit2 = k.split(str4, i5);
                    if (strArrSplit2.length > 1) {
                        String str5 = strArrSplit2[0];
                        String str6 = strArrSplit2[1];
                        if ("ENCODING".equalsIgnoreCase(str5) && "QUOTED-PRINTABLE".equalsIgnoreCase(str6)) {
                            z3 = true;
                        } else if ("CHARSET".equalsIgnoreCase(str5)) {
                            str2 = str6;
                        } else if ("VALUE".equalsIgnoreCase(str5)) {
                            str3 = str6;
                        }
                    }
                    i6++;
                    i5 = 2;
                }
            } else {
                arrayList = null;
                z3 = false;
                str2 = null;
                str3 = null;
            }
            int i7 = iEnd;
            while (true) {
                iIndexOf = str.indexOf(10, i7);
                if (iIndexOf < 0) {
                    break;
                }
                if (iIndexOf < str.length() - 1) {
                    int i8 = iIndexOf + 1;
                    if (str.charAt(i8) == ' ' || str.charAt(i8) == '\t') {
                        i7 = iIndexOf + 2;
                    }
                }
                if (!z3 || ((iIndexOf < 1 || str.charAt(iIndexOf - 1) != '=') && (iIndexOf < 2 || str.charAt(iIndexOf - 2) != '='))) {
                    break;
                }
                i7 = iIndexOf + 1;
            }
            if (iIndexOf < 0) {
                i2 = length;
            } else if (iIndexOf <= iEnd) {
                i2 = iIndexOf + 1;
            } else {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList(1);
                }
                if (iIndexOf >= 1 && str.charAt(iIndexOf - 1) == '\r') {
                    iIndexOf--;
                }
                String strSubstring = str.substring(iEnd, iIndexOf);
                if (z) {
                    strSubstring = strSubstring.trim();
                }
                if (z3) {
                    strReplaceAll = n(strSubstring, str2);
                    if (z2) {
                        strReplaceAll = m.matcher(strReplaceAll).replaceAll("\n").trim();
                    }
                } else {
                    if (z2) {
                        strSubstring = m.matcher(strSubstring).replaceAll("\n").trim();
                    }
                    strReplaceAll = j.matcher(i.matcher(h.matcher(strSubstring).replaceAll("")).replaceAll("\n")).replaceAll("$1");
                }
                if (ShareConstants.MEDIA_URI.equals(str3)) {
                    try {
                        strReplaceAll = URI.create(strReplaceAll).getSchemeSpecificPart();
                    } catch (IllegalArgumentException unused) {
                    }
                }
                if (arrayList == null) {
                    ArrayList arrayList3 = new ArrayList(1);
                    arrayList3.add(strReplaceAll);
                    arrayList2.add(arrayList3);
                    i2 = iIndexOf + 1;
                } else {
                    arrayList.add(0, strReplaceAll);
                    arrayList2.add(arrayList);
                    i2 = iIndexOf + 1;
                }
            }
            i4 = i2;
            i3 = 0;
        }
        return arrayList2;
    }

    private static void s(String[] strArr, int i2, StringBuilder sb) {
        if (strArr[i2] == null || strArr[i2].isEmpty()) {
            return;
        }
        if (sb.length() > 0) {
            sb.append(' ');
        }
        sb.append(strArr[i2]);
    }

    private static void t(ByteArrayOutputStream byteArrayOutputStream, String str, StringBuilder sb) {
        String str2;
        if (byteArrayOutputStream.size() > 0) {
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (str == null) {
                str2 = new String(byteArray, StandardCharsets.UTF_8);
            } else {
                try {
                    str2 = new String(byteArray, str);
                } catch (UnsupportedEncodingException unused) {
                    str2 = new String(byteArray, StandardCharsets.UTF_8);
                }
            }
            byteArrayOutputStream.reset();
            sb.append(str2);
        }
    }

    private static String v(List<String> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    private static String[] w(Collection<List<String>> collection) {
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<List<String>> it = collection.iterator();
        while (it.hasNext()) {
            String str = it.next().get(0);
            if (str != null && !str.isEmpty()) {
                arrayList.add(str);
            }
        }
        return (String[]) arrayList.toArray(ResultParser.f4286e);
    }

    private static String[] x(Collection<List<String>> collection) {
        String strSubstring;
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (List<String> list : collection) {
            String str = list.get(0);
            if (str != null && !str.isEmpty()) {
                int i2 = 1;
                while (true) {
                    if (i2 >= list.size()) {
                        strSubstring = null;
                        break;
                    }
                    strSubstring = list.get(i2);
                    int iIndexOf = strSubstring.indexOf(61);
                    if (iIndexOf < 0) {
                        break;
                    }
                    if ("TYPE".equalsIgnoreCase(strSubstring.substring(0, iIndexOf))) {
                        strSubstring = strSubstring.substring(iIndexOf + 1);
                        break;
                    }
                    i2++;
                }
                arrayList.add(strSubstring);
            }
        }
        return (String[]) arrayList.toArray(ResultParser.f4286e);
    }

    @Override // com.google.zxing.client.result.ResultParser
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public d i(com.google.zxing.d dVar) {
        String strC = ResultParser.c(dVar);
        Matcher matcher = f4287f.matcher(strC);
        if (!matcher.find() || matcher.start() != 0) {
            return null;
        }
        List<List<String>> listR = r("FN", strC, true, false);
        if (listR == null) {
            listR = r("N", strC, true, false);
            o(listR);
        }
        List<String> listQ = q("NICKNAME", strC, true, false);
        String[] strArrSplit = listQ == null ? null : n.split(listQ.get(0));
        List<List<String>> listR2 = r("TEL", strC, true, false);
        List<List<String>> listR3 = r("EMAIL", strC, true, false);
        List<String> listQ2 = q("NOTE", strC, false, false);
        List<List<String>> listR4 = r("ADR", strC, true, true);
        List<String> listQ3 = q("ORG", strC, true, true);
        List<String> listQ4 = q("BDAY", strC, true, false);
        List<String> list = (listQ4 == null || p(listQ4.get(0))) ? listQ4 : null;
        List<String> listQ5 = q(ShareConstants.TITLE, strC, true, false);
        List<List<String>> listR5 = r("URL", strC, true, false);
        List<String> listQ6 = q("IMPP", strC, true, false);
        List<String> listQ7 = q("GEO", strC, true, false);
        String[] strArrSplit2 = listQ7 == null ? null : o.split(listQ7.get(0));
        return new d(w(listR), strArrSplit, null, w(listR2), x(listR2), w(listR3), x(listR3), v(listQ6), v(listQ2), w(listR4), x(listR4), v(listQ3), v(list), v(listQ5), w(listR5), (strArrSplit2 == null || strArrSplit2.length == 2) ? strArrSplit2 : null);
    }
}
