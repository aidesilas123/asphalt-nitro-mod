package com.google.zxing.aztec.encoder;

import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: compiled from: HighLevelEncoder.java */
/* JADX INFO: loaded from: classes3.dex */
public final class c {
    static final String[] a = {"UPPER", "LOWER", "DIGIT", "MIXED", "PUNCT"};
    static final int[][] b = {new int[]{0, 327708, 327710, 327709, 656318}, new int[]{590318, 0, 327710, 327709, 656318}, new int[]{262158, 590300, 0, 590301, 932798}, new int[]{327709, 327708, 656318, 0, 327710}, new int[]{327711, 656380, 656382, 656381, 0}};
    private static final int[][] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final int[][] f4274d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final byte[] f4275e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Charset f4276f;

    /* JADX INFO: compiled from: HighLevelEncoder.java */
    class a implements Comparator<e> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(e eVar, e eVar2) {
            return eVar.f() - eVar2.f();
        }
    }

    static {
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) int.class, 5, 256);
        c = iArr;
        iArr[0][32] = 1;
        for (int i = 65; i <= 90; i++) {
            c[0][i] = (i - 65) + 2;
        }
        c[1][32] = 1;
        for (int i2 = 97; i2 <= 122; i2++) {
            c[1][i2] = (i2 - 97) + 2;
        }
        c[2][32] = 1;
        for (int i3 = 48; i3 <= 57; i3++) {
            c[2][i3] = (i3 - 48) + 2;
        }
        int[][] iArr2 = c;
        iArr2[2][44] = 12;
        iArr2[2][46] = 13;
        int[] iArr3 = {0, 32, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 27, 28, 29, 30, 31, 64, 92, 94, 95, 96, 124, 126, 127};
        for (int i4 = 0; i4 < 28; i4++) {
            c[3][iArr3[i4]] = i4;
        }
        int[] iArr4 = {0, 13, 0, 0, 0, 0, 33, 39, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 58, 59, 60, 61, 62, 63, 91, 93, 123, 125};
        for (int i5 = 0; i5 < 31; i5++) {
            if (iArr4[i5] > 0) {
                c[4][iArr4[i5]] = i5;
            }
        }
        int[][] iArr5 = (int[][]) Array.newInstance((Class<?>) int.class, 6, 6);
        f4274d = iArr5;
        for (int[] iArr6 : iArr5) {
            Arrays.fill(iArr6, -1);
        }
        int[][] iArr7 = f4274d;
        iArr7[0][4] = 0;
        iArr7[1][4] = 0;
        iArr7[1][0] = 28;
        iArr7[3][4] = 0;
        iArr7[2][4] = 0;
        iArr7[2][0] = 15;
    }

    public c(byte[] bArr, Charset charset) {
        this.f4275e = bArr;
        this.f4276f = charset;
    }

    private static Collection<e> b(Iterable<e> iterable) {
        LinkedList linkedList = new LinkedList();
        for (e eVar : iterable) {
            boolean z = true;
            Iterator it = linkedList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                e eVar2 = (e) it.next();
                if (eVar2.h(eVar)) {
                    z = false;
                    break;
                }
                if (eVar.h(eVar2)) {
                    it.remove();
                }
            }
            if (z) {
                linkedList.addFirst(eVar);
            }
        }
        return linkedList;
    }

    private void c(e eVar, int i, Collection<e> collection) {
        char c2 = (char) (this.f4275e[i] & 255);
        boolean z = c[eVar.g()][c2] > 0;
        e eVarD = null;
        for (int i2 = 0; i2 <= 4; i2++) {
            int i3 = c[i2][c2];
            if (i3 > 0) {
                if (eVarD == null) {
                    eVarD = eVar.d(i);
                }
                if (!z || i2 == eVar.g() || i2 == 2) {
                    collection.add(eVarD.i(i2, i3));
                }
                if (!z && f4274d[eVar.g()][i2] >= 0) {
                    collection.add(eVarD.j(i2, i3));
                }
            }
        }
        if (eVar.e() > 0 || c[eVar.g()][c2] == 0) {
            collection.add(eVar.a(i));
        }
    }

    private static void d(e eVar, int i, int i2, Collection<e> collection) {
        e eVarD = eVar.d(i);
        collection.add(eVarD.i(4, i2));
        if (eVar.g() != 4) {
            collection.add(eVarD.j(4, i2));
        }
        if (i2 == 3 || i2 == 4) {
            collection.add(eVarD.i(2, 16 - i2).i(2, 1));
        }
        if (eVar.e() > 0) {
            collection.add(eVar.a(i).a(i + 1));
        }
    }

    private Collection<e> e(Iterable<e> iterable, int i) {
        LinkedList linkedList = new LinkedList();
        Iterator<e> it = iterable.iterator();
        while (it.hasNext()) {
            c(it.next(), i, linkedList);
        }
        return b(linkedList);
    }

    private static Collection<e> f(Iterable<e> iterable, int i, int i2) {
        LinkedList linkedList = new LinkedList();
        Iterator<e> it = iterable.iterator();
        while (it.hasNext()) {
            d(it.next(), i, i2, linkedList);
        }
        return b(linkedList);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.google.zxing.common.a a() {
        /*
            r8 = this;
            com.google.zxing.aztec.encoder.e r0 = com.google.zxing.aztec.encoder.e.a
            java.nio.charset.Charset r1 = r8.f4276f
            if (r1 == 0) goto L2e
            com.google.zxing.common.CharacterSetECI r1 = com.google.zxing.common.CharacterSetECI.getCharacterSetECI(r1)
            if (r1 == 0) goto L15
            int r1 = r1.f()
            com.google.zxing.aztec.encoder.e r0 = r0.b(r1)
            goto L2e
        L15:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "No ECI code for character set "
            r1.append(r2)
            java.nio.charset.Charset r2 = r8.f4276f
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L2e:
            java.util.List r0 = java.util.Collections.singletonList(r0)
            r1 = 0
            r2 = 0
        L34:
            byte[] r3 = r8.f4275e
            int r4 = r3.length
            if (r2 >= r4) goto L78
            int r4 = r2 + 1
            int r5 = r3.length
            if (r4 >= r5) goto L41
            r5 = r3[r4]
            goto L42
        L41:
            r5 = 0
        L42:
            r3 = r3[r2]
            r6 = 13
            if (r3 == r6) goto L64
            r6 = 44
            r7 = 32
            if (r3 == r6) goto L60
            r6 = 46
            if (r3 == r6) goto L5c
            r6 = 58
            if (r3 == r6) goto L58
        L56:
            r3 = 0
            goto L69
        L58:
            if (r5 != r7) goto L56
            r3 = 5
            goto L69
        L5c:
            if (r5 != r7) goto L56
            r3 = 3
            goto L69
        L60:
            if (r5 != r7) goto L56
            r3 = 4
            goto L69
        L64:
            r3 = 10
            if (r5 != r3) goto L56
            r3 = 2
        L69:
            if (r3 <= 0) goto L71
            java.util.Collection r0 = f(r0, r2, r3)
            r2 = r4
            goto L75
        L71:
            java.util.Collection r0 = r8.e(r0, r2)
        L75:
            int r2 = r2 + 1
            goto L34
        L78:
            com.google.zxing.aztec.encoder.c$a r1 = new com.google.zxing.aztec.encoder.c$a
            r1.<init>()
            java.lang.Object r0 = java.util.Collections.min(r0, r1)
            com.google.zxing.aztec.encoder.e r0 = (com.google.zxing.aztec.encoder.e) r0
            byte[] r1 = r8.f4275e
            com.google.zxing.common.a r0 = r0.k(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.aztec.encoder.c.a():com.google.zxing.common.a");
    }
}
