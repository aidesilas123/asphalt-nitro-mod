package com.fyber.inneractive.sdk.player.exoplayer2.upstream;

import android.net.Uri;
import com.fyber.inneractive.sdk.player.exoplayer2.upstream.x;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class y<T> implements x.c {
    public final j a;
    public final g b;
    public final a<? extends T> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile T f2599d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile boolean f2600e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile long f2601f;

    public interface a<T> {
    }

    public y(g gVar, Uri uri, int i, a<? extends T> aVar) {
        this.b = gVar;
        this.a = new j(uri, 1);
        this.c = aVar;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.x.c
    public final boolean a() {
        return this.f2600e;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.x.c
    public final void b() {
        this.f2600e = true;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.x.c
    public final void load() throws InterruptedException, IOException {
        i iVar = new i(this.b, this.a);
        try {
            if (!iVar.f2569d) {
                iVar.a.a(iVar.b);
                iVar.f2569d = true;
            }
            this.f2599d = (T) ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.d) this.c).a(this.b.a(), iVar);
        } finally {
            this.f2601f = iVar.f2571f;
            com.fyber.inneractive.sdk.player.exoplayer2.util.u.a(iVar);
        }
    }
}
