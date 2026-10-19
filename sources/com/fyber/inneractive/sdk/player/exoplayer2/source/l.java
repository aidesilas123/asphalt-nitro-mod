package com.fyber.inneractive.sdk.player.exoplayer2.source;

import android.net.Uri;
import android.os.Handler;
import android.util.Pair;
import com.fyber.inneractive.sdk.player.exoplayer2.p;
import com.fyber.inneractive.sdk.player.exoplayer2.source.i;
import com.fyber.inneractive.sdk.player.exoplayer2.source.n;
import com.fyber.inneractive.sdk.player.exoplayer2.upstream.g;
import com.fyber.inneractive.sdk.player.exoplayer2.upstream.x;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class l implements n, n.a {
    public final Uri a;
    public final g.a b;
    public final com.fyber.inneractive.sdk.player.exoplayer2.extractor.i c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2520d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Handler f2521e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final a f2522f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final p.b f2523g = new p.b();
    public n.a h;
    public boolean i;

    public interface a {
    }

    public l(Uri uri, g.a aVar, com.fyber.inneractive.sdk.player.exoplayer2.extractor.i iVar, int i, Handler handler, a aVar2, String str) {
        this.a = uri;
        this.b = aVar;
        this.c = iVar;
        this.f2520d = i;
        this.f2521e = handler;
        this.f2522f = aVar2;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.source.n
    public m a(int i, com.fyber.inneractive.sdk.player.exoplayer2.upstream.b bVar, long j) {
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(i == 0);
        return new i(this.a, this.b.a(), this.c.a(), this.f2520d, this.f2521e, this.f2522f, this, bVar, null);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.source.n
    public void a() throws IOException {
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.source.n
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.e eVar, boolean z, n.a aVar) {
        this.h = aVar;
        ((com.fyber.inneractive.sdk.player.exoplayer2.h) aVar).f2466f.obtainMessage(7, Pair.create(new q(C.TIME_UNSET, false), null)).sendToTarget();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.source.n.a
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.p pVar, Object obj) {
        boolean z = pVar.a(0, this.f2523g, false).f2497d != C.TIME_UNSET;
        if (!this.i || z) {
            this.i = z;
            this.h.a(pVar, null);
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.source.n
    public void a(m mVar) {
        i iVar = (i) mVar;
        i.d dVar = iVar.j;
        x xVar = iVar.i;
        j jVar = new j(iVar, dVar);
        x.b<? extends x.c> bVar = xVar.b;
        if (bVar != null) {
            bVar.a(true);
        }
        xVar.a.execute(jVar);
        xVar.a.shutdown();
        iVar.n.removeCallbacksAndMessages(null);
        iVar.G = true;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.source.n
    public void b() {
        this.h = null;
    }
}
