package lzma.sdk.rangecoder;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class Encoder {
    private static final int[] a = new int[512];
    private OutputStream b;
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f10535d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f10536e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f10537f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f10538g;

    static {
        for (int i = 8; i >= 0; i--) {
            int i2 = 9 - i;
            int i3 = i2 - 1;
            int i4 = 1 << i2;
            for (int i5 = 1 << i3; i5 < i4; i5++) {
                a[i5] = (i << 6) + (((i4 - i5) << 6) >>> i3);
            }
        }
    }

    public static int getPrice(int i, int i2) {
        return a[(((i - i2) ^ (-i2)) & 2047) >>> 2];
    }

    public static int getPrice0(int i) {
        return a[i >>> 2];
    }

    public static int getPrice1(int i) {
        return a[(2048 - i) >>> 2];
    }

    public static void initBitModels(short[] sArr) {
        for (int i = 0; i < sArr.length; i++) {
            sArr[i] = 1024;
        }
    }

    public void a(short[] sArr, int i, int i2) throws IOException {
        short s = sArr[i];
        int i3 = this.f10535d;
        int i4 = (i3 >>> 11) * s;
        if (i2 == 0) {
            this.f10535d = i4;
            sArr[i] = (short) (s + ((2048 - s) >>> 5));
        } else {
            this.c += ((long) i4) & 4294967295L;
            this.f10535d = i3 - i4;
            sArr[i] = (short) (s - (s >>> 5));
        }
        int i5 = this.f10535d;
        if (((-16777216) & i5) == 0) {
            this.f10535d = i5 << 8;
            b();
        }
    }

    void b() throws IOException {
        int i;
        long j = this.c;
        int i2 = (int) (j >>> 32);
        if (i2 != 0 || j < 4278190080L) {
            this.f10538g += (long) this.f10536e;
            int i3 = this.f10537f;
            do {
                this.b.write(i3 + i2);
                i3 = 255;
                i = this.f10536e - 1;
                this.f10536e = i;
            } while (i != 0);
            this.f10537f = ((int) this.c) >>> 24;
        }
        this.f10536e++;
        this.c = (this.c & 16777215) << 8;
    }
}
