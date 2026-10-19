package com.json.adqualitysdk.sdk.i;

import com.json.b4;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes4.dex */
public final class fp extends fr {
    private static char[] a = {';', 'o', 'h', 'j', 'h', 'B', '$', 'o', 227};
    private static int b = 0;
    private static int c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private dx f5640d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private fr f5641e;

    public fp(dx dxVar, fr frVar) {
        this.f5640d = dxVar;
        this.f5641e = frVar;
    }

    private static String a(boolean z, int[] iArr, String str) throws UnsupportedEncodingException {
        String str2;
        Object bytes = str;
        if (str != null) {
            bytes = str.getBytes("ISO-8859-1");
        }
        byte[] bArr = (byte[]) bytes;
        synchronized (i.f67) {
            int i = iArr[0];
            int i2 = iArr[1];
            int i3 = iArr[2];
            int i4 = iArr[3];
            char[] cArr = new char[i2];
            System.arraycopy(a, i, cArr, 0, i2);
            if (bArr != null) {
                char[] cArr2 = new char[i2];
                i.f68 = 0;
                char c2 = 0;
                while (true) {
                    int i5 = i.f68;
                    if (i5 >= i2) {
                        break;
                    }
                    if (bArr[i5] == 1) {
                        cArr2[i5] = (char) (((cArr[i5] << 1) + 1) - c2);
                    } else {
                        cArr2[i5] = (char) ((cArr[i5] << 1) - c2);
                    }
                    c2 = cArr2[i5];
                    i.f68 = i5 + 1;
                }
                cArr = cArr2;
            }
            if (i4 > 0) {
                char[] cArr3 = new char[i2];
                System.arraycopy(cArr, 0, cArr3, 0, i2);
                int i6 = i2 - i4;
                System.arraycopy(cArr3, 0, cArr, i6, i4);
                System.arraycopy(cArr3, i4, cArr, 0, i6);
            }
            if (z) {
                char[] cArr4 = new char[i2];
                i.f68 = 0;
                while (true) {
                    int i7 = i.f68;
                    if (i7 >= i2) {
                        break;
                    }
                    cArr4[i7] = cArr[(i2 - i7) - 1];
                    i.f68 = i7 + 1;
                }
                cArr = cArr4;
            }
            if (i3 > 0) {
                i.f68 = 0;
                while (true) {
                    int i8 = i.f68;
                    if (i8 >= i2) {
                        break;
                    }
                    cArr[i8] = (char) (cArr[i8] - iArr[2]);
                    i.f68 = i8 + 1;
                }
            }
            str2 = new String(cArr);
        }
        return str2;
    }

    public final boolean equals(Object obj) {
        int i = c + 85;
        int i2 = i % 128;
        b = i2;
        int i3 = i % 2;
        if (this == obj) {
            return true;
        }
        if ((obj != null ? b4.R : 'P') != 'P') {
            int i4 = i2 + 17;
            c = i4 % 128;
            int i5 = i4 % 2;
            if ((fp.class != obj.getClass() ? 'O' : (char) 19) == 19) {
                fp fpVar = (fp) obj;
                dx dxVar = this.f5640d;
                if (dxVar == null ? fpVar.f5640d != null : !dxVar.equals(fpVar.f5640d)) {
                    return false;
                }
                fr frVar = this.f5641e;
                fr frVar2 = fpVar.f5641e;
                if (frVar != null) {
                    return frVar.equals(frVar2);
                }
                if (frVar2 == null) {
                    int i6 = b + 89;
                    c = i6 % 128;
                    return i6 % 2 != 0;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode;
        int i = b + 115;
        int i2 = i % 128;
        c = i2;
        int i3 = i % 2;
        dx dxVar = this.f5640d;
        if ((dxVar != null ? 'N' : 'T') != 'T') {
            int i4 = i2 + 43;
            b = i4 % 128;
            int i5 = i4 % 2;
            iHashCode = dxVar.hashCode();
        } else {
            iHashCode = 0;
        }
        int i6 = iHashCode * 31;
        fr frVar = this.f5641e;
        return i6 + ((frVar != null ? '>' : (char) 23) != 23 ? frVar.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(a(false, new int[]{0, 7, 0, 0}, "\u0001\u0001\u0001\u0001\u0001\u0001\u0000").intern());
        sb.append(this.f5640d);
        sb.append(a(true, new int[]{7, 2, 191, 0}, "\u0001\u0001").intern());
        sb.append(this.f5641e);
        String string = sb.toString();
        int i = b + 37;
        c = i % 128;
        if (i % 2 != 0) {
            return string;
        }
        int i2 = 64 / 0;
        return string;
    }

    @Override // com.json.adqualitysdk.sdk.i.fr
    /* JADX INFO: renamed from: ﾇ */
    public final dp mo714(dr drVar, cj cjVar) {
        while (this.f5640d.m702(drVar, cjVar).m678()) {
            dp dpVarMo714 = this.f5641e.mo714(drVar, cjVar);
            if ((!dpVarMo714.m675() ? ',' : (char) 16) != ',') {
                break;
            }
            int i = b + 17;
            c = i % 128;
            int i2 = i % 2;
            if ((dpVarMo714.m677() ? (char) 15 : 'R') == 15) {
                int i3 = b + 111;
                c = i3 % 128;
                int i4 = i3 % 2;
                return dpVarMo714;
            }
        }
        return new dp(null);
    }
}
