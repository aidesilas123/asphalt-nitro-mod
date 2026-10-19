package com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts;

import android.util.Log;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.v;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes2.dex */
public final class o implements v {
    public final h a;
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.j b = new com.fyber.inneractive.sdk.player.exoplayer2.util.j(new byte[10]);
    public int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2431d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public com.fyber.inneractive.sdk.player.exoplayer2.util.r f2432e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2433f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2434g;
    public boolean h;
    public int i;
    public int j;
    public boolean k;
    public long l;

    public o(h hVar) {
        this.a = hVar;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.v
    public final void a() {
        this.c = 0;
        this.f2431d = 0;
        this.h = false;
        this.a.a();
    }

    public final void a(int i) {
        this.c = i;
        this.f2431d = 0;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.v
    public final void a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar, boolean z) {
        boolean z2;
        if (z) {
            int i = this.c;
            if (i == 2) {
                Log.w("PesReader", "Unexpected start indicator reading extended header");
            } else if (i == 3) {
                if (this.j != -1) {
                    Log.w("PesReader", "Unexpected start indicator: expected " + this.j + " more bytes");
                }
                this.a.b();
            }
            a(1);
        }
        while (kVar.a() > 0) {
            int i2 = this.c;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 == 2) {
                        if (a(kVar, this.b.a, Math.min(10, this.i)) && a(kVar, (byte[]) null, this.i)) {
                            this.b.b(0);
                            this.l = C.TIME_UNSET;
                            if (this.f2433f) {
                                this.b.c(4);
                                long jA = ((long) this.b.a(3)) << 30;
                                this.b.c(1);
                                long jA2 = jA | ((long) (this.b.a(15) << 15));
                                this.b.c(1);
                                long jA3 = jA2 | ((long) this.b.a(15));
                                this.b.c(1);
                                if (!this.h && this.f2434g) {
                                    this.b.c(4);
                                    long jA4 = ((long) this.b.a(3)) << 30;
                                    this.b.c(1);
                                    long jA5 = jA4 | ((long) (this.b.a(15) << 15));
                                    this.b.c(1);
                                    long jA6 = jA5 | ((long) this.b.a(15));
                                    this.b.c(1);
                                    this.f2432e.b(jA6);
                                    this.h = true;
                                }
                                this.l = this.f2432e.b(jA3);
                            }
                            this.a.a(this.l, this.k);
                            a(3);
                        }
                    } else if (i2 == 3) {
                        int iA = kVar.a();
                        int i3 = this.j;
                        int i4 = i3 != -1 ? iA - i3 : 0;
                        if (i4 > 0) {
                            iA -= i4;
                            kVar.d(kVar.b + iA);
                        }
                        this.a.a(kVar);
                        int i5 = this.j;
                        if (i5 != -1) {
                            int i6 = i5 - iA;
                            this.j = i6;
                            if (i6 == 0) {
                                this.a.b();
                                a(1);
                            }
                        }
                    }
                } else if (a(kVar, this.b.a, 9)) {
                    this.b.b(0);
                    int iA2 = this.b.a(24);
                    if (iA2 != 1) {
                        Log.w("PesReader", "Unexpected start code prefix: " + iA2);
                        this.j = -1;
                        z2 = false;
                    } else {
                        this.b.c(8);
                        int iA3 = this.b.a(16);
                        this.b.c(5);
                        this.k = this.b.b();
                        this.b.c(2);
                        this.f2433f = this.b.b();
                        this.f2434g = this.b.b();
                        this.b.c(6);
                        int iA4 = this.b.a(8);
                        this.i = iA4;
                        if (iA3 == 0) {
                            this.j = -1;
                        } else {
                            this.j = ((iA3 + 6) - 9) - iA4;
                        }
                        z2 = true;
                    }
                    a(z2 ? 2 : 0);
                }
            } else {
                kVar.f(kVar.a());
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.v
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.util.r rVar, com.fyber.inneractive.sdk.player.exoplayer2.extractor.h hVar, v.d dVar) {
        this.f2432e = rVar;
        this.a.a(hVar, dVar);
    }

    public final boolean a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar, byte[] bArr, int i) {
        int iMin = Math.min(kVar.a(), i - this.f2431d);
        if (iMin <= 0) {
            return true;
        }
        if (bArr == null) {
            kVar.f(iMin);
        } else {
            System.arraycopy(kVar.a, kVar.b, bArr, this.f2431d, iMin);
            kVar.b += iMin;
        }
        int i2 = this.f2431d + iMin;
        this.f2431d = i2;
        return i2 == i;
    }
}
