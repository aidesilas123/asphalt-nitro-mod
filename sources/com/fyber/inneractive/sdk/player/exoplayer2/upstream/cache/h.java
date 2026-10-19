package com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache;

import java.util.TreeSet;

/* JADX INFO: loaded from: classes2.dex */
public final class h {
    public final int a;
    public final String b;
    public final TreeSet<l> c = new TreeSet<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f2555d;

    public h(int i, String str, long j) {
        this.a = i;
        this.b = str;
        this.f2555d = j;
    }

    public int a() {
        int iHashCode = ((this.a * 31) + this.b.hashCode()) * 31;
        long j = this.f2555d;
        return iHashCode + ((int) (j ^ (j >>> 32)));
    }
}
