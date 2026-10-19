package com.json.adqualitysdk.sdk.i;

import com.json.adqualitysdk.sdk.i.hh;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class hn extends hh {
    private int l;
    private Class m;
    private boolean n;
    private List<Class> o = new ArrayList();
    private List<Class> p;
    private int q;

    public static class c extends hh.b implements cg {
        private static int h = 7;
        private static int[] i = {1328870028, -744686493, 637975499, -1820024358, 636888873, -338370044, 1982668672, -1930639057, 2001317730, 1643094015, -47094739, 1495346910, 433777600, -203944520, -141524471, -1404046102, -514641915, -1856268110};
        private static int j = 0;
        private static int k = 1;
        private hn l = new hn();

        private c d(int i2) {
            int i3 = j + 25;
            int i4 = i3 % 128;
            k = i4;
            int i5 = i3 % 2;
            hn hnVar = this.l;
            hnVar.k = i2 | hnVar.k;
            int i6 = i4 + 123;
            j = i6 % 128;
            int i7 = i6 % 2;
            return this;
        }

        private c e() {
            int i2 = k + 7;
            j = i2 % 128;
            if (i2 % 2 == 0) {
                this.l.d();
                return this;
            }
            this.l.d();
            throw null;
        }

        private c f(int i2) {
            int i3 = k + 85;
            j = i3 % 128;
            if (i3 % 2 != 0) {
                this.l.q = i2;
                int i4 = 79 / 0;
            } else {
                this.l.q = i2;
            }
            return this;
        }

        private c g(Class cls) {
            int i2 = j + 23;
            k = i2 % 128;
            int i3 = i2 % 2;
            this.l.m = cls;
            int i4 = j + 125;
            k = i4 % 128;
            if (i4 % 2 != 0) {
                return this;
            }
            throw null;
        }

        private c h(List<Class> list) {
            int i2 = j + 7;
            k = i2 % 128;
            int i3 = i2 % 2;
            this.l.p = list;
            int i4 = k + 45;
            j = i4 % 128;
            int i5 = i4 % 2;
            return this;
        }

        private static String i(int[] iArr, int i2) {
            String str;
            synchronized (b.f33) {
                char[] cArr = new char[4];
                char[] cArr2 = new char[iArr.length << 1];
                int[] iArr2 = (int[]) i.clone();
                b.f34 = 0;
                while (true) {
                    int i3 = b.f34;
                    if (i3 < iArr.length) {
                        cArr[0] = (char) (iArr[i3] >> 16);
                        cArr[1] = (char) iArr[i3];
                        cArr[2] = (char) (iArr[i3 + 1] >> 16);
                        cArr[3] = (char) iArr[i3 + 1];
                        b.f31 = (cArr[0] << 16) + cArr[1];
                        b.f32 = (cArr[2] << 16) + cArr[3];
                        b.m390(iArr2);
                        for (int i4 = 0; i4 < 16; i4++) {
                            int i5 = b.f31 ^ iArr2[i4];
                            b.f31 = i5;
                            b.f32 = b.m391(i5) ^ b.f32;
                            int i6 = b.f31;
                            b.f31 = b.f32;
                            b.f32 = i6;
                        }
                        int i7 = b.f31;
                        b.f31 = b.f32;
                        b.f32 = i7;
                        b.f32 = i7 ^ iArr2[16];
                        b.f31 ^= iArr2[17];
                        int i8 = b.f32;
                        int i9 = b.f31;
                        cArr[0] = (char) (i9 >>> 16);
                        cArr[1] = (char) i9;
                        int i10 = b.f32;
                        cArr[2] = (char) (i10 >>> 16);
                        cArr[3] = (char) i10;
                        b.m390(iArr2);
                        int i11 = b.f34;
                        cArr2[i11 << 1] = cArr[0];
                        cArr2[(i11 << 1) + 1] = cArr[1];
                        cArr2[(i11 << 1) + 2] = cArr[2];
                        cArr2[(i11 << 1) + 3] = cArr[3];
                        b.f34 = i11 + 2;
                    } else {
                        str = new String(cArr2, 0, i2);
                    }
                }
            }
            return str;
        }

        private c j(int i2) {
            hn hnVar;
            int i3;
            int i4 = j + 11;
            k = i4 % 128;
            if ((i4 % 2 == 0 ? 'K' : 'B') != 'K') {
                hnVar = this.l;
                i3 = i2 | hnVar.j;
            } else {
                hnVar = this.l;
                i3 = i2 & hnVar.j;
            }
            hnVar.j = i3;
            return this;
        }

        private c k(Class cls) {
            int i2 = j + 17;
            k = i2 % 128;
            if (i2 % 2 == 0) {
                this.l.o.add(cls);
                throw null;
            }
            this.l.o.add(cls);
            return this;
        }

        private c l(boolean z) {
            int i2 = j + 47;
            k = i2 % 128;
            if (i2 % 2 == 0) {
                this.l.n = z;
                throw null;
            }
            this.l.n = z;
            int i3 = k + 95;
            j = i3 % 128;
            int i4 = i3 % 2;
            return this;
        }

        private c m(int i2) {
            int i3 = j + 3;
            k = i3 % 128;
            if (i3 % 2 != 0) {
                this.l.l = i2;
                return this;
            }
            this.l.l = i2;
            throw null;
        }

        private hn n() {
            int i2 = k + 111;
            int i3 = i2 % 128;
            j = i3;
            int i4 = i2 % 2;
            hn hnVar = this.l;
            int i5 = i3 + 47;
            k = i5 % 128;
            int i6 = i5 % 2;
            return hnVar;
        }

        private c o(boolean z, int i2) {
            int i3 = k + 17;
            j = i3 % 128;
            if ((i3 % 2 != 0 ? 'U' : (char) 0) != 0) {
                hn hnVar = this.l;
                hnVar.h = z;
                hnVar.i = i2;
                int i4 = 3 / 0;
            } else {
                hn hnVar2 = this.l;
                hnVar2.h = z;
                hnVar2.i = i2;
            }
            return this;
        }

        private static String p(int i2, boolean z, int i3, int i4, String str) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (com.json.adqualitysdk.sdk.i.c.f35) {
                char[] cArr2 = new char[i4];
                com.json.adqualitysdk.sdk.i.c.f36 = 0;
                while (true) {
                    int i5 = com.json.adqualitysdk.sdk.i.c.f36;
                    if (i5 >= i4) {
                        break;
                    }
                    com.json.adqualitysdk.sdk.i.c.f37 = cArr[i5];
                    cArr2[com.json.adqualitysdk.sdk.i.c.f36] = (char) (com.json.adqualitysdk.sdk.i.c.f37 + i2);
                    int i6 = com.json.adqualitysdk.sdk.i.c.f36;
                    cArr2[i6] = (char) (cArr2[i6] - h);
                    com.json.adqualitysdk.sdk.i.c.f36 = i6 + 1;
                }
                if (i3 > 0) {
                    com.json.adqualitysdk.sdk.i.c.f38 = i3;
                    char[] cArr3 = new char[i4];
                    System.arraycopy(cArr2, 0, cArr3, 0, i4);
                    int i7 = com.json.adqualitysdk.sdk.i.c.f38;
                    System.arraycopy(cArr3, 0, cArr2, i4 - i7, i7);
                    int i8 = com.json.adqualitysdk.sdk.i.c.f38;
                    System.arraycopy(cArr3, i8, cArr2, 0, i4 - i8);
                }
                if (z) {
                    char[] cArr4 = new char[i4];
                    com.json.adqualitysdk.sdk.i.c.f36 = 0;
                    while (true) {
                        int i9 = com.json.adqualitysdk.sdk.i.c.f36;
                        if (i9 >= i4) {
                            break;
                        }
                        cArr4[i9] = cArr2[(i4 - i9) - 1];
                        com.json.adqualitysdk.sdk.i.c.f36 = i9 + 1;
                    }
                    cArr2 = cArr4;
                }
                str2 = new String(cArr2);
            }
            return str2;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:79:0x0208  */
        @Override // com.json.adqualitysdk.sdk.i.cg
        /* JADX INFO: renamed from: ﾒ */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object mo388(java.lang.String r18, java.util.List<java.lang.Object> r19, com.json.adqualitysdk.sdk.i.ch r20) {
            /*
                Method dump skipped, instruction units count: 932
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.hn.c.mo388(java.lang.String, java.util.List, com.ironsource.adqualitysdk.sdk.i.ch):java.lang.Object");
        }
    }

    public hn() {
        d();
    }

    @Override // com.json.adqualitysdk.sdk.i.hh
    protected final void d() {
        super.d();
        this.m = null;
        this.l = 0;
        this.n = true;
        this.o.clear();
        this.p = null;
        this.q = -1;
    }

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public final int m750() {
        return this.q;
    }

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public final int m751() {
        return this.l;
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final List<Class> m752() {
        return this.p;
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final Class m753() {
        return this.m;
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final boolean m754() {
        return this.n;
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final List<Class> m755() {
        return this.o;
    }
}
