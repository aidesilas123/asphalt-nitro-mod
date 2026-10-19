package com.applovin.exoplayer2.c;

import android.media.MediaCodec;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.applovin.exoplayer2.l.ai;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    @Nullable
    public byte[] rk;

    @Nullable
    public byte[] rl;
    public int rm;

    @Nullable
    public int[] rn;

    @Nullable
    public int[] ro;
    public int rp;
    public int rq;
    public int rr;
    private final MediaCodec.CryptoInfo rs;

    @Nullable
    private final a rt;

    @RequiresApi(24)
    private static final class a {
        private final MediaCodec.CryptoInfo rs;
        private final MediaCodec.CryptoInfo.Pattern ru;

        private a(MediaCodec.CryptoInfo cryptoInfo) {
            this.rs = cryptoInfo;
            this.ru = new MediaCodec.CryptoInfo.Pattern(0, 0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void x(int i, int i2) {
            this.ru.set(i, i2);
            this.rs.setPattern(this.ru);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.rs = cryptoInfo;
        this.rt = ai.acV >= 24 ? new a(cryptoInfo) : null;
    }

    public void a(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2, int i3, int i4) {
        this.rp = i;
        this.rn = iArr;
        this.ro = iArr2;
        this.rl = bArr;
        this.rk = bArr2;
        this.rm = i2;
        this.rq = i3;
        this.rr = i4;
        MediaCodec.CryptoInfo cryptoInfo = this.rs;
        cryptoInfo.numSubSamples = i;
        cryptoInfo.numBytesOfClearData = iArr;
        cryptoInfo.numBytesOfEncryptedData = iArr2;
        cryptoInfo.key = bArr;
        cryptoInfo.iv = bArr2;
        cryptoInfo.mode = i2;
        if (ai.acV >= 24) {
            ((a) com.applovin.exoplayer2.l.a.checkNotNull(this.rt)).x(i3, i4);
        }
    }

    public void bw(int i) {
        if (i == 0) {
            return;
        }
        if (this.rn == null) {
            int[] iArr = new int[1];
            this.rn = iArr;
            this.rs.numBytesOfClearData = iArr;
        }
        int[] iArr2 = this.rn;
        iArr2[0] = iArr2[0] + i;
    }

    public MediaCodec.CryptoInfo hb() {
        return this.rs;
    }
}
