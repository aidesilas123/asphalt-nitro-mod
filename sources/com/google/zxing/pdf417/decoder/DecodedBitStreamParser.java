package com.google.zxing.pdf417.decoder;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.zxing.FormatException;
import java.math.BigInteger;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
final class DecodedBitStreamParser {
    private static final char[] a = ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}'".toCharArray();
    private static final char[] b = "0123456789&\r\t,:#-.$/+%*=^".toCharArray();
    private static final BigInteger[] c;

    private enum Mode {
        ALPHA,
        LOWER,
        MIXED,
        PUNCT,
        ALPHA_SHIFT,
        PUNCT_SHIFT
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[Mode.values().length];
            a = iArr;
            try {
                iArr[Mode.ALPHA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[Mode.LOWER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[Mode.MIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[Mode.PUNCT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[Mode.ALPHA_SHIFT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[Mode.PUNCT_SHIFT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    static {
        BigInteger[] bigIntegerArr = new BigInteger[16];
        c = bigIntegerArr;
        bigIntegerArr[0] = BigInteger.ONE;
        BigInteger bigIntegerValueOf = BigInteger.valueOf(900L);
        bigIntegerArr[1] = bigIntegerValueOf;
        int i = 2;
        while (true) {
            BigInteger[] bigIntegerArr2 = c;
            if (i >= bigIntegerArr2.length) {
                return;
            }
            bigIntegerArr2[i] = bigIntegerArr2[i - 1].multiply(bigIntegerValueOf);
            i++;
        }
    }

    private static int a(int i, int[] iArr, int i2, com.google.zxing.common.f fVar) throws FormatException {
        int i3;
        boolean z = false;
        while (i2 < iArr[0] && !z) {
            while (i2 < iArr[0] && iArr[i2] == 927) {
                int i4 = i2 + 1;
                fVar.d(iArr[i4]);
                i2 = i4 + 1;
            }
            if (i2 >= iArr[0] || iArr[i2] >= 900) {
                z = true;
            } else {
                long j = 0;
                int i5 = 0;
                while (true) {
                    i3 = i2 + 1;
                    j = (j * 900) + ((long) iArr[i2]);
                    i5++;
                    if (i5 >= 5 || i3 >= iArr[0] || iArr[i3] >= 900) {
                        break;
                    }
                    i2 = i3;
                }
                if (i5 != 5 || (i != 924 && (i3 >= iArr[0] || iArr[i3] >= 900))) {
                    i3 -= i5;
                    while (i3 < iArr[0] && !z) {
                        int i6 = i3 + 1;
                        int i7 = iArr[i3];
                        if (i7 < 900) {
                            fVar.a((byte) i7);
                            i3 = i6;
                        } else if (i7 == 927) {
                            fVar.d(iArr[i6]);
                            i3 = i6 + 1;
                        } else {
                            i3 = i6 - 1;
                            z = true;
                        }
                    }
                } else {
                    for (int i8 = 0; i8 < 6; i8++) {
                        fVar.a((byte) (j >> ((5 - i8) * 8)));
                    }
                }
                i2 = i3;
            }
        }
        return i2;
    }

    static com.google.zxing.common.b b(int[] iArr, String str) throws FormatException {
        int i;
        com.google.zxing.common.f fVar = new com.google.zxing.common.f(iArr.length * 2);
        int iG = g(iArr, 1, fVar);
        com.google.zxing.pdf417.a aVar = new com.google.zxing.pdf417.a();
        while (iG < iArr[0]) {
            int i2 = iG + 1;
            int i3 = iArr[iG];
            if (i3 != 913) {
                switch (i3) {
                    case TypedValues.Custom.TYPE_INT /* 900 */:
                        iG = g(iArr, i2, fVar);
                        continue;
                    case TypedValues.Custom.TYPE_FLOAT /* 901 */:
                        break;
                    case TypedValues.Custom.TYPE_COLOR /* 902 */:
                        iG = f(iArr, i2, fVar);
                        continue;
                    default:
                        switch (i3) {
                            case 922:
                            case 923:
                                throw FormatException.getFormatInstance();
                            case 924:
                                break;
                            case 925:
                                i = i2 + 1;
                                iG = i;
                                break;
                            case 926:
                                i = i2 + 2;
                                iG = i;
                                break;
                            case 927:
                                iG = i2 + 1;
                                fVar.d(iArr[i2]);
                                break;
                            case 928:
                                iG = d(iArr, i2, aVar);
                                break;
                            default:
                                iG = g(iArr, i2 - 1, fVar);
                                break;
                        }
                        break;
                }
                iG = a(i3, iArr, i2, fVar);
            } else {
                iG = i2 + 1;
                fVar.b((char) iArr[i2]);
            }
        }
        if (fVar.f() && aVar.a() == null) {
            throw FormatException.getFormatInstance();
        }
        com.google.zxing.common.b bVar = new com.google.zxing.common.b(null, fVar.toString(), null, str);
        bVar.c(aVar);
        return bVar;
    }

    private static String c(int[] iArr, int i) throws FormatException {
        BigInteger bigIntegerAdd = BigInteger.ZERO;
        for (int i2 = 0; i2 < i; i2++) {
            bigIntegerAdd = bigIntegerAdd.add(c[(i - i2) - 1].multiply(BigInteger.valueOf(iArr[i2])));
        }
        String string = bigIntegerAdd.toString();
        if (string.charAt(0) == '1') {
            return string.substring(1);
        }
        throw FormatException.getFormatInstance();
    }

    static int d(int[] iArr, int i, com.google.zxing.pdf417.a aVar) throws FormatException {
        if (i + 2 > iArr[0]) {
            throw FormatException.getFormatInstance();
        }
        int[] iArr2 = new int[2];
        int i2 = 0;
        while (i2 < 2) {
            iArr2[i2] = iArr[i];
            i2++;
            i++;
        }
        String strC = c(iArr2, 2);
        if (strC.isEmpty()) {
            aVar.k(0);
        } else {
            try {
                aVar.k(Integer.parseInt(strC));
            } catch (NumberFormatException unused) {
                throw FormatException.getFormatInstance();
            }
        }
        StringBuilder sb = new StringBuilder();
        while (i < iArr[0] && i < iArr.length && iArr[i] != 922 && iArr[i] != 923) {
            sb.append(String.format("%03d", Integer.valueOf(iArr[i])));
            i++;
        }
        if (sb.length() == 0) {
            throw FormatException.getFormatInstance();
        }
        aVar.e(sb.toString());
        int i3 = iArr[i] == 923 ? i + 1 : -1;
        while (i < iArr[0]) {
            int i4 = iArr[i];
            if (i4 == 922) {
                i++;
                aVar.h(true);
            } else {
                if (i4 != 923) {
                    throw FormatException.getFormatInstance();
                }
                int i5 = i + 1;
                switch (iArr[i5]) {
                    case 0:
                        com.google.zxing.common.f fVar = new com.google.zxing.common.f();
                        i = g(iArr, i5 + 1, fVar);
                        aVar.f(fVar.toString());
                        break;
                    case 1:
                        com.google.zxing.common.f fVar2 = new com.google.zxing.common.f();
                        i = f(iArr, i5 + 1, fVar2);
                        try {
                            aVar.j(Integer.parseInt(fVar2.toString()));
                        } catch (NumberFormatException unused2) {
                            throw FormatException.getFormatInstance();
                        }
                        break;
                    case 2:
                        com.google.zxing.common.f fVar3 = new com.google.zxing.common.f();
                        i = f(iArr, i5 + 1, fVar3);
                        try {
                            aVar.m(Long.parseLong(fVar3.toString()));
                        } catch (NumberFormatException unused3) {
                            throw FormatException.getFormatInstance();
                        }
                        break;
                    case 3:
                        com.google.zxing.common.f fVar4 = new com.google.zxing.common.f();
                        i = g(iArr, i5 + 1, fVar4);
                        aVar.l(fVar4.toString());
                        break;
                    case 4:
                        com.google.zxing.common.f fVar5 = new com.google.zxing.common.f();
                        i = g(iArr, i5 + 1, fVar5);
                        aVar.c(fVar5.toString());
                        break;
                    case 5:
                        com.google.zxing.common.f fVar6 = new com.google.zxing.common.f();
                        i = f(iArr, i5 + 1, fVar6);
                        try {
                            aVar.g(Long.parseLong(fVar6.toString()));
                        } catch (NumberFormatException unused4) {
                            throw FormatException.getFormatInstance();
                        }
                        break;
                    case 6:
                        com.google.zxing.common.f fVar7 = new com.google.zxing.common.f();
                        i = f(iArr, i5 + 1, fVar7);
                        try {
                            aVar.d(Integer.parseInt(fVar7.toString()));
                        } catch (NumberFormatException unused5) {
                            throw FormatException.getFormatInstance();
                        }
                        break;
                    default:
                        throw FormatException.getFormatInstance();
                }
            }
        }
        if (i3 != -1) {
            int i6 = i - i3;
            if (aVar.b()) {
                i6--;
            }
            if (i6 > 0) {
                aVar.i(Arrays.copyOfRange(iArr, i3, i6 + i3));
            }
        }
        return i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0020. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0095  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.google.zxing.pdf417.decoder.DecodedBitStreamParser.Mode e(int[] r15, int[] r16, int r17, com.google.zxing.common.f r18, com.google.zxing.pdf417.decoder.DecodedBitStreamParser.Mode r19) {
        /*
            Method dump skipped, instruction units count: 298
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.DecodedBitStreamParser.e(int[], int[], int, com.google.zxing.common.f, com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode):com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int f(int[] r7, int r8, com.google.zxing.common.f r9) throws com.google.zxing.FormatException {
        /*
            r0 = 15
            int[] r0 = new int[r0]
            r1 = 0
            r2 = 0
            r3 = 0
        L7:
            r4 = r7[r1]
            if (r8 >= r4) goto L4b
            if (r2 != 0) goto L4b
            int r4 = r8 + 1
            r8 = r7[r8]
            r5 = r7[r1]
            r6 = 1
            if (r4 != r5) goto L17
            r2 = 1
        L17:
            r5 = 900(0x384, float:1.261E-42)
            if (r8 >= r5) goto L20
            r0[r3] = r8
            int r3 = r3 + 1
            goto L35
        L20:
            if (r8 == r5) goto L32
            r5 = 901(0x385, float:1.263E-42)
            if (r8 == r5) goto L32
            r5 = 927(0x39f, float:1.299E-42)
            if (r8 == r5) goto L32
            r5 = 928(0x3a0, float:1.3E-42)
            if (r8 == r5) goto L32
            switch(r8) {
                case 922: goto L32;
                case 923: goto L32;
                case 924: goto L32;
                default: goto L31;
            }
        L31:
            goto L35
        L32:
            int r4 = r4 + (-1)
            r2 = 1
        L35:
            int r5 = r3 % 15
            if (r5 == 0) goto L3f
            r5 = 902(0x386, float:1.264E-42)
            if (r8 == r5) goto L3f
            if (r2 == 0) goto L49
        L3f:
            if (r3 <= 0) goto L49
            java.lang.String r8 = c(r0, r3)
            r9.c(r8)
            r3 = 0
        L49:
            r8 = r4
            goto L7
        L4b:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.DecodedBitStreamParser.f(int[], int, com.google.zxing.common.f):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0048 A[FALL_THROUGH] */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1091)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:390)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:370)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:85)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:33)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:23)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int g(int[] r10, int r11, com.google.zxing.common.f r12) throws com.google.zxing.FormatException {
        /*
            r0 = 0
            r1 = r10[r0]
            int r1 = r1 - r11
            int r1 = r1 * 2
            int[] r1 = new int[r1]
            r2 = r10[r0]
            int r2 = r2 - r11
            int r2 = r2 * 2
            int[] r2 = new int[r2]
            com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode r3 = com.google.zxing.pdf417.decoder.DecodedBitStreamParser.Mode.ALPHA
            r4 = 0
            r5 = 0
        L13:
            r6 = r10[r0]
            if (r11 >= r6) goto L80
            if (r4 != 0) goto L80
            int r6 = r11 + 1
            r11 = r10[r11]
            r7 = 900(0x384, float:1.261E-42)
            if (r11 >= r7) goto L2e
            int r7 = r11 / 30
            r1[r5] = r7
            int r7 = r5 + 1
            int r11 = r11 % 30
            r1[r7] = r11
            int r5 = r5 + 2
            goto L40
        L2e:
            r8 = 913(0x391, float:1.28E-42)
            if (r11 == r8) goto L75
            r8 = 927(0x39f, float:1.299E-42)
            if (r11 == r8) goto L4c
            r8 = 928(0x3a0, float:1.3E-42)
            if (r11 == r8) goto L48
            switch(r11) {
                case 900: goto L42;
                case 901: goto L48;
                case 902: goto L48;
                default: goto L3d;
            }
        L3d:
            switch(r11) {
                case 922: goto L48;
                case 923: goto L48;
                case 924: goto L48;
                default: goto L40;
            }
        L40:
            r11 = r6
            goto L13
        L42:
            int r11 = r5 + 1
            r1[r5] = r7
            r5 = r11
            goto L40
        L48:
            int r6 = r6 + (-1)
            r4 = 1
            goto L40
        L4c:
            com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode r11 = e(r1, r2, r5, r12, r3)
            int r1 = r6 + 1
            r2 = r10[r6]
            r12.d(r2)
            r2 = r10[r0]
            if (r1 > r2) goto L70
            r2 = r10[r0]
            int r2 = r2 - r1
            int r2 = r2 * 2
            int[] r2 = new int[r2]
            r3 = r10[r0]
            int r3 = r3 - r1
            int r3 = r3 * 2
            int[] r3 = new int[r3]
            r5 = 0
            r9 = r3
            r3 = r11
            r11 = r1
            r1 = r2
            r2 = r9
            goto L13
        L70:
            com.google.zxing.FormatException r10 = com.google.zxing.FormatException.getFormatInstance()
            throw r10
        L75:
            r1[r5] = r8
            int r11 = r6 + 1
            r6 = r10[r6]
            r2[r5] = r6
            int r5 = r5 + 1
            goto L13
        L80:
            e(r1, r2, r5, r12, r3)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.DecodedBitStreamParser.g(int[], int, com.google.zxing.common.f):int");
    }
}
