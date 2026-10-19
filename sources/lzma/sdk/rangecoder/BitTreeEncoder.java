package lzma.sdk.rangecoder;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class BitTreeEncoder {
    public static void reverseEncode(short[] sArr, int i, Encoder encoder, int i2, int i3) throws IOException {
        int i4 = 1;
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = i3 & 1;
            encoder.a(sArr, i + i4, i6);
            i4 = (i4 << 1) | i6;
            i3 >>= 1;
        }
    }

    public static int reverseGetPrice(short[] sArr, int i, int i2, int i3) {
        int price = 0;
        int i4 = 1;
        while (i2 != 0) {
            int i5 = i3 & 1;
            i3 >>>= 1;
            price += Encoder.getPrice(sArr[i + i4], i5);
            i4 = (i4 << 1) | i5;
            i2--;
        }
        return price;
    }
}
