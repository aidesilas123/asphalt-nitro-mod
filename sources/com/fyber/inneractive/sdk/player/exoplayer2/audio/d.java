package com.fyber.inneractive.sdk.player.exoplayer2.audio;

import com.fyber.inneractive.sdk.player.exoplayer2.audio.b;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements b {
    public int b;
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[] f2199d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2200e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[] f2201f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ByteBuffer f2202g;
    public ByteBuffer h;
    public boolean i;

    public d() {
        ByteBuffer byteBuffer = b.a;
        this.f2202g = byteBuffer;
        this.h = byteBuffer;
        this.b = -1;
        this.c = -1;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.audio.b
    public ByteBuffer a() {
        ByteBuffer byteBuffer = this.h;
        this.h = b.a;
        return byteBuffer;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.audio.b
    public void a(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int length = ((iLimit - iPosition) / (this.b * 2)) * this.f2201f.length * 2;
        if (this.f2202g.capacity() < length) {
            this.f2202g = ByteBuffer.allocateDirect(length).order(ByteOrder.nativeOrder());
        } else {
            this.f2202g.clear();
        }
        while (iPosition < iLimit) {
            for (int i : this.f2201f) {
                this.f2202g.putShort(byteBuffer.getShort((i * 2) + iPosition));
            }
            iPosition += this.b * 2;
        }
        byteBuffer.position(iLimit);
        this.f2202g.flip();
        this.h = this.f2202g;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.audio.b
    public boolean a(int i, int i2, int i3) throws b.a {
        boolean z = !Arrays.equals(this.f2199d, this.f2201f);
        int[] iArr = this.f2199d;
        this.f2201f = iArr;
        if (iArr == null) {
            this.f2200e = false;
            return z;
        }
        if (i3 != 2) {
            throw new b.a(i, i2, i3);
        }
        if (!z && this.c == i && this.b == i2) {
            return false;
        }
        this.c = i;
        this.b = i2;
        this.f2200e = i2 != iArr.length;
        int i4 = 0;
        while (true) {
            int[] iArr2 = this.f2201f;
            if (i4 >= iArr2.length) {
                return true;
            }
            int i5 = iArr2[i4];
            if (i5 >= i2) {
                throw new b.a(i, i2, i3);
            }
            this.f2200e = (i5 != i4) | this.f2200e;
            i4++;
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.audio.b
    public boolean b() {
        return this.i && this.h == b.a;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.audio.b
    public void c() {
        this.i = true;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.audio.b
    public boolean d() {
        return this.f2200e;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.audio.b
    public int e() {
        return 2;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.audio.b
    public int f() {
        int[] iArr = this.f2201f;
        return iArr == null ? this.b : iArr.length;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.audio.b
    public void flush() {
        this.h = b.a;
        this.i = false;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.audio.b
    public void g() {
        flush();
        this.f2202g = b.a;
        this.b = -1;
        this.c = -1;
        this.f2201f = null;
        this.f2200e = false;
    }
}
