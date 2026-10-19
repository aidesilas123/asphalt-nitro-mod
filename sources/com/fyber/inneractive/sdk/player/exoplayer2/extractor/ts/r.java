package com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts;

import androidx.core.view.InputDeviceCompat;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.v;

/* JADX INFO: loaded from: classes2.dex */
public final class r implements v {
    public final q a;
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.k b = new com.fyber.inneractive.sdk.player.exoplayer2.util.k(32);
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2443d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2444e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2445f;

    public r(q qVar) {
        this.a = qVar;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.v
    public void a() {
        this.f2445f = true;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.v
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar, boolean z) {
        int iL = z ? kVar.b + kVar.l() : -1;
        if (this.f2445f) {
            if (!z) {
                return;
            }
            this.f2445f = false;
            kVar.e(iL);
            this.f2443d = 0;
        }
        while (kVar.a() > 0) {
            int i = this.f2443d;
            if (i < 3) {
                if (i == 0) {
                    int iL2 = kVar.l();
                    kVar.e(kVar.b - 1);
                    if (iL2 == 255) {
                        this.f2445f = true;
                        return;
                    }
                }
                int iMin = Math.min(kVar.a(), 3 - this.f2443d);
                kVar.a(this.b.a, this.f2443d, iMin);
                int i2 = this.f2443d + iMin;
                this.f2443d = i2;
                if (i2 == 3) {
                    this.b.c(3);
                    this.b.f(1);
                    int iL3 = this.b.l();
                    int iL4 = this.b.l();
                    this.f2444e = (iL3 & 128) != 0;
                    this.c = (((iL3 & 15) << 8) | iL4) + 3;
                    int iB = this.b.b();
                    int i3 = this.c;
                    if (iB < i3) {
                        com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar2 = this.b;
                        byte[] bArr = kVar2.a;
                        kVar2.c(Math.min(InputDeviceCompat.SOURCE_TOUCHSCREEN, Math.max(i3, bArr.length * 2)));
                        System.arraycopy(bArr, 0, this.b.a, 0, 3);
                    }
                }
            } else {
                int iMin2 = Math.min(kVar.a(), this.c - this.f2443d);
                kVar.a(this.b.a, this.f2443d, iMin2);
                int i4 = this.f2443d + iMin2;
                this.f2443d = i4;
                int i5 = this.c;
                if (i4 != i5) {
                    continue;
                } else {
                    if (this.f2444e) {
                        byte[] bArr2 = this.b.a;
                        int i6 = com.fyber.inneractive.sdk.player.exoplayer2.util.u.a;
                        int i7 = -1;
                        for (int i8 = 0; i8 < i5; i8++) {
                            i7 = com.fyber.inneractive.sdk.player.exoplayer2.util.u.h[((i7 >>> 24) ^ (bArr2[i8] & 255)) & 255] ^ (i7 << 8);
                        }
                        if (i7 != 0) {
                            this.f2445f = true;
                            return;
                        }
                        this.b.c(this.c - 4);
                    } else {
                        this.b.c(i5);
                    }
                    this.a.a(this.b);
                    this.f2443d = 0;
                }
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.v
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.util.r rVar, com.fyber.inneractive.sdk.player.exoplayer2.extractor.h hVar, v.d dVar) {
        this.a.a(rVar, hVar, dVar);
        this.f2445f = true;
    }
}
