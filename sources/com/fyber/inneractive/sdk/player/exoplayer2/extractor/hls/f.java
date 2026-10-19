package com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls;

import com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.a;
import com.fyber.inneractive.sdk.player.exoplayer2.metadata.a;
import com.fyber.inneractive.sdk.player.exoplayer2.util.r;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public final class f extends com.fyber.inneractive.sdk.player.exoplayer2.source.chunk.d {
    public static final AtomicInteger G = new AtomicInteger();
    public int A;
    public int B;
    public boolean C;
    public j D;
    public volatile boolean E;
    public volatile boolean F;
    public final int j;
    public final int k;
    public final a.C0180a l;
    public final com.fyber.inneractive.sdk.player.exoplayer2.upstream.g m;
    public final com.fyber.inneractive.sdk.player.exoplayer2.upstream.j n;
    public final boolean o;
    public final boolean p;
    public final r q;
    public final String r;
    public final com.fyber.inneractive.sdk.player.exoplayer2.extractor.f s;
    public final boolean t;
    public final boolean u;
    public final List<com.fyber.inneractive.sdk.player.exoplayer2.i> v;
    public final boolean w;
    public final com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.g x;
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.k y;
    public com.fyber.inneractive.sdk.player.exoplayer2.extractor.f z;

    public f(com.fyber.inneractive.sdk.player.exoplayer2.upstream.g gVar, com.fyber.inneractive.sdk.player.exoplayer2.upstream.j jVar, com.fyber.inneractive.sdk.player.exoplayer2.upstream.j jVar2, a.C0180a c0180a, List<com.fyber.inneractive.sdk.player.exoplayer2.i> list, int i, Object obj, long j, long j2, int i2, int i3, boolean z, r rVar, f fVar, byte[] bArr, byte[] bArr2) {
        super(a(gVar, bArr, bArr2), jVar, c0180a.b, i, obj, j, j2, i2);
        this.k = i3;
        this.n = jVar2;
        this.l = c0180a;
        this.v = list;
        this.p = z;
        this.q = rVar;
        this.o = this.h instanceof a;
        String lastPathSegment = jVar.a.getLastPathSegment();
        this.r = lastPathSegment;
        boolean z2 = lastPathSegment.endsWith(".aac") || lastPathSegment.endsWith(".ac3") || lastPathSegment.endsWith(".ec3") || lastPathSegment.endsWith(".mp3");
        this.w = z2;
        if (fVar != null) {
            this.x = fVar.x;
            this.y = fVar.y;
            this.s = fVar.z;
            boolean z3 = fVar.l != c0180a;
            this.t = z3;
            this.u = fVar.k != i3 || z3;
        } else {
            this.x = z2 ? new com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.g() : null;
            this.y = z2 ? new com.fyber.inneractive.sdk.player.exoplayer2.util.k(10) : null;
            this.s = null;
            this.t = false;
            this.u = true;
        }
        this.m = gVar;
        this.j = G.getAndIncrement();
    }

    public static com.fyber.inneractive.sdk.player.exoplayer2.upstream.g a(com.fyber.inneractive.sdk.player.exoplayer2.upstream.g gVar, byte[] bArr, byte[] bArr2) {
        return (bArr == null || bArr2 == null) ? gVar : new a(gVar, bArr, bArr2);
    }

    public final long a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g gVar) throws InterruptedException, IOException {
        com.fyber.inneractive.sdk.player.exoplayer2.metadata.a aVarA;
        com.fyber.inneractive.sdk.player.exoplayer2.extractor.b bVar = (com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar;
        bVar.f2229e = 0;
        if (!bVar.a(this.y.a, 0, 10, true)) {
            return C.TIME_UNSET;
        }
        this.y.c(10);
        if (this.y.n() != com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.g.b) {
            return C.TIME_UNSET;
        }
        this.y.f(3);
        int iK = this.y.k();
        int i = iK + 10;
        if (i > this.y.b()) {
            com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar = this.y;
            byte[] bArr = kVar.a;
            kVar.c(i);
            System.arraycopy(bArr, 0, this.y.a, 0, 10);
        }
        if (!bVar.a(this.y.a, 10, iK, true) || (aVarA = this.x.a(this.y.a, iK)) == null) {
            return C.TIME_UNSET;
        }
        int length = aVarA.a.length;
        for (int i2 = 0; i2 < length; i2++) {
            a.b bVar2 = aVarA.a[i2];
            if (bVar2 instanceof com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.i) {
                com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.i iVar = (com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.i) bVar2;
                if ("com.apple.streaming.transportStreamTimestamp".equals(iVar.b)) {
                    System.arraycopy(iVar.c, 0, this.y.a, 0, 8);
                    this.y.c(8);
                    return this.y.i();
                }
            }
        }
        return C.TIME_UNSET;
    }

    public final com.fyber.inneractive.sdk.player.exoplayer2.extractor.f a(long j) {
        com.fyber.inneractive.sdk.player.exoplayer2.extractor.f aVar;
        if (this.r.endsWith(".aac")) {
            aVar = new com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.c(j);
        } else if (this.r.endsWith(".ac3") || this.r.endsWith(".ec3")) {
            aVar = new com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.a(j);
        } else {
            if (!this.r.endsWith(".mp3")) {
                throw new IllegalArgumentException("Unkown extension for audio file: " + this.r);
            }
            aVar = new com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp3.b(0, j);
        }
        aVar.a(this.D);
        return aVar;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.x.c
    public boolean a() {
        return this.E;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.x.c
    public void b() {
        this.E = true;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.source.chunk.a
    public long c() {
        return this.B;
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x01aa A[Catch: all -> 0x01f3, TryCatch #1 {all -> 0x01f3, blocks: (B:123:0x0198, B:125:0x01aa, B:127:0x01b2, B:129:0x01bb, B:128:0x01b9, B:131:0x01c3, B:140:0x01e1, B:138:0x01d6, B:139:0x01e0, B:133:0x01ca, B:135:0x01ce), top: B:148:0x0198, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x01c3 A[Catch: all -> 0x01f3, TRY_LEAVE, TryCatch #1 {all -> 0x01f3, blocks: (B:123:0x0198, B:125:0x01aa, B:127:0x01b2, B:129:0x01bb, B:128:0x01b9, B:131:0x01c3, B:140:0x01e1, B:138:0x01d6, B:139:0x01e0, B:133:0x01ca, B:135:0x01ce), top: B:148:0x0198, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01ca A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0163  */
    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.x.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void load() throws java.lang.InterruptedException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 507
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.f.load():void");
    }
}
