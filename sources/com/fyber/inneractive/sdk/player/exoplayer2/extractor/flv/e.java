package com.fyber.inneractive.sdk.player.exoplayer2.extractor.flv;

import com.fyber.inneractive.sdk.player.exoplayer2.extractor.flv.d;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.n;
import com.fyber.inneractive.sdk.player.exoplayer2.l;
import com.fyber.inneractive.sdk.player.exoplayer2.util.i;
import com.fyber.inneractive.sdk.player.exoplayer2.util.k;

/* JADX INFO: loaded from: classes2.dex */
public final class e extends d {
    public final k b;
    public final k c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2246d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2247e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2248f;

    public e(n nVar) {
        super(nVar);
        this.b = new k(i.a);
        this.c = new k(4);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.flv.d
    public boolean a(k kVar) throws d.a {
        int iL = kVar.l();
        int i = (iL >> 4) & 15;
        int i2 = iL & 15;
        if (i2 == 7) {
            this.f2248f = i;
            return i != 5;
        }
        throw new d.a("Video format not supported: " + i2);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.flv.d
    public void b(k kVar, long j) throws l {
        int iL = kVar.l();
        long jN = j + (((long) kVar.n()) * 1000);
        if (iL == 0 && !this.f2247e) {
            k kVar2 = new k(new byte[kVar.a()]);
            kVar.a(kVar2.a, 0, kVar.a());
            com.fyber.inneractive.sdk.player.exoplayer2.video.a aVarB = com.fyber.inneractive.sdk.player.exoplayer2.video.a.b(kVar2);
            this.f2246d = aVarB.b;
            this.a.a(com.fyber.inneractive.sdk.player.exoplayer2.i.a((String) null, "video/avc", (String) null, -1, -1, aVarB.c, aVarB.f2622d, -1.0f, aVarB.a, -1, aVarB.f2623e, (com.fyber.inneractive.sdk.player.exoplayer2.drm.a) null));
            this.f2247e = true;
            return;
        }
        if (iL == 1 && this.f2247e) {
            byte[] bArr = this.c.a;
            bArr[0] = 0;
            bArr[1] = 0;
            bArr[2] = 0;
            int i = 4 - this.f2246d;
            int i2 = 0;
            while (kVar.a() > 0) {
                kVar.a(this.c.a, i, this.f2246d);
                this.c.e(0);
                int iO = this.c.o();
                this.b.e(0);
                this.a.a(this.b, 4);
                this.a.a(kVar, iO);
                i2 = i2 + 4 + iO;
            }
            this.a.a(jN, this.f2248f == 1 ? 1 : 0, i2, 0, null);
        }
    }
}
