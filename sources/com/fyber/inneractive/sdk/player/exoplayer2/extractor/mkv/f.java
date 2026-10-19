package com.fyber.inneractive.sdk.player.exoplayer2.extractor.mkv;

import com.fyber.inneractive.sdk.player.exoplayer2.extractor.g;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final long[] f2309d = {128, 64, 32, 16, 8, 4, 2, 1};
    public final byte[] a = new byte[8];
    public int b;
    public int c;

    public static int a(int i) {
        long j;
        int i2 = 0;
        do {
            long[] jArr = f2309d;
            if (i2 >= jArr.length) {
                return -1;
            }
            j = jArr[i2] & ((long) i);
            i2++;
        } while (j == 0);
        return i2;
    }

    public static long a(byte[] bArr, int i, boolean z) {
        long j = ((long) bArr[0]) & 255;
        if (z) {
            j &= ~f2309d[i - 1];
        }
        for (int i2 = 1; i2 < i; i2++) {
            j = (j << 8) | (((long) bArr[i2]) & 255);
        }
        return j;
    }

    public long a(g gVar, boolean z, boolean z2, int i) throws InterruptedException, IOException {
        if (this.b == 0) {
            if (!((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).b(this.a, 0, 1, z)) {
                return -1L;
            }
            int iA = a(this.a[0] & 255);
            this.c = iA;
            if (iA == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.b = 1;
        }
        int i2 = this.c;
        if (i2 > i) {
            this.b = 0;
            return -2L;
        }
        if (i2 != 1) {
            ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).b(this.a, 1, i2 - 1, false);
        }
        this.b = 0;
        return a(this.a, this.c, z2);
    }
}
