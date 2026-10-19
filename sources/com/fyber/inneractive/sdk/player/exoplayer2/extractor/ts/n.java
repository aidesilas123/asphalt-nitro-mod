package com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class n {
    public final int a;
    public boolean b;
    public boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte[] f2429d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2430e;

    public n(int i, int i2) {
        this.a = i;
        byte[] bArr = new byte[i2 + 3];
        this.f2429d = bArr;
        bArr[2] = 1;
    }

    public void a() {
        this.b = false;
        this.c = false;
    }

    public void a(byte[] bArr, int i, int i2) {
        if (this.b) {
            int i3 = i2 - i;
            byte[] bArr2 = this.f2429d;
            int length = bArr2.length;
            int i4 = this.f2430e + i3;
            if (length < i4) {
                this.f2429d = Arrays.copyOf(bArr2, i4 * 2);
            }
            System.arraycopy(bArr, i, this.f2429d, this.f2430e, i3);
            this.f2430e += i3;
        }
    }

    public boolean a(int i) {
        if (!this.b) {
            return false;
        }
        this.f2430e -= i;
        this.b = false;
        this.c = true;
        return true;
    }

    public void b(int i) {
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(!this.b);
        boolean z = i == this.a;
        this.b = z;
        if (z) {
            this.f2430e = 3;
            this.c = false;
        }
    }
}
