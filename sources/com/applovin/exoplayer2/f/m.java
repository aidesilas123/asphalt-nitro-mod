package com.applovin.exoplayer2.f;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.applovin.exoplayer2.f.g;
import com.applovin.exoplayer2.l.ah;
import com.applovin.exoplayer2.l.ai;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class m implements g {

    @Nullable
    private final Surface GB;
    private final MediaCodec Gw;

    @Nullable
    private ByteBuffer[] IX;

    @Nullable
    private ByteBuffer[] IY;

    @RequiresApi(18)
    private static final class a {
        public static Surface b(MediaCodec mediaCodec) {
            return mediaCodec.createInputSurface();
        }
    }

    public static class b implements g.b {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.applovin.exoplayer2.f.m$1] */
        /* JADX WARN: Type inference failed for: r0v1, types: [android.view.Surface] */
        /* JADX WARN: Type inference failed for: r0v3 */
        /* JADX WARN: Type inference failed for: r0v4 */
        /* JADX WARN: Type inference failed for: r0v5 */
        @Override // com.applovin.exoplayer2.f.g.b
        @RequiresApi(16)
        public g b(g.a aVar) throws Throwable {
            MediaCodec mediaCodecC;
            Surface surfaceB;
            ?? r0 = 0;
            r0 = 0;
            r0 = 0;
            try {
                mediaCodecC = c(aVar);
                try {
                    ah.bg("configureCodec");
                    mediaCodecC.configure(aVar.Hl, aVar.Hm, aVar.Hn, aVar.jF);
                    ah.pV();
                    if (!aVar.Ho) {
                        surfaceB = null;
                    } else {
                        if (ai.acV < 18) {
                            throw new IllegalStateException("Encoding from a surface is only supported on API 18 and up.");
                        }
                        surfaceB = a.b(mediaCodecC);
                    }
                } catch (IOException e2) {
                    e = e2;
                } catch (RuntimeException e3) {
                    e = e3;
                }
                try {
                    ah.bg("startCodec");
                    mediaCodecC.start();
                    ah.pV();
                    return new m(mediaCodecC, surfaceB);
                } catch (IOException | RuntimeException e4) {
                    r0 = surfaceB;
                    e = e4;
                    if (r0 != 0) {
                        r0.release();
                    }
                    if (mediaCodecC != null) {
                        mediaCodecC.release();
                    }
                    throw e;
                }
            } catch (IOException | RuntimeException e5) {
                e = e5;
                mediaCodecC = null;
            }
        }

        protected MediaCodec c(g.a aVar) throws IOException {
            com.applovin.exoplayer2.l.a.checkNotNull(aVar.Hk);
            String str = aVar.Hk.name;
            ah.bg("createCodec:" + str);
            MediaCodec mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
            ah.pV();
            return mediaCodecCreateByCodecName;
        }
    }

    private m(MediaCodec mediaCodec, @Nullable Surface surface) {
        this.Gw = mediaCodec;
        this.GB = surface;
        if (ai.acV < 21) {
            this.IX = mediaCodec.getInputBuffers();
            this.IY = mediaCodec.getOutputBuffers();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(g.c cVar, MediaCodec mediaCodec, long j, long j2) {
        cVar.a(this, j, j2);
    }

    @Override // com.applovin.exoplayer2.f.g
    public int a(MediaCodec.BufferInfo bufferInfo) {
        int iDequeueOutputBuffer;
        do {
            iDequeueOutputBuffer = this.Gw.dequeueOutputBuffer(bufferInfo, 0L);
            if (iDequeueOutputBuffer == -3 && ai.acV < 21) {
                this.IY = this.Gw.getOutputBuffers();
            }
        } while (iDequeueOutputBuffer == -3);
        return iDequeueOutputBuffer;
    }

    @Override // com.applovin.exoplayer2.f.g
    public void a(int i, int i2, int i3, long j, int i4) {
        this.Gw.queueInputBuffer(i, i2, i3, j, i4);
    }

    @Override // com.applovin.exoplayer2.f.g
    public void a(int i, int i2, com.applovin.exoplayer2.c.c cVar, long j, int i3) {
        this.Gw.queueSecureInputBuffer(i, i2, cVar.hb(), j, i3);
    }

    @Override // com.applovin.exoplayer2.f.g
    @RequiresApi(23)
    public void a(final g.c cVar, Handler handler) {
        this.Gw.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: com.applovin.exoplayer2.f.w
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
                this.a.a(cVar, mediaCodec, j, j2);
            }
        }, handler);
    }

    @Override // com.applovin.exoplayer2.f.g
    @RequiresApi(23)
    public void b(Surface surface) {
        this.Gw.setOutputSurface(surface);
    }

    @Override // com.applovin.exoplayer2.f.g
    @Nullable
    public ByteBuffer cH(int i) {
        return ai.acV >= 21 ? this.Gw.getInputBuffer(i) : ((ByteBuffer[]) ai.R(this.IX))[i];
    }

    @Override // com.applovin.exoplayer2.f.g
    @Nullable
    public ByteBuffer cI(int i) {
        return ai.acV >= 21 ? this.Gw.getOutputBuffer(i) : ((ByteBuffer[]) ai.R(this.IY))[i];
    }

    @Override // com.applovin.exoplayer2.f.g
    public void cJ(int i) {
        this.Gw.setVideoScalingMode(i);
    }

    @Override // com.applovin.exoplayer2.f.g
    public void dI() {
        this.Gw.flush();
    }

    @Override // com.applovin.exoplayer2.f.g
    @RequiresApi(21)
    public void i(int i, long j) {
        this.Gw.releaseOutputBuffer(i, j);
    }

    @Override // com.applovin.exoplayer2.f.g
    public boolean jC() {
        return false;
    }

    @Override // com.applovin.exoplayer2.f.g
    public int jD() {
        return this.Gw.dequeueInputBuffer(0L);
    }

    @Override // com.applovin.exoplayer2.f.g
    public MediaFormat jE() {
        return this.Gw.getOutputFormat();
    }

    @Override // com.applovin.exoplayer2.f.g
    public void l(int i, boolean z) {
        this.Gw.releaseOutputBuffer(i, z);
    }

    @Override // com.applovin.exoplayer2.f.g
    public void release() {
        this.IX = null;
        this.IY = null;
        Surface surface = this.GB;
        if (surface != null) {
            surface.release();
        }
        this.Gw.release();
    }

    @Override // com.applovin.exoplayer2.f.g
    @RequiresApi(19)
    public void u(Bundle bundle) {
        this.Gw.setParameters(bundle);
    }
}
