package com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp3;

import com.fyber.inneractive.sdk.player.exoplayer2.extractor.f;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.g;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.h;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.j;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.m;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.n;
import com.fyber.inneractive.sdk.player.exoplayer2.l;
import com.fyber.inneractive.sdk.player.exoplayer2.util.k;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements f {
    public static final int m = u.a("Xing");
    public static final int n = u.a("Info");
    public static final int o = u.a("VBRI");
    public final long a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public h f2311e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public n f2312f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2313g;
    public com.fyber.inneractive.sdk.player.exoplayer2.metadata.a h;
    public a i;
    public long k;
    public int l;
    public final k b = new k(10);
    public final com.fyber.inneractive.sdk.player.exoplayer2.extractor.k c = new com.fyber.inneractive.sdk.player.exoplayer2.extractor.k();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final j f2310d = new j();
    public long j = C.TIME_UNSET;

    public interface a extends m {
        long b(long j);
    }

    public b(int i, long j) {
        this.a = j;
    }

    public static boolean a(int i, long j) {
        return ((long) (i & (-128000))) == (j & (-128000));
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006e  */
    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g r36, com.fyber.inneractive.sdk.player.exoplayer2.extractor.l r37) throws java.lang.InterruptedException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 762
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp3.b.a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g, com.fyber.inneractive.sdk.player.exoplayer2.extractor.l):int");
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void a(long j, long j2) {
        this.f2313g = 0;
        this.j = C.TIME_UNSET;
        this.k = 0L;
        this.l = 0;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void a(h hVar) {
        this.f2311e = hVar;
        this.f2312f = hVar.a(0, 1);
        this.f2311e.c();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public boolean a(g gVar) throws InterruptedException, IOException {
        return a(gVar, true);
    }

    public final boolean a(g gVar, boolean z) throws InterruptedException, IOException {
        int i;
        int iA;
        int i2 = z ? 16384 : 131072;
        com.fyber.inneractive.sdk.player.exoplayer2.extractor.b bVar = (com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar;
        bVar.f2229e = 0;
        int i3 = 0;
        if (bVar.c == 0) {
            while (true) {
                bVar.a(this.b.a, 0, 10, false);
                this.b.e(0);
                if (this.b.n() != com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.g.b) {
                    break;
                }
                this.b.f(3);
                int iK = this.b.k();
                int i4 = iK + 10;
                if (this.h == null) {
                    byte[] bArr = new byte[i4];
                    System.arraycopy(this.b.a, 0, bArr, 0, 10);
                    bVar.a(bArr, 10, iK, false);
                    com.fyber.inneractive.sdk.player.exoplayer2.metadata.a aVarA = new com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.g(null).a(bArr, i4);
                    this.h = aVarA;
                    if (aVarA != null) {
                        this.f2310d.a(aVarA);
                    }
                } else {
                    bVar.a(iK, false);
                }
                i3 += i4;
            }
            bVar.f2229e = 0;
            bVar.a(i3, false);
            i = (int) (bVar.c + ((long) bVar.f2229e));
            if (!z) {
                bVar.c(i);
            }
            i3 = 0;
        } else {
            i = 0;
        }
        int i5 = 0;
        int i6 = 0;
        while (true) {
            if (!bVar.a(this.b.a, 0, 4, i3 > 0)) {
                break;
            }
            this.b.e(0);
            int iC = this.b.c();
            if ((i5 == 0 || a(iC, i5)) && (iA = com.fyber.inneractive.sdk.player.exoplayer2.extractor.k.a(iC)) != -1) {
                i3++;
                if (i3 != 1) {
                    if (i3 == 4) {
                        break;
                    }
                } else {
                    com.fyber.inneractive.sdk.player.exoplayer2.extractor.k.a(iC, this.c);
                    i5 = iC;
                }
                bVar.a(iA - 4, false);
            } else {
                int i7 = i6 + 1;
                if (i6 == i2) {
                    if (z) {
                        return false;
                    }
                    throw new l("Searched too many bytes.");
                }
                if (z) {
                    bVar.f2229e = 0;
                    bVar.a(i + i7, false);
                } else {
                    bVar.c(1);
                }
                i6 = i7;
                i3 = 0;
                i5 = 0;
            }
        }
        if (z) {
            bVar.c(i + i6);
        } else {
            bVar.f2229e = 0;
        }
        this.f2313g = i5;
        return true;
    }

    public final a b(g gVar) throws InterruptedException, IOException {
        com.fyber.inneractive.sdk.player.exoplayer2.extractor.b bVar = (com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar;
        bVar.a(this.b.a, 0, 4, false);
        this.b.e(0);
        com.fyber.inneractive.sdk.player.exoplayer2.extractor.k.a(this.b.c(), this.c);
        return new com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp3.a(bVar.c, this.c.f2295f, bVar.b);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void b() {
    }
}
