package com.applovin.exoplayer2.k;

import android.net.Uri;
import android.util.Base64;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.common.base.Charsets;
import com.applovin.exoplayer2.l.ai;
import java.io.IOException;
import java.net.URLDecoder;

/* JADX INFO: loaded from: classes.dex */
public final class h extends e {
    private int Nd;
    private int Zt;

    @Nullable
    private byte[] tf;

    @Nullable
    private l tw;

    public h() {
        super(false);
    }

    @Override // com.applovin.exoplayer2.k.i
    public long a(l lVar) throws IOException {
        b(lVar);
        this.tw = lVar;
        Uri uri = lVar.ef;
        String scheme = uri.getScheme();
        com.applovin.exoplayer2.l.a.checkArgument("data".equals(scheme), "Unsupported scheme: " + scheme);
        String[] strArrL = ai.l(uri.getSchemeSpecificPart(), ",");
        if (strArrL.length != 2) {
            throw com.applovin.exoplayer2.ai.b("Unexpected URI format: " + uri, null);
        }
        String str = strArrL[1];
        if (strArrL[0].contains(";base64")) {
            try {
                this.tf = Base64.decode(str, 0);
            } catch (IllegalArgumentException e2) {
                throw com.applovin.exoplayer2.ai.b("Error while parsing Base64 encoded string: " + str, e2);
            }
        } else {
            this.tf = ai.bk(URLDecoder.decode(str, Charsets.US_ASCII.name()));
        }
        long j = lVar.uc;
        byte[] bArr = this.tf;
        if (j > bArr.length) {
            this.tf = null;
            throw new j(2008);
        }
        int i = (int) j;
        this.Nd = i;
        int length = bArr.length - i;
        this.Zt = length;
        long j2 = lVar.wC;
        if (j2 != -1) {
            this.Zt = (int) Math.min(length, j2);
        }
        c(lVar);
        long j3 = lVar.wC;
        return j3 != -1 ? j3 : this.Zt;
    }

    @Override // com.applovin.exoplayer2.k.i
    public void close() {
        if (this.tf != null) {
            this.tf = null;
            oe();
        }
        this.tw = null;
    }

    @Override // com.applovin.exoplayer2.k.i
    @Nullable
    public Uri getUri() {
        l lVar = this.tw;
        if (lVar != null) {
            return lVar.ef;
        }
        return null;
    }

    @Override // com.applovin.exoplayer2.k.g
    public int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.Zt;
        if (i3 == 0) {
            return -1;
        }
        int iMin = Math.min(i2, i3);
        System.arraycopy(ai.R(this.tf), this.Nd, bArr, i, iMin);
        this.Nd += iMin;
        this.Zt -= iMin;
        fe(iMin);
        return iMin;
    }
}
