package com.applovin.exoplayer2.e;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class q implements i {
    private final i uM;

    public q(i iVar) {
        this.uM = iVar;
    }

    @Override // com.applovin.exoplayer2.e.i
    public void a(byte[] bArr, int i, int i2) throws IOException {
        this.uM.a(bArr, i, i2);
    }

    @Override // com.applovin.exoplayer2.e.i
    public boolean a(byte[] bArr, int i, int i2, boolean z) throws IOException {
        return this.uM.a(bArr, i, i2, z);
    }

    @Override // com.applovin.exoplayer2.e.i
    public int b(byte[] bArr, int i, int i2) throws IOException {
        return this.uM.b(bArr, i, i2);
    }

    @Override // com.applovin.exoplayer2.e.i
    public boolean b(byte[] bArr, int i, int i2, boolean z) throws IOException {
        return this.uM.b(bArr, i, i2, z);
    }

    @Override // com.applovin.exoplayer2.e.i
    public int bG(int i) throws IOException {
        return this.uM.bG(i);
    }

    @Override // com.applovin.exoplayer2.e.i
    public void bH(int i) throws IOException {
        this.uM.bH(i);
    }

    @Override // com.applovin.exoplayer2.e.i
    public void bI(int i) throws IOException {
        this.uM.bI(i);
    }

    @Override // com.applovin.exoplayer2.e.i
    public void c(byte[] bArr, int i, int i2) throws IOException {
        this.uM.c(bArr, i, i2);
    }

    @Override // com.applovin.exoplayer2.e.i
    public void ic() {
        this.uM.ic();
    }

    @Override // com.applovin.exoplayer2.e.i
    public long id() {
        return this.uM.id();
    }

    @Override // com.applovin.exoplayer2.e.i
    public long ie() {
        return this.uM.ie();
    }

    @Override // com.applovin.exoplayer2.e.i
    /* JADX INFO: renamed from: if */
    public long mo28if() {
        return this.uM.mo28if();
    }

    @Override // com.applovin.exoplayer2.e.i
    public boolean j(int i, boolean z) throws IOException {
        return this.uM.j(i, z);
    }

    @Override // com.applovin.exoplayer2.e.i, com.applovin.exoplayer2.k.g
    public int read(byte[] bArr, int i, int i2) throws IOException {
        return this.uM.read(bArr, i, i2);
    }
}
