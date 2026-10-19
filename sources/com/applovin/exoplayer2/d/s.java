package com.applovin.exoplayer2.d;

import android.net.Uri;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class s extends IOException {
    public final com.applovin.exoplayer2.k.l tw;
    public final Uri tx;
    public final Map<String, List<String>> ty;
    public final long tz;

    public s(com.applovin.exoplayer2.k.l lVar, Uri uri, Map<String, List<String>> map, long j, Throwable th) {
        super(th);
        this.tw = lVar;
        this.tx = uri;
        this.ty = map;
        this.tz = j;
    }
}
