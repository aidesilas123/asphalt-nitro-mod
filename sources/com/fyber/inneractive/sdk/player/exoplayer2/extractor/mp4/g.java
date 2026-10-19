package com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4;

import com.fyber.inneractive.sdk.player.exoplayer2.util.u;

/* JADX INFO: loaded from: classes2.dex */
public final class g {
    public static final int[] a = {u.a("isom"), u.a("iso2"), u.a("iso3"), u.a("iso4"), u.a("iso5"), u.a("iso6"), u.a("avc1"), u.a("hvc1"), u.a("hev1"), u.a("mp41"), u.a("mp42"), u.a("3g2a"), u.a("3g2b"), u.a("3gr6"), u.a("3gs6"), u.a("3ge6"), u.a("3gg6"), u.a("M4V "), u.a("M4A "), u.a("f4v "), u.a("kddi"), u.a("M4VP"), u.a("qt  "), u.a("MSNV")};

    /* JADX WARN: Removed duplicated region for block: B:78:0x00a9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00ab A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g r16, boolean r17) throws java.lang.InterruptedException, java.io.IOException {
        /*
            r0 = r16
            com.fyber.inneractive.sdk.player.exoplayer2.extractor.b r0 = (com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) r0
            long r1 = r0.b
            r3 = 4096(0x1000, double:2.0237E-320)
            r5 = -1
            int r7 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r7 == 0) goto L12
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 <= 0) goto L13
        L12:
            r1 = r3
        L13:
            int r2 = (int) r1
            com.fyber.inneractive.sdk.player.exoplayer2.util.k r1 = new com.fyber.inneractive.sdk.player.exoplayer2.util.k
            r3 = 64
            r1.<init>(r3)
            r3 = 0
            r4 = 0
            r5 = 0
        L1e:
            if (r4 >= r2) goto Lbb
            r7 = 8
            r1.c(r7)
            byte[] r8 = r1.a
            r0.a(r8, r3, r7, r3)
            long r8 = r1.m()
            int r10 = r1.c()
            r11 = 1
            r13 = 16
            int r14 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1))
            if (r14 != 0) goto L47
            byte[] r8 = r1.a
            r0.a(r8, r7, r7, r3)
            r1.d(r13)
            long r8 = r1.p()
            goto L49
        L47:
            r13 = 8
        L49:
            long r11 = (long) r13
            int r14 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1))
            if (r14 >= 0) goto L4f
            return r3
        L4f:
            int r4 = r4 + r13
            int r13 = com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.a.C
            if (r10 != r13) goto L55
            goto L1e
        L55:
            int r13 = com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.a.L
            if (r10 == r13) goto Lb8
            int r13 = com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.a.N
            if (r10 != r13) goto L5e
            goto Lb8
        L5e:
            long r13 = (long) r4
            long r13 = r13 + r8
            long r13 = r13 - r11
            long r6 = (long) r2
            int r15 = (r13 > r6 ? 1 : (r13 == r6 ? 0 : -1))
            if (r15 < 0) goto L67
            goto Lbb
        L67:
            long r8 = r8 - r11
            int r6 = (int) r8
            int r4 = r4 + r6
            int r7 = com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.a.b
            if (r10 != r7) goto Lb1
            r7 = 8
            if (r6 >= r7) goto L73
            return r3
        L73:
            r1.c(r6)
            byte[] r7 = r1.a
            r0.a(r7, r3, r6, r3)
            int r6 = r6 / 4
            r7 = 0
        L7e:
            if (r7 >= r6) goto Lae
            r8 = 1
            if (r7 != r8) goto L88
            r9 = 4
            r1.f(r9)
            goto Lab
        L88:
            int r9 = r1.c()
            int r10 = r9 >>> 8
            java.lang.String r11 = "3gp"
            int r11 = com.fyber.inneractive.sdk.player.exoplayer2.util.u.a(r11)
            if (r10 != r11) goto L97
            goto La1
        L97:
            int[] r10 = com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.g.a
            int r11 = r10.length
            r12 = 0
        L9b:
            if (r12 >= r11) goto La6
            r13 = r10[r12]
            if (r13 != r9) goto La3
        La1:
            r9 = 1
            goto La7
        La3:
            int r12 = r12 + 1
            goto L9b
        La6:
            r9 = 0
        La7:
            if (r9 == 0) goto Lab
            r5 = 1
            goto Lae
        Lab:
            int r7 = r7 + 1
            goto L7e
        Lae:
            if (r5 != 0) goto L1e
            return r3
        Lb1:
            if (r6 == 0) goto L1e
            r0.a(r6, r3)
            goto L1e
        Lb8:
            r8 = 1
            r0 = 1
            goto Lbd
        Lbb:
            r8 = 1
            r0 = 0
        Lbd:
            if (r5 == 0) goto Lc4
            r1 = r17
            if (r1 != r0) goto Lc4
            r3 = 1
        Lc4:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.g.a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g, boolean):boolean");
    }
}
