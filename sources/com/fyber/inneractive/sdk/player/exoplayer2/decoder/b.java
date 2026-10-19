package com.fyber.inneractive.sdk.player.exoplayer2.decoder;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    public int a;
    public final a b = new a();
    public ByteBuffer c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f2223d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2224e;

    public b(int i) {
        this.f2224e = i;
    }

    public static b b() {
        return new b(0);
    }

    public final ByteBuffer a(int i) {
        int i2 = this.f2224e;
        if (i2 == 1) {
            return ByteBuffer.allocate(i);
        }
        if (i2 == 2) {
            return ByteBuffer.allocateDirect(i);
        }
        ByteBuffer byteBuffer = this.c;
        throw new IllegalStateException("Buffer too small (" + (byteBuffer == null ? 0 : byteBuffer.capacity()) + " < " + i + ")");
    }

    public void a() {
        this.a = 0;
        ByteBuffer byteBuffer = this.c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }

    public final boolean b(int i) {
        return (this.a & i) == i;
    }
}
