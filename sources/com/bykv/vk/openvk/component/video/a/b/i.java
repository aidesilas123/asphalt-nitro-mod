package com.bykv.vk.openvk.component.video.a.b;

import android.net.Uri;
import android.text.TextUtils;
import com.facebook.internal.security.CertificateUtil;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.o2;
import com.mbridge.msdk.foundation.download.Command;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: Request.java */
/* JADX INFO: loaded from: classes.dex */
public class i {
    public final c a;
    public final List<b> b;
    public final a c;

    /* JADX INFO: compiled from: Request.java */
    static final class a {
        final int a;
        final String b;
        final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final int f448d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final int f449e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final String f450f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final List<String> f451g;

        private a(int i, String str, String str2, int i2, int i3, String str3, List<String> list) {
            this.a = i;
            this.b = str;
            this.c = str2;
            this.f448d = i2;
            this.f449e = i3;
            this.f450f = str3;
            this.f451g = list;
        }

        static a a(c cVar, List<b> list) throws d {
            String str;
            int i;
            int i2;
            int iIndexOf = cVar.b.indexOf("?");
            if (iIndexOf == -1) {
                throw new d("path format error, path: " + cVar.b);
            }
            ArrayList arrayList = new ArrayList();
            String str2 = null;
            String strDecode = null;
            String strDecode2 = null;
            int i3 = 0;
            for (String str3 : cVar.b.substring(iIndexOf + 1).split(o2.i.c)) {
                String[] strArrSplit = str3.split(o2.i.b);
                if (strArrSplit.length == 2) {
                    if ("rk".equals(strArrSplit[0])) {
                        strDecode = Uri.decode(strArrSplit[1]);
                    } else if (CampaignEx.JSON_KEY_AD_K.equals(strArrSplit[0])) {
                        strDecode2 = Uri.decode(strArrSplit[1]);
                    } else if (strArrSplit[0].startsWith("u")) {
                        arrayList.add(Uri.decode(strArrSplit[1]));
                    } else if (InneractiveMediationDefs.GENDER_FEMALE.equals(strArrSplit[0]) && com.bykv.vk.openvk.component.video.a.c.a.b(strArrSplit[1]) == 1) {
                        i3 = 1;
                    }
                }
            }
            if (TextUtils.isEmpty(strDecode) || TextUtils.isEmpty(strDecode2)) {
                throw new d("rawKey or key is empty, path: " + cVar.b);
            }
            if (list != null) {
                i2 = 0;
                int i4 = 0;
                for (b bVar : list) {
                    if (bVar != null && Command.HTTP_HEADER_RANGE.equalsIgnoreCase(bVar.a)) {
                        int iIndexOf2 = bVar.b.indexOf(o2.i.b);
                        if (iIndexOf2 == -1) {
                            throw new d("Range format error, Range: " + bVar.b);
                        }
                        if (!"bytes".equalsIgnoreCase(bVar.b.substring(0, iIndexOf2).trim())) {
                            throw new d("Range format error, Range: " + bVar.b);
                        }
                        String strSubstring = bVar.b.substring(iIndexOf2 + 1);
                        if (strSubstring.contains(",")) {
                            throw new d("Range format error, Range: " + bVar.b);
                        }
                        int iIndexOf3 = strSubstring.indexOf("-");
                        if (iIndexOf3 == -1) {
                            throw new d("Range format error, Range: " + bVar.b);
                        }
                        String strTrim = strSubstring.substring(0, iIndexOf3).trim();
                        String strTrim2 = strSubstring.substring(iIndexOf3 + 1).trim();
                        try {
                            if (strTrim.length() > 0) {
                                i2 = Integer.parseInt(strTrim);
                            }
                            if (strTrim2.length() > 0 && i2 > (i4 = Integer.parseInt(strTrim2))) {
                                throw new d("Range format error, Range: " + bVar.b);
                            }
                            str2 = bVar.b;
                        } catch (NumberFormatException unused) {
                            throw new d("Range format error, Range: " + bVar.b);
                        }
                    }
                }
                i = i4;
                str = str2;
            } else {
                str = null;
                i = 0;
                i2 = 0;
            }
            if (!arrayList.isEmpty()) {
                return new a(i3, strDecode, strDecode2, i2, i, str, arrayList);
            }
            throw new d("no url found: path: " + cVar.b);
        }

        public String toString() {
            return "Extra{flag=" + this.a + ", rawKey='" + this.b + "', key='" + this.c + "', from=" + this.f448d + ", to=" + this.f449e + ", urls=" + this.f451g + '}';
        }
    }

    /* JADX INFO: compiled from: Request.java */
    public static final class b {
        public final String a;
        public final String b;

        public b(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        static b a(String str) throws d {
            int iIndexOf = str.indexOf(CertificateUtil.DELIMITER);
            if (iIndexOf == -1) {
                throw new d("request header format error, header: " + str);
            }
            String strTrim = str.substring(0, iIndexOf).trim();
            String strTrim2 = str.substring(iIndexOf + 1).trim();
            if (strTrim.length() != 0 && strTrim2.length() != 0) {
                return new b(strTrim, strTrim2);
            }
            throw new d("request header format error, header: " + str);
        }

        public String toString() {
            return "Header{name='" + this.a + "', value='" + this.b + "'}";
        }
    }

    /* JADX INFO: compiled from: Request.java */
    static final class c {
        final String a;
        final String b;
        final String c;

        private c(String str, String str2, String str3) {
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        static c a(String str) throws d {
            int iIndexOf = str.indexOf(32);
            if (iIndexOf == -1) {
                throw new d("request line format error, line: " + str);
            }
            int iLastIndexOf = str.lastIndexOf(32);
            if (iLastIndexOf <= iIndexOf) {
                throw new d("request line format error, line: " + str);
            }
            String strTrim = str.substring(0, iIndexOf).trim();
            String strTrim2 = str.substring(iIndexOf + 1, iLastIndexOf).trim();
            String strTrim3 = str.substring(iLastIndexOf + 1).trim();
            if (strTrim.length() != 0 && strTrim2.length() != 0 && strTrim3.length() != 0) {
                return new c(strTrim, strTrim2, strTrim3);
            }
            throw new d("request line format error, line: " + str);
        }

        public String toString() {
            return "RequestLine{method='" + this.a + "', path='" + this.b + "', version='" + this.c + "'}";
        }
    }

    /* JADX INFO: compiled from: Request.java */
    static final class d extends Exception {
        d(String str) {
            super(str);
        }
    }

    public i(c cVar, List<b> list, a aVar) {
        this.a = cVar;
        this.b = list;
        this.c = aVar;
    }

    public static i a(InputStream inputStream) throws IOException, d {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, com.bykv.vk.openvk.component.video.a.c.a.a));
        ArrayList arrayList = new ArrayList();
        c cVarA = null;
        while (true) {
            String line = bufferedReader.readLine();
            if (TextUtils.isEmpty(line)) {
                break;
            }
            String strTrim = line.trim();
            if (cVarA == null) {
                cVarA = c.a(strTrim);
            } else {
                arrayList.add(b.a(strTrim));
            }
        }
        if (cVarA != null) {
            return new i(cVarA, arrayList, a.a(cVarA, arrayList));
        }
        throw new d("request line is null");
    }

    static String a(String str, String str2, List<String> list) {
        StringBuilder sb = new StringBuilder(512);
        String strA = null;
        do {
            if (strA != null) {
                if (list.size() == 1) {
                    return null;
                }
                list.remove(list.size() - 1);
            }
            strA = a(sb, str, str2, list);
        } while (strA.length() > 3072);
        return strA;
    }

    private static String a(StringBuilder sb, String str, String str2, List<String> list) {
        sb.delete(0, sb.length());
        sb.append("rk");
        sb.append(o2.i.b);
        sb.append(Uri.encode(str));
        sb.append(o2.i.c);
        sb.append(CampaignEx.JSON_KEY_AD_K);
        sb.append(o2.i.b);
        sb.append(Uri.encode(str2));
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append(o2.i.c);
            sb.append("u");
            sb.append(i);
            sb.append(o2.i.b);
            sb.append(Uri.encode(list.get(i)));
        }
        return sb.toString();
    }

    public String toString() {
        return "Request{requestLine=" + this.a + ", headers=" + this.b + ", extra=" + this.c + '}';
    }
}
