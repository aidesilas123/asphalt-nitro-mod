package com.applovin.exoplayer2.h;

import android.content.Context;
import android.util.SparseArray;
import com.applovin.exoplayer2.h.u;
import com.applovin.exoplayer2.k.i;
import com.applovin.exoplayer2.k.o;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
public final class f implements r {
    private final i.a Lc;
    private final SparseArray<r> Ld;
    private final int[] Le;
    private long Lf;
    private long Lg;
    private long Lh;
    private float Li;
    private float Lj;

    public f(Context context, com.applovin.exoplayer2.e.l lVar) {
        this(new o.a(context), lVar);
    }

    public f(i.a aVar, com.applovin.exoplayer2.e.l lVar) {
        this.Lc = aVar;
        SparseArray<r> sparseArrayA = a(aVar, lVar);
        this.Ld = sparseArrayA;
        this.Le = new int[sparseArrayA.size()];
        for (int i = 0; i < this.Ld.size(); i++) {
            this.Le[i] = this.Ld.keyAt(i);
        }
        this.Lf = C.TIME_UNSET;
        this.Lg = C.TIME_UNSET;
        this.Lh = C.TIME_UNSET;
        this.Li = -3.4028235E38f;
        this.Lj = -3.4028235E38f;
    }

    private static SparseArray<r> a(i.a aVar, com.applovin.exoplayer2.e.l lVar) {
        SparseArray<r> sparseArray = new SparseArray<>();
        try {
            sparseArray.put(0, (r) Class.forName("com.applovin.exoplayer2.source.dash.DashMediaSource$Factory").asSubclass(r.class).getConstructor(i.a.class).newInstance(aVar));
        } catch (Exception unused) {
        }
        try {
            sparseArray.put(1, (r) Class.forName("com.applovin.exoplayer2.source.smoothstreaming.SsMediaSource$Factory").asSubclass(r.class).getConstructor(i.a.class).newInstance(aVar));
        } catch (Exception unused2) {
        }
        try {
            sparseArray.put(2, (r) Class.forName("com.applovin.exoplayer2.source.hls.HlsMediaSource$Factory").asSubclass(r.class).getConstructor(i.a.class).newInstance(aVar));
        } catch (Exception unused3) {
        }
        try {
            sparseArray.put(3, (r) Class.forName("com.applovin.exoplayer2.source.rtsp.RtspMediaSource$Factory").asSubclass(r.class).getConstructor(new Class[0]).newInstance(new Object[0]));
        } catch (Exception unused4) {
        }
        sparseArray.put(4, new u.a(aVar, lVar));
        return sparseArray;
    }
}
