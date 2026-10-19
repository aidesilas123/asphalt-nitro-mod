package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.util.Base64;
import com.applovin.exoplayer2.common.base.Ascii;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class VK implements InterfaceC1033Gc {
    public static byte[] A03;
    public static String[] A04 = {"Qh9bmuunZVNjCxMfQqp1TPZ6eQf7WY7l", "EJ3Pv4RmuS56E2GEtVJWqE7", "JL6QL60SCyNREhkJiPjX9lCI5sSEdh3E", "fY9V1T4K", "nskea9", "zswUenOt1n5zUjvxlDGbljbldmkP", "RjSf", "SzU1Hp8PCROGflUtYYCmDG"};
    public int A00;
    public C1037Gg A01;
    public byte[] A02;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A04;
            if (strArr[5].length() == strArr[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A04;
            strArr2[0] = "HPeuzqUxaD1vBlGbyXeTZfZGNJglEGHQ";
            strArr2[2] = "qkhW3lOqTV0ckWqWQ8OcwzSw2chzxPMS";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 53);
            i4++;
        }
    }

    public static void A01() {
        A03 = new byte[]{Ascii.DEL, 114, 43, 40, 58, 44, Ascii.DEL, 125, Ascii.CAN, 47, 47, 50, 47, 125, 42, 53, 52, 49, 56, 125, 45, 60, 47, 46, 52, 51, 58, 125, Ascii.US, 60, 46, 56, 107, 105, 125, 56, 51, 62, 50, 57, 56, 57, 125, 46, 41, 47, 52, 51, 58, 103, 125, 110, 104, Ascii.SYN, 122, 104, 120, 114, 114, 95, 100, 111, 114, 122, 111, 105, 126, 111, 110, 42, 95, 88, 67, 42, 108, 101, 120, 103, 107, 126, 48, 42, 55, Ascii.FF, 17, Ascii.ETB, Ascii.DC2, Ascii.DC2, Ascii.CR, Ascii.DLE, Ascii.SYN, 7, 6, 66, 17, 1, 10, 7, Ascii.SI, 7, 88, 66, 1, 4, 17, 4};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final Uri A85() {
        C1037Gg c1037Gg = this.A01;
        if (c1037Gg != null) {
            return c1037Gg.A04;
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final long ADb(C1037Gg c1037Gg) throws IOException {
        this.A01 = c1037Gg;
        Uri uri = c1037Gg.A04;
        String scheme = uri.getScheme();
        if (!A00(102, 4, 80).equals(scheme)) {
            throw new C08729d(A00(82, 20, 87) + scheme);
        }
        String[] strArrA0l = C1078Hx.A0l(uri.getSchemeSpecificPart(), A00(0, 1, 102));
        if (strArrA0l.length != 2) {
            throw new C08729d(A00(59, 23, 63) + uri);
        }
        String str = strArrA0l[1];
        if (strArrA0l[0].contains(A00(1, 7, 124))) {
            try {
                this.A02 = Base64.decode(str, 0);
            } catch (IllegalArgumentException e2) {
                throw new C08729d(A00(8, 43, 104) + str, e2);
            }
        } else {
            this.A02 = URLDecoder.decode(str, A00(51, 8, 14)).getBytes();
        }
        return this.A02.length;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final void close() throws IOException {
        this.A01 = null;
        this.A02 = null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int length = this.A02.length - this.A00;
        if (length == 0) {
            return -1;
        }
        int iMin = Math.min(i2, length);
        System.arraycopy(this.A02, this.A00, bArr, i, iMin);
        this.A00 += iMin;
        return iMin;
    }
}
