package com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts;

import android.util.SparseArray;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.m;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class p implements com.fyber.inneractive.sdk.player.exoplayer2.extractor.f {
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.r a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2435d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2436e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2437f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public com.fyber.inneractive.sdk.player.exoplayer2.extractor.h f2438g;
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.k c = new com.fyber.inneractive.sdk.player.exoplayer2.util.k(4096);
    public final SparseArray<a> b = new SparseArray<>();

    public static final class a {
        public final h a;
        public final com.fyber.inneractive.sdk.player.exoplayer2.util.r b;
        public final com.fyber.inneractive.sdk.player.exoplayer2.util.j c = new com.fyber.inneractive.sdk.player.exoplayer2.util.j(new byte[64]);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f2439d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f2440e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f2441f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public long f2442g;

        public a(h hVar, com.fyber.inneractive.sdk.player.exoplayer2.util.r rVar) {
            this.a = hVar;
            this.b = rVar;
        }
    }

    public p(com.fyber.inneractive.sdk.player.exoplayer2.util.r rVar) {
        this.a = rVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00b0  */
    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g r14, com.fyber.inneractive.sdk.player.exoplayer2.extractor.l r15) throws java.lang.InterruptedException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 480
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.p.a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g, com.fyber.inneractive.sdk.player.exoplayer2.extractor.l):int");
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void a(long j, long j2) {
        this.a.c = C.TIME_UNSET;
        for (int i = 0; i < this.b.size(); i++) {
            a aVarValueAt = this.b.valueAt(i);
            aVarValueAt.f2441f = false;
            aVarValueAt.a.a();
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.h hVar) {
        this.f2438g = hVar;
        hVar.a(new m.a(C.TIME_UNSET));
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public boolean a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g gVar) throws InterruptedException, IOException {
        byte[] bArr = new byte[14];
        com.fyber.inneractive.sdk.player.exoplayer2.extractor.b bVar = (com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar;
        bVar.a(bArr, 0, 14, false);
        if (442 != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        bVar.a(bArr[13] & 7, false);
        bVar.a(bArr, 0, 3, false);
        return 1 == ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255));
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void b() {
    }
}
