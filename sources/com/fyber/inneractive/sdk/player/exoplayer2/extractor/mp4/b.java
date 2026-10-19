package com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4;

import android.util.Pair;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.a;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    public static final int a = u.a("vide");
    public static final int b = u.a("soun");
    public static final int c = u.a("text");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f2321d = u.a("sbtl");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f2322e = u.a("subt");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f2323f = u.a("clcp");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f2324g = u.a(C.CENC_TYPE_cenc);
    public static final int h = u.a("meta");

    public interface a {
        int a();

        int b();

        boolean c();
    }

    /* JADX INFO: renamed from: com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.b$b, reason: collision with other inner class name */
    public static final class C0184b {
        public final i[] a;
        public com.fyber.inneractive.sdk.player.exoplayer2.i b;
        public int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2325d = 0;

        public C0184b(int i) {
            this.a = new i[i];
        }
    }

    public static final class c implements a {
        public final int a;
        public final int b;
        public final com.fyber.inneractive.sdk.player.exoplayer2.util.k c;

        public c(a.b bVar) {
            com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar = bVar.P0;
            this.c = kVar;
            kVar.e(12);
            this.a = kVar.o();
            this.b = kVar.o();
        }

        @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.b.a
        public int a() {
            return this.b;
        }

        @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.b.a
        public int b() {
            int i = this.a;
            return i == 0 ? this.c.o() : i;
        }

        @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.b.a
        public boolean c() {
            return this.a != 0;
        }
    }

    public static final class d implements a {
        public final com.fyber.inneractive.sdk.player.exoplayer2.util.k a;
        public final int b;
        public final int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2326d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2327e;

        public d(a.b bVar) {
            com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar = bVar.P0;
            this.a = kVar;
            kVar.e(12);
            this.c = kVar.o() & 255;
            this.b = kVar.o();
        }

        @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.b.a
        public int a() {
            return this.b;
        }

        @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.b.a
        public int b() {
            int i = this.c;
            if (i == 8) {
                return this.a.l();
            }
            if (i == 16) {
                return this.a.q();
            }
            int i2 = this.f2326d;
            this.f2326d = i2 + 1;
            if (i2 % 2 != 0) {
                return this.f2327e & 15;
            }
            int iL = this.a.l();
            this.f2327e = iL;
            return (iL & PsExtractor.VIDEO_STREAM_MASK) >> 4;
        }

        @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.b.a
        public boolean c() {
            return false;
        }
    }

    public static int a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar) {
        int iL = kVar.l();
        int i = iL & 127;
        while ((iL & 128) == 128) {
            iL = kVar.l();
            i = (i << 7) | (iL & 127);
        }
        return i;
    }

    public static int a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar, int i, int i2, C0184b c0184b, int i3) {
        int i4 = kVar.b;
        while (true) {
            if (i4 - i >= i2) {
                return 0;
            }
            kVar.e(i4);
            int iC = kVar.c();
            int i5 = 1;
            com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(iC > 0, "childAtomSize should be positive");
            if (kVar.c() == com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.a.W) {
                int i6 = i4 + 8;
                Pair pairCreate = null;
                Integer numValueOf = null;
                i iVar = null;
                boolean z = false;
                while (i6 - i4 < iC) {
                    kVar.e(i6);
                    int iC2 = kVar.c();
                    int iC3 = kVar.c();
                    if (iC3 == com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.a.c0) {
                        numValueOf = Integer.valueOf(kVar.c());
                    } else if (iC3 == com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.a.X) {
                        kVar.f(4);
                        z = kVar.c() == f2324g;
                    } else if (iC3 == com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.a.Y) {
                        int i7 = i6 + 8;
                        while (true) {
                            if (i7 - i6 >= iC2) {
                                iVar = null;
                                break;
                            }
                            kVar.e(i7);
                            int iC4 = kVar.c();
                            if (kVar.c() == com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.a.Z) {
                                kVar.f(6);
                                boolean z2 = kVar.l() == i5;
                                int iL = kVar.l();
                                byte[] bArr = new byte[16];
                                System.arraycopy(kVar.a, kVar.b, bArr, 0, 16);
                                kVar.b += 16;
                                iVar = new i(z2, iL, bArr);
                            } else {
                                i7 += iC4;
                                i5 = 1;
                            }
                        }
                    }
                    i6 += iC2;
                    i5 = 1;
                }
                if (z) {
                    com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(numValueOf != null, "frma atom is mandatory");
                    com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(iVar != null, "schi->tenc atom is mandatory");
                    pairCreate = Pair.create(numValueOf, iVar);
                }
                if (pairCreate != null) {
                    c0184b.a[i3] = (i) pairCreate.second;
                    return ((Integer) pairCreate.first).intValue();
                }
            }
            i4 += iC;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.util.Pair<java.lang.String, byte[]> a(com.fyber.inneractive.sdk.player.exoplayer2.util.k r5, int r6) {
        /*
            int r6 = r6 + 8
            int r6 = r6 + 4
            r5.e(r6)
            r6 = 1
            r5.f(r6)
            a(r5)
            r0 = 2
            r5.f(r0)
            int r1 = r5.l()
            r2 = r1 & 128(0x80, float:1.8E-43)
            if (r2 == 0) goto L1d
            r5.f(r0)
        L1d:
            r2 = r1 & 64
            if (r2 == 0) goto L28
            int r2 = r5.q()
            r5.f(r2)
        L28:
            r2 = 32
            r1 = r1 & r2
            if (r1 == 0) goto L30
            r5.f(r0)
        L30:
            r5.f(r6)
            a(r5)
            int r0 = r5.l()
            r1 = 0
            if (r0 == r2) goto L80
            r2 = 33
            if (r0 == r2) goto L7d
            r2 = 35
            if (r0 == r2) goto L7a
            r2 = 64
            if (r0 == r2) goto L77
            r2 = 107(0x6b, float:1.5E-43)
            if (r0 == r2) goto L70
            r2 = 165(0xa5, float:2.31E-43)
            if (r0 == r2) goto L6d
            r2 = 166(0xa6, float:2.33E-43)
            if (r0 == r2) goto L6a
            switch(r0) {
                case 102: goto L77;
                case 103: goto L77;
                case 104: goto L77;
                default: goto L58;
            }
        L58:
            switch(r0) {
                case 169: goto L63;
                case 170: goto L5c;
                case 171: goto L5c;
                case 172: goto L63;
                default: goto L5b;
            }
        L5b:
            goto L82
        L5c:
            java.lang.String r5 = "audio/vnd.dts.hd"
            android.util.Pair r5 = android.util.Pair.create(r5, r1)
            return r5
        L63:
            java.lang.String r5 = "audio/vnd.dts"
            android.util.Pair r5 = android.util.Pair.create(r5, r1)
            return r5
        L6a:
            java.lang.String r1 = "audio/eac3"
            goto L82
        L6d:
            java.lang.String r1 = "audio/ac3"
            goto L82
        L70:
            java.lang.String r5 = "audio/mpeg"
            android.util.Pair r5 = android.util.Pair.create(r5, r1)
            return r5
        L77:
            java.lang.String r1 = "audio/mp4a-latm"
            goto L82
        L7a:
            java.lang.String r1 = "video/hevc"
            goto L82
        L7d:
            java.lang.String r1 = "video/avc"
            goto L82
        L80:
            java.lang.String r1 = "video/mp4v-es"
        L82:
            r0 = 12
            r5.f(r0)
            r5.f(r6)
            int r6 = a(r5)
            byte[] r0 = new byte[r6]
            byte[] r2 = r5.a
            int r3 = r5.b
            r4 = 0
            java.lang.System.arraycopy(r2, r3, r0, r4, r6)
            int r2 = r5.b
            int r2 = r2 + r6
            r5.b = r2
            android.util.Pair r5 = android.util.Pair.create(r1, r0)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.b.a(com.fyber.inneractive.sdk.player.exoplayer2.util.k, int):android.util.Pair");
    }

    /* JADX WARN: Removed duplicated region for block: B:409:0x0791  */
    /* JADX WARN: Removed duplicated region for block: B:412:0x079a  */
    /* JADX WARN: Removed duplicated region for block: B:413:0x079c  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.h a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.a.C0183a r46, com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.a.b r47, long r48, com.fyber.inneractive.sdk.player.exoplayer2.drm.a r50, boolean r51) throws com.fyber.inneractive.sdk.player.exoplayer2.l {
        /*
            Method dump skipped, instruction units count: 2001
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.b.a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.a$a, com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.a$b, long, com.fyber.inneractive.sdk.player.exoplayer2.drm.a, boolean):com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.h");
    }
}
