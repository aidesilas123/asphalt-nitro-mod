package com.applovin.exoplayer2.j;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.h.ac;

/* JADX INFO: loaded from: classes.dex */
public final class e extends b {

    @Nullable
    private final Object UT;
    private final int tA;

    public e(ac acVar, int i, int i2) {
        this(acVar, i, i2, 0, null);
    }

    public e(ac acVar, int i, int i2, int i3, @Nullable Object obj) {
        super(acVar, new int[]{i}, i2);
        this.tA = i3;
        this.UT = obj;
    }

    @Override // com.applovin.exoplayer2.j.d
    public int ne() {
        return 0;
    }
}
