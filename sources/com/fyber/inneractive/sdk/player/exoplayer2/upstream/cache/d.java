package com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache.a;
import com.fyber.inneractive.sdk.player.exoplayer2.upstream.z;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements com.fyber.inneractive.sdk.player.exoplayer2.upstream.g {
    public final com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache.a a;
    public final com.fyber.inneractive.sdk.player.exoplayer2.upstream.g b;
    public final com.fyber.inneractive.sdk.player.exoplayer2.upstream.g c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final com.fyber.inneractive.sdk.player.exoplayer2.upstream.g f2547d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    public final a f2548e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f2549f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f2550g;
    public final boolean h;
    public com.fyber.inneractive.sdk.player.exoplayer2.upstream.g i;
    public boolean j;
    public Uri k;
    public int l;
    public String m;
    public long n;
    public long o;
    public g p;
    public boolean q;
    public boolean r;
    public long s;

    public interface a {
        void a(long j, long j2);
    }

    public d(com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache.a aVar, com.fyber.inneractive.sdk.player.exoplayer2.upstream.g gVar, com.fyber.inneractive.sdk.player.exoplayer2.upstream.g gVar2, com.fyber.inneractive.sdk.player.exoplayer2.upstream.f fVar, int i, @Nullable a aVar2) {
        this.a = aVar;
        this.b = gVar2;
        this.f2549f = (i & 1) != 0;
        this.f2550g = (i & 2) != 0;
        this.h = (i & 4) != 0;
        this.f2547d = gVar;
        if (fVar != null) {
            this.c = new z(gVar, fVar);
        } else {
            this.c = null;
        }
        this.f2548e = aVar2;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.g
    public int a(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        if (this.o == 0) {
            return -1;
        }
        try {
            int iA = this.i.a(bArr, i, i2);
            if (iA >= 0) {
                if (this.i == this.b) {
                    this.s += (long) iA;
                }
                long j = iA;
                this.n += j;
                long j2 = this.o;
                if (j2 != -1) {
                    this.o = j2 - j;
                }
            } else {
                if (this.j) {
                    long j3 = this.n;
                    if (this.i == this.c) {
                        this.a.a(this.m, j3);
                    }
                    this.o = 0L;
                }
                b();
                long j4 = this.o;
                if ((j4 > 0 || j4 == -1) && a(false)) {
                    return a(bArr, i, i2);
                }
            }
            return iA;
        } catch (IOException e2) {
            a(e2);
            throw e2;
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.g
    public long a(com.fyber.inneractive.sdk.player.exoplayer2.upstream.j jVar) throws IOException {
        try {
            Uri uri = jVar.a;
            this.k = uri;
            this.l = jVar.f2575g;
            String string = jVar.f2574f;
            if (string == null) {
                string = uri.toString();
            }
            this.m = string;
            this.n = jVar.f2572d;
            boolean z = (this.f2550g && this.q) || (jVar.f2573e == -1 && this.h);
            this.r = z;
            long j = jVar.f2573e;
            if (j != -1 || z) {
                this.o = j;
            } else {
                long jA = this.a.a(string);
                this.o = jA;
                if (jA != -1) {
                    long j2 = jA - jVar.f2572d;
                    this.o = j2;
                    if (j2 <= 0) {
                        throw new com.fyber.inneractive.sdk.player.exoplayer2.upstream.h(0);
                    }
                }
            }
            a(true);
            return this.o;
        } catch (IOException e2) {
            a(e2);
            throw e2;
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.g
    public Uri a() {
        com.fyber.inneractive.sdk.player.exoplayer2.upstream.g gVar = this.i;
        return gVar == this.f2547d ? gVar.a() : this.k;
    }

    public final void a(IOException iOException) {
        if (this.i == this.b || (iOException instanceof a.C0191a)) {
            this.q = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0110  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean a(boolean r21) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 273
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache.d.a(boolean):boolean");
    }

    public final void b() throws IOException {
        com.fyber.inneractive.sdk.player.exoplayer2.upstream.g gVar = this.i;
        if (gVar == null) {
            return;
        }
        try {
            gVar.close();
            this.i = null;
            this.j = false;
        } finally {
            g gVar2 = this.p;
            if (gVar2 != null) {
                this.a.b(gVar2);
                this.p = null;
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.g
    public void close() throws IOException {
        this.k = null;
        a aVar = this.f2548e;
        if (aVar != null && this.s > 0) {
            aVar.a(this.a.a(), this.s);
            this.s = 0L;
        }
        try {
            b();
        } catch (IOException e2) {
            a(e2);
            throw e2;
        }
    }
}
