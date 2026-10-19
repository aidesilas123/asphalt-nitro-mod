package lzma.sdk.rangecoder;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class BitTreeDecoder {
    private final short[] a;
    private final int b;

    public BitTreeDecoder(int i) {
        this.b = i;
        this.a = new short[1 << i];
    }

    public static int reverseDecode(short[] sArr, int i, Decoder decoder, int i2) throws IOException {
        int i3 = 0;
        int i4 = 1;
        for (int i5 = 0; i5 < i2; i5++) {
            int iA = decoder.a(sArr, i + i4);
            i4 = (i4 << 1) + iA;
            i3 |= iA << i5;
        }
        return i3;
    }

    public int a(Decoder decoder) throws IOException {
        int iA = 1;
        for (int i = this.b; i != 0; i--) {
            iA = decoder.a(this.a, iA) + (iA << 1);
        }
        return iA - (1 << this.b);
    }

    public void b() {
        Decoder.initBitModels(this.a);
    }

    public int c(Decoder decoder) throws IOException {
        int i = 0;
        int i2 = 1;
        for (int i3 = 0; i3 < this.b; i3++) {
            int iA = decoder.a(this.a, i2);
            i2 = (i2 << 1) + iA;
            i |= iA << i3;
        }
        return i;
    }
}
