package com.json.adqualitysdk.sdk.i;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class da extends cx {
    private static char[] h = {'E', 'r', 'o', ' ', 'c', 'e', 'a', 't', 'i', 'n', 'g', 'm', 'h', 'd', 'u', 'b', 'l', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M'};
    private static char i = 5;
    private static int j = 0;
    private static int k = 1;

    final class a extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ List f5517d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ dn f5518e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private /* synthetic */ dr f5519f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private /* synthetic */ cj f5520g;

        a(List list, dn dnVar, dr drVar, cj cjVar) {
            this.f5517d = list;
            this.f5518e = dnVar;
            this.f5519f = drVar;
            this.f5520g = cjVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            this.f5517d.add(0, this);
            this.f5518e.m667(this.f5519f, this.f5520g, this.f5517d);
            this.f5517d.remove(0);
        }
    }

    private static String d(byte b, String str, int i2) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (g.f56) {
            char[] cArr2 = h;
            char c = i;
            char[] cArr3 = new char[i2];
            if (i2 % 2 != 0) {
                i2--;
                cArr3[i2] = (char) (cArr[i2] - b);
            }
            if (i2 > 1) {
                g.f60 = 0;
                while (true) {
                    int i3 = g.f60;
                    if (i3 >= i2) {
                        break;
                    }
                    g.f58 = cArr[i3];
                    g.f62 = cArr[g.f60 + 1];
                    if (g.f58 == g.f62) {
                        cArr3[g.f60] = (char) (g.f58 - b);
                        cArr3[g.f60 + 1] = (char) (g.f62 - b);
                    } else {
                        g.f59 = g.f58 / c;
                        g.f55 = g.f58 % c;
                        g.f61 = g.f62 / c;
                        g.f57 = g.f62 % c;
                        if (g.f55 == g.f57) {
                            g.f59 = ((g.f59 + c) - 1) % c;
                            g.f61 = ((g.f61 + c) - 1) % c;
                            int i4 = (g.f59 * c) + g.f55;
                            int i5 = (g.f61 * c) + g.f57;
                            int i6 = g.f60;
                            cArr3[i6] = cArr2[i4];
                            cArr3[i6 + 1] = cArr2[i5];
                        } else if (g.f59 == g.f61) {
                            g.f55 = ((g.f55 + c) - 1) % c;
                            g.f57 = ((g.f57 + c) - 1) % c;
                            int i7 = (g.f59 * c) + g.f55;
                            int i8 = (g.f61 * c) + g.f57;
                            int i9 = g.f60;
                            cArr3[i9] = cArr2[i7];
                            cArr3[i9 + 1] = cArr2[i8];
                        } else {
                            int i10 = (g.f59 * c) + g.f57;
                            int i11 = (g.f61 * c) + g.f55;
                            int i12 = g.f60;
                            cArr3[i12] = cArr2[i10];
                            cArr3[i12 + 1] = cArr2[i11];
                        }
                    }
                    g.f60 += 2;
                }
            }
            str2 = new String(cArr3);
        }
        return str2;
    }

    private static long e(List<Object> list) {
        if (!(list.size() <= 1)) {
            int i2 = j + 109;
            k = i2 % 128;
            int i3 = i2 % 2;
            if ((cx.b(list, 1, Integer.class) ? (char) 4 : 'E') != 'E') {
                long jIntValue = ((Integer) cx.m592(list, 1, Integer.class)).intValue();
                int i4 = j + 71;
                k = i4 % 128;
                int i5 = i4 % 2;
                return jIntValue;
            }
        }
        if (list.size() > 2) {
            return ((Integer) cx.m592(list, 2, Integer.class)).intValue();
        }
        return 0L;
    }

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public final Object m597(cj cjVar, List<Object> list, dr drVar) {
        int i2 = k + 13;
        j = i2 % 128;
        if (!(i2 % 2 != 0)) {
            t.m1044(m600(cjVar, list, drVar));
        } else {
            t.m1044(m600(cjVar, list, drVar));
            int i3 = 1 / 0;
        }
        int i4 = k + 79;
        j = i4 % 128;
        if ((i4 % 2 != 0 ? '\t' : 'G') == 'G') {
            return null;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final Object m598(cj cjVar, List<Object> list, dr drVar) {
        int i2 = j + 43;
        k = i2 % 128;
        if (!(i2 % 2 != 0)) {
            t.m1042(m600(cjVar, list, drVar), e(list));
            throw null;
        }
        t.m1042(m600(cjVar, list, drVar), e(list));
        int i3 = k + 25;
        j = i3 % 128;
        int i4 = i3 % 2;
        return null;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final Object m599(cj cjVar, List<Object> list, dr drVar) {
        int i2 = j + 87;
        k = i2 % 128;
        int i3 = i2 % 2;
        t.m1039(m600(cjVar, list, drVar));
        int i4 = k + 109;
        j = i4 % 128;
        if ((i4 % 2 != 0 ? '\"' : (char) 20) != '\"') {
            return null;
        }
        int i5 = 79 / 0;
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0024, code lost:
    
        if (com.json.adqualitysdk.sdk.i.cx.b(r8, 0, com.json.adqualitysdk.sdk.i.il.class) != false) goto L14;
     */
    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.json.adqualitysdk.sdk.i.il m600(com.json.adqualitysdk.sdk.i.cj r7, java.util.List<java.lang.Object> r8, com.json.adqualitysdk.sdk.i.dr r9) {
        /*
            r6 = this;
            int r0 = com.json.adqualitysdk.sdk.i.da.k
            int r0 = r0 + 51
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.da.j = r1
            r1 = 2
            int r0 = r0 % r1
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L10
            r0 = 0
            goto L11
        L10:
            r0 = 1
        L11:
            if (r0 == r2) goto L1e
            java.lang.Class<com.ironsource.adqualitysdk.sdk.i.il> r0 = com.json.adqualitysdk.sdk.i.il.class
            boolean r0 = com.json.adqualitysdk.sdk.i.cx.b(r8, r3, r0)     // Catch: java.lang.Exception -> L1c
            if (r0 == 0) goto L2f
            goto L26
        L1c:
            r8 = move-exception
            goto L61
        L1e:
            java.lang.Class<com.ironsource.adqualitysdk.sdk.i.il> r0 = com.json.adqualitysdk.sdk.i.il.class
            boolean r0 = com.json.adqualitysdk.sdk.i.cx.b(r8, r3, r0)     // Catch: java.lang.Exception -> L1c
            if (r0 == 0) goto L2f
        L26:
            java.lang.Class<com.ironsource.adqualitysdk.sdk.i.il> r9 = com.json.adqualitysdk.sdk.i.il.class
            java.lang.Object r8 = com.json.adqualitysdk.sdk.i.cx.m592(r8, r3, r9)     // Catch: java.lang.Exception -> L1c
            com.ironsource.adqualitysdk.sdk.i.il r8 = (com.json.adqualitysdk.sdk.i.il) r8     // Catch: java.lang.Exception -> L1c
            return r8
        L2f:
            java.lang.Class<com.ironsource.adqualitysdk.sdk.i.dn> r0 = com.json.adqualitysdk.sdk.i.dn.class
            java.lang.Object r0 = com.json.adqualitysdk.sdk.i.cx.m592(r8, r3, r0)     // Catch: java.lang.Exception -> L1c
            com.ironsource.adqualitysdk.sdk.i.dn r0 = (com.json.adqualitysdk.sdk.i.dn) r0     // Catch: java.lang.Exception -> L1c
            int r4 = r8.size()     // Catch: java.lang.Exception -> L1c
            if (r4 <= r1) goto L4e
            int r4 = com.json.adqualitysdk.sdk.i.da.k
            int r4 = r4 + 67
            int r5 = r4 % 128
            com.json.adqualitysdk.sdk.i.da.j = r5
            int r4 = r4 % r1
            if (r4 == 0) goto L49
            r2 = 0
        L49:
            java.util.List r8 = com.json.adqualitysdk.sdk.i.cx.c(r8, r1)     // Catch: java.lang.Exception -> L1c
            goto L52
        L4e:
            java.util.List r8 = com.json.adqualitysdk.sdk.i.cx.c(r8, r2)     // Catch: java.lang.Exception -> L1c
        L52:
            com.ironsource.adqualitysdk.sdk.i.da$a r2 = new com.ironsource.adqualitysdk.sdk.i.da$a     // Catch: java.lang.Exception -> L1c
            r2.<init>(r8, r0, r9, r7)     // Catch: java.lang.Exception -> L1c
            int r7 = com.json.adqualitysdk.sdk.i.da.k
            int r7 = r7 + 17
            int r8 = r7 % 128
            com.json.adqualitysdk.sdk.i.da.j = r8
            int r7 = r7 % r1
            return r2
        L61:
            java.lang.String r7 = r7.m445()
            java.lang.String r9 = ""
            int r9 = android.text.TextUtils.getTrimmedLength(r9)
            int r9 = 124 - r9
            byte r9 = (byte) r9
            int r0 = android.view.View.getDefaultSize(r3, r3)
            int r0 = 30 - r0
            java.lang.String r1 = "\u0001\u0002\u0002\u0003\u0002\u0004\u0000\u0002\u0006\u0007\b\t\u0005\u000e\u0001\r\u0006\b\u0011\u0007\u0012\b\u0004\u000bêê\u0005\u0010\u000f\u0006"
            java.lang.String r9 = d(r9, r1, r0)
            java.lang.String r9 = r9.intern()
            com.json.adqualitysdk.sdk.i.cn.m519(r7, r9, r8)
            r7 = 0
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.da.m600(com.ironsource.adqualitysdk.sdk.i.cj, java.util.List, com.ironsource.adqualitysdk.sdk.i.dr):com.ironsource.adqualitysdk.sdk.i.il");
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final Object m601(cj cjVar, List<Object> list, dr drVar) {
        int i2 = j + 49;
        k = i2 % 128;
        int i3 = i2 % 2;
        t.m1041(m600(cjVar, list, drVar));
        int i4 = j + 79;
        k = i4 % 128;
        if (i4 % 2 == 0) {
            throw null;
        }
        return null;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final Object m602(cj cjVar, List<Object> list, dr drVar) {
        int i2 = j + 97;
        k = i2 % 128;
        int i3 = i2 % 2;
        t.m1046(m600(cjVar, list, drVar));
        int i4 = j + 85;
        k = i4 % 128;
        if (i4 % 2 != 0) {
            return null;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Object m603(cj cjVar, List<Object> list, dr drVar) {
        int i2 = k + 33;
        j = i2 % 128;
        if ((i2 % 2 != 0 ? ']' : '[') == ']') {
            t.m1040(m600(cjVar, list, drVar), e(list));
            throw null;
        }
        t.m1040(m600(cjVar, list, drVar), e(list));
        int i3 = j + 45;
        k = i3 % 128;
        int i4 = i3 % 2;
        return null;
    }
}
