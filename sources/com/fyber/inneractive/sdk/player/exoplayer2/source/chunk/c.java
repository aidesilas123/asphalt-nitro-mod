package com.fyber.inneractive.sdk.player.exoplayer2.source.chunk;

import com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.c;
import com.fyber.inneractive.sdk.player.exoplayer2.i;
import com.fyber.inneractive.sdk.player.exoplayer2.upstream.g;
import com.fyber.inneractive.sdk.player.exoplayer2.upstream.j;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c extends a {
    public byte[] i;
    public int j;
    public volatile boolean k;

    public c(g gVar, j jVar, int i, i iVar, int i2, Object obj, byte[] bArr) {
        super(gVar, jVar, i, iVar, i2, obj, C.TIME_UNSET, C.TIME_UNSET);
        this.i = bArr;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.x.c
    public final boolean a() {
        return this.k;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.x.c
    public final void b() {
        this.k = true;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.source.chunk.a
    public long c() {
        return this.j;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.x.c
    public final void load() throws InterruptedException, IOException {
        try {
            this.h.a(this.a);
            int iA = 0;
            this.j = 0;
            while (iA != -1 && !this.k) {
                byte[] bArr = this.i;
                if (bArr == null) {
                    this.i = new byte[16384];
                } else if (bArr.length < this.j + 16384) {
                    this.i = Arrays.copyOf(bArr, bArr.length + 16384);
                }
                iA = this.h.a(this.i, this.j, 16384);
                if (iA != -1) {
                    this.j += iA;
                }
            }
            if (!this.k) {
                ((c.a) this).m = Arrays.copyOf(this.i, this.j);
            }
        } finally {
            u.a(this.h);
        }
    }
}
