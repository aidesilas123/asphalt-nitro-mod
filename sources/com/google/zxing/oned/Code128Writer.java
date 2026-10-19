package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class Code128Writer extends n {

    private enum CType {
        UNCODABLE,
        ONE_DIGIT,
        TWO_DIGITS,
        FNC_1
    }

    private static final class MinimalEncoder {
        private int[][] a;
        private Latch[][] b;

        private enum Charset {
            A,
            B,
            C,
            NONE
        }

        private enum Latch {
            A,
            B,
            C,
            SHIFT,
            NONE
        }

        private MinimalEncoder() {
        }

        /* synthetic */ MinimalEncoder(a aVar) {
            this();
        }

        private static void b(Collection<int[]> collection, int i, int[] iArr, int[] iArr2, int i2) {
            collection.add(c.a[i]);
            if (i2 != 0) {
                iArr2[0] = iArr2[0] + 1;
            }
            iArr[0] = iArr[0] + (i * iArr2[0]);
        }

        private boolean c(CharSequence charSequence, Charset charset, int i) {
            int i2;
            char cCharAt = charSequence.charAt(i);
            int i3 = a.b[charset.ordinal()];
            if (i3 == 1) {
                return cCharAt == 241 || cCharAt == 242 || cCharAt == 243 || cCharAt == 244 || " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001fÿ".indexOf(cCharAt) >= 0;
            }
            if (i3 == 2) {
                return cCharAt == 241 || cCharAt == 242 || cCharAt == 243 || cCharAt == 244 || " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007fÿ".indexOf(cCharAt) >= 0;
            }
            if (i3 != 3) {
                return false;
            }
            return cCharAt == 241 || ((i2 = i + 1) < charSequence.length() && f(cCharAt) && f(charSequence.charAt(i2)));
        }

        private int d(CharSequence charSequence, Charset charset, int i) {
            int iD;
            int iD2;
            int i2 = this.a[charset.ordinal()][i];
            if (i2 > 0) {
                return i2;
            }
            Latch latch = Latch.NONE;
            int i3 = i + 1;
            boolean z = i3 >= charSequence.length();
            Charset[] charsetArr = {Charset.A, Charset.B};
            int i4 = Integer.MAX_VALUE;
            for (int i5 = 0; i5 <= 1; i5++) {
                if (c(charSequence, charsetArr[i5], i)) {
                    Latch latchValueOf = Latch.NONE;
                    if (charset != charsetArr[i5]) {
                        latchValueOf = Latch.valueOf(charsetArr[i5].toString());
                        iD2 = 2;
                    } else {
                        iD2 = 1;
                    }
                    if (!z) {
                        iD2 += d(charSequence, charsetArr[i5], i3);
                    }
                    if (iD2 < i4) {
                        latch = latchValueOf;
                        i4 = iD2;
                    }
                    if (charset == charsetArr[(i5 + 1) % 2]) {
                        Latch latch2 = Latch.SHIFT;
                        int iD3 = !z ? d(charSequence, charset, i3) + 2 : 2;
                        if (iD3 < i4) {
                            latch = latch2;
                            i4 = iD3;
                        }
                    }
                }
            }
            Charset charset2 = Charset.C;
            if (c(charSequence, charset2, i)) {
                Latch latch3 = Latch.NONE;
                if (charset != charset2) {
                    latch3 = Latch.C;
                    iD = 2;
                } else {
                    iD = 1;
                }
                int i6 = (charSequence.charAt(i) != 241 ? 2 : 1) + i;
                if (i6 < charSequence.length()) {
                    iD += d(charSequence, charset2, i6);
                }
                if (iD < i4) {
                    latch = latch3;
                    i4 = iD;
                }
            }
            if (i4 != Integer.MAX_VALUE) {
                this.a[charset.ordinal()][i] = i4;
                this.b[charset.ordinal()][i] = latch;
                return i4;
            }
            throw new IllegalArgumentException("Bad character in input: ASCII value=" + ((int) charSequence.charAt(i)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:30:0x009c  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00bb  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean[] e(java.lang.String r17) {
            /*
                Method dump skipped, instruction units count: 280
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.Code128Writer.MinimalEncoder.e(java.lang.String):boolean[]");
        }

        private static boolean f(char c) {
            return c >= '0' && c <= '9';
        }
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;
        static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[MinimalEncoder.Charset.values().length];
            b = iArr;
            try {
                iArr[MinimalEncoder.Charset.A.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[MinimalEncoder.Charset.B.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[MinimalEncoder.Charset.C.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[MinimalEncoder.Latch.values().length];
            a = iArr2;
            try {
                iArr2[MinimalEncoder.Latch.A.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[MinimalEncoder.Latch.B.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[MinimalEncoder.Latch.C.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[MinimalEncoder.Latch.SHIFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    private static int i(String str, Map<EncodeHintType, ?> map) {
        String string;
        if (map != null) {
            EncodeHintType encodeHintType = EncodeHintType.FORCE_CODE_SET;
            if (map.containsKey(encodeHintType)) {
                string = map.get(encodeHintType).toString();
                string.hashCode();
                switch (string) {
                    case "A":
                        break;
                    case "B":
                        break;
                    case "C":
                        break;
                    default:
                        throw new IllegalArgumentException("Unsupported code set hint: " + string);
                }
            }
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            switch (cCharAt) {
                case 241:
                case 242:
                case 243:
                case 244:
                    break;
                default:
                    if (cCharAt > 127) {
                        throw new IllegalArgumentException("Bad character in input: ASCII value=" + ((int) cCharAt));
                    }
                    break;
            }
            /*  JADX ERROR: Method code generation error
                java.lang.NullPointerException: Switch insn not found in header
                	at java.base/java.util.Objects.requireNonNull(Objects.java:259)
                	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:246)
                	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:88)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:195)
                	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:171)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:305)
                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:284)
                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:412)
                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:337)
                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:303)
                	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
                	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                */
            /*
                Method dump skipped, instruction units count: 292
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.Code128Writer.i(java.lang.String, java.util.Map):int");
        }

        private static int j(CharSequence charSequence, int i, int i2) {
            CType cTypeL;
            CType cTypeL2;
            char cCharAt;
            CType cTypeL3 = l(charSequence, i);
            CType cType = CType.ONE_DIGIT;
            if (cTypeL3 == cType) {
                return i2 == 101 ? 101 : 100;
            }
            CType cType2 = CType.UNCODABLE;
            if (cTypeL3 == cType2) {
                return (i >= charSequence.length() || ((cCharAt = charSequence.charAt(i)) >= ' ' && (i2 != 101 || (cCharAt >= '`' && (cCharAt < 241 || cCharAt > 244))))) ? 100 : 101;
            }
            if (i2 == 101 && cTypeL3 == CType.FNC_1) {
                return 101;
            }
            if (i2 == 99) {
                return 99;
            }
            if (i2 != 100) {
                if (cTypeL3 == CType.FNC_1) {
                    cTypeL3 = l(charSequence, i + 1);
                }
                return cTypeL3 == CType.TWO_DIGITS ? 99 : 100;
            }
            CType cType3 = CType.FNC_1;
            if (cTypeL3 == cType3 || (cTypeL = l(charSequence, i + 2)) == cType2 || cTypeL == cType) {
                return 100;
            }
            if (cTypeL == cType3) {
                return l(charSequence, i + 3) == CType.TWO_DIGITS ? 99 : 100;
            }
            int i3 = i + 4;
            while (true) {
                cTypeL2 = l(charSequence, i3);
                if (cTypeL2 != CType.TWO_DIGITS) {
                    break;
                }
                i3 += 2;
            }
            return cTypeL2 == CType.ONE_DIGIT ? 100 : 99;
        }

        private static boolean[] k(String str, int i) {
            int length = str.length();
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            int i5 = 1;
            while (i2 < length) {
                int iJ = i == -1 ? j(str, i2, i4) : i;
                int iCharAt = 100;
                if (iJ == i4) {
                    switch (str.charAt(i2)) {
                        case 241:
                            iCharAt = 102;
                            break;
                        case 242:
                            iCharAt = 97;
                            break;
                        case 243:
                            iCharAt = 96;
                            break;
                        case 244:
                            if (i4 == 101) {
                                iCharAt = 101;
                            }
                            break;
                        default:
                            if (i4 == 100) {
                                iCharAt = str.charAt(i2) - ' ';
                            } else if (i4 == 101) {
                                iCharAt = str.charAt(i2) - ' ';
                                if (iCharAt < 0) {
                                    iCharAt += 96;
                                }
                            } else {
                                int i6 = i2 + 1;
                                if (i6 == length) {
                                    throw new IllegalArgumentException("Bad number of characters for digit only encoding.");
                                }
                                iCharAt = Integer.parseInt(str.substring(i2, i2 + 2));
                                i2 = i6;
                            }
                            break;
                    }
                    i2++;
                } else {
                    iCharAt = i4 == 0 ? iJ != 100 ? iJ != 101 ? 105 : 103 : 104 : iJ;
                    i4 = iJ;
                }
                arrayList.add(c.a[iCharAt]);
                i3 += iCharAt * i5;
                if (i2 != 0) {
                    i5++;
                }
            }
            return m(arrayList, i3);
        }

        private static CType l(CharSequence charSequence, int i) {
            int length = charSequence.length();
            if (i >= length) {
                return CType.UNCODABLE;
            }
            char cCharAt = charSequence.charAt(i);
            if (cCharAt == 241) {
                return CType.FNC_1;
            }
            if (cCharAt < '0' || cCharAt > '9') {
                return CType.UNCODABLE;
            }
            int i2 = i + 1;
            if (i2 >= length) {
                return CType.ONE_DIGIT;
            }
            char cCharAt2 = charSequence.charAt(i2);
            return (cCharAt2 < '0' || cCharAt2 > '9') ? CType.ONE_DIGIT : CType.TWO_DIGITS;
        }

        static boolean[] m(Collection<int[]> collection, int i) {
            int i2 = i % 103;
            if (i2 < 0) {
                throw new IllegalArgumentException("Unable to compute a valid input checksum");
            }
            int[][] iArr = c.a;
            collection.add(iArr[i2]);
            collection.add(iArr[106]);
            int iB = 0;
            int i3 = 0;
            for (int[] iArr2 : collection) {
                for (int i4 : iArr2) {
                    i3 += i4;
                }
            }
            boolean[] zArr = new boolean[i3];
            Iterator<int[]> it = collection.iterator();
            while (it.hasNext()) {
                iB += n.b(zArr, iB, it.next(), true);
            }
            return zArr;
        }

        @Override // com.google.zxing.oned.n
        public boolean[] d(String str) {
            return e(str, null);
        }

        /* JADX WARN: Removed duplicated region for block: B:9:0x001e  */
        @Override // com.google.zxing.oned.n
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean[] e(java.lang.String r4, java.util.Map<com.google.zxing.EncodeHintType, ?> r5) {
            /*
                r3 = this;
                int r0 = i(r4, r5)
                if (r5 == 0) goto L1e
                com.google.zxing.EncodeHintType r1 = com.google.zxing.EncodeHintType.CODE128_COMPACT
                boolean r2 = r5.containsKey(r1)
                if (r2 == 0) goto L1e
                java.lang.Object r5 = r5.get(r1)
                java.lang.String r5 = r5.toString()
                boolean r5 = java.lang.Boolean.parseBoolean(r5)
                if (r5 == 0) goto L1e
                r5 = 1
                goto L1f
            L1e:
                r5 = 0
            L1f:
                if (r5 == 0) goto L2c
                com.google.zxing.oned.Code128Writer$MinimalEncoder r5 = new com.google.zxing.oned.Code128Writer$MinimalEncoder
                r0 = 0
                r5.<init>(r0)
                boolean[] r4 = com.google.zxing.oned.Code128Writer.MinimalEncoder.a(r5, r4)
                goto L30
            L2c:
                boolean[] r4 = k(r4, r0)
            L30:
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.Code128Writer.e(java.lang.String, java.util.Map):boolean[]");
        }

        @Override // com.google.zxing.oned.n
        protected Collection<BarcodeFormat> g() {
            return Collections.singleton(BarcodeFormat.CODE_128);
        }
    }
