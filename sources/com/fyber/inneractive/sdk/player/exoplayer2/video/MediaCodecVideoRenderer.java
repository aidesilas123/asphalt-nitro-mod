package com.fyber.inneractive.sdk.player.exoplayer2.video;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.work.WorkRequest;
import com.fyber.inneractive.sdk.player.exoplayer2.decoder.DecoderCounters;
import com.fyber.inneractive.sdk.player.exoplayer2.i;
import com.fyber.inneractive.sdk.player.exoplayer2.util.s;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import com.fyber.inneractive.sdk.player.exoplayer2.video.VideoRendererEventListener;
import com.fyber.inneractive.sdk.player.exoplayer2.video.d;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(16)
public class MediaCodecVideoRenderer extends com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b {
    public static final int[] w0 = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    public final d V;
    public final VideoRendererEventListener.EventDispatcher W;
    public final long X;
    public final int Y;
    public final boolean Z;
    public i[] a0;
    public a b0;
    public Surface c0;
    public int d0;
    public boolean e0;
    public long f0;
    public long g0;
    public int h0;
    public int i0;
    public int j0;
    public float k0;
    public int l0;
    public int m0;
    public int n0;
    public float o0;
    public int p0;
    public int q0;
    public int r0;
    public float s0;
    public boolean t0;
    public int u0;
    public b v0;

    public static final class a {
        public final int a;
        public final int b;
        public final int c;

        public a(int i, int i2, int i3) {
            this.a = i;
            this.b = i2;
            this.c = i3;
        }
    }

    @TargetApi(23)
    public final class b implements MediaCodec.OnFrameRenderedListener {
        public b(MediaCodec mediaCodec) {
            mediaCodec.setOnFrameRenderedListener(this, new Handler());
        }

        @Override // android.media.MediaCodec.OnFrameRenderedListener
        public void onFrameRendered(@NonNull MediaCodec mediaCodec, long j, long j2) {
            MediaCodecVideoRenderer mediaCodecVideoRenderer = MediaCodecVideoRenderer.this;
            if (this != mediaCodecVideoRenderer.v0) {
                return;
            }
            mediaCodecVideoRenderer.C();
        }
    }

    public MediaCodecVideoRenderer(Context context, com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.c cVar, long j, com.fyber.inneractive.sdk.player.exoplayer2.drm.c<com.fyber.inneractive.sdk.player.exoplayer2.drm.d> cVar2, boolean z, Handler handler, VideoRendererEventListener videoRendererEventListener, int i) {
        super(2, cVar, null, z);
        this.X = j;
        this.Y = i;
        this.V = new d(context);
        this.W = new VideoRendererEventListener.EventDispatcher(handler, videoRendererEventListener);
        this.Z = A();
        this.f0 = C.TIME_UNSET;
        this.l0 = -1;
        this.m0 = -1;
        this.o0 = -1.0f;
        this.k0 = -1.0f;
        this.d0 = 1;
        z();
    }

    public static boolean A() {
        return u.a <= 22 && "foster".equals(u.b) && "NVIDIA".equals(u.c);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int a(java.lang.String r5, int r6, int r7) {
        /*
            r0 = -1
            if (r6 == r0) goto L83
            if (r7 != r0) goto L7
            goto L83
        L7:
            r5.getClass()
            int r1 = r5.hashCode()
            r2 = 4
            r3 = 3
            r4 = 2
            switch(r1) {
                case -1664118616: goto L4d;
                case -1662541442: goto L42;
                case 1187890754: goto L37;
                case 1331836730: goto L2c;
                case 1599127256: goto L21;
                case 1599127257: goto L16;
                default: goto L14;
            }
        L14:
            r5 = -1
            goto L57
        L16:
            java.lang.String r1 = "video/x-vnd.on2.vp9"
            boolean r5 = r5.equals(r1)
            if (r5 != 0) goto L1f
            goto L14
        L1f:
            r5 = 5
            goto L57
        L21:
            java.lang.String r1 = "video/x-vnd.on2.vp8"
            boolean r5 = r5.equals(r1)
            if (r5 != 0) goto L2a
            goto L14
        L2a:
            r5 = 4
            goto L57
        L2c:
            java.lang.String r1 = "video/avc"
            boolean r5 = r5.equals(r1)
            if (r5 != 0) goto L35
            goto L14
        L35:
            r5 = 3
            goto L57
        L37:
            java.lang.String r1 = "video/mp4v-es"
            boolean r5 = r5.equals(r1)
            if (r5 != 0) goto L40
            goto L14
        L40:
            r5 = 2
            goto L57
        L42:
            java.lang.String r1 = "video/hevc"
            boolean r5 = r5.equals(r1)
            if (r5 != 0) goto L4b
            goto L14
        L4b:
            r5 = 1
            goto L57
        L4d:
            java.lang.String r1 = "video/3gpp"
            boolean r5 = r5.equals(r1)
            if (r5 != 0) goto L56
            goto L14
        L56:
            r5 = 0
        L57:
            switch(r5) {
                case 0: goto L7a;
                case 1: goto L77;
                case 2: goto L7a;
                case 3: goto L5b;
                case 4: goto L7a;
                case 5: goto L77;
                default: goto L5a;
            }
        L5a:
            return r0
        L5b:
            java.lang.String r5 = com.fyber.inneractive.sdk.player.exoplayer2.util.u.f2615d
            java.lang.String r1 = "BRAVIA 4K 2015"
            boolean r5 = r1.equals(r5)
            if (r5 == 0) goto L66
            return r0
        L66:
            r5 = 16
            int r6 = com.fyber.inneractive.sdk.player.exoplayer2.util.u.a(r6, r5)
            int r7 = com.fyber.inneractive.sdk.player.exoplayer2.util.u.a(r7, r5)
            int r6 = r6 * r7
            int r6 = r6 * 16
            int r6 = r6 * 16
            goto L7c
        L77:
            int r6 = r6 * r7
            goto L7d
        L7a:
            int r6 = r6 * r7
        L7c:
            r2 = 2
        L7d:
            int r6 = r6 * 3
            int r2 = r2 * 2
            int r6 = r6 / r2
            return r6
        L83:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.video.MediaCodecVideoRenderer.a(java.lang.String, int, int):int");
    }

    public static boolean a(boolean z, i iVar, i iVar2) {
        if (!iVar.f2476f.equals(iVar2.f2476f)) {
            return false;
        }
        int i = iVar.m;
        if (i == -1) {
            i = 0;
        }
        int i2 = iVar2.m;
        if (i2 == -1) {
            i2 = 0;
        }
        if (i == i2) {
            return z || (iVar.j == iVar2.j && iVar.k == iVar2.k);
        }
        return false;
    }

    public final void B() {
        if (this.h0 > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.W.droppedFrames(this.h0, jElapsedRealtime - this.g0);
            this.h0 = 0;
            this.g0 = jElapsedRealtime;
        }
    }

    public void C() {
        if (this.e0) {
            return;
        }
        this.e0 = true;
        this.W.renderedFirstFrame(this.c0);
    }

    public final void D() {
        int i = this.l0;
        if (i == -1 && this.m0 == -1) {
            return;
        }
        if (this.p0 == i && this.q0 == this.m0 && this.r0 == this.n0 && this.s0 == this.o0) {
            return;
        }
        this.W.videoSizeChanged(i, this.m0, this.n0, this.o0);
        this.p0 = this.l0;
        this.q0 = this.m0;
        this.r0 = this.n0;
        this.s0 = this.o0;
    }

    public final void E() {
        int i = this.p0;
        if (i == -1 && this.q0 == -1) {
            return;
        }
        this.W.videoSizeChanged(i, this.q0, this.r0, this.s0);
    }

    public final void F() {
        this.f0 = this.X > 0 ? SystemClock.elapsedRealtime() + this.X : C.TIME_UNSET;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:102:0x026a  */
    @Override // com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int a(com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.c r18, com.fyber.inneractive.sdk.player.exoplayer2.i r19) throws com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.d.b {
        /*
            Method dump skipped, instruction units count: 760
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.video.MediaCodecVideoRenderer.a(com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.c, com.fyber.inneractive.sdk.player.exoplayer2.i):int");
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.e.b
    public void a(int i, Object obj) throws com.fyber.inneractive.sdk.player.exoplayer2.d {
        if (i != 1) {
            if (i == 4) {
                int iIntValue = ((Integer) obj).intValue();
                this.d0 = iIntValue;
                MediaCodec mediaCodec = this.r;
                if (mediaCodec != null) {
                    mediaCodec.setVideoScalingMode(iIntValue);
                    return;
                }
                return;
            }
            return;
        }
        Surface surface = (Surface) obj;
        if (this.c0 == surface) {
            if (surface != null) {
                E();
                if (this.e0) {
                    this.W.renderedFirstFrame(this.c0);
                    return;
                }
                return;
            }
            return;
        }
        this.c0 = surface;
        int i2 = this.f2182d;
        if (i2 == 1 || i2 == 2) {
            MediaCodec mediaCodec2 = this.r;
            if (u.a < 23 || mediaCodec2 == null || surface == null) {
                v();
                t();
            } else {
                mediaCodec2.setOutputSurface(surface);
            }
        }
        if (surface == null) {
            z();
            y();
            return;
        }
        E();
        y();
        if (i2 == 2) {
            F();
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b, com.fyber.inneractive.sdk.player.exoplayer2.a
    public void a(long j, boolean z) throws com.fyber.inneractive.sdk.player.exoplayer2.d {
        super.a(j, z);
        y();
        this.i0 = 0;
        if (z) {
            F();
        } else {
            this.f0 = C.TIME_UNSET;
        }
    }

    public final void a(MediaCodec mediaCodec, int i) {
        D();
        s.a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, true);
        s.a();
        this.T.renderedOutputBufferCount++;
        this.i0 = 0;
        C();
    }

    @TargetApi(21)
    public final void a(MediaCodec mediaCodec, int i, long j) {
        D();
        s.a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, j);
        s.a();
        this.T.renderedOutputBufferCount++;
        this.i0 = 0;
        C();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b
    public void a(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        this.l0 = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
        int integer = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
        this.m0 = integer;
        float f2 = this.k0;
        this.o0 = f2;
        if (u.a >= 21) {
            int i = this.j0;
            if (i == 90 || i == 270) {
                int i2 = this.l0;
                this.l0 = integer;
                this.m0 = i2;
                this.o0 = 1.0f / f2;
            }
        } else {
            this.n0 = this.j0;
        }
        mediaCodec.setVideoScalingMode(this.d0);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.decoder.b bVar) {
        if (u.a >= 23 || !this.t0) {
            return;
        }
        C();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b
    public void a(i iVar) throws com.fyber.inneractive.sdk.player.exoplayer2.d {
        super.a(iVar);
        this.W.inputFormatChanged(iVar);
        float f2 = iVar.n;
        if (f2 == -1.0f) {
            f2 = 1.0f;
        }
        this.k0 = f2;
        int i = iVar.m;
        if (i == -1) {
            i = 0;
        }
        this.j0 = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:96:0x0102 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x012c A[SYNTHETIC] */
    @Override // com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.a r23, android.media.MediaCodec r24, com.fyber.inneractive.sdk.player.exoplayer2.i r25, android.media.MediaCrypto r26) throws com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.d.b {
        /*
            Method dump skipped, instruction units count: 451
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.video.MediaCodecVideoRenderer.a(com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.a, android.media.MediaCodec, com.fyber.inneractive.sdk.player.exoplayer2.i, android.media.MediaCrypto):void");
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b
    public void a(String str, long j, long j2) {
        this.W.decoderInitialized(str, j, j2);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.a
    public void a(boolean z) throws com.fyber.inneractive.sdk.player.exoplayer2.d {
        DecoderCounters decoderCounters = new DecoderCounters();
        this.T = decoderCounters;
        int i = this.b.a;
        this.u0 = i;
        this.t0 = i != 0;
        this.W.enabled(decoderCounters);
        d dVar = this.V;
        dVar.f2629g = false;
        dVar.a.b.sendEmptyMessage(1);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.a
    public void a(i[] iVarArr) throws com.fyber.inneractive.sdk.player.exoplayer2.d {
        this.a0 = iVarArr;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b
    public boolean a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) {
        long j4;
        long j5;
        long j6;
        long j7;
        if (z) {
            s.a("skipVideoBuffer");
            mediaCodec.releaseOutputBuffer(i, false);
            s.a();
            this.T.skippedOutputBufferCount++;
            return true;
        }
        if (!this.e0) {
            if (u.a >= 21) {
                a(mediaCodec, i, System.nanoTime());
            } else {
                a(mediaCodec, i);
            }
            return true;
        }
        if (this.f2182d != 2) {
            return false;
        }
        long jElapsedRealtime = (j3 - j) - ((SystemClock.elapsedRealtime() * 1000) - j2);
        long jNanoTime = System.nanoTime();
        long j8 = (jElapsedRealtime * 1000) + jNanoTime;
        d dVar = this.V;
        long j9 = j3 * 1000;
        if (dVar.f2629g) {
            if (j3 != dVar.f2626d) {
                dVar.j++;
                dVar.f2627e = dVar.f2628f;
            }
            long j10 = dVar.j;
            if (j10 >= 6) {
                long j11 = dVar.f2627e + ((j9 - dVar.i) / j10);
                if (dVar.a(j11, j8)) {
                    dVar.f2629g = false;
                    j4 = j8;
                    j5 = j4;
                    j6 = j9;
                } else {
                    j6 = j11;
                    j5 = (dVar.h + j11) - dVar.i;
                    j4 = j8;
                }
            } else {
                j4 = j8;
                if (dVar.a(j9, j4)) {
                    dVar.f2629g = false;
                }
                j5 = j4;
                j6 = j9;
            }
        } else {
            j4 = j8;
            j5 = j4;
            j6 = j9;
        }
        if (!dVar.f2629g) {
            dVar.i = j9;
            dVar.h = j4;
            dVar.j = 0L;
            dVar.f2629g = true;
        }
        dVar.f2626d = j3;
        dVar.f2628f = j6;
        d.a aVar = dVar.a;
        if (aVar != null && aVar.a != 0) {
            long j12 = dVar.a.a;
            long j13 = dVar.b;
            long j14 = j12 + (((j5 - j12) / j13) * j13);
            if (j5 <= j14) {
                j7 = j14 - j13;
            } else {
                j14 = j13 + j14;
                j7 = j14;
            }
            if (j14 - j5 >= j5 - j7) {
                j14 = j7;
            }
            j5 = j14 - dVar.c;
        }
        long j15 = (j5 - jNanoTime) / 1000;
        if (j15 < -30000) {
            s.a("dropVideoBuffer");
            mediaCodec.releaseOutputBuffer(i, false);
            s.a();
            DecoderCounters decoderCounters = this.T;
            decoderCounters.droppedOutputBufferCount++;
            this.h0++;
            int i3 = this.i0 + 1;
            this.i0 = i3;
            decoderCounters.maxConsecutiveDroppedOutputBufferCount = Math.max(i3, decoderCounters.maxConsecutiveDroppedOutputBufferCount);
            if (this.h0 == this.Y) {
                B();
            }
            return true;
        }
        if (u.a >= 21) {
            if (j15 >= 50000) {
                return false;
            }
            a(mediaCodec, i, j5);
            return true;
        }
        if (j15 >= WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS) {
            return false;
        }
        if (j15 > 11000) {
            try {
                Thread.sleep((j15 - 10000) / 1000);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
        a(mediaCodec, i);
        return true;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b
    public boolean a(MediaCodec mediaCodec, boolean z, i iVar, i iVar2) {
        if (a(z, iVar, iVar2)) {
            int i = iVar2.j;
            a aVar = this.b0;
            if (i <= aVar.a && iVar2.k <= aVar.b && iVar2.f2477g <= aVar.c) {
                return true;
            }
        }
        return false;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b, com.fyber.inneractive.sdk.player.exoplayer2.n
    public boolean isReady() {
        if ((this.e0 || super.x()) && super.isReady()) {
            this.f0 = C.TIME_UNSET;
            return true;
        }
        if (this.f0 == C.TIME_UNSET) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < this.f0) {
            return true;
        }
        this.f0 = C.TIME_UNSET;
        return false;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b, com.fyber.inneractive.sdk.player.exoplayer2.a
    public void p() {
        this.l0 = -1;
        this.m0 = -1;
        this.o0 = -1.0f;
        this.k0 = -1.0f;
        z();
        y();
        d dVar = this.V;
        dVar.getClass();
        dVar.a.b.sendEmptyMessage(2);
        this.v0 = null;
        try {
            super.p();
        } finally {
            this.T.ensureUpdated();
            this.W.disabled(this.T);
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.a
    public void q() {
        this.h0 = 0;
        this.g0 = SystemClock.elapsedRealtime();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.a
    public void r() {
        this.f0 = C.TIME_UNSET;
        B();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b
    public boolean x() {
        Surface surface;
        return super.x() && (surface = this.c0) != null && surface.isValid();
    }

    public final void y() {
        MediaCodec mediaCodec;
        this.e0 = false;
        if (u.a < 23 || !this.t0 || (mediaCodec = this.r) == null) {
            return;
        }
        this.v0 = new b(mediaCodec);
    }

    public final void z() {
        this.p0 = -1;
        this.q0 = -1;
        this.s0 = -1.0f;
        this.r0 = -1;
    }
}
