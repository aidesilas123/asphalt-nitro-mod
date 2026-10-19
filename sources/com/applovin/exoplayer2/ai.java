package com.applovin.exoplayer2;

import androidx.annotation.Nullable;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class ai extends IOException {
    public final boolean gm;
    public final int gn;

    protected ai(@Nullable String str, @Nullable Throwable th, boolean z, int i) {
        super(str, th);
        this.gm = z;
        this.gn = i;
    }

    public static ai b(@Nullable String str, @Nullable Throwable th) {
        return new ai(str, th, true, 0);
    }

    public static ai c(@Nullable String str, @Nullable Throwable th) {
        return new ai(str, th, true, 1);
    }

    public static ai p(@Nullable String str) {
        return new ai(str, null, false, 1);
    }
}
