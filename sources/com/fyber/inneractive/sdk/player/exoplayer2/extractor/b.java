package com.fyber.inneractive.sdk.player.exoplayer2.extractor;

import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements g {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final byte[] f2227g = new byte[4096];
    public final com.fyber.inneractive.sdk.player.exoplayer2.upstream.g a;
    public final long b;
    public long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte[] f2228d = new byte[65536];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2229e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2230f;

    public b(com.fyber.inneractive.sdk.player.exoplayer2.upstream.g gVar, long j, long j2) {
        this.a = gVar;
        this.c = j;
        this.b = j2;
    }

    public int a(byte[] bArr, int i, int i2) throws InterruptedException, IOException {
        int i3 = this.f2230f;
        int iA = 0;
        if (i3 != 0) {
            int iMin = Math.min(i3, i2);
            System.arraycopy(this.f2228d, 0, bArr, i, iMin);
            d(iMin);
            iA = iMin;
        }
        if (iA == 0) {
            iA = a(bArr, i, i2, 0, true);
        }
        a(iA);
        return iA;
    }

    public final int a(byte[] bArr, int i, int i2, int i3, boolean z) throws InterruptedException, IOException {
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        int iA = this.a.a(bArr, i + i3, i2 - i3);
        if (iA != -1) {
            return i3 + iA;
        }
        if (i3 == 0 && z) {
            return -1;
        }
        throw new EOFException();
    }

    public final void a(int i) {
        if (i != -1) {
            this.c += (long) i;
        }
    }

    public boolean a(int i, boolean z) throws InterruptedException, IOException {
        int i2 = this.f2229e + i;
        byte[] bArr = this.f2228d;
        if (i2 > bArr.length) {
            int i3 = u.a;
            this.f2228d = Arrays.copyOf(this.f2228d, Math.max(65536 + i2, Math.min(bArr.length * 2, i2 + 524288)));
        }
        int iMin = Math.min(this.f2230f - this.f2229e, i);
        while (iMin < i) {
            iMin = a(this.f2228d, this.f2229e, i, iMin, z);
            if (iMin == -1) {
                return false;
            }
        }
        int i4 = this.f2229e + i;
        this.f2229e = i4;
        this.f2230f = Math.max(this.f2230f, i4);
        return true;
    }

    public boolean a(byte[] bArr, int i, int i2, boolean z) throws InterruptedException, IOException {
        if (!a(i2, z)) {
            return false;
        }
        System.arraycopy(this.f2228d, this.f2229e - i2, bArr, i, i2);
        return true;
    }

    public int b(int i) throws InterruptedException, IOException {
        int iMin = Math.min(this.f2230f, i);
        d(iMin);
        if (iMin == 0) {
            byte[] bArr = f2227g;
            iMin = a(bArr, 0, Math.min(i, bArr.length), 0, true);
        }
        a(iMin);
        return iMin;
    }

    public boolean b(byte[] bArr, int i, int i2, boolean z) throws InterruptedException, IOException {
        int iA;
        int i3 = this.f2230f;
        if (i3 == 0) {
            iA = 0;
        } else {
            int iMin = Math.min(i3, i2);
            System.arraycopy(this.f2228d, 0, bArr, i, iMin);
            d(iMin);
            iA = iMin;
        }
        while (iA < i2 && iA != -1) {
            iA = a(bArr, i, i2, iA, z);
        }
        a(iA);
        return iA != -1;
    }

    public void c(int i) throws InterruptedException, IOException {
        int iMin = Math.min(this.f2230f, i);
        d(iMin);
        int iA = iMin;
        while (iA < i && iA != -1) {
            byte[] bArr = f2227g;
            iA = a(bArr, -iA, Math.min(i, bArr.length + iA), iA, false);
        }
        a(iA);
    }

    public final void d(int i) {
        int i2 = this.f2230f - i;
        this.f2230f = i2;
        this.f2229e = 0;
        byte[] bArr = this.f2228d;
        byte[] bArr2 = i2 < bArr.length - 524288 ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.f2228d = bArr2;
    }
}
