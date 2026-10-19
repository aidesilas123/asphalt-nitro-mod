package com.fyber.inneractive.sdk.player.exoplayer2.upstream;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class e implements g {
    public final ContentResolver a;
    public final a0<? super e> b;
    public Uri c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public AssetFileDescriptor f2565d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public InputStream f2566e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f2567f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2568g;

    public static class a extends IOException {
        public a(IOException iOException) {
            super(iOException);
        }
    }

    public e(Context context, a0<? super e> a0Var) {
        this.a = context.getContentResolver();
        this.b = a0Var;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.g
    public int a(byte[] bArr, int i, int i2) throws a {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f2567f;
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
        int i3 = this.f2566e.read(bArr, i, i2);
        if (i3 == -1) {
            if (this.f2567f == -1) {
                return -1;
            }
            throw new a(new EOFException());
        }
        long j2 = this.f2567f;
        if (j2 != -1) {
            this.f2567f = j2 - ((long) i3);
        }
        a0<? super e> a0Var = this.b;
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
            AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = this.a.openAssetFileDescriptor(uri, "r");
            this.f2565d = assetFileDescriptorOpenAssetFileDescriptor;
            if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                throw new FileNotFoundException("Could not open file descriptor for: " + this.c);
            }
            this.f2566e = new FileInputStream(this.f2565d.getFileDescriptor());
            long startOffset = this.f2565d.getStartOffset();
            if (this.f2566e.skip(jVar.f2572d + startOffset) - startOffset != jVar.f2572d) {
                throw new EOFException();
            }
            long j = jVar.f2573e;
            if (j != -1) {
                this.f2567f = j;
            } else {
                long length = this.f2565d.getLength();
                this.f2567f = length;
                if (length == -1) {
                    long jAvailable = this.f2566e.available();
                    this.f2567f = jAvailable;
                    if (jAvailable == 0) {
                        this.f2567f = -1L;
                    }
                }
            }
            this.f2568g = true;
            a0<? super e> a0Var = this.b;
            if (a0Var != null) {
                ((l) a0Var).a(this, jVar);
            }
            return this.f2567f;
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
                InputStream inputStream = this.f2566e;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f2566e = null;
            } catch (Throwable th) {
                this.f2566e = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f2565d;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                        this.f2565d = null;
                        if (this.f2568g) {
                            this.f2568g = false;
                            a0<? super e> a0Var = this.b;
                            if (a0Var != null) {
                                ((l) a0Var).a(this);
                            }
                        }
                        throw th;
                    } catch (IOException e2) {
                        throw new a(e2);
                    }
                } finally {
                    this.f2565d = null;
                    if (this.f2568g) {
                        this.f2568g = false;
                        a0<? super e> a0Var2 = this.b;
                        if (a0Var2 != null) {
                            ((l) a0Var2).a(this);
                        }
                    }
                }
            }
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f2565d;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                } catch (IOException e3) {
                    throw new a(e3);
                }
            } finally {
                this.f2565d = null;
                if (this.f2568g) {
                    this.f2568g = false;
                    a0<? super e> a0Var3 = this.b;
                    if (a0Var3 != null) {
                        ((l) a0Var3).a(this);
                    }
                }
            }
        } catch (IOException e4) {
            throw new a(e4);
        }
    }
}
