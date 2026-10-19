package com.fyber.inneractive.sdk.player.exoplayer2.extractor;

import android.media.MediaCodec;
import com.applovin.exoplayer2.common.base.Ascii;
import com.fyber.inneractive.sdk.player.exoplayer2.decoder.a;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements n {
    public final com.fyber.inneractive.sdk.player.exoplayer2.upstream.b a;
    public final int b;
    public final c c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinkedBlockingDeque<com.fyber.inneractive.sdk.player.exoplayer2.upstream.a> f2231d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final b f2232e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.k f2233f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AtomicInteger f2234g;
    public long h;
    public com.fyber.inneractive.sdk.player.exoplayer2.i i;
    public long j;
    public com.fyber.inneractive.sdk.player.exoplayer2.upstream.a k;
    public int l;
    public boolean m;
    public InterfaceC0178d n;

    public static final class b {
        public int a;
        public long b;
        public long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public byte[] f2235d;

        public b() {
        }
    }

    public static final class c {
        public int i;
        public int j;
        public int k;
        public int l;
        public com.fyber.inneractive.sdk.player.exoplayer2.i q;
        public int r;
        public int a = 1000;
        public int[] b = new int[1000];
        public long[] c = new long[1000];

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long[] f2238f = new long[1000];

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int[] f2237e = new int[1000];

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int[] f2236d = new int[1000];

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public byte[][] f2239g = new byte[1000][];
        public com.fyber.inneractive.sdk.player.exoplayer2.i[] h = new com.fyber.inneractive.sdk.player.exoplayer2.i[1000];
        public long m = Long.MIN_VALUE;
        public long n = Long.MIN_VALUE;
        public boolean p = true;
        public boolean o = true;

        public synchronized void a(long j, int i, long j2, int i2, byte[] bArr) {
            if (this.o) {
                if ((i & 1) == 0) {
                    return;
                } else {
                    this.o = false;
                }
            }
            com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(!this.p);
            synchronized (this) {
                this.n = Math.max(this.n, j);
                long[] jArr = this.f2238f;
                int i3 = this.l;
                jArr[i3] = j;
                long[] jArr2 = this.c;
                jArr2[i3] = j2;
                this.f2236d[i3] = i2;
                this.f2237e[i3] = i;
                this.f2239g[i3] = bArr;
                this.h[i3] = this.q;
                this.b[i3] = this.r;
                int i4 = this.i + 1;
                this.i = i4;
                int i5 = this.a;
                if (i4 == i5) {
                    int i6 = i5 + 1000;
                    int[] iArr = new int[i6];
                    long[] jArr3 = new long[i6];
                    long[] jArr4 = new long[i6];
                    int[] iArr2 = new int[i6];
                    int[] iArr3 = new int[i6];
                    byte[][] bArr2 = new byte[i6][];
                    com.fyber.inneractive.sdk.player.exoplayer2.i[] iVarArr = new com.fyber.inneractive.sdk.player.exoplayer2.i[i6];
                    int i7 = this.k;
                    int i8 = i5 - i7;
                    System.arraycopy(jArr2, i7, jArr3, 0, i8);
                    System.arraycopy(this.f2238f, this.k, jArr4, 0, i8);
                    System.arraycopy(this.f2237e, this.k, iArr2, 0, i8);
                    System.arraycopy(this.f2236d, this.k, iArr3, 0, i8);
                    System.arraycopy(this.f2239g, this.k, bArr2, 0, i8);
                    System.arraycopy(this.h, this.k, iVarArr, 0, i8);
                    System.arraycopy(this.b, this.k, iArr, 0, i8);
                    int i9 = this.k;
                    System.arraycopy(this.c, 0, jArr3, i8, i9);
                    System.arraycopy(this.f2238f, 0, jArr4, i8, i9);
                    System.arraycopy(this.f2237e, 0, iArr2, i8, i9);
                    System.arraycopy(this.f2236d, 0, iArr3, i8, i9);
                    System.arraycopy(this.f2239g, 0, bArr2, i8, i9);
                    System.arraycopy(this.h, 0, iVarArr, i8, i9);
                    System.arraycopy(this.b, 0, iArr, i8, i9);
                    this.c = jArr3;
                    this.f2238f = jArr4;
                    this.f2237e = iArr2;
                    this.f2236d = iArr3;
                    this.f2239g = bArr2;
                    this.h = iVarArr;
                    this.b = iArr;
                    this.k = 0;
                    int i10 = this.a;
                    this.l = i10;
                    this.i = i10;
                    this.a = i6;
                } else {
                    int i11 = i3 + 1;
                    this.l = i11;
                    if (i11 == i5) {
                        this.l = 0;
                    }
                }
            }
        }

        public synchronized boolean a(long j) {
            boolean z = false;
            if (this.m >= j) {
                return false;
            }
            int i = this.i;
            while (i > 0 && this.f2238f[((this.k + i) - 1) % this.a] >= j) {
                i--;
            }
            int i2 = this.j;
            int i3 = this.i;
            int i4 = (i2 + i3) - (i + i2);
            if (i4 >= 0 && i4 <= i3) {
                z = true;
            }
            com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(z);
            if (i4 != 0) {
                int i5 = this.i - i4;
                this.i = i5;
                int i6 = this.l;
                int i7 = this.a;
                this.l = ((i6 + i7) - i4) % i7;
                this.n = Long.MIN_VALUE;
                for (int i8 = i5 - 1; i8 >= 0; i8--) {
                    int i9 = (this.k + i8) % this.a;
                    this.n = Math.max(this.n, this.f2238f[i9]);
                    if ((this.f2237e[i9] & 1) != 0) {
                        break;
                    }
                }
                long j2 = this.c[this.l];
            } else if (this.j != 0) {
                int i10 = this.l;
                if (i10 == 0) {
                    i10 = this.a;
                }
                int i11 = i10 - 1;
                long j3 = this.c[i11];
                int i12 = this.f2236d[i11];
            }
            return true;
        }
    }

    /* JADX INFO: renamed from: com.fyber.inneractive.sdk.player.exoplayer2.extractor.d$d, reason: collision with other inner class name */
    public interface InterfaceC0178d {
        void a(com.fyber.inneractive.sdk.player.exoplayer2.i iVar);
    }

    public d(com.fyber.inneractive.sdk.player.exoplayer2.upstream.b bVar) {
        this.a = bVar;
        int iA = ((com.fyber.inneractive.sdk.player.exoplayer2.upstream.k) bVar).a();
        this.b = iA;
        this.c = new c();
        this.f2231d = new LinkedBlockingDeque<>();
        this.f2232e = new b();
        this.f2233f = new com.fyber.inneractive.sdk.player.exoplayer2.util.k(32);
        this.f2234g = new AtomicInteger();
        this.l = iA;
    }

    public final int a(int i) {
        com.fyber.inneractive.sdk.player.exoplayer2.upstream.a aVar;
        if (this.l == this.b) {
            this.l = 0;
            com.fyber.inneractive.sdk.player.exoplayer2.upstream.k kVar = (com.fyber.inneractive.sdk.player.exoplayer2.upstream.k) this.a;
            synchronized (kVar) {
                kVar.f2578f++;
                int i2 = kVar.f2579g;
                if (i2 > 0) {
                    com.fyber.inneractive.sdk.player.exoplayer2.upstream.a[] aVarArr = kVar.h;
                    int i3 = i2 - 1;
                    kVar.f2579g = i3;
                    aVar = aVarArr[i3];
                    aVarArr[i3] = null;
                } else {
                    aVar = new com.fyber.inneractive.sdk.player.exoplayer2.upstream.a(new byte[kVar.b], 0);
                }
            }
            this.k = aVar;
            this.f2231d.add(aVar);
        }
        return Math.min(i, this.b - this.l);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.n
    public int a(g gVar, int i, boolean z) throws InterruptedException, IOException {
        if (!h()) {
            int iB = ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).b(i);
            if (iB != -1) {
                return iB;
            }
            if (z) {
                return -1;
            }
            throw new EOFException();
        }
        try {
            int iA = a(i);
            com.fyber.inneractive.sdk.player.exoplayer2.upstream.a aVar = this.k;
            int iA2 = ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).a(aVar.a, aVar.b + this.l, iA);
            if (iA2 == -1) {
                if (z) {
                    return -1;
                }
                throw new EOFException();
            }
            this.l += iA2;
            this.j += (long) iA2;
            return iA2;
        } finally {
            c();
        }
    }

    public int a(com.fyber.inneractive.sdk.player.exoplayer2.j jVar, com.fyber.inneractive.sdk.player.exoplayer2.decoder.b bVar, boolean z, boolean z2, long j) {
        byte b2;
        int iQ;
        c cVar = this.c;
        com.fyber.inneractive.sdk.player.exoplayer2.i iVar = this.i;
        b bVar2 = this.f2232e;
        synchronized (cVar) {
            if (cVar.i != 0) {
                if (!z) {
                    com.fyber.inneractive.sdk.player.exoplayer2.i[] iVarArr = cVar.h;
                    int i = cVar.k;
                    if (iVarArr[i] == iVar) {
                        if (!(bVar.c == null && bVar.f2224e == 0)) {
                            long j2 = cVar.f2238f[i];
                            bVar.f2223d = j2;
                            bVar.a = cVar.f2237e[i];
                            bVar2.a = cVar.f2236d[i];
                            bVar2.b = cVar.c[i];
                            bVar2.f2235d = cVar.f2239g[i];
                            cVar.m = Math.max(cVar.m, j2);
                            int i2 = cVar.i - 1;
                            cVar.i = i2;
                            int i3 = cVar.k + 1;
                            cVar.k = i3;
                            cVar.j++;
                            if (i3 == cVar.a) {
                                cVar.k = 0;
                            }
                            bVar2.c = i2 > 0 ? cVar.c[cVar.k] : bVar2.b + ((long) bVar2.a);
                            b2 = -4;
                        }
                        b2 = -3;
                    }
                }
                jVar.a = cVar.h[cVar.k];
                b2 = -5;
            } else if (z2) {
                bVar.a = 4;
                b2 = -4;
            } else {
                com.fyber.inneractive.sdk.player.exoplayer2.i iVar2 = cVar.q;
                if (iVar2 != null && (z || iVar2 != iVar)) {
                    jVar.a = iVar2;
                    b2 = -5;
                }
                b2 = -3;
            }
        }
        if (b2 == -5) {
            this.i = jVar.a;
            return -5;
        }
        if (b2 != -4) {
            if (b2 == -3) {
                return -3;
            }
            throw new IllegalStateException();
        }
        if (bVar.b(4)) {
            return -4;
        }
        if (bVar.f2223d < j) {
            bVar.a |= Integer.MIN_VALUE;
        }
        if (bVar.b(1073741824)) {
            b bVar3 = this.f2232e;
            long j3 = bVar3.b;
            this.f2233f.c(1);
            a(j3, this.f2233f.a, 1);
            long j4 = j3 + 1;
            byte b3 = this.f2233f.a[0];
            boolean z3 = (b3 & 128) != 0;
            int i4 = b3 & Ascii.DEL;
            com.fyber.inneractive.sdk.player.exoplayer2.decoder.a aVar = bVar.b;
            if (aVar.a == null) {
                aVar.a = new byte[16];
            }
            a(j4, aVar.a, i4);
            long j5 = j4 + ((long) i4);
            if (z3) {
                this.f2233f.c(2);
                a(j5, this.f2233f.a, 2);
                j5 += 2;
                iQ = this.f2233f.q();
            } else {
                iQ = 1;
            }
            com.fyber.inneractive.sdk.player.exoplayer2.decoder.a aVar2 = bVar.b;
            int[] iArr = aVar2.f2219d;
            if (iArr == null || iArr.length < iQ) {
                iArr = new int[iQ];
            }
            int[] iArr2 = aVar2.f2220e;
            if (iArr2 == null || iArr2.length < iQ) {
                iArr2 = new int[iQ];
            }
            if (z3) {
                int i5 = iQ * 6;
                this.f2233f.c(i5);
                a(j5, this.f2233f.a, i5);
                j5 += (long) i5;
                this.f2233f.e(0);
                for (int i6 = 0; i6 < iQ; i6++) {
                    iArr[i6] = this.f2233f.q();
                    iArr2[i6] = this.f2233f.o();
                }
            } else {
                iArr[0] = 0;
                iArr2[0] = bVar3.a - ((int) (j5 - bVar3.b));
            }
            com.fyber.inneractive.sdk.player.exoplayer2.decoder.a aVar3 = bVar.b;
            byte[] bArr = bVar3.f2235d;
            byte[] bArr2 = aVar3.a;
            aVar3.f2221f = iQ;
            aVar3.f2219d = iArr;
            aVar3.f2220e = iArr2;
            aVar3.b = bArr;
            aVar3.a = bArr2;
            aVar3.c = 1;
            int i7 = u.a;
            if (i7 >= 16) {
                MediaCodec.CryptoInfo cryptoInfo = aVar3.f2222g;
                cryptoInfo.numSubSamples = iQ;
                cryptoInfo.numBytesOfClearData = iArr;
                cryptoInfo.numBytesOfEncryptedData = iArr2;
                cryptoInfo.key = bArr;
                cryptoInfo.iv = bArr2;
                cryptoInfo.mode = 1;
                if (i7 >= 24) {
                    a.b bVar4 = aVar3.h;
                    bVar4.b.set(0, 0);
                    bVar4.a.setPattern(bVar4.b);
                }
            }
            long j6 = bVar3.b;
            int i8 = (int) (j5 - j6);
            bVar3.b = j6 + ((long) i8);
            bVar3.a -= i8;
        }
        int i9 = this.f2232e.a;
        ByteBuffer byteBuffer = bVar.c;
        if (byteBuffer == null) {
            bVar.c = bVar.a(i9);
        } else {
            int iCapacity = byteBuffer.capacity();
            int iPosition = bVar.c.position();
            int i10 = i9 + iPosition;
            if (iCapacity < i10) {
                ByteBuffer byteBufferA = bVar.a(i10);
                if (iPosition > 0) {
                    bVar.c.position(0);
                    bVar.c.limit(iPosition);
                    byteBufferA.put(bVar.c);
                }
                bVar.c = byteBufferA;
            }
        }
        b bVar5 = this.f2232e;
        long j7 = bVar5.b;
        ByteBuffer byteBuffer2 = bVar.c;
        int i11 = bVar5.a;
        while (i11 > 0) {
            a(j7);
            int i12 = (int) (j7 - this.h);
            int iMin = Math.min(i11, this.b - i12);
            com.fyber.inneractive.sdk.player.exoplayer2.upstream.a aVarPeek = this.f2231d.peek();
            byteBuffer2.put(aVarPeek.a, aVarPeek.b + i12, iMin);
            j7 += (long) iMin;
            i11 -= iMin;
        }
        a(this.f2232e.c);
        return -4;
    }

    public final void a() {
        c cVar = this.c;
        cVar.j = 0;
        cVar.k = 0;
        cVar.l = 0;
        cVar.i = 0;
        cVar.o = true;
        com.fyber.inneractive.sdk.player.exoplayer2.upstream.b bVar = this.a;
        LinkedBlockingDeque<com.fyber.inneractive.sdk.player.exoplayer2.upstream.a> linkedBlockingDeque = this.f2231d;
        ((com.fyber.inneractive.sdk.player.exoplayer2.upstream.k) bVar).a((com.fyber.inneractive.sdk.player.exoplayer2.upstream.a[]) linkedBlockingDeque.toArray(new com.fyber.inneractive.sdk.player.exoplayer2.upstream.a[linkedBlockingDeque.size()]));
        this.f2231d.clear();
        ((com.fyber.inneractive.sdk.player.exoplayer2.upstream.k) this.a).b();
        this.h = 0L;
        this.j = 0L;
        this.k = null;
        this.l = this.b;
    }

    public final void a(long j) {
        int i = ((int) (j - this.h)) / this.b;
        for (int i2 = 0; i2 < i; i2++) {
            com.fyber.inneractive.sdk.player.exoplayer2.upstream.b bVar = this.a;
            com.fyber.inneractive.sdk.player.exoplayer2.upstream.a aVarRemove = this.f2231d.remove();
            com.fyber.inneractive.sdk.player.exoplayer2.upstream.k kVar = (com.fyber.inneractive.sdk.player.exoplayer2.upstream.k) bVar;
            synchronized (kVar) {
                com.fyber.inneractive.sdk.player.exoplayer2.upstream.a[] aVarArr = kVar.f2576d;
                aVarArr[0] = aVarRemove;
                kVar.a(aVarArr);
            }
            this.h += (long) this.b;
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.n
    public void a(long j, int i, int i2, int i3, byte[] bArr) {
        if (!h()) {
            c cVar = this.c;
            synchronized (cVar) {
                cVar.n = Math.max(cVar.n, j);
            }
            return;
        }
        try {
            if (this.m) {
                if ((i & 1) != 0 && this.c.a(j)) {
                    this.m = false;
                }
                return;
            }
            long j2 = j + 0;
            this.c.a(j2, i, (this.j - ((long) i2)) - ((long) i3), i2, bArr);
        } finally {
            c();
        }
    }

    public final void a(long j, byte[] bArr, int i) {
        int i2 = 0;
        while (i2 < i) {
            a(j);
            int i3 = (int) (j - this.h);
            int iMin = Math.min(i - i2, this.b - i3);
            com.fyber.inneractive.sdk.player.exoplayer2.upstream.a aVarPeek = this.f2231d.peek();
            System.arraycopy(aVarPeek.a, aVarPeek.b + i3, bArr, i2, iMin);
            j += (long) iMin;
            i2 += iMin;
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.n
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.i iVar) {
        boolean z;
        if (iVar == null) {
            iVar = null;
        }
        c cVar = this.c;
        synchronized (cVar) {
            z = true;
            if (iVar == null) {
                cVar.p = true;
            } else {
                cVar.p = false;
                if (!u.a(iVar, cVar.q)) {
                    cVar.q = iVar;
                }
            }
            z = false;
        }
        InterfaceC0178d interfaceC0178d = this.n;
        if (interfaceC0178d == null || !z) {
            return;
        }
        interfaceC0178d.a(iVar);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.n
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar, int i) {
        if (!h()) {
            kVar.e(kVar.b + i);
            return;
        }
        while (i > 0) {
            int iA = a(i);
            com.fyber.inneractive.sdk.player.exoplayer2.upstream.a aVar = this.k;
            kVar.a(aVar.a, aVar.b + this.l, iA);
            this.l += iA;
            this.j += (long) iA;
            i -= iA;
        }
        c();
    }

    public void a(boolean z) {
        int andSet = this.f2234g.getAndSet(z ? 0 : 2);
        a();
        c cVar = this.c;
        cVar.m = Long.MIN_VALUE;
        cVar.n = Long.MIN_VALUE;
        if (andSet == 2) {
            this.i = null;
        }
    }

    public boolean a(long j, boolean z) {
        long j2;
        c cVar = this.c;
        synchronized (cVar) {
            if (cVar.i != 0) {
                long[] jArr = cVar.f2238f;
                int i = cVar.k;
                if (j >= jArr[i] && (j <= cVar.n || z)) {
                    int i2 = -1;
                    int i3 = 0;
                    while (i != cVar.l && cVar.f2238f[i] <= j) {
                        if ((cVar.f2237e[i] & 1) != 0) {
                            i2 = i3;
                        }
                        i = (i + 1) % cVar.a;
                        i3++;
                    }
                    if (i2 != -1) {
                        int i4 = (cVar.k + i2) % cVar.a;
                        cVar.k = i4;
                        cVar.j += i2;
                        cVar.i -= i2;
                        j2 = cVar.c[i4];
                    }
                }
                j2 = -1;
            } else {
                j2 = -1;
            }
        }
        if (j2 == -1) {
            return false;
        }
        a(j2);
        return true;
    }

    public void b() {
        if (this.f2234g.getAndSet(2) == 0) {
            a();
        }
    }

    public final void c() {
        if (this.f2234g.compareAndSet(1, 0)) {
            return;
        }
        a();
    }

    public long d() {
        long jMax;
        c cVar = this.c;
        synchronized (cVar) {
            jMax = Math.max(cVar.m, cVar.n);
        }
        return jMax;
    }

    public com.fyber.inneractive.sdk.player.exoplayer2.i e() {
        com.fyber.inneractive.sdk.player.exoplayer2.i iVar;
        c cVar = this.c;
        synchronized (cVar) {
            iVar = cVar.p ? null : cVar.q;
        }
        return iVar;
    }

    public boolean f() {
        boolean z;
        c cVar = this.c;
        synchronized (cVar) {
            z = cVar.i == 0;
        }
        return z;
    }

    public void g() {
        long j;
        c cVar = this.c;
        synchronized (cVar) {
            int i = cVar.i;
            if (i == 0) {
                j = -1;
            } else {
                int i2 = cVar.k + i;
                int i3 = cVar.a;
                int i4 = (i2 - 1) % i3;
                cVar.k = i2 % i3;
                cVar.j += i;
                cVar.i = 0;
                j = cVar.c[i4] + ((long) cVar.f2236d[i4]);
            }
        }
        if (j != -1) {
            a(j);
        }
    }

    public final boolean h() {
        return this.f2234g.compareAndSet(0, 1);
    }
}
