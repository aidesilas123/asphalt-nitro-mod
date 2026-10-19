package com.applovin.exoplayer2.m;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.c.i;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class j extends com.applovin.exoplayer2.c.i {
    private final i.a<j> Os;

    @Nullable
    public ByteBuffer[] aeK;

    @Nullable
    public int[] aeL;
    public int aeM;
    public int dE;
    public int height;

    @Override // com.applovin.exoplayer2.c.i
    public void release() {
        this.Os.releaseOutputBuffer(this);
    }
}
