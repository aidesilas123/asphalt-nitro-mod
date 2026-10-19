package com.fyber.inneractive.sdk.player.exoplayer2.extractor.wav;

import android.util.Log;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.f;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.g;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.h;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.l;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.m;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.n;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.wav.c;
import com.fyber.inneractive.sdk.player.exoplayer2.i;
import com.fyber.inneractive.sdk.player.exoplayer2.util.k;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements f, m {
    public h a;
    public n b;
    public b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2454d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2455e;

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public int a(g gVar, l lVar) throws InterruptedException, IOException {
        if (this.c == null) {
            b bVarA = c.a(gVar);
            this.c = bVarA;
            if (bVarA == null) {
                throw new com.fyber.inneractive.sdk.player.exoplayer2.l("Unsupported or unrecognized wav header.");
            }
            int i = bVarA.b;
            int i2 = bVarA.f2457e * i;
            int i3 = bVarA.a;
            this.b.a(i.a((String) null, MimeTypes.AUDIO_RAW, (String) null, i2 * i3, 32768, i3, i, bVarA.f2458f, (List<byte[]>) null, (com.fyber.inneractive.sdk.player.exoplayer2.drm.a) null, 0, (String) null));
            this.f2454d = this.c.f2456d;
        }
        b bVar = this.c;
        if (!((bVar.f2459g == 0 || bVar.h == 0) ? false : true)) {
            gVar.getClass();
            com.fyber.inneractive.sdk.player.exoplayer2.extractor.b bVar2 = (com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar;
            bVar2.f2229e = 0;
            k kVar = new k(8);
            c.a aVarA = c.a.a(gVar, kVar);
            while (aVarA.a != u.a("data")) {
                Log.w("WavHeaderReader", "Ignoring unknown WAV chunk: " + aVarA.a);
                long j = aVarA.b + 8;
                if (aVarA.a == u.a("RIFF")) {
                    j = 12;
                }
                if (j > 2147483647L) {
                    throw new com.fyber.inneractive.sdk.player.exoplayer2.l("Chunk is too large (~2GB+) to skip; id: " + aVarA.a);
                }
                bVar2.c((int) j);
                aVarA = c.a.a(gVar, kVar);
            }
            bVar2.c(8);
            long j2 = bVar2.c;
            long j3 = aVarA.b;
            bVar.f2459g = j2;
            bVar.h = j3;
            this.a.a(this);
        }
        int iA = this.b.a(gVar, 32768 - this.f2455e, true);
        if (iA != -1) {
            this.f2455e += iA;
        }
        int i4 = this.f2455e;
        int i5 = this.f2454d;
        int i6 = i4 / i5;
        if (i6 > 0) {
            long j4 = ((((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).c - ((long) i4)) * 1000000) / ((long) this.c.c);
            int i7 = i6 * i5;
            int i8 = i4 - i7;
            this.f2455e = i8;
            this.b.a(j4, 1, i7, i8, null);
        }
        return iA == -1 ? -1 : 0;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.m
    public long a(long j) {
        b bVar = this.c;
        long j2 = (j * ((long) bVar.c)) / 1000000;
        long j3 = bVar.f2456d;
        return Math.min((j2 / j3) * j3, bVar.h - j3) + bVar.f2459g;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void a(long j, long j2) {
        this.f2455e = 0;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void a(h hVar) {
        this.a = hVar;
        this.b = hVar.a(0, 1);
        this.c = null;
        hVar.c();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.m
    public boolean a() {
        return true;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public boolean a(g gVar) throws InterruptedException, IOException {
        return c.a(gVar) != null;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void b() {
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.m
    public long c() {
        b bVar = this.c;
        return ((bVar.h / ((long) bVar.f2456d)) * 1000000) / ((long) bVar.b);
    }
}
