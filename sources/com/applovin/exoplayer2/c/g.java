package com.applovin.exoplayer2.c;

import androidx.annotation.Nullable;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class g extends com.applovin.exoplayer2.c.a {
    private final int mQ;
    public final c rG;

    @Nullable
    public ByteBuffer rH;
    public boolean rI;
    public long rJ;

    @Nullable
    public ByteBuffer rK;
    private final int rL;

    public static final class a extends IllegalStateException {
        public final int rM;
        public final int rN;

        public a(int i, int i2) {
            super("Buffer too small (" + i + " < " + i2 + ")");
            this.rM = i;
            this.rN = i2;
        }
    }

    public g(int i) {
        this(i, 0);
    }

    public g(int i, int i2) {
        this.rG = new c();
        this.rL = i;
        this.mQ = i2;
    }

    private ByteBuffer bz(int i) {
        int i2 = this.rL;
        if (i2 == 1) {
            return ByteBuffer.allocate(i);
        }
        if (i2 == 2) {
            return ByteBuffer.allocateDirect(i);
        }
        ByteBuffer byteBuffer = this.rH;
        throw new a(byteBuffer == null ? 0 : byteBuffer.capacity(), i);
    }

    public static g hf() {
        return new g(0);
    }

    public void bx(int i) {
        ByteBuffer byteBuffer = this.rK;
        if (byteBuffer == null || byteBuffer.capacity() < i) {
            this.rK = ByteBuffer.allocate(i);
        } else {
            this.rK.clear();
        }
    }

    public void by(int i) {
        int i2 = i + this.mQ;
        ByteBuffer byteBuffer = this.rH;
        if (byteBuffer == null) {
            this.rH = bz(i2);
            return;
        }
        int iCapacity = byteBuffer.capacity();
        int iPosition = byteBuffer.position();
        int i3 = i2 + iPosition;
        if (iCapacity >= i3) {
            this.rH = byteBuffer;
            return;
        }
        ByteBuffer byteBufferBz = bz(i3);
        byteBufferBz.order(byteBuffer.order());
        if (iPosition > 0) {
            byteBuffer.flip();
            byteBufferBz.put(byteBuffer);
        }
        this.rH = byteBufferBz;
    }

    @Override // com.applovin.exoplayer2.c.a
    public void clear() {
        super.clear();
        ByteBuffer byteBuffer = this.rH;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.rK;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.rI = false;
    }

    public final boolean hg() {
        return bv(1073741824);
    }

    public final void hh() {
        ByteBuffer byteBuffer = this.rH;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.rK;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }
}
