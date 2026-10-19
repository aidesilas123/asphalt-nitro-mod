package com.applovin.exoplayer2.f;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.applovin.exoplayer2.f.m;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public interface g {

    public static final class a {
        public final i Hk;
        public final MediaFormat Hl;

        @Nullable
        public final Surface Hm;

        @Nullable
        public final MediaCrypto Hn;
        public final boolean Ho;
        public final com.applovin.exoplayer2.v dU;
        public final int jF;

        private a(i iVar, MediaFormat mediaFormat, com.applovin.exoplayer2.v vVar, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto, int i, boolean z) {
            this.Hk = iVar;
            this.Hl = mediaFormat;
            this.dU = vVar;
            this.Hm = surface;
            this.Hn = mediaCrypto;
            this.jF = i;
            this.Ho = z;
        }

        public static a a(i iVar, MediaFormat mediaFormat, com.applovin.exoplayer2.v vVar, @Nullable MediaCrypto mediaCrypto) {
            return new a(iVar, mediaFormat, vVar, null, mediaCrypto, 0, false);
        }

        public static a a(i iVar, MediaFormat mediaFormat, com.applovin.exoplayer2.v vVar, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto) {
            return new a(iVar, mediaFormat, vVar, surface, mediaCrypto, 0, false);
        }
    }

    public interface b {
        public static final b Hp = new m.b();

        g b(a aVar) throws IOException;
    }

    public interface c {
        void a(g gVar, long j, long j2);
    }

    int a(MediaCodec.BufferInfo bufferInfo);

    void a(int i, int i2, int i3, long j, int i4);

    void a(int i, int i2, com.applovin.exoplayer2.c.c cVar, long j, int i3);

    @RequiresApi(23)
    void a(c cVar, Handler handler);

    @RequiresApi(23)
    void b(Surface surface);

    @Nullable
    ByteBuffer cH(int i);

    @Nullable
    ByteBuffer cI(int i);

    void cJ(int i);

    void dI();

    @RequiresApi(21)
    void i(int i, long j);

    boolean jC();

    int jD();

    MediaFormat jE();

    void l(int i, boolean z);

    void release();

    @RequiresApi(19)
    void u(Bundle bundle);
}
