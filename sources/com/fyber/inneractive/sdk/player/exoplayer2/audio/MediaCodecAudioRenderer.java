package com.fyber.inneractive.sdk.player.exoplayer2.audio;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import com.fyber.inneractive.sdk.player.exoplayer2.audio.AudioRendererEventListener;
import com.fyber.inneractive.sdk.player.exoplayer2.audio.c;
import com.fyber.inneractive.sdk.player.exoplayer2.decoder.DecoderCounters;
import com.fyber.inneractive.sdk.player.exoplayer2.i;
import com.fyber.inneractive.sdk.player.exoplayer2.m;
import com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.d;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(16)
public class MediaCodecAudioRenderer extends com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b implements com.fyber.inneractive.sdk.player.exoplayer2.util.g {
    public final AudioRendererEventListener.EventDispatcher V;
    public final c W;
    public boolean X;
    public int Y;
    public int Z;
    public long a0;
    public boolean b0;

    public final class b implements c.f {
        public b() {
        }
    }

    public MediaCodecAudioRenderer(com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.c cVar, com.fyber.inneractive.sdk.player.exoplayer2.drm.c<com.fyber.inneractive.sdk.player.exoplayer2.drm.d> cVar2, boolean z, Handler handler, AudioRendererEventListener audioRendererEventListener) {
        this(cVar, cVar2, z, null, null, new com.fyber.inneractive.sdk.player.exoplayer2.audio.b[0]);
    }

    public MediaCodecAudioRenderer(com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.c cVar, com.fyber.inneractive.sdk.player.exoplayer2.drm.c cVar2, boolean z, Handler handler, AudioRendererEventListener audioRendererEventListener, com.fyber.inneractive.sdk.player.exoplayer2.audio.b... bVarArr) {
        super(1, cVar, cVar2, z);
        this.W = new c(bVarArr, new b());
        this.V = new AudioRendererEventListener.EventDispatcher(handler, audioRendererEventListener);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0142  */
    @Override // com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int a(com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.c r10, com.fyber.inneractive.sdk.player.exoplayer2.i r11) throws com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.d.b {
        /*
            Method dump skipped, instruction units count: 332
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.audio.MediaCodecAudioRenderer.a(com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.c, com.fyber.inneractive.sdk.player.exoplayer2.i):int");
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.util.g
    public m a(m mVar) {
        return this.W.a(mVar);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b
    public com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.a a(com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.c cVar, i iVar, boolean z) throws d.b {
        String str = iVar.f2476f;
        this.W.getClass();
        return cVar.a(iVar.f2476f, z);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.e.b
    public void a(int i, Object obj) throws com.fyber.inneractive.sdk.player.exoplayer2.d {
        if (i == 2) {
            c cVar = this.W;
            float fFloatValue = ((Float) obj).floatValue();
            if (cVar.P != fFloatValue) {
                cVar.P = fFloatValue;
                cVar.k();
                return;
            }
            return;
        }
        if (i != 3) {
            return;
        }
        int iIntValue = ((Integer) obj).intValue();
        c cVar2 = this.W;
        if (cVar2.n == iIntValue) {
            return;
        }
        cVar2.n = iIntValue;
        if (cVar2.a0) {
            return;
        }
        cVar2.h();
        cVar2.Z = 0;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b, com.fyber.inneractive.sdk.player.exoplayer2.a
    public void a(long j, boolean z) throws com.fyber.inneractive.sdk.player.exoplayer2.d {
        super.a(j, z);
        this.W.h();
        this.a0 = j;
        this.b0 = true;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b
    public void a(MediaCodec mediaCodec, MediaFormat mediaFormat) throws com.fyber.inneractive.sdk.player.exoplayer2.d {
        int[] iArr;
        int i;
        int integer = mediaFormat.getInteger("channel-count");
        int integer2 = mediaFormat.getInteger("sample-rate");
        if (this.X && integer == 6 && (i = this.Z) < 6) {
            iArr = new int[i];
            for (int i2 = 0; i2 < this.Z; i2++) {
                iArr[i2] = i2;
            }
        } else {
            iArr = null;
        }
        try {
            this.W.a(MimeTypes.AUDIO_RAW, integer, integer2, this.Y, 0, iArr);
        } catch (c.d e2) {
            throw com.fyber.inneractive.sdk.player.exoplayer2.d.a(e2, this.c);
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b
    public void a(i iVar) throws com.fyber.inneractive.sdk.player.exoplayer2.d {
        super.a(iVar);
        this.V.inputFormatChanged(iVar);
        this.Y = MimeTypes.AUDIO_RAW.equals(iVar.f2476f) ? iVar.t : 2;
        this.Z = iVar.r;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
    @Override // com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.a r3, android.media.MediaCodec r4, com.fyber.inneractive.sdk.player.exoplayer2.i r5, android.media.MediaCrypto r6) {
        /*
            r2 = this;
            java.lang.String r3 = r3.a
            int r6 = com.fyber.inneractive.sdk.player.exoplayer2.util.u.a
            r0 = 0
            r1 = 24
            if (r6 >= r1) goto L37
            java.lang.String r6 = "OMX.SEC.aac.dec"
            boolean r3 = r6.equals(r3)
            if (r3 == 0) goto L37
            java.lang.String r3 = com.fyber.inneractive.sdk.player.exoplayer2.util.u.c
            java.lang.String r6 = "samsung"
            boolean r3 = r6.equals(r3)
            if (r3 == 0) goto L37
            java.lang.String r3 = com.fyber.inneractive.sdk.player.exoplayer2.util.u.b
            java.lang.String r6 = "zeroflte"
            boolean r6 = r3.startsWith(r6)
            if (r6 != 0) goto L35
            java.lang.String r6 = "herolte"
            boolean r6 = r3.startsWith(r6)
            if (r6 != 0) goto L35
            java.lang.String r6 = "heroqlte"
            boolean r3 = r3.startsWith(r6)
            if (r3 == 0) goto L37
        L35:
            r3 = 1
            goto L38
        L37:
            r3 = 0
        L38:
            r2.X = r3
            android.media.MediaFormat r3 = r5.a()
            r5 = 0
            r4.configure(r3, r5, r5, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.audio.MediaCodecAudioRenderer.a(com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.a, android.media.MediaCodec, com.fyber.inneractive.sdk.player.exoplayer2.i, android.media.MediaCrypto):void");
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b
    public void a(String str, long j, long j2) {
        this.V.decoderInitialized(str, j, j2);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.a
    public void a(boolean z) throws com.fyber.inneractive.sdk.player.exoplayer2.d {
        DecoderCounters decoderCounters = new DecoderCounters();
        this.T = decoderCounters;
        this.V.enabled(decoderCounters);
        int i = this.b.a;
        if (i == 0) {
            c cVar = this.W;
            if (cVar.a0) {
                cVar.a0 = false;
                cVar.Z = 0;
                cVar.h();
                return;
            }
            return;
        }
        c cVar2 = this.W;
        cVar2.getClass();
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(u.a >= 21);
        if (cVar2.a0 && cVar2.Z == i) {
            return;
        }
        cVar2.a0 = true;
        cVar2.Z = i;
        cVar2.h();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b
    public boolean a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) throws com.fyber.inneractive.sdk.player.exoplayer2.d {
        if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            this.T.skippedOutputBufferCount++;
            c cVar = this.W;
            if (cVar.L == 1) {
                cVar.L = 2;
            }
            return true;
        }
        try {
            if (!this.W.a(byteBuffer, j3)) {
                return false;
            }
            mediaCodec.releaseOutputBuffer(i, false);
            this.T.renderedOutputBufferCount++;
            return true;
        } catch (c.e | c.h e2) {
            throw com.fyber.inneractive.sdk.player.exoplayer2.d.a(e2, this.c);
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b, com.fyber.inneractive.sdk.player.exoplayer2.n
    public boolean b() {
        if (this.Q) {
            c cVar = this.W;
            if (!cVar.e() || (cVar.X && !cVar.d())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.util.g
    public m i() {
        return this.W.s;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b, com.fyber.inneractive.sdk.player.exoplayer2.n
    public boolean isReady() {
        return this.W.d() || super.isReady();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.a, com.fyber.inneractive.sdk.player.exoplayer2.n
    public com.fyber.inneractive.sdk.player.exoplayer2.util.g j() {
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x018c A[Catch: Exception -> 0x01a7, TRY_LEAVE, TryCatch #0 {Exception -> 0x01a7, blocks: (B:46:0x0167, B:48:0x018c), top: B:86:0x0167 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x024e  */
    @Override // com.fyber.inneractive.sdk.player.exoplayer2.util.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long o() {
        /*
            Method dump skipped, instruction units count: 632
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.audio.MediaCodecAudioRenderer.o():long");
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b, com.fyber.inneractive.sdk.player.exoplayer2.a
    public void p() {
        try {
            c cVar = this.W;
            cVar.h();
            for (com.fyber.inneractive.sdk.player.exoplayer2.audio.b bVar : cVar.c) {
                bVar.g();
            }
            cVar.Z = 0;
            cVar.Y = false;
            try {
                super.p();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.p();
                throw th;
            } finally {
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.a
    public void q() {
        this.W.g();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.a
    public void r() {
        c cVar = this.W;
        cVar.Y = false;
        if (cVar.e()) {
            cVar.j();
            c.b bVar = cVar.f2194g;
            if (bVar.f2198g != C.TIME_UNSET) {
                return;
            }
            bVar.a.pause();
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b
    public void w() throws com.fyber.inneractive.sdk.player.exoplayer2.d {
        try {
            c cVar = this.W;
            if (!cVar.X && cVar.e() && cVar.a()) {
                c.b bVar = cVar.f2194g;
                long jC = cVar.c();
                bVar.h = bVar.a();
                bVar.f2198g = SystemClock.elapsedRealtime() * 1000;
                bVar.i = jC;
                bVar.a.stop();
                cVar.w = 0;
                cVar.X = true;
            }
        } catch (c.h e2) {
            throw com.fyber.inneractive.sdk.player.exoplayer2.d.a(e2, this.c);
        }
    }
}
