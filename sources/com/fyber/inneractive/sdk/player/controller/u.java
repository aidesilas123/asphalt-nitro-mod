package com.fyber.inneractive.sdk.player.controller;

import android.view.Surface;
import com.fyber.inneractive.sdk.player.exoplayer2.audio.c;
import com.fyber.inneractive.sdk.player.exoplayer2.decoder.DecoderCounters;
import com.fyber.inneractive.sdk.player.exoplayer2.e;
import com.fyber.inneractive.sdk.player.exoplayer2.source.l;
import com.fyber.inneractive.sdk.player.exoplayer2.video.VideoRendererEventListener;
import com.fyber.inneractive.sdk.player.mediaplayer.a;
import com.fyber.inneractive.sdk.util.IAlog;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class u implements l.a, VideoRendererEventListener, e.a, com.fyber.inneractive.sdk.player.exoplayer2.source.f {
    public final WeakReference<d> a;
    public boolean b = false;

    public u(d dVar) {
        this.a = new WeakReference<>(dVar);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.e.a
    public void a() {
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.e.a
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.d dVar) {
        d dVar2 = this.a.get();
        if (dVar2 != null && (dVar.getCause() instanceof c.e) && (this.b || (dVar2.H && dVar2.B))) {
            dVar2.v = true;
            com.fyber.inneractive.sdk.player.exoplayer2.e eVar = dVar2.s;
            if (eVar != null) {
                ((com.fyber.inneractive.sdk.player.exoplayer2.g) eVar).b();
                dVar2.s = null;
            }
            dVar2.a(false);
            dVar2.a(dVar2.G);
            dVar2.i.post(new h(dVar2, false));
            return;
        }
        if (!(dVar2 != null && dVar2.B && !this.b && com.fyber.inneractive.sdk.player.cache.n.f2167f.a() && dVar2.I < dVar2.p)) {
            a.l lVar = new a.l(dVar, dVar.getCause() == null ? "empty" : dVar.getCause().getMessage());
            IAlog.a("%sonPlayerError called with %s for sendErrorState", b(), lVar);
            d dVar3 = (d) com.fyber.inneractive.sdk.util.q.a(this.a);
            if (dVar3 != null) {
                dVar3.a(lVar);
                return;
            }
            return;
        }
        com.fyber.inneractive.sdk.player.exoplayer2.e eVar2 = dVar2.s;
        if (eVar2 != null) {
            ((com.fyber.inneractive.sdk.player.exoplayer2.g) eVar2).b();
            dVar2.s = null;
        }
        dVar2.a(true);
        dVar2.a(dVar2.G);
        dVar2.I++;
        dVar2.i.post(new h(dVar2, true));
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.e.a
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.m mVar) {
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.e.a
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.p pVar, Object obj) {
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.e.a
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.source.s sVar, com.fyber.inneractive.sdk.player.exoplayer2.trackselection.f fVar) {
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.e.a
    public void a(boolean z) {
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.e.a
    public void a(boolean z, int i) {
        com.fyber.inneractive.sdk.player.exoplayer2.e eVar;
        IAlog.a("%sonPlayerStateChanged called with pwr = %s state = %d", b(), Boolean.valueOf(z), Integer.valueOf(i));
        d dVar = this.a.get();
        if (dVar == null || (eVar = dVar.s) == null || dVar.A) {
            return;
        }
        if (i != 3) {
            if (i == 2) {
                if (dVar.f2173e == com.fyber.inneractive.sdk.player.enums.b.Playing) {
                    dVar.a(com.fyber.inneractive.sdk.player.enums.b.Buffering);
                    return;
                }
                return;
            } else {
                if (i == 4) {
                    dVar.a(com.fyber.inneractive.sdk.player.enums.b.Completed);
                    return;
                }
                return;
            }
        }
        if (z) {
            dVar.a(com.fyber.inneractive.sdk.player.enums.b.Playing);
            return;
        }
        if (dVar.f2173e == com.fyber.inneractive.sdk.player.enums.b.Preparing) {
            com.fyber.inneractive.sdk.player.exoplayer2.trackselection.f fVar = ((com.fyber.inneractive.sdk.player.exoplayer2.g) eVar).r;
            if (fVar != null && fVar.a > 0) {
                com.fyber.inneractive.sdk.player.exoplayer2.trackselection.e eVar2 = fVar.b[0];
                com.fyber.inneractive.sdk.player.exoplayer2.i iVarC = eVar2 == null ? null : eVar2.c();
                if (iVarC != null) {
                    int i2 = iVarC.j;
                    int i3 = iVarC.k;
                    dVar.t = i2;
                    dVar.u = i3;
                }
            }
            this.b = true;
            dVar.a(com.fyber.inneractive.sdk.player.enums.b.Prepared);
        }
    }

    public final String b() {
        d dVar = this.a.get();
        return dVar == null ? u.class.getName() : IAlog.a(dVar);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.video.VideoRendererEventListener
    public void onDroppedFrames(int i, long j) {
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.video.VideoRendererEventListener
    public void onRenderedFirstFrame(Surface surface) {
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.video.VideoRendererEventListener
    public void onVideoDecoderInitialized(String str, long j, long j2) {
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.video.VideoRendererEventListener
    public void onVideoDisabled(DecoderCounters decoderCounters) {
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.video.VideoRendererEventListener
    public void onVideoEnabled(DecoderCounters decoderCounters) {
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.video.VideoRendererEventListener
    public void onVideoInputFormatChanged(com.fyber.inneractive.sdk.player.exoplayer2.i iVar) {
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.video.VideoRendererEventListener
    public void onVideoSizeChanged(int i, int i2, int i3, float f2) {
        d dVar = this.a.get();
        if (dVar != null) {
            dVar.t = i;
            dVar.u = i2;
        }
    }
}
