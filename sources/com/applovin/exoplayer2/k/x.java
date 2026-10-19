package com.applovin.exoplayer2.k;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.l.ai;
import com.facebook.internal.security.CertificateUtil;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.RawResourceDataSource;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes.dex */
public final class x extends e {

    @Nullable
    private InputStream Zi;
    private long Zj;
    private boolean Zk;

    @Nullable
    private AssetFileDescriptor Zr;
    private final Resources abl;
    private final String abm;

    @Nullable
    private Uri ef;

    public static class a extends j {
        public a(@Nullable String str, @Nullable Throwable th, int i) {
            super(str, th, i);
        }
    }

    public x(Context context) {
        super(false);
        this.abl = context.getResources();
        this.abm = context.getPackageName();
    }

    @Override // com.applovin.exoplayer2.k.i
    public long a(l lVar) throws a {
        int identifier;
        String str;
        Uri uri = lVar.ef;
        this.ef = uri;
        if (TextUtils.equals(RawResourceDataSource.RAW_RESOURCE_SCHEME, uri.getScheme()) || (TextUtils.equals("android.resource", uri.getScheme()) && uri.getPathSegments().size() == 1 && ((String) com.applovin.exoplayer2.l.a.checkNotNull(uri.getLastPathSegment())).matches("\\d+"))) {
            try {
                identifier = Integer.parseInt((String) com.applovin.exoplayer2.l.a.checkNotNull(uri.getLastPathSegment()));
            } catch (NumberFormatException unused) {
                throw new a("Resource identifier must be an integer.", null, 1004);
            }
        } else {
            if (!TextUtils.equals("android.resource", uri.getScheme())) {
                throw new a("URI must either use scheme rawresource or android.resource", null, 1004);
            }
            String strSubstring = (String) com.applovin.exoplayer2.l.a.checkNotNull(uri.getPath());
            if (strSubstring.startsWith("/")) {
                strSubstring = strSubstring.substring(1);
            }
            String host = uri.getHost();
            StringBuilder sb = new StringBuilder();
            if (TextUtils.isEmpty(host)) {
                str = "";
            } else {
                str = host + CertificateUtil.DELIMITER;
            }
            sb.append(str);
            sb.append(strSubstring);
            identifier = this.abl.getIdentifier(sb.toString(), "raw", this.abm);
            if (identifier == 0) {
                throw new a("Resource not found.", null, 2005);
            }
        }
        b(lVar);
        try {
            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = this.abl.openRawResourceFd(identifier);
            this.Zr = assetFileDescriptorOpenRawResourceFd;
            if (assetFileDescriptorOpenRawResourceFd == null) {
                throw new a("Resource is compressed: " + uri, null, 2000);
            }
            long length = assetFileDescriptorOpenRawResourceFd.getLength();
            FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenRawResourceFd.getFileDescriptor());
            this.Zi = fileInputStream;
            if (length != -1) {
                try {
                    if (lVar.uc > length) {
                        throw new a(null, null, 2008);
                    }
                } catch (a e2) {
                    throw e2;
                } catch (IOException e3) {
                    throw new a(null, e3, 2000);
                }
            }
            long startOffset = assetFileDescriptorOpenRawResourceFd.getStartOffset();
            long jSkip = fileInputStream.skip(lVar.uc + startOffset) - startOffset;
            if (jSkip != lVar.uc) {
                throw new a(null, null, 2008);
            }
            if (length == -1) {
                FileChannel channel = fileInputStream.getChannel();
                if (channel.size() == 0) {
                    this.Zj = -1L;
                } else {
                    long size = channel.size() - channel.position();
                    this.Zj = size;
                    if (size < 0) {
                        throw new a(null, null, 2008);
                    }
                }
            } else {
                long j = length - jSkip;
                this.Zj = j;
                if (j < 0) {
                    throw new j(2008);
                }
            }
            long jMin = lVar.wC;
            if (jMin != -1) {
                long j2 = this.Zj;
                if (j2 != -1) {
                    jMin = Math.min(j2, jMin);
                }
                this.Zj = jMin;
            }
            this.Zk = true;
            c(lVar);
            long j3 = lVar.wC;
            return j3 != -1 ? j3 : this.Zj;
        } catch (Resources.NotFoundException e4) {
            throw new a(null, e4, 2005);
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
                this.Zi = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.Zr;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } finally {
                        this.Zr = null;
                        if (this.Zk) {
                            this.Zk = false;
                            oe();
                        }
                    }
                } catch (IOException e2) {
                    throw new a(null, e2, 2000);
                }
            } catch (IOException e3) {
                throw new a(null, e3, 2000);
            }
        } catch (Throwable th) {
            this.Zi = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.Zr;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.Zr = null;
                    if (this.Zk) {
                        this.Zk = false;
                        oe();
                    }
                    throw th;
                } catch (IOException e4) {
                    throw new a(null, e4, 2000);
                }
            } finally {
                this.Zr = null;
                if (this.Zk) {
                    this.Zk = false;
                    oe();
                }
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
                throw new a(null, e2, 2000);
            }
        }
        int i3 = ((InputStream) ai.R(this.Zi)).read(bArr, i, i2);
        if (i3 == -1) {
            if (this.Zj == -1) {
                return -1;
            }
            throw new a("End of stream reached having not read sufficient data.", new EOFException(), 2000);
        }
        long j2 = this.Zj;
        if (j2 != -1) {
            this.Zj = j2 - ((long) i3);
        }
        fe(i3);
        return i3;
    }
}
