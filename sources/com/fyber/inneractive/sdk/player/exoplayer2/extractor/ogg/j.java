package com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg;

import android.util.Log;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.h;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.k;
import com.fyber.inneractive.sdk.player.exoplayer2.l;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class j extends h {
    public a n;
    public int o;
    public boolean p;
    public k.c q;
    public k.a r;

    public static final class a {
        public final k.c a;
        public final byte[] b;
        public final k.b[] c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f2374d;

        public a(k.c cVar, k.a aVar, byte[] bArr, k.b[] bVarArr, int i) {
            this.a = cVar;
            this.b = bArr;
            this.c = bVarArr;
            this.f2374d = i;
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.h
    public long a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar) {
        byte[] bArr = kVar.a;
        if ((bArr[0] & 1) == 1) {
            return -1L;
        }
        byte b = bArr[0];
        a aVar = this.n;
        int i = !aVar.c[(b >> 1) & (255 >>> (8 - aVar.f2374d))].a ? aVar.a.f2375d : aVar.a.f2376e;
        long j = this.p ? (this.o + i) / 4 : 0;
        kVar.d(kVar.c + 4);
        byte[] bArr2 = kVar.a;
        int i2 = kVar.c;
        bArr2[i2 - 4] = (byte) (j & 255);
        bArr2[i2 - 3] = (byte) ((j >>> 8) & 255);
        bArr2[i2 - 2] = (byte) ((j >>> 16) & 255);
        bArr2[i2 - 1] = (byte) ((j >>> 24) & 255);
        this.p = true;
        this.o = i;
        return j;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.h
    public void a(boolean z) {
        super.a(z);
        if (z) {
            this.n = null;
            this.q = null;
            this.r = null;
        }
        this.o = 0;
        this.p = false;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.h
    public boolean a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar, long j, h.a aVar) throws InterruptedException, IOException {
        a aVar2;
        int i;
        long jFloor;
        int i2;
        if (this.n != null) {
            return false;
        }
        if (this.q == null) {
            k.a(1, kVar, false);
            long jF = kVar.f();
            int iL = kVar.l();
            long jF2 = kVar.f();
            int iE = kVar.e();
            int iE2 = kVar.e();
            int iE3 = kVar.e();
            int iL2 = kVar.l();
            this.q = new k.c(jF, iL, jF2, iE, iE2, iE3, (int) Math.pow(2.0d, iL2 & 15), (int) Math.pow(2.0d, (iL2 & PsExtractor.VIDEO_STREAM_MASK) >> 4), (kVar.l() & 1) > 0, Arrays.copyOf(kVar.a, kVar.c));
        } else if (this.r == null) {
            k.a(3, kVar, false);
            String strB = kVar.b((int) kVar.f());
            int length = strB.length() + 11;
            long jF3 = kVar.f();
            String[] strArr = new String[(int) jF3];
            int length2 = length + 4;
            for (int i3 = 0; i3 < jF3; i3++) {
                strArr[i3] = kVar.b((int) kVar.f());
                length2 = length2 + 4 + strArr[i3].length();
            }
            if ((kVar.l() & 1) == 0) {
                throw new l("framing bit expected to be set");
            }
            this.r = new k.a(strB, strArr, length2 + 1);
        } else {
            int i4 = kVar.c;
            byte[] bArr = new byte[i4];
            int i5 = 0;
            System.arraycopy(kVar.a, 0, bArr, 0, i4);
            int i6 = this.q.a;
            int i7 = 5;
            k.a(5, kVar, false);
            int iL3 = kVar.l() + 1;
            i iVar = new i(kVar.a);
            iVar.b(kVar.b * 8);
            int i8 = 0;
            while (true) {
                int i9 = 16;
                if (i8 >= iL3) {
                    int i10 = 6;
                    int iA = iVar.a(6) + 1;
                    for (int i11 = 0; i11 < iA; i11++) {
                        if (iVar.a(16) != 0) {
                            throw new l("placeholder of time domain transforms not zeroed out");
                        }
                    }
                    int i12 = 1;
                    int iA2 = iVar.a(6) + 1;
                    int i13 = 0;
                    while (i13 < iA2) {
                        int iA3 = iVar.a(i9);
                        if (iA3 == 0) {
                            int i14 = 8;
                            iVar.b(8);
                            iVar.b(16);
                            iVar.b(16);
                            iVar.b(6);
                            iVar.b(8);
                            int iA4 = iVar.a(4) + 1;
                            int i15 = 0;
                            while (i15 < iA4) {
                                iVar.b(i14);
                                i15++;
                                i14 = 8;
                            }
                        } else {
                            if (iA3 != i12) {
                                throw new l("floor type greater than 1 not decodable: " + iA3);
                            }
                            int iA5 = iVar.a(i7);
                            int[] iArr = new int[iA5];
                            int i16 = -1;
                            for (int i17 = 0; i17 < iA5; i17++) {
                                iArr[i17] = iVar.a(4);
                                if (iArr[i17] > i16) {
                                    i16 = iArr[i17];
                                }
                            }
                            int i18 = i16 + 1;
                            int[] iArr2 = new int[i18];
                            for (int i19 = 0; i19 < i18; i19++) {
                                int i20 = 1;
                                iArr2[i19] = iVar.a(3) + 1;
                                int iA6 = iVar.a(2);
                                int i21 = 8;
                                if (iA6 > 0) {
                                    iVar.b(8);
                                }
                                int i22 = 0;
                                while (i22 < (i20 << iA6)) {
                                    iVar.b(i21);
                                    i22++;
                                    i20 = 1;
                                    i21 = 8;
                                }
                            }
                            iVar.b(2);
                            int iA7 = iVar.a(4);
                            int i23 = 0;
                            int i24 = 0;
                            for (int i25 = 0; i25 < iA5; i25++) {
                                i23 += iArr2[iArr[i25]];
                                while (i24 < i23) {
                                    iVar.b(iA7);
                                    i24++;
                                }
                            }
                        }
                        i13++;
                        i10 = 6;
                        i7 = 5;
                        i12 = 1;
                        i9 = 16;
                    }
                    int i26 = 1;
                    int iA8 = iVar.a(i10) + 1;
                    int i27 = 0;
                    while (i27 < iA8) {
                        if (iVar.a(16) > 2) {
                            throw new l("residueType greater than 2 is not decodable");
                        }
                        iVar.b(24);
                        iVar.b(24);
                        iVar.b(24);
                        int iA9 = iVar.a(i10) + i26;
                        int i28 = 8;
                        iVar.b(8);
                        int[] iArr3 = new int[iA9];
                        for (int i29 = 0; i29 < iA9; i29++) {
                            iArr3[i29] = ((iVar.a() ? iVar.a(5) : 0) * 8) + iVar.a(3);
                        }
                        int i30 = 0;
                        while (i30 < iA9) {
                            int i31 = 0;
                            while (i31 < i28) {
                                if ((iArr3[i30] & (1 << i31)) != 0) {
                                    iVar.b(i28);
                                }
                                i31++;
                                i28 = 8;
                            }
                            i30++;
                            i28 = 8;
                        }
                        i27++;
                        i10 = 6;
                        i26 = 1;
                    }
                    int iA10 = iVar.a(i10) + 1;
                    for (int i32 = 0; i32 < iA10; i32++) {
                        int iA11 = iVar.a(16);
                        if (iA11 != 0) {
                            Log.e("VorbisUtil", "mapping type other than 0 not supported: " + iA11);
                        } else {
                            int iA12 = iVar.a() ? iVar.a(4) + 1 : 1;
                            if (iVar.a()) {
                                int iA13 = iVar.a(8) + 1;
                                for (int i33 = 0; i33 < iA13; i33++) {
                                    int i34 = i6 - 1;
                                    iVar.b(k.a(i34));
                                    iVar.b(k.a(i34));
                                }
                            }
                            if (iVar.a(2) != 0) {
                                throw new l("to reserved bits must be zero after mapping coupling steps");
                            }
                            if (iA12 > 1) {
                                for (int i35 = 0; i35 < i6; i35++) {
                                    iVar.b(4);
                                }
                            }
                            for (int i36 = 0; i36 < iA12; i36++) {
                                iVar.b(8);
                                iVar.b(8);
                                iVar.b(8);
                            }
                        }
                    }
                    int iA14 = iVar.a(6) + 1;
                    k.b[] bVarArr = new k.b[iA14];
                    for (int i37 = 0; i37 < iA14; i37++) {
                        bVarArr[i37] = new k.b(iVar.a(), iVar.a(16), iVar.a(16), iVar.a(8));
                    }
                    if (!iVar.a()) {
                        throw new l("framing bit after modes not set as expected");
                    }
                    aVar2 = new a(this.q, this.r, bArr, bVarArr, k.a(iA14 - 1));
                } else {
                    if (iVar.a(24) != 5653314) {
                        throw new l("expected code book to start with [0x56, 0x43, 0x42] at " + ((iVar.c * 8) + iVar.f2373d));
                    }
                    int iA15 = iVar.a(16);
                    int iA16 = iVar.a(24);
                    long[] jArr = new long[iA16];
                    long j2 = 0;
                    if (iVar.a()) {
                        i = iA15;
                        int iA17 = iVar.a(5) + 1;
                        int i38 = 0;
                        while (i38 < iA16) {
                            int iA18 = iVar.a(k.a(iA16 - i38));
                            int i39 = i38;
                            int i40 = 0;
                            while (i40 < iA18 && i39 < iA16) {
                                jArr[i39] = iA17;
                                i39++;
                                i40++;
                                iA16 = iA16;
                            }
                            iA17++;
                            i38 = i39;
                            iA16 = iA16;
                        }
                    } else {
                        boolean zA = iVar.a();
                        while (i5 < iA16) {
                            if (!zA) {
                                i2 = iA15;
                                jArr[i5] = iVar.a(5) + 1;
                            } else if (iVar.a()) {
                                i2 = iA15;
                                jArr[i5] = iVar.a(5) + 1;
                            } else {
                                i2 = iA15;
                                jArr[i5] = 0;
                            }
                            i5++;
                            iA15 = i2;
                        }
                        i = iA15;
                    }
                    int i41 = iA16;
                    int iA19 = iVar.a(4);
                    if (iA19 > 2) {
                        throw new l("lookup type greater than 2 not decodable: " + iA19);
                    }
                    if (iA19 == 1 || iA19 == 2) {
                        iVar.b(32);
                        iVar.b(32);
                        int iA20 = iVar.a(4) + 1;
                        iVar.b(1);
                        if (iA19 == 1) {
                            if (i != 0) {
                                jFloor = (long) Math.floor(Math.pow(i41, 1.0d / ((double) i)));
                            }
                            iVar.b((int) (((long) iA20) * j2));
                        } else {
                            jFloor = i41 * i;
                        }
                        j2 = jFloor;
                        iVar.b((int) (((long) iA20) * j2));
                    }
                    i8++;
                    i5 = 0;
                }
            }
        }
        aVar2 = null;
        this.n = aVar2;
        if (aVar2 == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.n.a.f2377f);
        arrayList.add(this.n.b);
        k.c cVar = this.n.a;
        aVar.a = com.fyber.inneractive.sdk.player.exoplayer2.i.a((String) null, MimeTypes.AUDIO_VORBIS, (String) null, cVar.c, -1, cVar.a, (int) cVar.b, -1, arrayList, (com.fyber.inneractive.sdk.player.exoplayer2.drm.a) null, 0, (String) null);
        return true;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.h
    public void b(long j) {
        this.f2372g = j;
        this.p = j != 0;
        k.c cVar = this.q;
        this.o = cVar != null ? cVar.f2375d : 0;
    }
}
