package com.facebook.ads.redexgen.X;

import android.media.MediaCodecInfo;
import android.util.Log;
import android.util.Pair;
import android.util.SparseIntArray;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class D9 {
    public static int A00;
    public static byte[] A01;
    public static String[] A02 = {"BAY", "ymxL57jYYv0jjQRcHQbZ4WAbO", "V4mYndI5uaXc7arEQ3TceizUtwuJpZsP", "bZ", "bvLsrur7DOWvoKolroRaEPylJxsC8CBw", "pPHP1LRPBsm50pfT1", "f9saOCuwOfCGSEN51CDIZYerwD3UjJFW", "NB4ZEOXNx"};
    public static final SparseIntArray A03;
    public static final SparseIntArray A04;
    public static final C0956Cy A05;
    public static final HashMap<D6, List<C0956Cy>> A06;
    public static final Map<String, Integer> A07;
    public static final Pattern A08;

    static {
        A0A();
        A05 = C0956Cy.A01(A07(657, 22, 61));
        A08 = Pattern.compile(A07(899, 10, 19));
        A06 = new HashMap<>();
        A00 = -1;
        SparseIntArray sparseIntArray = new SparseIntArray();
        A04 = sparseIntArray;
        sparseIntArray.put(66, 1);
        sparseIntArray.put(77, 2);
        sparseIntArray.put(88, 4);
        sparseIntArray.put(100, 8);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        A03 = sparseIntArray2;
        sparseIntArray2.put(10, 1);
        sparseIntArray2.put(11, 4);
        sparseIntArray2.put(12, 8);
        sparseIntArray2.put(13, 16);
        sparseIntArray2.put(20, 32);
        sparseIntArray2.put(21, 64);
        sparseIntArray2.put(22, 128);
        sparseIntArray2.put(30, 256);
        sparseIntArray2.put(31, 512);
        sparseIntArray2.put(32, 1024);
        sparseIntArray2.put(40, 2048);
        sparseIntArray2.put(41, 4096);
        sparseIntArray2.put(42, 8192);
        sparseIntArray2.put(50, 16384);
        sparseIntArray2.put(51, 32768);
        sparseIntArray2.put(52, 65536);
        HashMap map = new HashMap();
        A07 = map;
        map.put(A07(345, 3, 76), 1);
        map.put(A07(352, 3, 65), 4);
        map.put(A07(355, 3, 9), 16);
        map.put(A07(358, 3, 99), 64);
        map.put(A07(361, 3, 70), 256);
        map.put(A07(313, 4, 79), 1024);
        map.put(A07(317, 4, 36), 4096);
        map.put(A07(321, 4, 54), 16384);
        map.put(A07(325, 4, 77), 65536);
        map.put(A07(329, 4, 74), 262144);
        map.put(A07(333, 4, 10), 1048576);
        map.put(A07(337, 4, 66), 4194304);
        map.put(A07(FacebookRequestErrorClassification.EC_TOO_MANY_USER_ACTION_CALLS, 4, 21), 16777216);
        map.put(A07(221, 3, 72), 2);
        map.put(A07(224, 3, 70), 8);
        map.put(A07(227, 3, 119), 32);
        map.put(A07(230, 3, 0), 128);
        map.put(A07(233, 3, 93), 512);
        map.put(A07(PsExtractor.PRIVATE_STREAM_1, 4, 8), 2048);
        map.put(A07(193, 4, 124), 8192);
        map.put(A07(197, 4, 100), 32768);
        map.put(A07(201, 4, 123), 131072);
        map.put(A07(205, 4, 44), 524288);
        map.put(A07(209, 4, 11), 2097152);
        map.put(A07(213, 4, 15), 8388608);
        map.put(A07(217, 4, 93), 33554432);
    }

    public static int A00() throws D7 {
        if (A00 == -1) {
            int iMax = 0;
            C0956Cy c0956CyA06 = A06(A07(1006, 9, 38), false);
            if (c0956CyA06 != null) {
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : c0956CyA06.A0J()) {
                    iMax = Math.max(A01(codecProfileLevel.level), iMax);
                }
                iMax = Math.max(iMax, C1078Hx.A02 >= 21 ? 345600 : 172800);
            }
            A00 = iMax;
        }
        return A00;
    }

    public static int A01(int i) {
        switch (i) {
            case 1:
                break;
            case 2:
                break;
            case 8:
                break;
            case 16:
                break;
            case 32:
                break;
            case 64:
                break;
            case 128:
                break;
            case 256:
                break;
            case 512:
                break;
            case 1024:
                break;
            case 2048:
                break;
            case 4096:
                break;
            case 8192:
                break;
            case 16384:
                break;
            case 32768:
                break;
            case 65536:
                break;
        }
        return 25344;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001b  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001f A[RETURN] */
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
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:23)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> A02(java.lang.String r9) {
        /*
            r8 = 0
            if (r9 != 0) goto L4
            return r8
        L4:
            r2 = 897(0x381, float:1.257E-42)
            r1 = 2
            r0 = 85
            java.lang.String r0 = A07(r2, r1, r0)
            java.lang.String[] r5 = r9.split(r0)
            r3 = 0
            r6 = r5[r3]
            int r0 = r6.hashCode()
            switch(r0) {
                case 3006243: goto L20;
                case 3006244: goto L31;
                case 3199032: goto L42;
                case 3214780: goto L52;
                default: goto L1b;
            }
        L1b:
            r3 = -1
        L1c:
            switch(r3) {
                case 0: goto L84;
                case 1: goto L84;
                case 2: goto L89;
                case 3: goto L89;
                default: goto L1f;
            }
        L1f:
            return r8
        L20:
            r2 = 936(0x3a8, float:1.312E-42)
            r1 = 4
            r0 = 25
            java.lang.String r0 = A07(r2, r1, r0)
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L1b
            r3 = 2
            goto L1c
        L31:
            r2 = 940(0x3ac, float:1.317E-42)
            r1 = 4
            r0 = 116(0x74, float:1.63E-43)
            java.lang.String r0 = A07(r2, r1, r0)
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L1b
            r3 = 3
            goto L1c
        L42:
            r2 = 953(0x3b9, float:1.335E-42)
            r1 = 4
            r0 = 25
            java.lang.String r0 = A07(r2, r1, r0)
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L1b
            goto L1c
        L52:
            r7 = 957(0x3bd, float:1.341E-42)
            r4 = 4
            r3 = 34
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.D9.A02
            r0 = 4
            r1 = r1[r0]
            r0 = 9
            char r1 = r1.charAt(r0)
            r0 = 79
            if (r1 == r0) goto L6c
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L6c:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.D9.A02
            java.lang.String r1 = "MmTCu4eMbW5HStPFtCsv7ZFMn3CvoIap"
            r0 = 2
            r2[r0] = r1
            java.lang.String r1 = "LZKP0I4cIbW5T2P3pagUWnAfz2n8Y4ic"
            r0 = 6
            r2[r0] = r1
            java.lang.String r0 = A07(r7, r4, r3)
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L1b
            r3 = 1
            goto L1c
        L84:
            android.util.Pair r0 = A04(r9, r5)
            return r0
        L89:
            android.util.Pair r0 = A03(r9, r5)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.D9.A02(java.lang.String):android.util.Pair");
    }

    public static Pair<Integer, Integer> A03(String str, String[] strArr) {
        Integer numValueOf;
        Integer numValueOf2;
        int length = strArr.length;
        String strA07 = A07(238, 37, 54);
        String strA072 = A07(TypedValues.CycleType.TYPE_WAVE_PHASE, 14, 38);
        if (length < 2) {
            Log.w(strA072, strA07 + str);
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                numValueOf = Integer.valueOf(Integer.parseInt(strArr[1].substring(0, 2), 16));
                numValueOf2 = Integer.valueOf(Integer.parseInt(strArr[1].substring(4), 16));
            } else {
                if (strArr.length < 3) {
                    Log.w(strA072, strA07 + str);
                    return null;
                }
                numValueOf = Integer.valueOf(Integer.parseInt(strArr[1]));
                numValueOf2 = Integer.valueOf(Integer.parseInt(strArr[2]));
            }
            int i = A04.get(numValueOf.intValue(), -1);
            if (i == -1) {
                Log.w(strA072, A07(814, 21, 106) + numValueOf);
                return null;
            }
            int i2 = A03.get(numValueOf2.intValue(), -1);
            if (i2 != -1) {
                return new Pair<>(Integer.valueOf(i), Integer.valueOf(i2));
            }
            Log.w(strA072, A07(795, 19, 39) + numValueOf2);
            return null;
        } catch (NumberFormatException unused) {
            Log.w(strA072, strA07 + str);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00a9, code lost:
    
        if (r6 == null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00ab, code lost:
    
        android.util.Log.w(r4, A07(835, 27, 74) + r3.group(1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00cd, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00d7, code lost:
    
        if (r6 == null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00f4, code lost:
    
        return new android.util.Pair<>(java.lang.Integer.valueOf(r7), r6);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> A04(java.lang.String r9, java.lang.String[] r10) {
        /*
            Method dump skipped, instruction units count: 276
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.D9.A04(java.lang.String, java.lang.String[]):android.util.Pair");
    }

    public static C0956Cy A05() {
        return A05;
    }

    public static C0956Cy A06(String str, boolean z) throws D7 {
        List<C0956Cy> listA09 = A09(str, z);
        if (listA09.isEmpty()) {
            return null;
        }
        return listA09.get(0);
    }

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 109);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d8 A[Catch: Exception -> 0x0151, TRY_ENTER, TryCatch #5 {Exception -> 0x0151, blocks: (B:6:0x0022, B:8:0x002a, B:11:0x0036, B:39:0x00c8, B:42:0x00d8, B:44:0x00de, B:48:0x0112, B:49:0x014d, B:45:0x0109, B:46:0x010d), top: B:66:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0112 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.ArrayList<com.facebook.ads.redexgen.X.C0956Cy> A08(com.facebook.ads.redexgen.X.D6 r18, com.facebook.ads.redexgen.X.D8 r19, java.lang.String r20) throws com.facebook.ads.redexgen.X.D7 {
        /*
            Method dump skipped, instruction units count: 345
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.D9.A08(com.facebook.ads.redexgen.X.D6, com.facebook.ads.redexgen.X.D8, java.lang.String):java.util.ArrayList");
    }

    public static synchronized List<C0956Cy> A09(String str, boolean z) throws D7 {
        D6 d6 = new D6(str, z);
        HashMap<D6, List<C0956Cy>> map = A06;
        List<C0956Cy> list = map.get(d6);
        if (list != null) {
            return list;
        }
        D8 c1435Vz = C1078Hx.A02 >= 21 ? new C1435Vz(z) : new W0();
        ArrayList<C0956Cy> arrayListA08 = A08(d6, c1435Vz, str);
        if (z && arrayListA08.isEmpty() && 21 <= C1078Hx.A02 && C1078Hx.A02 <= 23) {
            c1435Vz = new W0();
            arrayListA08 = A08(d6, c1435Vz, str);
            if (!arrayListA08.isEmpty()) {
                Log.w(A07(TypedValues.CycleType.TYPE_WAVE_PHASE, 14, 38), A07(374, 51, 80) + str + A07(34, 12, 9) + arrayListA08.get(0).A02);
            }
        }
        if (A07(922, 14, 50).equals(str)) {
            arrayListA08.addAll(A08(new D6(A07(912, 10, 75), d6.A01), c1435Vz, str));
        }
        A0B(arrayListA08);
        List<C0956Cy> listUnmodifiableList = Collections.unmodifiableList(arrayListA08);
        map.put(d6, listUnmodifiableList);
        return listUnmodifiableList;
    }

    public static void A0A() {
        if (A02[4].charAt(9) != 'O') {
            throw new RuntimeException();
        }
        A02[1] = "WfhNiOeVQzQSnYcncz46tqnXb";
        A01 = new byte[]{-57, -49, 3, Ascii.VT, 73, 68, 76, 79, 72, 71, 3, 87, 82, 3, 84, 88, 72, 85, 92, 3, 70, 68, 83, 68, 69, 76, 79, 76, 87, 76, 72, 86, Ascii.FF, -9, -92, -106, -73, -23, -23, -21, -29, -33, -28, -35, -80, -106, -101, -32, -46, -48, -30, -33, -46, -1, -28, Ascii.RS, Ascii.SUB, Ascii.RS, 61, 45, Ascii.CR, Ascii.CR, Ascii.SI, Ascii.DLE, 49, 47, 59, 48, 49, 62, -29, -47, -43, -48, -44, 10, -8, -4, -9, -4, -44, -62, -57, -63, -59, -31, -49, -44, -50, -45, -73, -86, -86, -92, -90, -65, -78, -78, -84, -81, -13, -26, -26, -32, -26, -72, -85, -85, -90, -85, -61, -55, -48, -63, -63, -61, -60, -27, -29, -17, -28, -27, -14, -45, -39, -32, -47, -35, -30, -34, -46, -44, -11, -13, -1, -12, -11, 2, 43, 49, 56, 53, 56, Ascii.ESC, 44, 77, 75, 87, 76, 77, 90, -36, -30, -23, -17, 8, Ascii.VT, -5, 2, Ascii.FF, -35, -2, -4, 8, -3, -2, Ascii.VT, -68, -41, -33, -30, -37, -38, -106, -22, -27, -106, -25, -21, -37, -24, -17, -106, -39, -27, -38, -37, -39, -106, -67, -90, -89, -91, 49, Ascii.SUB, Ascii.ESC, Ascii.FS, Ascii.EM, 2, 6, 1, 48, Ascii.EM, Ascii.GS, Ascii.ESC, -31, -54, -50, -49, -64, -87, -80, -88, -60, -83, -76, -81, Ascii.DC2, -5, 2, 0, -3, -24, -27, -5, -23, -29, 44, Ascii.SUB, Ascii.ETB, -75, -90, -99, Ascii.DC2, 3, -3, 19, Ascii.CAN, -20, 10, 17, Ascii.DC2, Ascii.NAK, Ascii.FF, 17, 10, -61, Ascii.DLE, 4, Ascii.SI, 9, Ascii.DC2, Ascii.NAK, Ascii.DLE, 8, 7, -61, -28, -7, -26, -61, 6, Ascii.DC2, 7, 8, 6, -61, Ascii.SYN, Ascii.ETB, Ascii.NAK, Ascii.FF, 17, 10, -35, -61, -18, Ascii.FF, 19, Ascii.DC4, Ascii.ETB, Ascii.SO, 19, Ascii.FF, -59, Ascii.DC2, 6, 17, Ascii.VT, Ascii.DC4, Ascii.ETB, Ascii.DC2, 10, 9, -59, -19, -22, -5, -24, -59, 8, Ascii.DC4, 9, 10, 8, -59, Ascii.CAN, Ascii.EM, Ascii.ETB, Ascii.SO, 19, Ascii.FF, -33, -59, 8, -19, -18, -20, -35, -62, -61, -60, -17, -44, -40, -45, 6, -21, -17, -19, 3, -24, -20, -19, -61, -88, -81, -89, -5, -32, -25, -30, -50, -77, -70, -72, 5, -20, -23, -20, -45, -42, 8, -6, -28, -34, -62, -84, -87, Ascii.FS, 9, 0, -1, -20, -26, 32, 35, 6, Ascii.ETB, 56, 54, 66, 55, 56, 69, 10, 34, 33, 38, Ascii.RS, 0, 44, 33, 34, 32, 9, 38, 48, 49, -35, -2, Ascii.CR, 6, -35, 33, 38, 33, 43, -28, 49, -35, 41, 38, 48, 49, -35, 48, 34, 32, 50, 47, 34, -35, 33, 34, 32, 44, 33, 34, 47, -35, 35, 44, 47, -9, -35, -32, -8, -9, -4, -12, -42, 2, -9, -8, -10, -24, 7, -4, -1, -58, -35, -16, -19, -21, -104, -87, -88, 48, 37, 51, 48, 42, 37, Ascii.SO, 57, 54, Ascii.DC4, 6, 4, Ascii.SI, -27, -4, 47, 48, 37, 38, 42, -27, -8, -8, -6, -27, -5, Ascii.FS, Ascii.SUB, 38, Ascii.ESC, Ascii.FS, 41, 1, -1, 10, -32, -9, 42, 43, 32, 33, 37, -32, -13, 8, -11, -32, -10, Ascii.ETB, Ascii.NAK, 33, Ascii.SYN, Ascii.ETB, 36, Ascii.FF, 10, Ascii.NAK, -21, 2, 53, 54, 43, 44, 48, -21, -2, 19, 0, -21, 1, 34, 32, 44, 33, 34, 47, -21, 48, 34, 32, 50, 47, 34, -54, -56, -45, -87, -56, -49, -58, -87, -68, -48, -65, -60, -54, -87, -65, -64, -66, -54, -65, -64, -51, -87, -68, -68, -66, 8, 6, 17, -25, 6, Ascii.CR, 4, -25, -6, Ascii.SO, -3, 2, 8, -25, -3, -2, -4, 8, -3, -2, Ascii.VT, -25, -3, Ascii.FF, 9, -6, -4, -20, 43, 41, 52, 10, 41, 48, 39, 10, Ascii.GS, 49, 32, 37, 43, 10, 32, 33, Ascii.US, 43, 32, 33, 46, 10, 46, Ascii.GS, 51, -38, -40, -29, -71, -34, -48, -50, -71, -40, -37, -66, -71, -49, -16, -18, -6, -17, -16, -3, -15, -17, -6, -48, -11, -25, -27, -48, 3, 3, 5, -48, 6, 7, 5, -62, -64, -53, -95, -58, -72, -74, -95, -23, -29, -85, -95, -41, -40, -42, -7, -9, 2, -40, 17, Ascii.EM, Ascii.EM, 17, Ascii.SYN, Ascii.SI, -40, Ascii.FS, Ascii.VT, 33, -40, Ascii.SO, Ascii.SI, Ascii.CR, Ascii.EM, Ascii.SO, Ascii.SI, Ascii.FS, Ascii.VT, 9, Ascii.DC4, -22, 45, Ascii.US, 43, 41, -22, Ascii.GS, 49, 32, 37, 43, -22, 32, 33, Ascii.US, 43, 32, 33, 46, -22, Ascii.GS, Ascii.GS, Ascii.US, Ascii.SO, Ascii.FF, Ascii.ETB, -19, 48, 34, 46, 44, -19, 32, 52, 35, 40, 46, -19, 35, 36, 34, 46, 35, 36, 49, -19, 44, 47, -14, Ascii.CAN, Ascii.SYN, 33, -9, 58, 44, 56, 54, -9, 63, 50, 45, 46, 56, -9, 45, 46, 44, 56, 45, 46, 59, -9, 63, 57, 1, 63, 47, Ascii.EM, Ascii.FS, 32, 51, -32, -48, -70, -67, -62, -44, 49, 33, 52, 17, Ascii.SI, 56, 52, Ascii.DC2, Ascii.NAK, Ascii.ETB, 42, 51, 75, 73, 80, 80, 73, 78, 71, 0, 67, 79, 68, 69, 67, 0, -23, 2, -1, 2, 3, Ascii.VT, 2, -76, -43, -22, -41, -76, 0, -7, 10, -7, 0, -50, -76, 44, 69, 66, 69, 70, 78, 69, -9, Ascii.CAN, 45, Ascii.SUB, -9, 71, 73, 70, 61, 64, 67, 60, 17, -9, Ascii.FF, 37, 34, 37, 38, 46, 37, -41, -1, -4, Ascii.CR, -6, -41, 35, Ascii.FS, 45, Ascii.FS, 35, -41, 42, 43, 41, 32, 37, Ascii.RS, -15, -41, 50, 75, 72, 75, 76, 84, 75, -3, 37, 34, 51, 32, -3, 77, 79, 76, 67, 70, 73, 66, -3, 80, 81, 79, 70, 75, 68, Ascii.ETB, -3, -7, 10, 2, Ascii.DLE, Ascii.SO, 10, Ascii.RS, -16, -34, -36, -60, -65, -88, -36, -28, -85, -87, -92, 62, Ascii.DC4, Ascii.CR, Ascii.EM, 45, Ascii.FS, 33, 39, -25, Ascii.GS, Ascii.EM, Ascii.ESC, -21, 0, Ascii.DC4, 3, 8, Ascii.SO, -50, 4, 0, 2, -46, -52, 9, Ascii.SO, 2, -25, -4, -23, -73, 66, 87, 68, 19, 73, Ascii.ETB, 4, Ascii.FF, Ascii.CAN, Ascii.NAK, 42, 40, 40, -18, -21, -4, -73, -9, 5, -14, -64, 17, Ascii.CR, 19, Ascii.ESC, Ascii.FF, -8, -20, -3, -12, -7, -16, -9, -1, -16, -20, -1, -1, Ascii.FF, Ascii.SO, Ascii.VT, Ascii.DLE, Ascii.VT, 17, -20, -38, -26, -20, -18, -25, -32, -29, -47, -34, -28, -33, -29, -6, -20, -7, 
        -7, -24, -11, -10, -3, -71, 9, -4, -9, -8, 2, -62, -12, 9, -10, 43, Ascii.RS, 33, 33, Ascii.SUB, 42, Ascii.GS, 32, 32, Ascii.EM, Ascii.ETB, -26, 53, 40, 43, 43, 36, 47, 43, 52, 50, 2, -19, -10, -12, -4, -19, 96, 75, 88, 85, 76, 82, 90, 75, 2, -19, -6, -9, -12, -4, -19};
    }

    public static void A0B(List<C0956Cy> list) {
        if (C1078Hx.A02 >= 26 || list.size() <= 1) {
            return;
        }
        if (A07(583, 25, 111).equals(list.get(0).A02)) {
            for (int i = 1; i < list.size(); i++) {
                C0956Cy c0956Cy = list.get(i);
                if (A07(657, 22, 61).equals(c0956Cy.A02)) {
                    list.remove(i);
                    list.add(0, c0956Cy);
                    return;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x02c1, code lost:
    
        if (A07(85, 5, 49).equals(com.facebook.ads.redexgen.X.C1078Hx.A03) != false) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x03d6, code lost:
    
        if (A07(769, 5, 113).equals(com.facebook.ads.redexgen.X.C1078Hx.A03) != false) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a5, code lost:
    
        if (A07(364, 10, 102).equals(r8) == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0157, code lost:
    
        if (com.facebook.ads.redexgen.X.C1078Hx.A03.startsWith(A07(236, 2, 94)) != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x023a, code lost:
    
        if (A07(774, 6, 120).equals(com.facebook.ads.redexgen.X.C1078Hx.A03) != false) goto L85;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0329  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0339  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x034e  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0426  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean A0C(android.media.MediaCodecInfo r7, java.lang.String r8, boolean r9, java.lang.String r10) {
        /*
            Method dump skipped, instruction units count: 1216
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.D9.A0C(android.media.MediaCodecInfo, java.lang.String, boolean, java.lang.String):boolean");
    }

    public static boolean A0D(String str) {
        if (C1078Hx.A02 <= 22) {
            if ((A07(447, 10, 116).equals(C1078Hx.A06) || A07(439, 8, 11).equals(C1078Hx.A06)) && (A07(479, 22, 69).equals(str) || A07(501, 29, 80).equals(str))) {
                return true;
            }
        }
        return false;
    }
}
