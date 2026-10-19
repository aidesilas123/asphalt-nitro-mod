package com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache;

import androidx.annotation.NonNull;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class g implements Comparable<g> {
    public final String a;
    public final long b;
    public final long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f2552d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final File f2553e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f2554f;

    public g(String str, long j, long j2, long j3, File file) {
        this.a = str;
        this.b = j;
        this.c = j2;
        this.f2552d = file != null;
        this.f2553e = file;
        this.f2554f = j3;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(@NonNull g gVar) {
        if (!this.a.equals(gVar.a)) {
            return this.a.compareTo(gVar.a);
        }
        long j = this.b - gVar.b;
        if (j == 0) {
            return 0;
        }
        return j < 0 ? -1 : 1;
    }
}
