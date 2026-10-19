package com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg;

import androidx.work.WorkRequest;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.m;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements f {
    public final e a = new e();
    public final long b;
    public final long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final h f2357d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2358e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f2359f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f2360g;
    public long h;
    public long i;
    public long j;
    public long k;
    public long l;

    /* JADX INFO: renamed from: com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.a$a, reason: collision with other inner class name */
    public class C0185a implements m {
        public C0185a() {
        }

        @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.m
        public long a(long j) {
            if (j == 0) {
                return a.this.b;
            }
            a aVar = a.this;
            long j2 = (((long) aVar.f2357d.i) * j) / 1000000;
            long j3 = aVar.b;
            long j4 = aVar.c;
            long j5 = (((j2 * (j4 - j3)) / aVar.f2359f) - WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS) + j3;
            if (j5 >= j3) {
                j3 = j5;
            }
            return j3 >= j4 ? j4 - 1 : j3;
        }

        @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.m
        public boolean a() {
            return true;
        }

        @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.m
        public long c() {
            a aVar = a.this;
            return (aVar.f2359f * 1000000) / ((long) aVar.f2357d.i);
        }
    }

    public a(long j, long j2, h hVar, int i, long j3) {
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(j >= 0 && j2 > j);
        this.f2357d = hVar;
        this.b = j;
        this.c = j2;
        if (i != j2 - j) {
            this.f2358e = 0;
        } else {
            this.f2359f = j3;
            this.f2358e = 3;
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.f
    public long a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g gVar) throws InterruptedException, IOException {
        e eVar;
        long j;
        long jMin;
        int i = this.f2358e;
        if (i == 0) {
            long j2 = ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).c;
            this.f2360g = j2;
            this.f2358e = 1;
            long j3 = this.c - 65307;
            if (j3 > j2) {
                return j3;
            }
        } else if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return -1L;
                }
                throw new IllegalStateException();
            }
            long j4 = this.h;
            long j5 = 0;
            if (j4 != 0) {
                long j6 = this.i;
                long j7 = this.j;
                if (j6 == j7) {
                    jMin = -(this.k + 2);
                } else {
                    com.fyber.inneractive.sdk.player.exoplayer2.extractor.b bVar = (com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar;
                    long j8 = bVar.c;
                    if (a(gVar, j7)) {
                        this.a.a(gVar, false);
                        bVar.f2229e = 0;
                        e eVar2 = this.a;
                        long j9 = eVar2.b;
                        long j10 = j4 - j9;
                        int i2 = eVar2.f2365d + eVar2.f2366e;
                        if (j10 < 0 || j10 > 72000) {
                            if (j10 < 0) {
                                this.j = j8;
                                this.l = j9;
                            } else {
                                long j11 = i2;
                                long j12 = bVar.c + j11;
                                this.i = j12;
                                this.k = j9;
                                if ((this.j - j12) + j11 < 100000) {
                                    bVar.c(i2);
                                    j = this.k;
                                }
                            }
                            long j13 = this.j;
                            long j14 = this.i;
                            long j15 = j13 - j14;
                            if (j15 < 100000) {
                                this.j = j14;
                                jMin = j14;
                            } else {
                                jMin = Math.min(Math.max((bVar.c - ((long) (i2 * (j10 <= 0 ? 2 : 1)))) + ((j10 * j15) / (this.l - this.k)), j14), this.j - 1);
                            }
                        } else {
                            bVar.c(i2);
                            j = this.a.b;
                        }
                        jMin = -(j + 2);
                    } else {
                        jMin = this.i;
                        if (jMin == j8) {
                            throw new IOException("No ogg page can be found.");
                        }
                    }
                }
                if (jMin >= 0) {
                    return jMin;
                }
                long j16 = this.h;
                this.a.a(gVar, false);
                j5 = -(jMin + 2);
                while (true) {
                    e eVar3 = this.a;
                    if (eVar3.b >= j16) {
                        break;
                    }
                    ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).c(eVar3.f2365d + eVar3.f2366e);
                    e eVar4 = this.a;
                    j5 = eVar4.b;
                    eVar4.a(gVar, false);
                }
                ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).f2229e = 0;
            }
            this.f2358e = 3;
            return -(j5 + 2);
        }
        if (!a(gVar, this.c)) {
            throw new EOFException();
        }
        this.a.a();
        while (true) {
            eVar = this.a;
            if ((eVar.a & 4) == 4) {
                break;
            }
            com.fyber.inneractive.sdk.player.exoplayer2.extractor.b bVar2 = (com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar;
            if (bVar2.c >= this.c) {
                break;
            }
            eVar.a(gVar, false);
            e eVar5 = this.a;
            bVar2.c(eVar5.f2365d + eVar5.f2366e);
        }
        this.f2359f = eVar.b;
        this.f2358e = 3;
        return this.f2360g;
    }

    public boolean a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g gVar, long j) throws InterruptedException, IOException {
        int i;
        long jMin = Math.min(j + 3, this.c);
        int i2 = 2048;
        byte[] bArr = new byte[2048];
        while (true) {
            com.fyber.inneractive.sdk.player.exoplayer2.extractor.b bVar = (com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar;
            long j2 = bVar.c;
            int i3 = 0;
            if (((long) i2) + j2 > jMin && (i2 = (int) (jMin - j2)) < 4) {
                return false;
            }
            bVar.a(bArr, 0, i2, false);
            while (true) {
                i = i2 - 3;
                if (i3 < i) {
                    if (bArr[i3] == 79 && bArr[i3 + 1] == 103 && bArr[i3 + 2] == 103 && bArr[i3 + 3] == 83) {
                        bVar.c(i3);
                        return true;
                    }
                    i3++;
                }
            }
            bVar.c(i);
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.f
    public m b() {
        if (this.f2359f != 0) {
            return new C0185a();
        }
        return null;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.f
    public long c(long j) {
        int i = this.f2358e;
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(i == 3 || i == 2);
        long j2 = j == 0 ? 0L : (((long) this.f2357d.i) * j) / 1000000;
        this.h = j2;
        this.f2358e = 2;
        this.i = this.b;
        this.j = this.c;
        this.k = 0L;
        this.l = this.f2359f;
        return j2;
    }
}
