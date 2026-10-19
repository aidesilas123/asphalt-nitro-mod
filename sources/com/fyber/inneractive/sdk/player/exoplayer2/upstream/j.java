package com.fyber.inneractive.sdk.player.exoplayer2.upstream;

import android.net.Uri;
import com.json.o2;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class j {
    public final Uri a;
    public final byte[] b;
    public final long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f2572d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f2573e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f2574f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f2575g;

    public j(Uri uri, int i) {
        this(uri, 0L, -1L, null, i);
    }

    public j(Uri uri, long j, long j2, long j3, String str, int i) {
        this(uri, null, j, j2, j3, str, i);
    }

    public j(Uri uri, long j, long j2, String str, int i) {
        this(uri, j, j, j2, null, i);
    }

    public j(Uri uri, byte[] bArr, long j, long j2, long j3, String str, int i) {
        boolean z = true;
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(j >= 0);
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(j2 >= 0);
        if (j3 <= 0 && j3 != -1) {
            z = false;
        }
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(z);
        this.a = uri;
        this.b = null;
        this.c = j;
        this.f2572d = j2;
        this.f2573e = j3;
        this.f2574f = str;
        this.f2575g = i;
    }

    public boolean a(int i) {
        return (this.f2575g & i) == i;
    }

    public String toString() {
        return "DataSpec[" + this.a + ", " + Arrays.toString(this.b) + ", " + this.c + ", " + this.f2572d + ", " + this.f2573e + ", " + this.f2574f + ", " + this.f2575g + o2.i.f6491e;
    }
}
