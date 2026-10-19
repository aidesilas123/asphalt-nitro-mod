package com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls;

import android.net.Uri;
import android.os.Handler;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.a;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.e;
import com.fyber.inneractive.sdk.player.exoplayer2.source.f;
import com.fyber.inneractive.sdk.player.exoplayer2.source.m;
import com.fyber.inneractive.sdk.player.exoplayer2.source.n;
import com.fyber.inneractive.sdk.player.exoplayer2.upstream.g;
import com.fyber.inneractive.sdk.player.exoplayer2.upstream.y;
import java.io.IOException;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements n, e.InterfaceC0181e {
    public final Uri a;
    public final d b;
    public final f.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.e f2259d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public n.a f2260e;

    public h(Uri uri, d dVar, int i, Handler handler, com.fyber.inneractive.sdk.player.exoplayer2.source.f fVar) {
        this.a = uri;
        this.b = dVar;
        this.c = new f.a(handler, fVar);
    }

    public h(Uri uri, g.a aVar, int i, Handler handler, com.fyber.inneractive.sdk.player.exoplayer2.source.f fVar) {
        this(uri, new b(aVar), i, handler, fVar);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.source.n
    public m a(int i, com.fyber.inneractive.sdk.player.exoplayer2.upstream.b bVar, long j) {
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(i == 0);
        return new g(this.f2259d, this.b, 3, this.c, bVar, j);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.source.n
    public void a() throws IOException {
        com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.e eVar = this.f2259d;
        eVar.i.c();
        a.C0180a c0180a = eVar.l;
        if (c0180a != null) {
            e.a aVar = eVar.f2285e.get(c0180a);
            aVar.b.c();
            IOException iOException = aVar.j;
            if (iOException != null) {
                throw iOException;
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.source.n
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.e eVar, boolean z, n.a aVar) {
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(this.f2259d == null);
        Uri uri = this.a;
        d dVar = this.b;
        com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.e eVar2 = new com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.e(uri, dVar, this.c, 3, this);
        this.f2259d = eVar2;
        this.f2260e = aVar;
        eVar2.i.a(new y(((b) dVar).a.a(), uri, 4, eVar2.c), eVar2, 3);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.source.n
    public void a(m mVar) {
        g gVar = (g) mVar;
        gVar.a.h.remove(gVar);
        gVar.h.removeCallbacksAndMessages(null);
        j[] jVarArr = gVar.n;
        if (jVarArr != null) {
            for (j jVar : jVarArr) {
                int size = jVar.j.size();
                for (int i = 0; i < size; i++) {
                    jVar.j.valueAt(i).b();
                }
                jVar.f2264g.d();
                jVar.m.removeCallbacksAndMessages(null);
                jVar.s = true;
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.source.n
    public void b() {
        com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.e eVar = this.f2259d;
        if (eVar != null) {
            eVar.i.d();
            Iterator<e.a> it = eVar.f2285e.values().iterator();
            while (it.hasNext()) {
                it.next().b.d();
            }
            eVar.f2286f.removeCallbacksAndMessages(null);
            eVar.f2285e.clear();
            this.f2259d = null;
        }
        this.f2260e = null;
    }
}
