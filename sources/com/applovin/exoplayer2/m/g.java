package com.applovin.exoplayer2.m;

import android.view.Surface;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class g extends com.applovin.exoplayer2.f.h {
    public final int adJ;
    public final boolean adK;

    public g(Throwable th, @Nullable com.applovin.exoplayer2.f.i iVar, @Nullable Surface surface) {
        super(th, iVar);
        this.adJ = System.identityHashCode(surface);
        this.adK = surface == null || surface.isValid();
    }
}
