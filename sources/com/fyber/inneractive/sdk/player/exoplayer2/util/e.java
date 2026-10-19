package com.fyber.inneractive.sdk.player.exoplayer2.util;

/* JADX INFO: loaded from: classes2.dex */
public final class e {
    public final int a;
    public final int b;
    public final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f2602d;

    public e(byte[] bArr, int i) {
        j jVar = new j(bArr);
        jVar.b(i * 8);
        jVar.a(16);
        jVar.a(16);
        jVar.a(24);
        jVar.a(24);
        this.a = jVar.a(20);
        this.b = jVar.a(3) + 1;
        this.c = jVar.a(5) + 1;
        this.f2602d = ((((long) jVar.a(4)) & 15) << 32) | (((long) jVar.a(32)) & 4294967295L);
    }
}
