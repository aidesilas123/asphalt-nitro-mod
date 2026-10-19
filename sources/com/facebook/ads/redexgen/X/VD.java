package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class VD implements InterfaceC1033Gc {
    public static byte[] A05;
    public static String[] A06 = {"2AQ", "PKEE8tvP1F9G5CS2asOfHv5i9NmL9OD8", "nghUlW0EKiCso94RSH6SGDaiGhOOZ9vR", "y3nJ4vSOM9HwnTFSw", "dDA", "lgpDjnw", "z3SCjqWwobuDiPiZI", "K1NyJtZzbkl5fIhEU"};
    public long A00;
    public Uri A01;
    public RandomAccessFile A02;
    public boolean A03;
    public final InterfaceC1053Gy<? super VD> A04;

    static {
        A01();
    }

    public VD() {
        this(null);
    }

    public VD(InterfaceC1053Gy<? super VD> interfaceC1053Gy) {
        this.A04 = interfaceC1053Gy;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 99);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        byte[] bArr = {-23};
        if (A06[3].length() == 0) {
            throw new RuntimeException();
        }
        String[] strArr = A06;
        strArr[2] = "0CNdTW9yzTlkWk7IYlaLkwwChYLMq6mo";
        strArr[1] = "0Hm8psTbLgTGmvvfzx0WFuRjr22Bb9pe";
        A05 = bArr;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final Uri A85() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final long ADb(C1037Gg c1037Gg) throws C1039Gj {
        try {
            this.A01 = c1037Gg.A04;
            RandomAccessFile randomAccessFile = new RandomAccessFile(c1037Gg.A04.getPath(), A00(0, 1, 20));
            this.A02 = randomAccessFile;
            randomAccessFile.seek(c1037Gg.A03);
            long length = c1037Gg.A02 == -1 ? this.A02.length() - c1037Gg.A03 : c1037Gg.A02;
            this.A00 = length;
            if (length < 0) {
                throw new EOFException();
            }
            this.A03 = true;
            InterfaceC1053Gy<? super VD> interfaceC1053Gy = this.A04;
            if (interfaceC1053Gy != null) {
                interfaceC1053Gy.ADF(this, c1037Gg);
            }
            return this.A00;
        } catch (IOException e2) {
            throw new C1039Gj(e2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final void close() throws C1039Gj {
        this.A01 = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.A02;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
            } catch (IOException e2) {
                throw new C1039Gj(e2);
            }
        } finally {
            this.A02 = null;
            if (this.A03) {
                this.A03 = false;
                InterfaceC1053Gy<? super VD> interfaceC1053Gy = this.A04;
                if (interfaceC1053Gy != null) {
                    interfaceC1053Gy.ADE(this);
                }
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final int read(byte[] bArr, int i, int i2) throws C1039Gj {
        if (i2 == 0) {
            return 0;
        }
        long j = this.A00;
        if (j == 0) {
            return -1;
        }
        try {
            int i3 = this.A02.read(bArr, i, (int) Math.min(j, i2));
            if (i3 > 0) {
                this.A00 -= (long) i3;
                InterfaceC1053Gy<? super VD> interfaceC1053Gy = this.A04;
                if (interfaceC1053Gy != null) {
                    interfaceC1053Gy.AAm(this, i3);
                }
            }
            return i3;
        } catch (IOException e2) {
            throw new C1039Gj(e2);
        }
    }
}
