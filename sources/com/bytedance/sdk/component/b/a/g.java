package com.bytedance.sdk.component.b.a;

import androidx.webkit.ProxyConfig;
import com.json.b4;
import com.unity3d.services.core.di.ServiceProvider;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: HttpUrl.java */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final char[] f903d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    final String a;
    final String b;
    final int c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f904e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f905f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List<String> f906g;
    private final List<String> h;
    private final String i;
    private final String j;

    /* JADX INFO: compiled from: HttpUrl.java */
    public static final class a {
        String a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f907d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final List<String> f909f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        List<String> f910g;
        String h;
        String b = "";
        String c = "";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f908e = -1;

        /* JADX INFO: renamed from: com.bytedance.sdk.component.b.a.g$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: HttpUrl.java */
        enum EnumC0112a {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public a() {
            ArrayList arrayList = new ArrayList();
            this.f909f = arrayList;
            arrayList.add("");
        }

        private a a(String str, boolean z) {
            int i = 0;
            do {
                int iA = com.bytedance.sdk.component.b.a.b.i.a(str, i, str.length(), "/\\");
                a(str, i, iA, iA < str.length(), z);
                i = iA + 1;
            } while (i <= str.length());
            return this;
        }

        private void a(String str, int i, int i2) {
            if (i == i2) {
                return;
            }
            char cCharAt = str.charAt(i);
            if (cCharAt == '/' || cCharAt == '\\') {
                this.f909f.clear();
                this.f909f.add("");
                i++;
            } else {
                List<String> list = this.f909f;
                list.set(list.size() - 1, "");
            }
            while (true) {
                int i3 = i;
                if (i3 >= i2) {
                    return;
                }
                i = com.bytedance.sdk.component.b.a.b.i.a(str, i3, i2, "/\\");
                boolean z = i < i2;
                a(str, i3, i, z, true);
                if (z) {
                    i++;
                }
            }
        }

        private void a(String str, int i, int i2, boolean z, boolean z2) {
            String strA = g.a(str, i, i2, " \"<>^`{}|/\\?#", z2, false, false, true, null);
            if (e(strA)) {
                return;
            }
            if (f(strA)) {
                c();
                return;
            }
            if (this.f909f.get(r11.size() - 1).isEmpty()) {
                this.f909f.set(r11.size() - 1, strA);
            } else {
                this.f909f.add(strA);
            }
            if (z) {
                this.f909f.add("");
            }
        }

        private static int b(String str, int i, int i2) {
            if (i2 - i < 2) {
                return -1;
            }
            char cCharAt = str.charAt(i);
            if ((cCharAt >= 'a' && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z')) {
                while (true) {
                    i++;
                    if (i >= i2) {
                        break;
                    }
                    char cCharAt2 = str.charAt(i);
                    if (cCharAt2 < 'a' || cCharAt2 > 'z') {
                        if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                            if (cCharAt2 < '0' || cCharAt2 > '9') {
                                if (cCharAt2 != '+' && cCharAt2 != '-' && cCharAt2 != '.') {
                                    if (cCharAt2 == ':') {
                                        return i;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return -1;
        }

        private static int c(String str, int i, int i2) {
            int i3 = 0;
            while (i < i2) {
                char cCharAt = str.charAt(i);
                if (cCharAt != '\\' && cCharAt != '/') {
                    break;
                }
                i3++;
                i++;
            }
            return i3;
        }

        private void c() {
            if (!this.f909f.remove(r0.size() - 1).isEmpty() || this.f909f.isEmpty()) {
                this.f909f.add("");
            } else {
                this.f909f.set(r0.size() - 1, "");
            }
        }

        private static int d(String str, int i, int i2) {
            while (i < i2) {
                char cCharAt = str.charAt(i);
                if (cCharAt == ':') {
                    return i;
                }
                if (cCharAt == '[') {
                    do {
                        i++;
                        if (i < i2) {
                        }
                    } while (str.charAt(i) != ']');
                }
                i++;
            }
            return i2;
        }

        private static String e(String str, int i, int i2) {
            return com.bytedance.sdk.component.b.a.b.i.a(g.a(str, i, i2, false));
        }

        private boolean e(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        private static int f(String str, int i, int i2) {
            int i3;
            try {
                i3 = Integer.parseInt(g.a(str, i, i2, "", false, false, false, true, null));
            } catch (NumberFormatException unused) {
            }
            if (i3 <= 0 || i3 > 65535) {
                return -1;
            }
            return i3;
        }

        private boolean f(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        int a() {
            int i = this.f908e;
            return i != -1 ? i : g.a(this.a);
        }

        EnumC0112a a(g gVar, String str) {
            int iA;
            int i;
            int iA2 = com.bytedance.sdk.component.b.a.b.i.a(str, 0, str.length());
            int iB = com.bytedance.sdk.component.b.a.b.i.b(str, iA2, str.length());
            if (b(str, iA2, iB) != -1) {
                if (str.regionMatches(true, iA2, "https:", 0, 6)) {
                    this.a = "https";
                    iA2 += 6;
                } else {
                    if (!str.regionMatches(true, iA2, "http:", 0, 5)) {
                        return EnumC0112a.UNSUPPORTED_SCHEME;
                    }
                    this.a = ProxyConfig.MATCH_HTTP;
                    iA2 += 5;
                }
            } else {
                if (gVar == null) {
                    return EnumC0112a.MISSING_SCHEME;
                }
                this.a = gVar.a;
            }
            int iC = c(str, iA2, iB);
            char c = '?';
            char c2 = '#';
            if (iC >= 2 || gVar == null || !gVar.a.equals(this.a)) {
                int i2 = iA2 + iC;
                boolean z = false;
                boolean z2 = false;
                while (true) {
                    iA = com.bytedance.sdk.component.b.a.b.i.a(str, i2, iB, "@/\\?#");
                    byte bCharAt = iA != iB ? str.charAt(iA) : (byte) -1;
                    if (bCharAt == -1 || bCharAt == c2 || bCharAt == 47 || bCharAt == 92 || bCharAt == c) {
                        break;
                    }
                    if (bCharAt == 64) {
                        if (z) {
                            i = iA;
                            this.c += "%40" + g.a(str, i2, i, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                        } else {
                            int iA3 = com.bytedance.sdk.component.b.a.b.i.a(str, i2, iA, ':');
                            i = iA;
                            String strA = g.a(str, i2, iA3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                            if (z2) {
                                strA = this.b + "%40" + strA;
                            }
                            this.b = strA;
                            if (iA3 != i) {
                                this.c = g.a(str, iA3 + 1, i, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                                z = true;
                            }
                            z2 = true;
                        }
                        i2 = i + 1;
                    }
                    c = '?';
                    c2 = '#';
                }
                int iD = d(str, i2, iA);
                int i3 = iD + 1;
                if (i3 < iA) {
                    this.f907d = e(str, i2, iD);
                    int iF = f(str, i3, iA);
                    this.f908e = iF;
                    if (iF == -1) {
                        return EnumC0112a.INVALID_PORT;
                    }
                } else {
                    this.f907d = e(str, i2, iD);
                    this.f908e = g.a(this.a);
                }
                if (this.f907d == null) {
                    return EnumC0112a.INVALID_HOST;
                }
                iA2 = iA;
            } else {
                this.b = gVar.b();
                this.c = gVar.c();
                this.f907d = gVar.b;
                this.f908e = gVar.c;
                this.f909f.clear();
                this.f909f.addAll(gVar.d());
                if (iA2 == iB || str.charAt(iA2) == '#') {
                    d(gVar.e());
                }
            }
            int iA4 = com.bytedance.sdk.component.b.a.b.i.a(str, iA2, iB, "?#");
            a(str, iA2, iA4);
            if (iA4 < iB && str.charAt(iA4) == '?') {
                int iA5 = com.bytedance.sdk.component.b.a.b.i.a(str, iA4, iB, '#');
                this.f910g = g.b(g.a(str, iA4 + 1, iA5, " \"'<>#", true, false, true, true, null));
                iA4 = iA5;
            }
            if (iA4 < iB && str.charAt(iA4) == '#') {
                this.h = g.a(str, 1 + iA4, iB, "", true, false, false, false, null);
            }
            return EnumC0112a.SUCCESS;
        }

        public a a(String str) {
            Objects.requireNonNull(str, "scheme == null");
            if (str.equalsIgnoreCase(ProxyConfig.MATCH_HTTP)) {
                this.a = ProxyConfig.MATCH_HTTP;
            } else {
                if (!str.equalsIgnoreCase("https")) {
                    throw new IllegalArgumentException("unexpected scheme: " + str);
                }
                this.a = "https";
            }
            return this;
        }

        public a a(String str, String str2) {
            Objects.requireNonNull(str, "encodedName == null");
            if (this.f910g == null) {
                this.f910g = new ArrayList();
            }
            this.f910g.add(g.a(str, " \"'<>#&=", true, false, true, true));
            this.f910g.add(str2 != null ? g.a(str2, " \"'<>#&=", true, false, true, true) : null);
            return this;
        }

        public a b(String str) {
            Objects.requireNonNull(str, "host == null");
            String strE = e(str, 0, str.length());
            if (strE != null) {
                this.f907d = strE;
                return this;
            }
            throw new IllegalArgumentException("unexpected host: " + str);
        }

        public g b() {
            if (this.a == null) {
                throw new IllegalStateException("scheme == null");
            }
            if (this.f907d != null) {
                return new g(this);
            }
            throw new IllegalStateException("host == null");
        }

        public a c(String str) {
            Objects.requireNonNull(str, "encodedPathSegments == null");
            return a(str, true);
        }

        public a d(String str) {
            this.f910g = str != null ? g.b(g.a(str, " \"'<>#", true, false, true, true)) : null;
            return this;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.a);
            sb.append("://");
            if (!this.b.isEmpty() || !this.c.isEmpty()) {
                sb.append(this.b);
                if (!this.c.isEmpty()) {
                    sb.append(':');
                    sb.append(this.c);
                }
                sb.append('@');
            }
            if (this.f907d.indexOf(58) != -1) {
                sb.append('[');
                sb.append(this.f907d);
                sb.append(']');
            } else {
                sb.append(this.f907d);
            }
            int iA = a();
            if (iA != g.a(this.a)) {
                sb.append(':');
                sb.append(iA);
            }
            g.a(sb, this.f909f);
            if (this.f910g != null) {
                sb.append('?');
                g.b(sb, this.f910g);
            }
            if (this.h != null) {
                sb.append('#');
                sb.append(this.h);
            }
            return sb.toString();
        }
    }

    g(a aVar) {
        this.a = aVar.a;
        this.f904e = a(aVar.b, false);
        this.f905f = a(aVar.c, false);
        this.b = aVar.f907d;
        this.c = aVar.a();
        this.f906g = a(aVar.f909f, false);
        List<String> list = aVar.f910g;
        this.h = list != null ? a(list, true) : null;
        String str = aVar.h;
        this.i = str != null ? a(str, false) : null;
        this.j = aVar.toString();
    }

    public static int a(String str) {
        if (str.equals(ProxyConfig.MATCH_HTTP)) {
            return 80;
        }
        if (str.equals("https")) {
            return ServiceProvider.GATEWAY_PORT;
        }
        return -1;
    }

    static String a(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        int iCharCount = i;
        while (iCharCount < i2) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt < 32 || iCodePointAt == 127 || (iCodePointAt >= 128 && z4)) {
                com.bytedance.sdk.component.b.a.b.a aVar = new com.bytedance.sdk.component.b.a.b.a();
                aVar.a(str, i, iCharCount);
                a(aVar, str, iCharCount, i2, str2, z, z2, z3, z4, charset);
                return aVar.c();
            }
            if (str2.indexOf(iCodePointAt) != -1 || ((iCodePointAt == 37 && (!z || (z2 && !a(str, iCharCount, i2)))) || (iCodePointAt == 43 && z3))) {
                com.bytedance.sdk.component.b.a.b.a aVar2 = new com.bytedance.sdk.component.b.a.b.a();
                aVar2.a(str, i, iCharCount);
                a(aVar2, str, iCharCount, i2, str2, z, z2, z3, z4, charset);
                return aVar2.c();
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str.substring(i, i2);
    }

    static String a(String str, int i, int i2, boolean z) {
        for (int i3 = i; i3 < i2; i3++) {
            char cCharAt = str.charAt(i3);
            if (cCharAt == '%' || (cCharAt == '+' && z)) {
                com.bytedance.sdk.component.b.a.b.a aVar = new com.bytedance.sdk.component.b.a.b.a();
                aVar.a(str, i, i3);
                a(aVar, str, i3, i2, z);
                return aVar.c();
            }
        }
        return str.substring(i, i2);
    }

    static String a(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        return a(str, 0, str.length(), str2, z, z2, z3, z4, null);
    }

    static String a(String str, boolean z) {
        return a(str, 0, str.length(), z);
    }

    private List<String> a(List<String> list, boolean z) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            String str = list.get(i);
            arrayList.add(str != null ? a(str, z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    static void a(com.bytedance.sdk.component.b.a.b.a aVar, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        com.bytedance.sdk.component.b.a.b.a aVar2 = null;
        while (i < i2) {
            int iCodePointAt = str.codePointAt(i);
            if (!z || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt == 43 && z3) {
                    aVar.a(z ? "+" : "%2B");
                } else if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && z4) || str2.indexOf(iCodePointAt) != -1 || (iCodePointAt == 37 && (!z || (z2 && !a(str, i, i2)))))) {
                    if (aVar2 == null) {
                        aVar2 = new com.bytedance.sdk.component.b.a.b.a();
                    }
                    if (charset == null || charset.equals(com.bytedance.sdk.component.b.a.b.i.a)) {
                        aVar2.a(iCodePointAt);
                    } else {
                        aVar2.a(str, i, Character.charCount(iCodePointAt) + i, charset);
                    }
                    while (!aVar2.a()) {
                        int iB = aVar2.b() & 255;
                        aVar.b(37);
                        char[] cArr = f903d;
                        aVar.b((int) cArr[(iB >> 4) & 15]);
                        aVar.b((int) cArr[iB & 15]);
                    }
                } else {
                    aVar.a(iCodePointAt);
                }
            }
            i += Character.charCount(iCodePointAt);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static void a(com.bytedance.sdk.component.b.a.b.a r5, java.lang.String r6, int r7, int r8, boolean r9) {
        /*
        L0:
            if (r7 >= r8) goto L42
            int r0 = r6.codePointAt(r7)
            r1 = 37
            if (r0 != r1) goto L2d
            int r1 = r7 + 2
            if (r1 >= r8) goto L2d
            int r2 = r7 + 1
            char r2 = r6.charAt(r2)
            int r2 = com.bytedance.sdk.component.b.a.b.i.a(r2)
            char r3 = r6.charAt(r1)
            int r3 = com.bytedance.sdk.component.b.a.b.i.a(r3)
            r4 = -1
            if (r2 == r4) goto L39
            if (r3 == r4) goto L39
            int r7 = r2 << 4
            int r7 = r7 + r3
            r5.b(r7)
            r7 = r1
            goto L3c
        L2d:
            r1 = 43
            if (r0 != r1) goto L39
            if (r9 == 0) goto L39
            r1 = 32
            r5.b(r1)
            goto L3c
        L39:
            r5.a(r0)
        L3c:
            int r0 = java.lang.Character.charCount(r0)
            int r7 = r7 + r0
            goto L0
        L42:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.b.a.g.a(com.bytedance.sdk.component.b.a.b.a, java.lang.String, int, int, boolean):void");
    }

    static void a(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append('/');
            sb.append(list.get(i));
        }
    }

    static boolean a(String str, int i, int i2) {
        int i3 = i + 2;
        return i3 < i2 && str.charAt(i) == '%' && com.bytedance.sdk.component.b.a.b.i.a(str.charAt(i + 1)) != -1 && com.bytedance.sdk.component.b.a.b.i.a(str.charAt(i3)) != -1;
    }

    static List<String> b(String str) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i <= str.length()) {
            int iIndexOf = str.indexOf(38, i);
            if (iIndexOf == -1) {
                iIndexOf = str.length();
            }
            int iIndexOf2 = str.indexOf(61, i);
            if (iIndexOf2 == -1 || iIndexOf2 > iIndexOf) {
                arrayList.add(str.substring(i, iIndexOf));
                arrayList.add(null);
            } else {
                arrayList.add(str.substring(i, iIndexOf2));
                arrayList.add(str.substring(iIndexOf2 + 1, iIndexOf));
            }
            i = iIndexOf + 1;
        }
        return arrayList;
    }

    static void b(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i += 2) {
            String str = list.get(i);
            String str2 = list.get(i + 1);
            if (i > 0) {
                sb.append('&');
            }
            sb.append(str);
            if (str2 != null) {
                sb.append(b4.R);
                sb.append(str2);
            }
        }
    }

    public static g c(String str) {
        a aVar = new a();
        if (aVar.a((g) null, str) == a.EnumC0112a.SUCCESS) {
            return aVar.b();
        }
        return null;
    }

    public URL a() {
        try {
            return new URL(this.j);
        } catch (MalformedURLException e2) {
            throw new RuntimeException(e2);
        }
    }

    public String b() {
        if (this.f904e.isEmpty()) {
            return "";
        }
        int length = this.a.length() + 3;
        String str = this.j;
        return this.j.substring(length, com.bytedance.sdk.component.b.a.b.i.a(str, length, str.length(), ":@"));
    }

    public String c() {
        if (this.f905f.isEmpty()) {
            return "";
        }
        return this.j.substring(this.j.indexOf(58, this.a.length() + 3) + 1, this.j.indexOf(64));
    }

    public List<String> d() {
        int iIndexOf = this.j.indexOf(47, this.a.length() + 3);
        String str = this.j;
        int iA = com.bytedance.sdk.component.b.a.b.i.a(str, iIndexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (iIndexOf < iA) {
            int i = iIndexOf + 1;
            int iA2 = com.bytedance.sdk.component.b.a.b.i.a(this.j, i, iA, '/');
            arrayList.add(this.j.substring(i, iA2));
            iIndexOf = iA2;
        }
        return arrayList;
    }

    public String e() {
        if (this.h == null) {
            return null;
        }
        int iIndexOf = this.j.indexOf(63) + 1;
        String str = this.j;
        return this.j.substring(iIndexOf, com.bytedance.sdk.component.b.a.b.i.a(str, iIndexOf, str.length(), '#'));
    }

    public boolean equals(Object obj) {
        return (obj instanceof g) && ((g) obj).j.equals(this.j);
    }

    public int hashCode() {
        return this.j.hashCode();
    }

    public String toString() {
        return this.j;
    }
}
