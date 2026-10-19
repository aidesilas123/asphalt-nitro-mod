package com.json.adqualitysdk.sdk.i;

import com.applovin.exoplayer2.common.base.Ascii;
import com.json.adqualitysdk.sdk.i.hh;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class hl extends hh {
    private Class l;
    private int m;
    private boolean n;
    private List<Class> o = new ArrayList();

    public static class c extends hh.b implements cg {
        private static char[] h = {'s', 'e', 't', 'T', 'y', 'p', 'o', 'F', 'i', 'n', 'd', 'k', 'l', 'a', 'r', 'c', 'h', 'E', 'x', 'M', 'f', 'I', 'u', 'S', 'g', 'b', 'v', 'w', 'z', '{', '|', '}', '~', Ascii.MAX, 128, 129};
        private static char i = 6;
        private static int j = 0;
        private static int k = 1;
        private hl l = new hl();

        private c d(Class cls) {
            int i2 = k + 83;
            j = i2 % 128;
            int i3 = i2 % 2;
            this.l.o.add(cls);
            int i4 = k + 31;
            j = i4 % 128;
            if (i4 % 2 == 0) {
                return this;
            }
            throw null;
        }

        private static String e(byte b, String str, int i2) {
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

        private c f(int i2) {
            int i3 = j + 75;
            k = i3 % 128;
            if (!(i3 % 2 == 0)) {
                this.l.m = i2;
            } else {
                this.l.m = i2;
                int i4 = 59 / 0;
            }
            return this;
        }

        private c g(boolean z, int i2) {
            int i3 = k + 73;
            int i4 = i3 % 128;
            j = i4;
            int i5 = i3 % 2;
            hl hlVar = this.l;
            hlVar.h = z;
            hlVar.i = i2;
            int i6 = i4 + 11;
            k = i6 % 128;
            int i7 = i6 % 2;
            return this;
        }

        private c h(boolean z) {
            int i2 = k + 37;
            j = i2 % 128;
            int i3 = i2 % 2;
            this.l.n = z;
            int i4 = j + 125;
            k = i4 % 128;
            int i5 = i4 % 2;
            return this;
        }

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        private c m745() {
            int i2 = j + 39;
            k = i2 % 128;
            int i3 = i2 % 2;
            this.l.d();
            int i4 = k + 101;
            j = i4 % 128;
            if ((i4 % 2 != 0 ? 'C' : '+') != 'C') {
                return this;
            }
            int i5 = 18 / 0;
            return this;
        }

        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public final c m746(Class cls) {
            int i2 = k + 111;
            j = i2 % 128;
            int i3 = i2 % 2;
            this.l.l = cls;
            int i4 = j + 83;
            k = i4 % 128;
            int i5 = i4 % 2;
            return this;
        }

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final c m747(int i2) {
            hl hlVar;
            int i3;
            int i4 = k + 115;
            j = i4 % 128;
            if ((i4 % 2 != 0 ? '<' : (char) 3) != '<') {
                hlVar = this.l;
                i3 = i2 | hlVar.j;
            } else {
                hlVar = this.l;
                i3 = i2 & hlVar.j;
            }
            hlVar.j = i3;
            return this;
        }

        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final c m748(int i2) {
            int i3 = j + 67;
            int i4 = i3 % 128;
            k = i4;
            int i5 = i3 % 2;
            hl hlVar = this.l;
            hlVar.k = i2 | hlVar.k;
            int i6 = i4 + 17;
            j = i6 % 128;
            int i7 = i6 % 2;
            return this;
        }

        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final hl m749() {
            int i2 = k + 15;
            j = i2 % 128;
            if ((i2 % 2 != 0 ? '\n' : '\f') != '\n') {
                return this.l;
            }
            int i3 = 22 / 0;
            return this.l;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00c8  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x0185  */
        @Override // com.json.adqualitysdk.sdk.i.cg
        /* JADX INFO: renamed from: ﾒ */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object mo388(java.lang.String r17, java.util.List<java.lang.Object> r18, com.json.adqualitysdk.sdk.i.ch r19) {
            /*
                Method dump skipped, instruction units count: 622
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.hl.c.mo388(java.lang.String, java.util.List, com.ironsource.adqualitysdk.sdk.i.ch):java.lang.Object");
        }
    }

    public hl() {
        super.d();
        this.l = null;
        this.m = 0;
        this.n = true;
        this.o.clear();
    }

    @Override // com.json.adqualitysdk.sdk.i.hh
    protected final void d() {
        super.d();
        this.l = null;
        this.m = 0;
        this.n = true;
        this.o.clear();
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final int m740() {
        return this.m;
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final List<Class> m741() {
        return this.o;
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final Class m742() {
        return this.l;
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final boolean m743() {
        return this.n;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m744(Class cls) {
        this.l = cls;
    }
}
