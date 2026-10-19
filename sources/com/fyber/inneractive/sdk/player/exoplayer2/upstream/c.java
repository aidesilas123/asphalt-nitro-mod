package com.fyber.inneractive.sdk.player.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements g {
    public final AssetManager a;
    public final a0<? super c> b;
    public Uri c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public InputStream f2540d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f2541e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2542f;

    public static final class a extends IOException {
        public a(IOException iOException) {
            super(iOException);
        }
    }

    public c(Context context, a0<? super c> a0Var) {
        this.a = context.getAssets();
        this.b = a0Var;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.g
    public int a(byte[] bArr, int i, int i2) throws a {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f2541e;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e2) {
                throw new a(e2);
            }
        }
        int i3 = this.f2540d.read(bArr, i, i2);
        if (i3 == -1) {
            if (this.f2541e == -1) {
                return -1;
            }
            throw new a(new EOFException());
        }
        long j2 = this.f2541e;
        if (j2 != -1) {
            this.f2541e = j2 - ((long) i3);
        }
        a0<? super c> a0Var = this.b;
        if (a0Var != null) {
            l lVar = (l) a0Var;
            synchronized (lVar) {
                lVar.f2580d += (long) i3;
            }
        }
        return i3;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.g
    public long a(j jVar) throws a {
        try {
            Uri uri = jVar.a;
            this.c = uri;
            String path = uri.getPath();
            if (path.startsWith("/android_asset/")) {
                path = path.substring(15);
            } else if (path.startsWith("/")) {
                path = path.substring(1);
            }
            InputStream inputStreamOpen = this.a.open(path, 1);
            this.f2540d = inputStreamOpen;
            if (inputStreamOpen.skip(jVar.f2572d) < jVar.f2572d) {
                throw new EOFException();
            }
            long j = jVar.f2573e;
            if (j != -1) {
                this.f2541e = j;
            } else {
                long jAvailable = this.f2540d.available();
                this.f2541e = jAvailable;
                if (jAvailable == 2147483647L) {
                    this.f2541e = -1L;
                }
            }
            this.f2542f = true;
            a0<? super c> a0Var = this.b;
            if (a0Var != null) {
                ((l) a0Var).a(this, jVar);
            }
            return this.f2541e;
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
                InputStream inputStream = this.f2540d;
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (IOException e2) {
                throw new a(e2);
            }
        } finally {
            this.f2540d = null;
            if (this.f2542f) {
                this.f2542f = false;
                a0<? super c> a0Var = this.b;
                if (a0Var != null) {
                    ((l) a0Var).a(this);
                }
            }
        }
    }
}
