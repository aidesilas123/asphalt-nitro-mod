package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ol, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1243Ol extends InputStream {
    public int A00;
    public long A01;
    public InterfaceC1033Gc A02;
    public final Uri A03;
    public final Y9 A04;
    public final InterfaceC1032Gb A05;
    public final String A06;

    public C1243Ol(Y9 y9, Uri uri, InterfaceC1032Gb interfaceC1032Gb) throws IOException {
        this.A04 = y9;
        this.A05 = interfaceC1032Gb;
        this.A03 = uri;
        this.A06 = QN.A08(y9, uri);
        A00(0);
    }

    private void A00(int i) throws IOException {
        InterfaceC1033Gc interfaceC1033Gc = this.A02;
        if (interfaceC1033Gc != null) {
            interfaceC1033Gc.close();
        }
        this.A02 = this.A05.A4U();
        this.A01 = (int) this.A02.ADb(new C1037Gg(this.A03, i, -1L, this.A06));
    }

    @Override // java.io.InputStream
    public final int available() {
        return ((int) this.A01) - this.A00;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.A02.close();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        return read(new byte[1]);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.A02.read(bArr, i, i2);
        this.A00 += i3;
        return i3;
    }

    @Override // java.io.InputStream
    public final long skip(long j) throws IOException {
        long j2 = this.A01;
        int i = this.A00;
        long j3 = j2 - ((long) i);
        if (j3 <= 0) {
            return 0L;
        }
        if (j > j3) {
            j = j3;
        }
        int i2 = (int) (((long) i) + j);
        this.A00 = i2;
        A00(i2);
        return j;
    }
}
