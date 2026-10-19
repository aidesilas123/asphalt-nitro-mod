package com.applovin.exoplayer2.h;

import android.net.Uri;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public final class j {
    private static final AtomicLong Lp = new AtomicLong();
    public final long Lq;
    public final long Lr;
    public final long Ls;
    public final Uri ef;
    public final com.applovin.exoplayer2.k.l tw;
    public final Map<String, List<String>> ty;
    public final long tz;

    public j(long j, com.applovin.exoplayer2.k.l lVar, long j2) {
        this(j, lVar, lVar.ef, Collections.emptyMap(), j2, 0L, 0L);
    }

    public j(long j, com.applovin.exoplayer2.k.l lVar, Uri uri, Map<String, List<String>> map, long j2, long j3, long j4) {
        this.Lq = j;
        this.tw = lVar;
        this.ef = uri;
        this.ty = map;
        this.Lr = j2;
        this.Ls = j3;
        this.tz = j4;
    }

    public static long kV() {
        return Lp.getAndIncrement();
    }
}
