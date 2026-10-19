package com.fyber.inneractive.sdk.player.exoplayer2.audio;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class g {
    public final int a;
    public final int b;
    public final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2207d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2208e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final short[] f2209f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2210g;
    public short[] h;
    public int i;
    public short[] j;
    public int k;
    public short[] l;
    public int q;
    public int r;
    public int s;
    public int t;
    public int v;
    public int w;
    public int x;
    public int m = 0;
    public int n = 0;
    public int u = 0;
    public float o = 1.0f;
    public float p = 1.0f;

    public g(int i, int i2) {
        this.a = i;
        this.b = i2;
        this.c = i / 400;
        int i3 = i / 65;
        this.f2207d = i3;
        int i4 = i3 * 2;
        this.f2208e = i4;
        this.f2209f = new short[i4];
        this.f2210g = i4;
        int i5 = i2 * i4;
        this.h = new short[i5];
        this.i = i4;
        this.j = new short[i5];
        this.k = i4;
        this.l = new short[i5];
    }

    public static void a(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i3 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i4 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                sArr[i7] = (short) (((sArr2[i9] * (i - i10)) + (sArr3[i8] * i10)) / i);
                i7 += i2;
                i9 += i2;
                i8 += i2;
            }
        }
    }

    public final int a(short[] sArr, int i, int i2, int i3) {
        int i4 = i * this.b;
        int i5 = 1;
        int i6 = 255;
        int i7 = 0;
        int i8 = 0;
        while (i2 <= i3) {
            int i9 = 0;
            for (int i10 = 0; i10 < i2; i10++) {
                short s = sArr[i4 + i10];
                short s2 = sArr[i4 + i2 + i10];
                i9 += s >= s2 ? s - s2 : s2 - s;
            }
            if (i9 * i7 < i5 * i2) {
                i7 = i2;
                i5 = i9;
            }
            if (i9 * i6 > i8 * i2) {
                i6 = i2;
                i8 = i9;
            }
            i2++;
        }
        this.w = i5 / i7;
        this.x = i8 / i6;
        return i7;
    }

    public final void a() {
        int iA;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = this.r;
        float f2 = this.o / this.p;
        double d2 = f2;
        int i8 = 1;
        if (d2 > 1.00001d || d2 < 0.99999d) {
            int i9 = this.q;
            if (i9 >= this.f2208e) {
                int i10 = 0;
                while (true) {
                    int i11 = this.t;
                    if (i11 > 0) {
                        int iMin = Math.min(this.f2208e, i11);
                        a(this.h, i10, iMin);
                        this.t -= iMin;
                        i10 += iMin;
                    } else {
                        short[] sArr = this.h;
                        int i12 = this.a;
                        int i13 = i12 > 4000 ? i12 / 4000 : 1;
                        if (this.b == i8 && i13 == i8) {
                            iA = a(sArr, i10, this.c, this.f2207d);
                        } else {
                            b(sArr, i10, i13);
                            int iA2 = a(this.f2209f, 0, this.c / i13, this.f2207d / i13);
                            if (i13 != i8) {
                                int i14 = iA2 * i13;
                                int i15 = i13 * 4;
                                int i16 = i14 - i15;
                                int i17 = i14 + i15;
                                int i18 = this.c;
                                if (i16 < i18) {
                                    i16 = i18;
                                }
                                int i19 = this.f2207d;
                                if (i17 > i19) {
                                    i17 = i19;
                                }
                                if (this.b == i8) {
                                    iA = a(sArr, i10, i16, i17);
                                } else {
                                    b(sArr, i10, i8);
                                    iA = a(this.f2209f, 0, i16, i17);
                                }
                            } else {
                                iA = iA2;
                            }
                        }
                        int i20 = this.w;
                        int i21 = i20 != 0 && this.u != 0 && this.x <= i20 * 3 && i20 * 2 > this.v * 3 ? this.u : iA;
                        this.v = i20;
                        this.u = iA;
                        if (d2 > 1.0d) {
                            short[] sArr2 = this.h;
                            if (f2 >= 2.0f) {
                                i2 = (int) (i21 / (f2 - 1.0f));
                            } else {
                                this.t = (int) ((i21 * (2.0f - f2)) / (f2 - 1.0f));
                                i2 = i21;
                            }
                            b(i2);
                            int i22 = i2;
                            a(i2, this.b, this.j, this.r, sArr2, i10, sArr2, i10 + i21);
                            this.r += i22;
                            i10 += i21 + i22;
                        } else {
                            int i23 = i21;
                            short[] sArr3 = this.h;
                            if (f2 < 0.5f) {
                                i = (int) ((i23 * f2) / (1.0f - f2));
                            } else {
                                this.t = (int) ((i23 * ((2.0f * f2) - 1.0f)) / (1.0f - f2));
                                i = i23;
                            }
                            int i24 = i23 + i;
                            b(i24);
                            int i25 = this.b;
                            System.arraycopy(sArr3, i10 * i25, this.j, this.r * i25, i25 * i23);
                            a(i, this.b, this.j, this.r + i23, sArr3, i23 + i10, sArr3, i10);
                            this.r += i24;
                            i10 += i;
                        }
                    }
                    if (this.f2208e + i10 > i9) {
                        break;
                    } else {
                        i8 = 1;
                    }
                }
                int i26 = this.q - i10;
                short[] sArr4 = this.h;
                int i27 = this.b;
                System.arraycopy(sArr4, i10 * i27, sArr4, 0, i27 * i26);
                this.q = i26;
            }
        } else {
            a(this.h, 0, this.q);
            this.q = 0;
        }
        float f3 = this.p;
        if (f3 == 1.0f || this.r == i7) {
            return;
        }
        int i28 = this.a;
        int i29 = (int) (i28 / f3);
        while (true) {
            if (i29 <= 16384 && i28 <= 16384) {
                break;
            }
            i29 /= 2;
            i28 /= 2;
        }
        int i30 = this.r - i7;
        int i31 = this.s + i30;
        int i32 = this.k;
        if (i31 > i32) {
            int i33 = i32 + (i32 / 2) + i30;
            this.k = i33;
            this.l = Arrays.copyOf(this.l, i33 * this.b);
        }
        short[] sArr5 = this.j;
        int i34 = this.b;
        System.arraycopy(sArr5, i7 * i34, this.l, this.s * i34, i34 * i30);
        this.r = i7;
        this.s += i30;
        int i35 = 0;
        while (true) {
            i3 = this.s;
            i4 = i3 - 1;
            if (i35 >= i4) {
                break;
            }
            while (true) {
                i5 = this.m + 1;
                int i36 = i5 * i29;
                i6 = this.n;
                if (i36 <= i6 * i28) {
                    break;
                }
                b(1);
                int i37 = 0;
                while (true) {
                    int i38 = this.b;
                    if (i37 < i38) {
                        short[] sArr6 = this.j;
                        int i39 = (this.r * i38) + i37;
                        short[] sArr7 = this.l;
                        int i40 = (i35 * i38) + i37;
                        short s = sArr7[i40];
                        short s2 = sArr7[i40 + i38];
                        int i41 = this.n * i28;
                        int i42 = this.m;
                        int i43 = i42 * i29;
                        int i44 = (i42 + 1) * i29;
                        int i45 = i44 - i41;
                        int i46 = i44 - i43;
                        sArr6[i39] = (short) (((s * i45) + ((i46 - i45) * s2)) / i46);
                        i37++;
                    }
                }
                this.n++;
                this.r++;
            }
            this.m = i5;
            if (i5 == i28) {
                this.m = 0;
                com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(i6 == i29);
                this.n = 0;
            }
            i35++;
        }
        if (i4 == 0) {
            return;
        }
        short[] sArr8 = this.l;
        int i47 = this.b;
        System.arraycopy(sArr8, i4 * i47, sArr8, 0, (i3 - i4) * i47);
        this.s -= i4;
    }

    public final void a(int i) {
        int i2 = this.q + i;
        int i3 = this.f2210g;
        if (i2 > i3) {
            int i4 = i3 + (i3 / 2) + i;
            this.f2210g = i4;
            this.h = Arrays.copyOf(this.h, i4 * this.b);
        }
    }

    public final void a(short[] sArr, int i, int i2) {
        b(i2);
        int i3 = this.b;
        System.arraycopy(sArr, i * i3, this.j, this.r * i3, i3 * i2);
        this.r += i2;
    }

    public final void b(int i) {
        int i2 = this.r + i;
        int i3 = this.i;
        if (i2 > i3) {
            int i4 = i3 + (i3 / 2) + i;
            this.i = i4;
            this.j = Arrays.copyOf(this.j, i4 * this.b);
        }
    }

    public final void b(short[] sArr, int i, int i2) {
        int i3 = this.f2208e / i2;
        int i4 = this.b;
        int i5 = i2 * i4;
        int i6 = i * i4;
        for (int i7 = 0; i7 < i3; i7++) {
            int i8 = 0;
            for (int i9 = 0; i9 < i5; i9++) {
                i8 += sArr[(i7 * i5) + i6 + i9];
            }
            this.f2209f[i7] = (short) (i8 / i5);
        }
    }
}
