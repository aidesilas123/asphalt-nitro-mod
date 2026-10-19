package com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg;

import com.fyber.inneractive.sdk.player.exoplayer2.l;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class e {
    public static final int h = u.a("OggS");
    public int a;
    public long b;
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2365d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2366e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f2367f = new int[255];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.k f2368g = new com.fyber.inneractive.sdk.player.exoplayer2.util.k(255);

    public void a() {
        this.a = 0;
        this.b = 0L;
        this.c = 0;
        this.f2365d = 0;
        this.f2366e = 0;
    }

    public boolean a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g gVar, boolean z) throws InterruptedException, IOException {
        this.f2368g.r();
        a();
        com.fyber.inneractive.sdk.player.exoplayer2.extractor.b bVar = (com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar;
        long j = bVar.b;
        if (!(j == -1 || j - (bVar.c + ((long) bVar.f2229e)) >= 27) || !bVar.a(this.f2368g.a, 0, 27, true)) {
            if (z) {
                return false;
            }
            throw new EOFException();
        }
        if (this.f2368g.m() != h) {
            if (z) {
                return false;
            }
            throw new l("expected OggS capture pattern at begin of page");
        }
        if (this.f2368g.l() != 0) {
            if (z) {
                return false;
            }
            throw new l("unsupported bit stream revision");
        }
        this.a = this.f2368g.l();
        com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar = this.f2368g;
        byte[] bArr = kVar.a;
        int i = kVar.b;
        int i2 = i + 1;
        kVar.b = i2;
        long j2 = ((long) bArr[i]) & 255;
        int i3 = i2 + 1;
        kVar.b = i3;
        long j3 = j2 | ((((long) bArr[i2]) & 255) << 8);
        int i4 = i3 + 1;
        kVar.b = i4;
        long j4 = j3 | ((((long) bArr[i3]) & 255) << 16);
        int i5 = i4 + 1;
        kVar.b = i5;
        long j5 = j4 | ((((long) bArr[i4]) & 255) << 24);
        int i6 = i5 + 1;
        kVar.b = i6;
        long j6 = j5 | ((((long) bArr[i5]) & 255) << 32);
        int i7 = i6 + 1;
        kVar.b = i7;
        long j7 = j6 | ((((long) bArr[i6]) & 255) << 40);
        int i8 = i7 + 1;
        kVar.b = i8;
        long j8 = j7 | ((((long) bArr[i7]) & 255) << 48);
        kVar.b = i8 + 1;
        this.b = j8 | ((((long) bArr[i8]) & 255) << 56);
        kVar.f();
        this.f2368g.f();
        this.f2368g.f();
        int iL = this.f2368g.l();
        this.c = iL;
        this.f2365d = iL + 27;
        this.f2368g.r();
        bVar.a(this.f2368g.a, 0, this.c, false);
        for (int i9 = 0; i9 < this.c; i9++) {
            this.f2367f[i9] = this.f2368g.l();
            this.f2366e += this.f2367f[i9];
        }
        return true;
    }
}
