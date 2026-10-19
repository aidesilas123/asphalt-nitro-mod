package com.applovin.exoplayer2.ui;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface k {

    public interface a {
        void a(k kVar, long j);

        void a(k kVar, long j, boolean z);

        void b(k kVar, long j);
    }

    void a(a aVar);

    void a(@Nullable long[] jArr, @Nullable boolean[] zArr, int i);

    long getPreferredUpdateDelay();

    void setBufferedPosition(long j);

    void setDuration(long j);

    void setEnabled(boolean z);

    void setPosition(long j);
}
