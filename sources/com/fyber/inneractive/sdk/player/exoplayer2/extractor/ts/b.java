package com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts;

import com.applovin.exoplayer2.common.base.Ascii;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.v;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements h {
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.j a;
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.k b;
    public final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f2380d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public com.fyber.inneractive.sdk.player.exoplayer2.extractor.n f2381e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2382f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2383g;
    public boolean h;
    public long i;
    public com.fyber.inneractive.sdk.player.exoplayer2.i j;
    public int k;
    public long l;

    public b(String str) {
        byte[] bArr = new byte[8];
        this.a = new com.fyber.inneractive.sdk.player.exoplayer2.util.j(bArr);
        this.b = new com.fyber.inneractive.sdk.player.exoplayer2.util.k(bArr);
        this.c = str;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void a() {
        this.f2382f = 0;
        this.f2383g = 0;
        this.h = false;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void a(long j, boolean z) {
        this.l = j;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.h hVar, v.d dVar) {
        dVar.a();
        this.f2380d = dVar.b();
        this.f2381e = hVar.a(dVar.c(), 1);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar) {
        int iA;
        int i;
        int iA2;
        String str;
        int i2;
        boolean z;
        while (kVar.a() > 0) {
            int i3 = this.f2382f;
            if (i3 == 0) {
                while (true) {
                    if (kVar.a() <= 0) {
                        z = false;
                        break;
                    }
                    if (this.h) {
                        int iL = kVar.l();
                        if (iL == 119) {
                            this.h = false;
                            z = true;
                            break;
                        }
                        this.h = iL == 11;
                    } else {
                        this.h = kVar.l() == 11;
                    }
                }
                if (z) {
                    this.f2382f = 1;
                    byte[] bArr = this.b.a;
                    bArr[0] = Ascii.VT;
                    bArr[1] = 119;
                    this.f2383g = 2;
                }
            } else if (i3 == 1) {
                byte[] bArr2 = this.b.a;
                int iMin = Math.min(kVar.a(), 8 - this.f2383g);
                System.arraycopy(kVar.a, kVar.b, bArr2, this.f2383g, iMin);
                kVar.b += iMin;
                int i4 = this.f2383g + iMin;
                this.f2383g = i4;
                if (i4 == 8) {
                    this.a.b(0);
                    com.fyber.inneractive.sdk.player.exoplayer2.util.j jVar = this.a;
                    int i5 = (jVar.b * 8) + jVar.c;
                    jVar.c(40);
                    boolean z2 = jVar.a(5) == 16;
                    jVar.b(i5);
                    int i6 = 6;
                    if (z2) {
                        jVar.c(21);
                        iA2 = (jVar.a(11) + 1) * 2;
                        int iA3 = jVar.a(2);
                        if (iA3 == 3) {
                            i = com.fyber.inneractive.sdk.player.exoplayer2.audio.a.c[jVar.a(2)];
                        } else {
                            i6 = com.fyber.inneractive.sdk.player.exoplayer2.audio.a.a[jVar.a(2)];
                            i = com.fyber.inneractive.sdk.player.exoplayer2.audio.a.b[iA3];
                        }
                        i2 = i6 * 256;
                        iA = jVar.a(3);
                        str = MimeTypes.AUDIO_E_AC3;
                    } else {
                        jVar.c(32);
                        int iA4 = jVar.a(2);
                        int iA5 = com.fyber.inneractive.sdk.player.exoplayer2.audio.a.a(iA4, jVar.a(6));
                        jVar.c(8);
                        iA = jVar.a(3);
                        if ((iA & 1) != 0 && iA != 1) {
                            jVar.c(2);
                        }
                        if ((iA & 4) != 0) {
                            jVar.c(2);
                        }
                        if (iA == 2) {
                            jVar.c(2);
                        }
                        i = com.fyber.inneractive.sdk.player.exoplayer2.audio.a.b[iA4];
                        iA2 = iA5;
                        str = MimeTypes.AUDIO_AC3;
                        i2 = 1536;
                    }
                    int i7 = com.fyber.inneractive.sdk.player.exoplayer2.audio.a.f2188d[iA] + (jVar.b() ? 1 : 0);
                    com.fyber.inneractive.sdk.player.exoplayer2.i iVar = this.j;
                    if (iVar == null || i7 != iVar.r || i != iVar.s || str != iVar.f2476f) {
                        com.fyber.inneractive.sdk.player.exoplayer2.i iVarA = com.fyber.inneractive.sdk.player.exoplayer2.i.a(this.f2380d, str, (String) null, -1, -1, i7, i, -1, (List<byte[]>) null, (com.fyber.inneractive.sdk.player.exoplayer2.drm.a) null, 0, this.c);
                        this.j = iVarA;
                        this.f2381e.a(iVarA);
                    }
                    this.k = iA2;
                    this.i = (((long) i2) * 1000000) / ((long) this.j.s);
                    this.b.e(0);
                    this.f2381e.a(this.b, 8);
                    this.f2382f = 2;
                }
            } else if (i3 == 2) {
                int iMin2 = Math.min(kVar.a(), this.k - this.f2383g);
                this.f2381e.a(kVar, iMin2);
                int i8 = this.f2383g + iMin2;
                this.f2383g = i8;
                int i9 = this.k;
                if (i8 == i9) {
                    this.f2381e.a(this.l, 1, i9, 0, null);
                    this.l += this.i;
                    this.f2382f = 0;
                }
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void b() {
    }
}
