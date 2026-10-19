package com.applovin.exoplayer2.h;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
public final class m {

    @Nullable
    public final com.applovin.exoplayer2.v LG;
    public final int LH;

    @Nullable
    public final Object LI;
    public final long LJ;
    public final long LK;
    public final int V;
    public final int gn;

    public m(int i) {
        this(i, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET);
    }

    public m(int i, int i2, @Nullable com.applovin.exoplayer2.v vVar, int i3, @Nullable Object obj, long j, long j2) {
        this.gn = i;
        this.V = i2;
        this.LG = vVar;
        this.LH = i3;
        this.LI = obj;
        this.LJ = j;
        this.LK = j2;
    }
}
