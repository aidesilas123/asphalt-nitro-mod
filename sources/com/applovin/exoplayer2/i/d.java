package com.applovin.exoplayer2.i;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.c.i;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public abstract class d extends com.applovin.exoplayer2.c.j<j, k, h> implements g {
    private final String name;

    protected d(String str) {
        super(new j[2], new k[2]);
        this.name = str;
        bA(1024);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.c.j
    @Nullable
    public final h a(j jVar, k kVar, boolean z) {
        try {
            ByteBuffer byteBuffer = (ByteBuffer) com.applovin.exoplayer2.l.a.checkNotNull(jVar.rH);
            kVar.a(jVar.rJ, c(byteBuffer.array(), byteBuffer.limit(), z), jVar.dD);
            kVar.bu(Integer.MIN_VALUE);
            return null;
        } catch (h e2) {
            return e2;
        }
    }

    @Override // com.applovin.exoplayer2.i.g
    public void bd(long j) {
    }

    protected abstract f c(byte[] bArr, int i, boolean z) throws h;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.c.j
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public final h a(Throwable th) {
        return new h("Unexpected decode error", th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.c.j
    /* JADX INFO: renamed from: lY, reason: merged with bridge method [inline-methods] */
    public final j ho() {
        return new j();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.c.j
    /* JADX INFO: renamed from: lZ, reason: merged with bridge method [inline-methods] */
    public final k hp() {
        return new e(new i.a() { // from class: com.applovin.exoplayer2.i.p
            @Override // com.applovin.exoplayer2.c.i.a
            public final void releaseOutputBuffer(com.applovin.exoplayer2.c.i iVar) {
                this.a.releaseOutputBuffer((k) iVar);
            }
        });
    }
}
