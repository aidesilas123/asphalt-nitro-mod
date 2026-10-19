package lzma.sdk.rangecoder;

import androidx.core.view.ViewCompat;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public class Decoder {
    private int a;
    private int b;
    private InputStream c;

    public static void initBitModels(short[] sArr) {
        for (int i = 0; i < sArr.length; i++) {
            sArr[i] = 1024;
        }
    }

    public int a(short[] sArr, int i) throws IOException {
        short s = sArr[i];
        int i2 = this.a;
        int i3 = (i2 >>> 11) * s;
        int i4 = this.b;
        if ((i4 ^ Integer.MIN_VALUE) < (Integer.MIN_VALUE ^ i3)) {
            this.a = i3;
            sArr[i] = (short) (s + ((2048 - s) >>> 5));
            if ((i3 & ViewCompat.MEASURED_STATE_MASK) != 0) {
                return 0;
            }
            this.b = (i4 << 8) | this.c.read();
            this.a <<= 8;
            return 0;
        }
        int i5 = i2 - i3;
        this.a = i5;
        int i6 = i4 - i3;
        this.b = i6;
        sArr[i] = (short) (s - (s >>> 5));
        if ((i5 & ViewCompat.MEASURED_STATE_MASK) != 0) {
            return 1;
        }
        this.b = (i6 << 8) | this.c.read();
        this.a <<= 8;
        return 1;
    }

    public final int b(int i) throws IOException {
        int i2 = 0;
        while (i != 0) {
            int i3 = this.a >>> 1;
            this.a = i3;
            int i4 = this.b;
            int i5 = (i4 - i3) >>> 31;
            int i6 = i4 - ((i5 - 1) & i3);
            this.b = i6;
            i2 = (i2 << 1) | (1 - i5);
            if ((i3 & ViewCompat.MEASURED_STATE_MASK) == 0) {
                this.b = (i6 << 8) | this.c.read();
                this.a <<= 8;
            }
            i--;
        }
        return i2;
    }

    public final void c() throws IOException {
        this.b = 0;
        this.a = -1;
        for (int i = 0; i < 5; i++) {
            this.b = (this.b << 8) | this.c.read();
        }
    }

    public final void d() {
        this.c = null;
    }

    public final void e(InputStream inputStream) {
        this.c = inputStream;
    }
}
