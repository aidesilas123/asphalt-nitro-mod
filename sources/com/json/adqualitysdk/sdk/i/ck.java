package com.json.adqualitysdk.sdk.i;

import com.json.adqualitysdk.sdk.i.cl;
import com.json.adqualitysdk.sdk.i.hu;
import java.io.UnsupportedEncodingException;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ck {
    private hu.b a;
    private cl b;
    private List<String> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f5446d;

    public static class e extends cx implements cg {
        private static char h = 36046;
        private static char i = 53976;
        private static char j = 40352;
        private static char k = 45613;
        private static char[] l = {157, 143, 158, 'w', 147, 152, 'n', 154, 146, 'p', 153, 156, '}', 159, 'm', 150, 139, 'v', 151, 141, 's', 140, 142};
        private static int m = 42;
        private static boolean n = true;
        private static boolean o = true;
        private static int p = 0;
        private static int q = 1;
        private ck r;
        private cl.e s;

        public e(List<String> list, int i2) {
            ck ckVar = new ck();
            this.r = ckVar;
            ckVar.a = new hu.b();
            this.r.c = list;
            this.r.f5446d = i2;
            this.s = new cl.e();
        }

        private ck d() {
            int i2 = q + 57;
            p = i2 % 128;
            if ((i2 % 2 != 0 ? 'T' : (char) 27) != 'T') {
                this.r.b = this.s.m491();
                return this.r;
            }
            this.r.b = this.s.m491();
            throw null;
        }

        private static String e(int[] iArr, String str, int i2, String str2) throws UnsupportedEncodingException {
            Object bytes = str2;
            if (str2 != null) {
                bytes = str2.getBytes("ISO-8859-1");
            }
            byte[] bArr = (byte[]) bytes;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (k.f131) {
                char[] cArr2 = l;
                int i3 = m;
                if (o) {
                    int length = bArr.length;
                    k.f129 = length;
                    char[] cArr3 = new char[length];
                    k.f130 = 0;
                    while (k.f130 < k.f129) {
                        int i4 = k.f130;
                        int i5 = k.f129 - 1;
                        int i6 = k.f130;
                        cArr3[i4] = (char) (cArr2[bArr[i5 - i6] + i2] - i3);
                        k.f130 = i6 + 1;
                    }
                    return new String(cArr3);
                }
                if (n) {
                    int length2 = cArr.length;
                    k.f129 = length2;
                    char[] cArr4 = new char[length2];
                    k.f130 = 0;
                    while (k.f130 < k.f129) {
                        int i7 = k.f130;
                        int i8 = k.f129 - 1;
                        int i9 = k.f130;
                        cArr4[i7] = (char) (cArr2[cArr[i8 - i9] - i2] - i3);
                        k.f130 = i9 + 1;
                    }
                    return new String(cArr4);
                }
                int length3 = iArr.length;
                k.f129 = length3;
                char[] cArr5 = new char[length3];
                k.f130 = 0;
                while (k.f130 < k.f129) {
                    int i10 = k.f130;
                    int i11 = k.f129 - 1;
                    int i12 = k.f130;
                    cArr5[i10] = (char) (cArr2[iArr[i11 - i12] - i2] - i3);
                    k.f130 = i12 + 1;
                }
                return new String(cArr5);
            }
        }

        private static String f(String str, int i2) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (o.f139) {
                char[] cArr2 = new char[cArr.length];
                o.f138 = 0;
                char[] cArr3 = new char[2];
                while (true) {
                    int i3 = o.f138;
                    if (i3 < cArr.length) {
                        cArr3[0] = cArr[i3];
                        cArr3[1] = cArr[i3 + 1];
                        int i4 = 58224;
                        for (int i5 = 0; i5 < 16; i5++) {
                            cArr3[1] = (char) (cArr3[1] - (((cArr3[0] + i4) ^ ((cArr3[0] << 4) + j)) ^ ((cArr3[0] >>> 5) + k)));
                            cArr3[0] = (char) (cArr3[0] - (((cArr3[1] + i4) ^ ((cArr3[1] << 4) + h)) ^ ((cArr3[1] >>> 5) + i)));
                            i4 -= 40503;
                        }
                        int i6 = o.f138;
                        cArr2[i6] = cArr3[0];
                        cArr2[i6 + 1] = cArr3[1];
                        o.f138 = i6 + 2;
                    } else {
                        str2 = new String(cArr2, 0, i2);
                    }
                }
            }
            return str2;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:76:0x0235  */
        @Override // com.json.adqualitysdk.sdk.i.cg
        /* JADX INFO: renamed from: ﾒ */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object mo388(java.lang.String r17, java.util.List<java.lang.Object> r18, com.json.adqualitysdk.sdk.i.ch r19) {
            /*
                Method dump skipped, instruction units count: 962
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.ck.e.mo388(java.lang.String, java.util.List, com.ironsource.adqualitysdk.sdk.i.ch):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final cl m483() {
        return this.b;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final hu m484(hr hrVar) {
        return this.a.m798(hrVar, this.c, this.f5446d);
    }
}
