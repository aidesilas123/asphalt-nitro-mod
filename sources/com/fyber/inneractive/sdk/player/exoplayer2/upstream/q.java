package com.fyber.inneractive.sdk.player.exoplayer2.upstream;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes2.dex */
public final class q implements g {
    public final a0<? super q> a;
    public RandomAccessFile b;
    public Uri c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f2593d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2594e;

    public static class a extends IOException {
        public a(IOException iOException) {
            super(iOException);
        }
    }

    public q(a0<? super q> a0Var) {
        this.a = a0Var;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.g
    public int a(byte[] bArr, int i, int i2) throws a {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f2593d;
        if (j == 0) {
            return -1;
        }
        try {
            int i3 = this.b.read(bArr, i, (int) Math.min(j, i2));
            if (i3 > 0) {
                long j2 = i3;
                this.f2593d -= j2;
                a0<? super q> a0Var = this.a;
                if (a0Var != null) {
                    l lVar = (l) a0Var;
                    synchronized (lVar) {
                        lVar.f2580d += j2;
                    }
                }
            }
            return i3;
        } catch (IOException e2) {
            throw new a(e2);
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.g
    public long a(j jVar) throws a {
        try {
            this.c = jVar.a;
            RandomAccessFile randomAccessFile = new RandomAccessFile(jVar.a.getPath(), "r");
            this.b = randomAccessFile;
            randomAccessFile.seek(jVar.f2572d);
            long length = jVar.f2573e;
            if (length == -1) {
                length = this.b.length() - jVar.f2572d;
            }
            this.f2593d = length;
            if (length < 0) {
                throw new EOFException();
            }
            this.f2594e = true;
            a0<? super q> a0Var = this.a;
            if (a0Var != null) {
                ((l) a0Var).a(this, jVar);
            }
            return this.f2593d;
        } catch (IOException e2) {
            throw new a(e2);
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.g
    public Uri a() {
        return this.c;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.g
    public void close() throws a {
        this.c = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.b;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
            } catch (IOException e2) {
                throw new a(e2);
            }
        } finally {
            this.b = null;
            if (this.f2594e) {
                this.f2594e = false;
                a0<? super q> a0Var = this.a;
                if (a0Var != null) {
                    ((l) a0Var).a(this);
                }
            }
        }
    }
}
