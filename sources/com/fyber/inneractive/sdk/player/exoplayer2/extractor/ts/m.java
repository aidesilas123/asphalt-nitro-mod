package com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts;

import com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.v;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class m implements h {
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.k a;
    public final com.fyber.inneractive.sdk.player.exoplayer2.extractor.k b;
    public final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f2425d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public com.fyber.inneractive.sdk.player.exoplayer2.extractor.n f2426e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2427f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2428g;
    public boolean h;
    public boolean i;
    public long j;
    public int k;
    public long l;

    public m(String str) {
        com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar = new com.fyber.inneractive.sdk.player.exoplayer2.util.k(4);
        this.a = kVar;
        kVar.a[0] = -1;
        this.b = new com.fyber.inneractive.sdk.player.exoplayer2.extractor.k();
        this.c = str;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void a() {
        this.f2427f = 0;
        this.f2428g = 0;
        this.i = false;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void a(long j, boolean z) {
        this.l = j;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.h hVar, v.d dVar) {
        dVar.a();
        this.f2425d = dVar.b();
        this.f2426e = hVar.a(dVar.c(), 1);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar) {
        while (kVar.a() > 0) {
            int i = this.f2427f;
            if (i == 0) {
                byte[] bArr = kVar.a;
                int i2 = kVar.b;
                int i3 = kVar.c;
                while (true) {
                    if (i2 >= i3) {
                        kVar.e(i3);
                        break;
                    }
                    boolean z = (bArr[i2] & 255) == 255;
                    boolean z2 = this.i && (bArr[i2] & 224) == 224;
                    this.i = z;
                    if (z2) {
                        kVar.e(i2 + 1);
                        this.i = false;
                        this.a.a[1] = bArr[i2];
                        this.f2428g = 2;
                        this.f2427f = 1;
                        break;
                    }
                    i2++;
                }
            } else if (i == 1) {
                int iMin = Math.min(kVar.a(), 4 - this.f2428g);
                kVar.a(this.a.a, this.f2428g, iMin);
                int i4 = this.f2428g + iMin;
                this.f2428g = i4;
                if (i4 >= 4) {
                    this.a.e(0);
                    if (com.fyber.inneractive.sdk.player.exoplayer2.extractor.k.a(this.a.c(), this.b)) {
                        com.fyber.inneractive.sdk.player.exoplayer2.extractor.k kVar2 = this.b;
                        this.k = kVar2.c;
                        if (!this.h) {
                            long j = ((long) kVar2.f2296g) * 1000000;
                            int i5 = kVar2.f2293d;
                            this.j = j / ((long) i5);
                            this.f2426e.a(com.fyber.inneractive.sdk.player.exoplayer2.i.a(this.f2425d, kVar2.b, (String) null, -1, 4096, kVar2.f2294e, i5, -1, (List<byte[]>) null, (com.fyber.inneractive.sdk.player.exoplayer2.drm.a) null, 0, this.c));
                            this.h = true;
                        }
                        this.a.e(0);
                        this.f2426e.a(this.a, 4);
                        this.f2427f = 2;
                    } else {
                        this.f2428g = 0;
                        this.f2427f = 1;
                    }
                }
            } else if (i == 2) {
                int iMin2 = Math.min(kVar.a(), this.k - this.f2428g);
                this.f2426e.a(kVar, iMin2);
                int i6 = this.f2428g + iMin2;
                this.f2428g = i6;
                int i7 = this.k;
                if (i6 >= i7) {
                    this.f2426e.a(this.l, 1, i7, 0, null);
                    this.l += this.j;
                    this.f2428g = 0;
                    this.f2427f = 0;
                }
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void b() {
    }
}
