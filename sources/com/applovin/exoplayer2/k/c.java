package com.applovin.exoplayer2.k;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.l.ai;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class c extends e {
    private final AssetManager Zh;

    @Nullable
    private InputStream Zi;
    private long Zj;
    private boolean Zk;

    @Nullable
    private Uri ef;

    public static final class a extends j {
        public a(@Nullable Throwable th, int i) {
            super(th, i);
        }
    }

    public c(Context context) {
        super(false);
        this.Zh = context.getAssets();
    }

    @Override // com.applovin.exoplayer2.k.i
    public long a(l lVar) throws a {
        try {
            Uri uri = lVar.ef;
            this.ef = uri;
            String strSubstring = (String) com.applovin.exoplayer2.l.a.checkNotNull(uri.getPath());
            if (strSubstring.startsWith("/android_asset/")) {
                strSubstring = strSubstring.substring(15);
            } else if (strSubstring.startsWith("/")) {
                strSubstring = strSubstring.substring(1);
            }
            b(lVar);
            InputStream inputStreamOpen = this.Zh.open(strSubstring, 1);
            this.Zi = inputStreamOpen;
            if (inputStreamOpen.skip(lVar.uc) < lVar.uc) {
                throw new a(null, 2008);
            }
            long j = lVar.wC;
            if (j != -1) {
                this.Zj = j;
            } else {
                long jAvailable = this.Zi.available();
                this.Zj = jAvailable;
                if (jAvailable == 2147483647L) {
                    this.Zj = -1L;
                }
            }
            this.Zk = true;
            c(lVar);
            return this.Zj;
        } catch (a e2) {
            throw e2;
        } catch (IOException e3) {
            throw new a(e3, e3 instanceof FileNotFoundException ? 2005 : 2000);
        }
    }

    @Override // com.applovin.exoplayer2.k.i
    public void close() throws a {
        this.ef = null;
        try {
            try {
                InputStream inputStream = this.Zi;
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (IOException e2) {
                throw new a(e2, 2000);
            }
        } finally {
            this.Zi = null;
            if (this.Zk) {
                this.Zk = false;
                oe();
            }
        }
    }

    @Override // com.applovin.exoplayer2.k.i
    @Nullable
    public Uri getUri() {
        return this.ef;
    }

    @Override // com.applovin.exoplayer2.k.g
    public int read(byte[] bArr, int i, int i2) throws a {
        if (i2 == 0) {
            return 0;
        }
        long j = this.Zj;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e2) {
                throw new a(e2, 2000);
            }
        }
        int i3 = ((InputStream) ai.R(this.Zi)).read(bArr, i, i2);
        if (i3 == -1) {
            return -1;
        }
        long j2 = this.Zj;
        if (j2 != -1) {
            this.Zj = j2 - ((long) i3);
        }
        fe(i3);
        return i3;
    }
}
