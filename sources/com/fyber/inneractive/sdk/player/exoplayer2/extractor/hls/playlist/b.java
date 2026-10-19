package com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends c {
    public final int b;
    public final long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f2272d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f2273e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f2274f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f2275g;
    public final int h;
    public final long i;
    public final boolean j;
    public final boolean k;
    public final a l;
    public final List<a> m;
    public final List<String> n;
    public final long o;

    public static final class a implements Comparable<Long> {
        public final String a;
        public final long b;
        public final int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final long f2276d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f2277e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f2278f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final String f2279g;
        public final long h;
        public final long i;

        public a(String str, long j, int i, long j2, boolean z, String str2, String str3, long j3, long j4) {
            this.a = str;
            this.b = j;
            this.c = i;
            this.f2276d = j2;
            this.f2277e = z;
            this.f2278f = str2;
            this.f2279g = str3;
            this.h = j3;
            this.i = j4;
        }

        @Override // java.lang.Comparable
        public int compareTo(Long l) {
            Long l2 = l;
            if (this.f2276d > l2.longValue()) {
                return 1;
            }
            return this.f2276d < l2.longValue() ? -1 : 0;
        }
    }

    public b(int i, String str, long j, long j2, boolean z, int i2, int i3, int i4, long j3, boolean z2, boolean z3, a aVar, List<a> list, List<String> list2) {
        super(str);
        this.b = i;
        this.f2272d = j2;
        this.f2273e = z;
        this.f2274f = i2;
        this.f2275g = i3;
        this.h = i4;
        this.i = j3;
        this.j = z2;
        this.k = z3;
        this.l = aVar;
        this.m = Collections.unmodifiableList(list);
        if (list.isEmpty()) {
            this.o = 0L;
        } else {
            a aVar2 = list.get(list.size() - 1);
            this.o = aVar2.f2276d + aVar2.b;
        }
        this.c = j == C.TIME_UNSET ? -9223372036854775807L : j >= 0 ? j : this.o + j;
        this.n = Collections.unmodifiableList(list2);
    }
}
