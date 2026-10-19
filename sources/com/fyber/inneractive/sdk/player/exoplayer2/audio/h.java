package com.fyber.inneractive.sdk.player.exoplayer2.audio;

import com.fyber.inneractive.sdk.player.exoplayer2.audio.b;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public g f2211d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ByteBuffer f2214g;
    public ShortBuffer h;
    public ByteBuffer i;
    public long j;
    public long k;
    public boolean l;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f2212e = 1.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f2213f = 1.0f;
    public int b = -1;
    public int c = -1;

    public h() {
        ByteBuffer byteBuffer = b.a;
        this.f2214g = byteBuffer;
        this.h = byteBuffer.asShortBuffer();
        this.i = byteBuffer;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.audio.b
    public ByteBuffer a() {
        ByteBuffer byteBuffer = this.i;
        this.i = b.a;
        return byteBuffer;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.audio.b
    public void a(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
            int iRemaining = byteBuffer.remaining();
            this.j += (long) iRemaining;
            g gVar = this.f2211d;
            gVar.getClass();
            int iRemaining2 = shortBufferAsShortBuffer.remaining();
            int i = gVar.b;
            int i2 = iRemaining2 / i;
            gVar.a(i2);
            shortBufferAsShortBuffer.get(gVar.h, gVar.q * gVar.b, ((i * i2) * 2) / 2);
            gVar.q += i2;
            gVar.a();
            byteBuffer.position(byteBuffer.position() + iRemaining);
        }
        int i3 = this.f2211d.r * this.b * 2;
        if (i3 > 0) {
            if (this.f2214g.capacity() < i3) {
                ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(i3).order(ByteOrder.nativeOrder());
                this.f2214g = byteBufferOrder;
                this.h = byteBufferOrder.asShortBuffer();
            } else {
                this.f2214g.clear();
                this.h.clear();
            }
            g gVar2 = this.f2211d;
            ShortBuffer shortBuffer = this.h;
            gVar2.getClass();
            int iMin = Math.min(shortBuffer.remaining() / gVar2.b, gVar2.r);
            shortBuffer.put(gVar2.j, 0, gVar2.b * iMin);
            int i4 = gVar2.r - iMin;
            gVar2.r = i4;
            short[] sArr = gVar2.j;
            int i5 = gVar2.b;
            System.arraycopy(sArr, iMin * i5, sArr, 0, i4 * i5);
            this.k += (long) i3;
            this.f2214g.limit(i3);
            this.i = this.f2214g;
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.audio.b
    public boolean a(int i, int i2, int i3) throws b.a {
        if (i3 != 2) {
            throw new b.a(i, i2, i3);
        }
        if (this.c == i && this.b == i2) {
            return false;
        }
        this.c = i;
        this.b = i2;
        return true;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.audio.b
    public boolean b() {
        g gVar;
        return this.l && ((gVar = this.f2211d) == null || gVar.r == 0);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.audio.b
    public void c() {
        int i;
        g gVar = this.f2211d;
        int i2 = gVar.q;
        float f2 = gVar.o;
        float f3 = gVar.p;
        int i3 = gVar.r + ((int) ((((i2 / (f2 / f3)) + gVar.s) / f3) + 0.5f));
        gVar.a((gVar.f2208e * 2) + i2);
        int i4 = 0;
        while (true) {
            i = gVar.f2208e * 2;
            int i5 = gVar.b;
            if (i4 >= i * i5) {
                break;
            }
            gVar.h[(i5 * i2) + i4] = 0;
            i4++;
        }
        gVar.q += i;
        gVar.a();
        if (gVar.r > i3) {
            gVar.r = i3;
        }
        gVar.q = 0;
        gVar.t = 0;
        gVar.s = 0;
        this.l = true;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.audio.b
    public boolean d() {
        return Math.abs(this.f2212e - 1.0f) >= 0.01f || Math.abs(this.f2213f - 1.0f) >= 0.01f;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.audio.b
    public int e() {
        return 2;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.audio.b
    public int f() {
        return this.b;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.audio.b
    public void flush() {
        g gVar = new g(this.c, this.b);
        this.f2211d = gVar;
        gVar.o = this.f2212e;
        gVar.p = this.f2213f;
        this.i = b.a;
        this.j = 0L;
        this.k = 0L;
        this.l = false;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.audio.b
    public void g() {
        this.f2211d = null;
        ByteBuffer byteBuffer = b.a;
        this.f2214g = byteBuffer;
        this.h = byteBuffer.asShortBuffer();
        this.i = byteBuffer;
        this.b = -1;
        this.c = -1;
        this.j = 0L;
        this.k = 0L;
        this.l = false;
    }
}
