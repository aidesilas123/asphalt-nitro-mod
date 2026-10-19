package com.tapjoy.internal;

import androidx.core.view.ViewCompat;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public final class j5 {
    public ByteBuffer b;
    public s4 c;
    public final byte[] a = new byte[256];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7923d = 0;

    public final boolean a() {
        return this.c.b != 0;
    }

    public final int[] b(int i) {
        int[] iArr;
        byte[] bArr = new byte[i * 3];
        try {
            this.b.get(bArr);
            iArr = new int[256];
            int i2 = 0;
            int i3 = 0;
            while (i2 < i) {
                int i4 = i3 + 1;
                try {
                    int i5 = i4 + 1;
                    int i6 = i5 + 1;
                    int i7 = i2 + 1;
                    iArr[i2] = ((bArr[i3] & 255) << 16) | ViewCompat.MEASURED_STATE_MASK | ((bArr[i4] & 255) << 8) | (bArr[i5] & 255);
                    i3 = i6;
                    i2 = i7;
                } catch (BufferUnderflowException unused) {
                    this.c.b = 1;
                    return iArr;
                }
            }
        } catch (BufferUnderflowException unused2) {
            iArr = null;
        }
        return iArr;
    }

    public final s4 c() {
        int iD;
        int iD2;
        int iD3;
        int iD4;
        int iD5;
        if (this.b == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (a()) {
            return this.c;
        }
        String str = "";
        for (int i = 0; i < 6; i++) {
            str = str + ((char) d());
        }
        if (str.startsWith("GIF")) {
            this.c.f7995f = this.b.getShort();
            this.c.f7996g = this.b.getShort();
            int iD6 = d();
            s4 s4Var = this.c;
            s4Var.h = (iD6 & 128) != 0;
            s4Var.i = 2 << (iD6 & 7);
            s4Var.j = d();
            s4 s4Var2 = this.c;
            d();
            s4Var2.getClass();
            if (this.c.h && !a()) {
                s4 s4Var3 = this.c;
                s4Var3.a = b(s4Var3.i);
                s4 s4Var4 = this.c;
                s4Var4.k = s4Var4.a[s4Var4.j];
            }
        } else {
            this.c.b = 1;
        }
        if (!a()) {
            boolean z = false;
            while (!z && !a() && this.c.c <= Integer.MAX_VALUE) {
                int iD7 = d();
                if (iD7 == 33) {
                    int iD8 = d();
                    if (iD8 == 1) {
                        do {
                            iD5 = d();
                            ByteBuffer byteBuffer = this.b;
                            byteBuffer.position(byteBuffer.position() + iD5);
                        } while (iD5 > 0);
                    } else if (iD8 == 249) {
                        this.c.f7993d = new g4();
                        d();
                        int iD9 = d();
                        g4 g4Var = this.c.f7993d;
                        int i2 = (iD9 & 28) >> 2;
                        g4Var.f7904g = i2;
                        if (i2 == 0) {
                            g4Var.f7904g = 1;
                        }
                        g4Var.f7903f = (iD9 & 1) != 0;
                        short s = this.b.getShort();
                        if (s < 2) {
                            s = 10;
                        }
                        g4 g4Var2 = this.c.f7993d;
                        g4Var2.i = s * 10;
                        g4Var2.h = d();
                        d();
                    } else if (iD8 == 254) {
                        do {
                            iD4 = d();
                            ByteBuffer byteBuffer2 = this.b;
                            byteBuffer2.position(byteBuffer2.position() + iD4);
                        } while (iD4 > 0);
                    } else if (iD8 != 255) {
                        do {
                            try {
                                iD3 = d();
                                ByteBuffer byteBuffer3 = this.b;
                                byteBuffer3.position(byteBuffer3.position() + iD3);
                            } catch (IllegalArgumentException unused) {
                            }
                        } while (iD3 > 0);
                    } else {
                        int iD10 = d();
                        this.f7923d = iD10;
                        if (iD10 > 0) {
                            int i3 = 0;
                            while (true) {
                                try {
                                    int i4 = this.f7923d;
                                    if (i3 >= i4) {
                                        break;
                                    }
                                    int i5 = i4 - i3;
                                    this.b.get(this.a, i3, i5);
                                    i3 += i5;
                                } catch (Exception unused2) {
                                    this.c.b = 1;
                                }
                            }
                        }
                        String str2 = "";
                        for (int i6 = 0; i6 < 11; i6++) {
                            str2 = str2 + ((char) this.a[i6]);
                        }
                        if (str2.equals("NETSCAPE2.0")) {
                            do {
                                int iD11 = d();
                                this.f7923d = iD11;
                                if (iD11 > 0) {
                                    int i7 = 0;
                                    while (true) {
                                        try {
                                            int i8 = this.f7923d;
                                            if (i7 >= i8) {
                                                break;
                                            }
                                            int i9 = i8 - i7;
                                            this.b.get(this.a, i7, i9);
                                            i7 += i9;
                                        } catch (Exception unused3) {
                                            this.c.b = 1;
                                        }
                                    }
                                }
                                byte[] bArr = this.a;
                                if (bArr[0] == 1) {
                                    int i10 = bArr[1] & 255;
                                    int i11 = bArr[2] & 255;
                                    s4 s4Var5 = this.c;
                                    int i12 = (i11 << 8) | i10;
                                    s4Var5.l = i12;
                                    if (i12 == 0) {
                                        s4Var5.l = -1;
                                    }
                                }
                                if (this.f7923d > 0) {
                                }
                            } while (!a());
                        } else {
                            do {
                                iD2 = d();
                                ByteBuffer byteBuffer4 = this.b;
                                byteBuffer4.position(byteBuffer4.position() + iD2);
                            } while (iD2 > 0);
                        }
                    }
                } else if (iD7 == 44) {
                    s4 s4Var6 = this.c;
                    if (s4Var6.f7993d == null) {
                        s4Var6.f7993d = new g4();
                    }
                    s4Var6.f7993d.a = this.b.getShort();
                    this.c.f7993d.b = this.b.getShort();
                    this.c.f7993d.c = this.b.getShort();
                    this.c.f7993d.f7901d = this.b.getShort();
                    int iD12 = d();
                    boolean z2 = (iD12 & 128) != 0;
                    int iPow = (int) Math.pow(2.0d, (iD12 & 7) + 1);
                    g4 g4Var3 = this.c.f7993d;
                    g4Var3.f7902e = (iD12 & 64) != 0;
                    if (z2) {
                        g4Var3.k = b(iPow);
                    } else {
                        g4Var3.k = null;
                    }
                    this.c.f7993d.j = this.b.position();
                    d();
                    do {
                        try {
                            iD = d();
                            ByteBuffer byteBuffer5 = this.b;
                            byteBuffer5.position(byteBuffer5.position() + iD);
                        } catch (IllegalArgumentException unused4) {
                        }
                    } while (iD > 0);
                    if (!a()) {
                        s4 s4Var7 = this.c;
                        s4Var7.c++;
                        s4Var7.f7994e.add(s4Var7.f7993d);
                    }
                } else if (iD7 != 59) {
                    this.c.b = 1;
                } else {
                    z = true;
                }
            }
            s4 s4Var8 = this.c;
            if (s4Var8.c < 0) {
                s4Var8.b = 1;
            }
        }
        return this.c;
    }

    public final int d() {
        try {
            return this.b.get() & 255;
        } catch (Exception unused) {
            this.c.b = 1;
            return 0;
        }
    }
}
