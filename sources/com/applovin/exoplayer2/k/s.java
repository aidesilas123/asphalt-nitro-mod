package com.applovin.exoplayer2.k;

import android.net.Uri;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.applovin.exoplayer2.l.ai;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes.dex */
public final class s extends e {
    private long Zj;
    private boolean Zk;

    @Nullable
    private RandomAccessFile aaI;

    @Nullable
    private Uri ef;

    @RequiresApi(21)
    private static final class a {
        /* JADX INFO: Access modifiers changed from: private */
        public static boolean i(@Nullable Throwable th) {
            return (th instanceof ErrnoException) && ((ErrnoException) th).errno == OsConstants.EACCES;
        }
    }

    public static class b extends j {
        public b(@Nullable String str, @Nullable Throwable th, int i) {
            super(str, th, i);
        }

        public b(Throwable th, int i) {
            super(th, i);
        }
    }

    public s() {
        super(false);
    }

    private static RandomAccessFile f(Uri uri) throws b {
        try {
            return new RandomAccessFile((String) com.applovin.exoplayer2.l.a.checkNotNull(uri.getPath()), "r");
        } catch (FileNotFoundException e2) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new b(e2, (ai.acV < 21 || !a.i(e2.getCause())) ? 2005 : 2006);
            }
            throw new b(String.format("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s", uri.getPath(), uri.getQuery(), uri.getFragment()), e2, 1004);
        } catch (SecurityException e3) {
            throw new b(e3, 2006);
        } catch (RuntimeException e4) {
            throw new b(e4, 2000);
        }
    }

    @Override // com.applovin.exoplayer2.k.i
    public long a(l lVar) throws b {
        Uri uri = lVar.ef;
        this.ef = uri;
        b(lVar);
        RandomAccessFile randomAccessFileF = f(uri);
        this.aaI = randomAccessFileF;
        try {
            randomAccessFileF.seek(lVar.uc);
            long length = lVar.wC;
            if (length == -1) {
                length = this.aaI.length() - lVar.uc;
            }
            this.Zj = length;
            if (length < 0) {
                throw new b(null, null, 2008);
            }
            this.Zk = true;
            c(lVar);
            return this.Zj;
        } catch (IOException e2) {
            throw new b(e2, 2000);
        }
    }

    @Override // com.applovin.exoplayer2.k.i
    public void close() throws b {
        this.ef = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.aaI;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
            } catch (IOException e2) {
                throw new b(e2, 2000);
            }
        } finally {
            this.aaI = null;
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
    public int read(byte[] bArr, int i, int i2) throws b {
        if (i2 == 0) {
            return 0;
        }
        if (this.Zj == 0) {
            return -1;
        }
        try {
            int i3 = ((RandomAccessFile) ai.R(this.aaI)).read(bArr, i, (int) Math.min(this.Zj, i2));
            if (i3 > 0) {
                this.Zj -= (long) i3;
                fe(i3);
            }
            return i3;
        } catch (IOException e2) {
            throw new b(e2, 2000);
        }
    }
}
