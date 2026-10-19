package com.applovin.exoplayer2.k;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.ApplicationMediaCapabilities;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.applovin.exoplayer2.l.ai;
import com.applovin.sdk.AppLovinEventTypes;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes.dex */
public final class f extends e {
    private long Zj;
    private boolean Zk;
    private final ContentResolver Zq;

    @Nullable
    private AssetFileDescriptor Zr;

    @Nullable
    private FileInputStream Zs;

    @Nullable
    private Uri ef;

    @RequiresApi(31)
    private static final class a {
        public static void E(Bundle bundle) {
            bundle.putParcelable("android.provider.extra.MEDIA_CAPABILITIES", new ApplicationMediaCapabilities.Builder().addSupportedVideoMimeType("video/hevc").addSupportedHdrType("android.media.feature.hdr.dolby_vision").addSupportedHdrType("android.media.feature.hdr.hdr10").addSupportedHdrType("android.media.feature.hdr.hdr10_plus").addSupportedHdrType("android.media.feature.hdr.hlg").build());
        }
    }

    public static class b extends j {
        public b(@Nullable IOException iOException, int i) {
            super(iOException, i);
        }
    }

    public f(Context context) {
        super(false);
        this.Zq = context.getContentResolver();
    }

    @Override // com.applovin.exoplayer2.k.i
    public long a(l lVar) throws b {
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor;
        try {
            Uri uri = lVar.ef;
            this.ef = uri;
            b(lVar);
            if (AppLovinEventTypes.USER_VIEWED_CONTENT.equals(lVar.ef.getScheme())) {
                Bundle bundle = new Bundle();
                if (ai.acV >= 31) {
                    a.E(bundle);
                }
                assetFileDescriptorOpenAssetFileDescriptor = this.Zq.openTypedAssetFileDescriptor(uri, "*/*", bundle);
            } else {
                assetFileDescriptorOpenAssetFileDescriptor = this.Zq.openAssetFileDescriptor(uri, "r");
            }
            this.Zr = assetFileDescriptorOpenAssetFileDescriptor;
            if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                throw new b(new IOException("Could not open file descriptor for: " + uri), 2000);
            }
            long length = assetFileDescriptorOpenAssetFileDescriptor.getLength();
            FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor());
            this.Zs = fileInputStream;
            if (length != -1 && lVar.uc > length) {
                throw new b(null, 2008);
            }
            long startOffset = assetFileDescriptorOpenAssetFileDescriptor.getStartOffset();
            long jSkip = fileInputStream.skip(lVar.uc + startOffset) - startOffset;
            if (jSkip != lVar.uc) {
                throw new b(null, 2008);
            }
            if (length == -1) {
                FileChannel channel = fileInputStream.getChannel();
                long size = channel.size();
                if (size == 0) {
                    this.Zj = -1L;
                } else {
                    long jPosition = size - channel.position();
                    this.Zj = jPosition;
                    if (jPosition < 0) {
                        throw new b(null, 2008);
                    }
                }
            } else {
                long j = length - jSkip;
                this.Zj = j;
                if (j < 0) {
                    throw new b(null, 2008);
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
        } catch (b e2) {
            throw e2;
        } catch (IOException e3) {
            throw new b(e3, e3 instanceof FileNotFoundException ? 2005 : 2000);
        }
    }

    @Override // com.applovin.exoplayer2.k.i
    public void close() throws b {
        this.ef = null;
        try {
            try {
                FileInputStream fileInputStream = this.Zs;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.Zs = null;
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
                    throw new b(e2, 2000);
                }
            } catch (IOException e3) {
                throw new b(e3, 2000);
            }
        } catch (Throwable th) {
            this.Zs = null;
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
                    throw new b(e4, 2000);
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
    public int read(byte[] bArr, int i, int i2) throws b {
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
                throw new b(e2, 2000);
            }
        }
        int i3 = ((FileInputStream) ai.R(this.Zs)).read(bArr, i, i2);
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
