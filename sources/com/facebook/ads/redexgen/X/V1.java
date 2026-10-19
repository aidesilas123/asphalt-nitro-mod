package com.facebook.ads.redexgen.X;

import com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.CacheDataSink;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class V1 implements InterfaceC1031Ga {
    public long A00;
    public long A01;
    public C1037Gg A02;
    public C1069Ho A03;
    public File A04;
    public FileOutputStream A05;
    public OutputStream A06;
    public final int A07;
    public final long A08;
    public final H2 A09;
    public final boolean A0A;

    public V1(H2 h2, long j) {
        this(h2, j, CacheDataSink.DEFAULT_BUFFER_SIZE, true);
    }

    public V1(H2 h2, long j, int i, boolean z) {
        this.A09 = (H2) HI.A01(h2);
        this.A08 = j;
        this.A07 = i;
        this.A0A = z;
    }

    private void A00() throws IOException {
        OutputStream outputStream = this.A06;
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.flush();
            if (this.A0A) {
                this.A05.getFD().sync();
            }
            C1078Hx.A0X(this.A06);
            this.A06 = null;
            File file = this.A04;
            this.A04 = null;
            if (1 != 0) {
                this.A09.A4K(file);
            } else {
                file.delete();
            }
        } catch (Throwable th) {
            C1078Hx.A0X(this.A06);
            this.A06 = null;
            File file2 = this.A04;
            this.A04 = null;
            if (0 != 0) {
                this.A09.A4K(file2);
            } else {
                file2.delete();
            }
            throw th;
        }
    }

    private void A01() throws IOException {
        this.A04 = this.A09.AFi(this.A02.A05, this.A00 + this.A02.A01, this.A02.A02 == -1 ? this.A08 : Math.min(this.A02.A02 - this.A00, this.A08));
        FileOutputStream fileOutputStream = new FileOutputStream(this.A04);
        this.A05 = fileOutputStream;
        if (this.A07 > 0) {
            C1069Ho c1069Ho = this.A03;
            if (c1069Ho == null) {
                this.A03 = new C1069Ho(this.A05, this.A07);
            } else {
                c1069Ho.A00(fileOutputStream);
            }
            this.A06 = this.A03;
        } else {
            this.A06 = fileOutputStream;
        }
        this.A01 = 0L;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1031Ga
    public final void ADd(C1037Gg c1037Gg) throws V2 {
        if (c1037Gg.A02 == -1 && !c1037Gg.A02(2)) {
            this.A02 = null;
            return;
        }
        this.A02 = c1037Gg;
        this.A00 = 0L;
        try {
            A01();
        } catch (IOException e2) {
            throw new V2(e2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1031Ga
    public final void close() throws V2 {
        if (this.A02 == null) {
            return;
        }
        try {
            A00();
        } catch (IOException e2) {
            throw new V2(e2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1031Ga
    public final void write(byte[] bArr, int i, int i2) throws V2 {
        if (this.A02 == null) {
            return;
        }
        int i3 = 0;
        while (i3 < i2) {
            try {
                if (this.A01 == this.A08) {
                    A00();
                    A01();
                }
                int iMin = (int) Math.min(i2 - i3, this.A08 - this.A01);
                this.A06.write(bArr, i + i3, iMin);
                i3 += iMin;
                this.A01 += (long) iMin;
                this.A00 += (long) iMin;
            } catch (IOException e2) {
                throw new V2(e2);
            }
        }
    }
}
