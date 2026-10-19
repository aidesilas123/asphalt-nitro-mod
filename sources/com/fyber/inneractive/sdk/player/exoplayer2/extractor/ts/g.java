package com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts;

import com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.v;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class g implements h {
    public final List<v.a> a;
    public final com.fyber.inneractive.sdk.player.exoplayer2.extractor.n[] b;
    public boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2394d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2395e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f2396f;

    public g(List<v.a> list) {
        this.a = list;
        this.b = new com.fyber.inneractive.sdk.player.exoplayer2.extractor.n[list.size()];
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void a() {
        this.c = false;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void a(long j, boolean z) {
        if (z) {
            this.c = true;
            this.f2396f = j;
            this.f2395e = 0;
            this.f2394d = 2;
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.h hVar, v.d dVar) {
        for (int i = 0; i < this.b.length; i++) {
            v.a aVar = this.a.get(i);
            dVar.a();
            com.fyber.inneractive.sdk.player.exoplayer2.extractor.n nVarA = hVar.a(dVar.c(), 3);
            nVarA.a(com.fyber.inneractive.sdk.player.exoplayer2.i.a(dVar.b(), MimeTypes.APPLICATION_DVBSUBS, (String) null, -1, (List<byte[]>) Collections.singletonList(aVar.b), aVar.a, (com.fyber.inneractive.sdk.player.exoplayer2.drm.a) null));
            this.b[i] = nVarA;
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar) {
        if (this.c) {
            if (this.f2394d != 2 || a(kVar, 32)) {
                if (this.f2394d != 1 || a(kVar, 0)) {
                    int i = kVar.b;
                    int iA = kVar.a();
                    for (com.fyber.inneractive.sdk.player.exoplayer2.extractor.n nVar : this.b) {
                        kVar.e(i);
                        nVar.a(kVar, iA);
                    }
                    this.f2395e += iA;
                }
            }
        }
    }

    public final boolean a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar, int i) {
        if (kVar.a() == 0) {
            return false;
        }
        if (kVar.l() != i) {
            this.c = false;
        }
        this.f2394d--;
        return this.c;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void b() {
        if (this.c) {
            for (com.fyber.inneractive.sdk.player.exoplayer2.extractor.n nVar : this.b) {
                nVar.a(this.f2396f, 1, this.f2395e, 0, null);
            }
            this.c = false;
        }
    }
}
