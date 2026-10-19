package com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache;

import com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache.a;
import com.fyber.inneractive.sdk.player.exoplayer2.util.o;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements com.fyber.inneractive.sdk.player.exoplayer2.upstream.f {
    public final com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache.a a;
    public final long b;
    public final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public com.fyber.inneractive.sdk.player.exoplayer2.upstream.j f2543d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public File f2544e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public OutputStream f2545f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public FileOutputStream f2546g;
    public long h;
    public long i;
    public o j;

    public static class a extends a.C0191a {
        public a(IOException iOException) {
            super(iOException);
        }
    }

    public b(com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache.a aVar, long j, int i) {
        this.a = (com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache.a) com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(aVar);
        this.b = j;
        this.c = i;
    }

    public final void a() throws IOException {
        OutputStream outputStream = this.f2545f;
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.flush();
            this.f2546g.getFD().sync();
            u.a(this.f2545f);
            this.f2545f = null;
            File file = this.f2544e;
            this.f2544e = null;
            this.a.a(file);
        } catch (Throwable th) {
            u.a(this.f2545f);
            this.f2545f = null;
            File file2 = this.f2544e;
            this.f2544e = null;
            file2.delete();
            throw th;
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.f
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.upstream.j jVar) throws a {
        if (jVar.f2573e == -1 && !jVar.a(2)) {
            this.f2543d = null;
            return;
        }
        this.f2543d = jVar;
        this.i = 0L;
        try {
            b();
        } catch (IOException e2) {
            throw new a(e2);
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.f
    public void a(byte[] bArr, int i, int i2) throws a {
        if (this.f2543d == null) {
            return;
        }
        int i3 = 0;
        while (i3 < i2) {
            try {
                if (this.h == this.b) {
                    a();
                    b();
                }
                int iMin = (int) Math.min(i2 - i3, this.b - this.h);
                this.f2545f.write(bArr, i + i3, iMin);
                i3 += iMin;
                long j = iMin;
                this.h += j;
                this.i += j;
            } catch (IOException e2) {
                throw new a(e2);
            }
        }
    }

    public final void b() throws IOException {
        long j = this.f2543d.f2573e;
        long jMin = j == -1 ? this.b : Math.min(j - this.i, this.b);
        com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache.a aVar = this.a;
        com.fyber.inneractive.sdk.player.exoplayer2.upstream.j jVar = this.f2543d;
        this.f2544e = aVar.a(jVar.f2574f, this.i + jVar.c, jMin);
        FileOutputStream fileOutputStream = new FileOutputStream(this.f2544e);
        this.f2546g = fileOutputStream;
        if (this.c > 0) {
            o oVar = this.j;
            if (oVar == null) {
                this.j = new o(this.f2546g, this.c);
            } else {
                oVar.a(fileOutputStream);
            }
            this.f2545f = this.j;
        } else {
            this.f2545f = fileOutputStream;
        }
        this.h = 0L;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.f
    public void close() throws a {
        if (this.f2543d == null) {
            return;
        }
        try {
            a();
        } catch (IOException e2) {
            throw new a(e2);
        }
    }
}
