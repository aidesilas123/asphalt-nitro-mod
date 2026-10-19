package com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts;

import com.applovin.exoplayer2.common.base.Ascii;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.v;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class f implements h {
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.k a;
    public final String b;
    public String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public com.fyber.inneractive.sdk.player.exoplayer2.extractor.n f2390d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2391e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2392f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2393g;
    public long h;
    public com.fyber.inneractive.sdk.player.exoplayer2.i i;
    public int j;
    public long k;

    public f(String str) {
        com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar = new com.fyber.inneractive.sdk.player.exoplayer2.util.k(new byte[15]);
        this.a = kVar;
        byte[] bArr = kVar.a;
        bArr[0] = Ascii.DEL;
        bArr[1] = -2;
        bArr[2] = -128;
        bArr[3] = 1;
        this.f2391e = 0;
        this.b = str;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void a() {
        this.f2391e = 0;
        this.f2392f = 0;
        this.f2393g = 0;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void a(long j, boolean z) {
        this.k = j;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.h hVar, v.d dVar) {
        dVar.a();
        this.c = dVar.b();
        this.f2390d = hVar.a(dVar.c(), 1);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar) {
        while (kVar.a() > 0) {
            int i = this.f2391e;
            boolean z = false;
            if (i == 0) {
                while (true) {
                    if (kVar.a() <= 0) {
                        break;
                    }
                    int i2 = this.f2393g << 8;
                    this.f2393g = i2;
                    int iL = i2 | kVar.l();
                    this.f2393g = iL;
                    if (iL == 2147385345) {
                        this.f2393g = 0;
                        z = true;
                        break;
                    }
                }
                if (z) {
                    this.f2392f = 4;
                    this.f2391e = 1;
                }
            } else if (i == 1) {
                byte[] bArr = this.a.a;
                int iMin = Math.min(kVar.a(), 15 - this.f2392f);
                System.arraycopy(kVar.a, kVar.b, bArr, this.f2392f, iMin);
                kVar.b += iMin;
                int i3 = this.f2392f + iMin;
                this.f2392f = i3;
                if (i3 == 15) {
                    byte[] bArr2 = this.a.a;
                    if (this.i == null) {
                        String str = this.c;
                        String str2 = this.b;
                        com.fyber.inneractive.sdk.player.exoplayer2.util.j jVar = new com.fyber.inneractive.sdk.player.exoplayer2.util.j(bArr2, bArr2.length);
                        jVar.c(60);
                        int i4 = com.fyber.inneractive.sdk.player.exoplayer2.audio.e.a[jVar.a(6)];
                        int i5 = com.fyber.inneractive.sdk.player.exoplayer2.audio.e.b[jVar.a(4)];
                        int iA = jVar.a(5);
                        int[] iArr = com.fyber.inneractive.sdk.player.exoplayer2.audio.e.c;
                        int i6 = iA >= iArr.length ? -1 : (iArr[iA] * 1000) / 2;
                        jVar.c(10);
                        com.fyber.inneractive.sdk.player.exoplayer2.i iVarA = com.fyber.inneractive.sdk.player.exoplayer2.i.a(str, MimeTypes.AUDIO_DTS, (String) null, i6, -1, i4 + (jVar.a(2) > 0 ? 1 : 0), i5, -1, (List<byte[]>) null, (com.fyber.inneractive.sdk.player.exoplayer2.drm.a) null, 0, str2);
                        this.i = iVarA;
                        this.f2390d.a(iVarA);
                    }
                    this.j = (((bArr2[5] & 2) << 12) | ((bArr2[6] & 255) << 4) | ((bArr2[7] & 240) >> 4)) + 1;
                    this.h = (int) ((((long) (((((bArr2[5] & 252) >> 2) | ((bArr2[4] & 1) << 6)) + 1) * 32)) * 1000000) / ((long) this.i.s));
                    this.a.e(0);
                    this.f2390d.a(this.a, 15);
                    this.f2391e = 2;
                }
            } else if (i == 2) {
                int iMin2 = Math.min(kVar.a(), this.j - this.f2392f);
                this.f2390d.a(kVar, iMin2);
                int i7 = this.f2392f + iMin2;
                this.f2392f = i7;
                int i8 = this.j;
                if (i7 == i8) {
                    this.f2390d.a(this.k, 1, i8, 0, null);
                    this.k += this.h;
                    this.f2391e = 0;
                }
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void b() {
    }
}
