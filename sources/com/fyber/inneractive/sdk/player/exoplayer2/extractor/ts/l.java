package com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts;

import android.util.Log;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.v;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes2.dex */
public final class l implements h {
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.k a = new com.fyber.inneractive.sdk.player.exoplayer2.util.k(10);
    public com.fyber.inneractive.sdk.player.exoplayer2.extractor.n b;
    public boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f2422d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2423e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2424f;

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void a() {
        this.c = false;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void a(long j, boolean z) {
        if (z) {
            this.c = true;
            this.f2422d = j;
            this.f2423e = 0;
            this.f2424f = 0;
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.h hVar, v.d dVar) {
        dVar.a();
        com.fyber.inneractive.sdk.player.exoplayer2.extractor.n nVarA = hVar.a(dVar.c(), 4);
        this.b = nVarA;
        nVarA.a(com.fyber.inneractive.sdk.player.exoplayer2.i.a(dVar.b(), MimeTypes.APPLICATION_ID3, null, -1, null));
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar) {
        if (this.c) {
            int iA = kVar.a();
            int i = this.f2424f;
            if (i < 10) {
                int iMin = Math.min(iA, 10 - i);
                System.arraycopy(kVar.a, kVar.b, this.a.a, this.f2424f, iMin);
                if (this.f2424f + iMin == 10) {
                    this.a.e(0);
                    if (73 != this.a.l() || 68 != this.a.l() || 51 != this.a.l()) {
                        Log.w("Id3Reader", "Discarding invalid ID3 tag");
                        this.c = false;
                        return;
                    } else {
                        this.a.f(3);
                        this.f2423e = this.a.k() + 10;
                    }
                }
            }
            int iMin2 = Math.min(iA, this.f2423e - this.f2424f);
            this.b.a(kVar, iMin2);
            this.f2424f += iMin2;
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void b() {
        int i;
        if (this.c && (i = this.f2423e) != 0 && this.f2424f == i) {
            this.b.a(this.f2422d, 1, i, 0, null);
            this.c = false;
        }
    }
}
