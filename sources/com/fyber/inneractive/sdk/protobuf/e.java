package com.fyber.inneractive.sdk.protobuf;

import com.applovin.exoplayer2.common.base.Ascii;
import com.fyber.inneractive.sdk.protobuf.GeneratedMessageLite;
import com.fyber.inneractive.sdk.protobuf.r1;
import com.fyber.inneractive.sdk.protobuf.y;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class e {

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[r1.b.values().length];
            a = iArr;
            try {
                iArr[r1.b.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[r1.b.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[r1.b.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[r1.b.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[r1.b.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[r1.b.UINT32.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[r1.b.FIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[r1.b.SFIXED64.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[r1.b.FIXED32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[r1.b.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[r1.b.BOOL.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                a[r1.b.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                a[r1.b.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                a[r1.b.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                a[r1.b.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                a[r1.b.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                a[r1.b.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                a[r1.b.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    public static final class b {
        public int a;
        public long b;
        public Object c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final q f2659d;

        public b(q qVar) {
            qVar.getClass();
            this.f2659d = qVar;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int a(int i, byte[] bArr, int i2, int i3, GeneratedMessageLite.ExtendableMessage<?, ?> extendableMessage, GeneratedMessageLite.e<?, ?> eVar, k1<l1, l1> k1Var, b bVar) throws IOException {
        Object objA;
        u<GeneratedMessageLite.d> uVar = extendableMessage.extensions;
        int i4 = i >>> 3;
        GeneratedMessageLite.d dVar = eVar.f2656d;
        if (dVar.f2654d && dVar.f2655e) {
            switch (a.a[dVar.c.ordinal()]) {
                case 1:
                    n nVar = new n(new double[10], 0);
                    int iB = b(bArr, i2, nVar, bVar);
                    uVar.c(eVar.f2656d, nVar);
                    return iB;
                case 2:
                    v vVar = new v(new float[10], 0);
                    int iE = e(bArr, i2, vVar, bVar);
                    uVar.c(eVar.f2656d, vVar);
                    return iE;
                case 3:
                case 4:
                    f0 f0Var = new f0();
                    int i5 = i(bArr, i2, f0Var, bVar);
                    uVar.c(eVar.f2656d, f0Var);
                    return i5;
                case 5:
                case 6:
                    x xVar = new x();
                    int iH = h(bArr, i2, xVar, bVar);
                    uVar.c(eVar.f2656d, xVar);
                    return iH;
                case 7:
                case 8:
                    f0 f0Var2 = new f0();
                    int iD = d(bArr, i2, f0Var2, bVar);
                    uVar.c(eVar.f2656d, f0Var2);
                    return iD;
                case 9:
                case 10:
                    x xVar2 = new x();
                    int iC = c(bArr, i2, xVar2, bVar);
                    uVar.c(eVar.f2656d, xVar2);
                    return iC;
                case 11:
                    g gVar = new g(new boolean[10], 0);
                    int iA = a(bArr, i2, gVar, bVar);
                    uVar.c(eVar.f2656d, gVar);
                    return iA;
                case 12:
                    x xVar3 = new x();
                    int iF = f(bArr, i2, xVar3, bVar);
                    uVar.c(eVar.f2656d, xVar3);
                    return iF;
                case 13:
                    f0 f0Var3 = new f0();
                    int iG = g(bArr, i2, f0Var3, bVar);
                    uVar.c(eVar.f2656d, f0Var3);
                    return iG;
                case 14:
                    x xVar4 = new x();
                    int iH2 = h(bArr, i2, xVar4, bVar);
                    l1 l1Var = extendableMessage.unknownFields;
                    l1 l1Var2 = (l1) f1.a(i4, (List<Integer>) xVar4, eVar.f2656d.a, l1Var != l1.f2692f ? l1Var : null, (k1<UT, Object>) k1Var);
                    if (l1Var2 != null) {
                        extendableMessage.unknownFields = l1Var2;
                    }
                    uVar.c(eVar.f2656d, xVar4);
                    return iH2;
                default:
                    StringBuilder sb = new StringBuilder();
                    sb.append("Type cannot be packed: ");
                    sb.append(eVar.f2656d.c);
                    throw new IllegalStateException(sb.toString());
            }
        }
        r1.b bVar2 = dVar.c;
        if (bVar2 != r1.b.ENUM) {
            switch (a.a[bVar2.ordinal()]) {
                case 1:
                    objValueOf = Double.valueOf(Double.longBitsToDouble(b(bArr, i2)));
                    i2 += 8;
                    break;
                case 2:
                    objValueOf = Float.valueOf(Float.intBitsToFloat(a(bArr, i2)));
                    i2 += 4;
                    break;
                case 3:
                case 4:
                    i2 = e(bArr, i2, bVar);
                    objValueOf = Long.valueOf(bVar.b);
                    break;
                case 5:
                case 6:
                    i2 = d(bArr, i2, bVar);
                    objValueOf = Integer.valueOf(bVar.a);
                    break;
                case 7:
                case 8:
                    objValueOf = Long.valueOf(b(bArr, i2));
                    i2 += 8;
                    break;
                case 9:
                case 10:
                    objValueOf = Integer.valueOf(a(bArr, i2));
                    i2 += 4;
                    break;
                case 11:
                    i2 = e(bArr, i2, bVar);
                    objValueOf = Boolean.valueOf(bVar.b != 0);
                    break;
                case 12:
                    i2 = d(bArr, i2, bVar);
                    objValueOf = Integer.valueOf(j.b(bVar.a));
                    break;
                case 13:
                    i2 = e(bArr, i2, bVar);
                    objValueOf = Long.valueOf(j.a(bVar.b));
                    break;
                case 14:
                    throw new IllegalStateException("Shouldn't reach here.");
                case 15:
                    i2 = a(bArr, i2, bVar);
                    objValueOf = bVar.c;
                    break;
                case 16:
                    i2 = b(bArr, i2, bVar);
                    objValueOf = bVar.c;
                    break;
                case 17:
                    i2 = a(z0.c.a(eVar.c.getClass()), bArr, i2, i3, (i4 << 3) | 4, bVar);
                    objValueOf = bVar.c;
                    break;
                case 18:
                    i2 = a(z0.c.a(eVar.c.getClass()), bArr, i2, i3, bVar);
                    objValueOf = bVar.c;
                    break;
            }
        } else {
            i2 = d(bArr, i2, bVar);
            if (eVar.f2656d.a.a(bVar.a) == null) {
                l1 l1Var3 = extendableMessage.unknownFields;
                l1 l1Var4 = l1Var3;
                if (l1Var3 == l1.f2692f) {
                    l1 l1VarC = l1.c();
                    extendableMessage.unknownFields = l1VarC;
                    l1Var4 = l1VarC;
                }
                int i6 = bVar.a;
                Class<?> cls = f1.a;
                l1 l1VarA = l1Var4;
                if (l1Var4 == null) {
                    l1VarA = k1Var.a();
                }
                k1Var.b(l1VarA, i4, i6);
                return i2;
            }
            objValueOf = Integer.valueOf(bVar.a);
        }
        GeneratedMessageLite.d dVar2 = eVar.f2656d;
        if (dVar2.f2654d) {
            uVar.a(dVar2, objValueOf);
        } else {
            int i7 = a.a[dVar2.c.ordinal()];
            if ((i7 == 17 || i7 == 18) && (objA = uVar.a(eVar.f2656d)) != null) {
                objValueOf = y.a(objA, objValueOf);
            }
            uVar.c(eVar.f2656d, objValueOf);
        }
        return i2;
    }

    public static int a(int i, byte[] bArr, int i2, int i3, b bVar) throws z {
        int i4 = r1.a;
        if ((i >>> 3) == 0) {
            throw z.b();
        }
        int i5 = i & 7;
        if (i5 == 0) {
            return e(bArr, i2, bVar);
        }
        if (i5 == 1) {
            return i2 + 8;
        }
        if (i5 == 2) {
            return d(bArr, i2, bVar) + bVar.a;
        }
        if (i5 != 3) {
            if (i5 == 5) {
                return i2 + 4;
            }
            throw z.b();
        }
        int i6 = (i & (-8)) | 4;
        int i7 = 0;
        while (i2 < i3) {
            i2 = d(bArr, i2, bVar);
            i7 = bVar.a;
            if (i7 == i6) {
                break;
            }
            i2 = a(i7, bArr, i2, i3, bVar);
        }
        if (i2 > i3 || i7 != i6) {
            throw z.g();
        }
        return i2;
    }

    public static int a(int i, byte[] bArr, int i2, int i3, l1 l1Var, b bVar) throws z {
        int i4 = r1.a;
        if ((i >>> 3) == 0) {
            throw z.b();
        }
        int i5 = i & 7;
        if (i5 == 0) {
            int iE = e(bArr, i2, bVar);
            l1Var.a(i, Long.valueOf(bVar.b));
            return iE;
        }
        if (i5 == 1) {
            l1Var.a(i, Long.valueOf(b(bArr, i2)));
            return i2 + 8;
        }
        if (i5 == 2) {
            int iD = d(bArr, i2, bVar);
            int i6 = bVar.a;
            if (i6 < 0) {
                throw z.f();
            }
            if (i6 > bArr.length - iD) {
                throw z.i();
            }
            if (i6 == 0) {
                l1Var.a(i, i.b);
            } else {
                l1Var.a(i, i.a(bArr, iD, i6));
            }
            return iD + i6;
        }
        if (i5 != 3) {
            if (i5 != 5) {
                throw z.b();
            }
            l1Var.a(i, Integer.valueOf(a(bArr, i2)));
            return i2 + 4;
        }
        l1 l1VarC = l1.c();
        int i7 = (i & (-8)) | 4;
        int i8 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int iD2 = d(bArr, i2, bVar);
            int i9 = bVar.a;
            if (i9 == i7) {
                i8 = i9;
                i2 = iD2;
                break;
            }
            i8 = i9;
            i2 = a(i9, bArr, iD2, i3, l1VarC, bVar);
        }
        if (i2 > i3 || i8 != i7) {
            throw z.g();
        }
        l1Var.a(i, l1VarC);
        return i2;
    }

    public static int a(int i, byte[] bArr, int i2, int i3, y.j<?> jVar, b bVar) {
        x xVar = (x) jVar;
        int iD = d(bArr, i2, bVar);
        xVar.c(bVar.a);
        while (iD < i3) {
            int iD2 = d(bArr, iD, bVar);
            if (i != bVar.a) {
                break;
            }
            iD = d(bArr, iD2, bVar);
            xVar.c(bVar.a);
        }
        return iD;
    }

    public static int a(int i, byte[] bArr, int i2, b bVar) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b2 = bArr[i2];
        if (b2 >= 0) {
            bVar.a = i3 | (b2 << 7);
            return i4;
        }
        int i5 = i3 | ((b2 & Ascii.DEL) << 7);
        int i6 = i4 + 1;
        byte b3 = bArr[i4];
        if (b3 >= 0) {
            bVar.a = i5 | (b3 << Ascii.SO);
            return i6;
        }
        int i7 = i5 | ((b3 & Ascii.DEL) << 14);
        int i8 = i6 + 1;
        byte b4 = bArr[i6];
        if (b4 >= 0) {
            bVar.a = i7 | (b4 << Ascii.NAK);
            return i8;
        }
        int i9 = i7 | ((b4 & Ascii.DEL) << 21);
        int i10 = i8 + 1;
        byte b5 = bArr[i8];
        if (b5 >= 0) {
            bVar.a = i9 | (b5 << Ascii.FS);
            return i10;
        }
        int i11 = i9 | ((b5 & Ascii.DEL) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                bVar.a = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static int a(d1<?> d1Var, int i, byte[] bArr, int i2, int i3, y.j<?> jVar, b bVar) throws IOException {
        int iA = a(d1Var, bArr, i2, i3, bVar);
        jVar.add(bVar.c);
        while (iA < i3) {
            int iD = d(bArr, iA, bVar);
            if (i != bVar.a) {
                break;
            }
            iA = a(d1Var, bArr, iD, i3, bVar);
            jVar.add(bVar.c);
        }
        return iA;
    }

    public static int a(d1 d1Var, byte[] bArr, int i, int i2, int i3, b bVar) throws IOException {
        r0 r0Var = (r0) d1Var;
        Object objA = r0Var.a();
        int iA = r0Var.a(objA, bArr, i, i2, i3, bVar);
        r0Var.c(objA);
        bVar.c = objA;
        return iA;
    }

    public static int a(d1 d1Var, byte[] bArr, int i, int i2, b bVar) throws IOException {
        int iA = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iA = a(i3, bArr, iA, bVar);
            i3 = bVar.a;
        }
        int i4 = iA;
        if (i3 < 0 || i3 > i2 - i4) {
            throw z.i();
        }
        Object objA = d1Var.a();
        int i5 = i3 + i4;
        d1Var.a(objA, bArr, i4, i5, bVar);
        d1Var.c(objA);
        bVar.c = objA;
        return i5;
    }

    public static int a(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static int a(byte[] bArr, int i, b bVar) throws z {
        int iD = d(bArr, i, bVar);
        int i2 = bVar.a;
        if (i2 < 0) {
            throw z.f();
        }
        if (i2 > bArr.length - iD) {
            throw z.i();
        }
        if (i2 == 0) {
            bVar.c = i.b;
            return iD;
        }
        bVar.c = i.a(bArr, iD, i2);
        return iD + i2;
    }

    public static int a(byte[] bArr, int i, y.j<?> jVar, b bVar) throws IOException {
        g gVar = (g) jVar;
        int iD = d(bArr, i, bVar);
        int i2 = bVar.a + iD;
        while (iD < i2) {
            iD = e(bArr, iD, bVar);
            gVar.a(bVar.b != 0);
        }
        if (iD == i2) {
            return iD;
        }
        throw z.i();
    }

    public static int b(byte[] bArr, int i, b bVar) throws z {
        int iD = d(bArr, i, bVar);
        int i2 = bVar.a;
        if (i2 < 0) {
            throw z.f();
        }
        if (i2 == 0) {
            bVar.c = "";
            return iD;
        }
        bVar.c = new String(bArr, iD, i2, y.a);
        return iD + i2;
    }

    public static int b(byte[] bArr, int i, y.j<?> jVar, b bVar) throws IOException {
        n nVar = (n) jVar;
        int iD = d(bArr, i, bVar);
        int i2 = bVar.a + iD;
        while (iD < i2) {
            nVar.a(Double.longBitsToDouble(b(bArr, iD)));
            iD += 8;
        }
        if (iD == i2) {
            return iD;
        }
        throw z.i();
    }

    public static long b(byte[] bArr, int i) {
        return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
    }

    public static int c(byte[] bArr, int i, b bVar) throws z {
        int iD = d(bArr, i, bVar);
        int i2 = bVar.a;
        if (i2 < 0) {
            throw z.f();
        }
        if (i2 == 0) {
            bVar.c = "";
            return iD;
        }
        bVar.c = q1.a.a(bArr, iD, i2);
        return iD + i2;
    }

    public static int c(byte[] bArr, int i, y.j<?> jVar, b bVar) throws IOException {
        x xVar = (x) jVar;
        int iD = d(bArr, i, bVar);
        int i2 = bVar.a + iD;
        while (iD < i2) {
            xVar.c(a(bArr, iD));
            iD += 4;
        }
        if (iD == i2) {
            return iD;
        }
        throw z.i();
    }

    public static int d(byte[] bArr, int i, b bVar) {
        int i2 = i + 1;
        byte b2 = bArr[i];
        if (b2 < 0) {
            return a(b2, bArr, i2, bVar);
        }
        bVar.a = b2;
        return i2;
    }

    public static int d(byte[] bArr, int i, y.j<?> jVar, b bVar) throws IOException {
        f0 f0Var = (f0) jVar;
        int iD = d(bArr, i, bVar);
        int i2 = bVar.a + iD;
        while (iD < i2) {
            f0Var.a(b(bArr, iD));
            iD += 8;
        }
        if (iD == i2) {
            return iD;
        }
        throw z.i();
    }

    public static int e(byte[] bArr, int i, b bVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            bVar.b = j;
            return i2;
        }
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        long j2 = (j & 127) | (((long) (b2 & Ascii.DEL)) << 7);
        int i4 = 7;
        while (b2 < 0) {
            int i5 = i3 + 1;
            byte b3 = bArr[i3];
            i4 += 7;
            j2 |= ((long) (b3 & Ascii.DEL)) << i4;
            b2 = b3;
            i3 = i5;
        }
        bVar.b = j2;
        return i3;
    }

    public static int e(byte[] bArr, int i, y.j<?> jVar, b bVar) throws IOException {
        v vVar = (v) jVar;
        int iD = d(bArr, i, bVar);
        int i2 = bVar.a + iD;
        while (iD < i2) {
            vVar.a(Float.intBitsToFloat(a(bArr, iD)));
            iD += 4;
        }
        if (iD == i2) {
            return iD;
        }
        throw z.i();
    }

    public static int f(byte[] bArr, int i, y.j<?> jVar, b bVar) throws IOException {
        x xVar = (x) jVar;
        int iD = d(bArr, i, bVar);
        int i2 = bVar.a + iD;
        while (iD < i2) {
            iD = d(bArr, iD, bVar);
            xVar.c(j.b(bVar.a));
        }
        if (iD == i2) {
            return iD;
        }
        throw z.i();
    }

    public static int g(byte[] bArr, int i, y.j<?> jVar, b bVar) throws IOException {
        f0 f0Var = (f0) jVar;
        int iD = d(bArr, i, bVar);
        int i2 = bVar.a + iD;
        while (iD < i2) {
            iD = e(bArr, iD, bVar);
            f0Var.a(j.a(bVar.b));
        }
        if (iD == i2) {
            return iD;
        }
        throw z.i();
    }

    public static int h(byte[] bArr, int i, y.j<?> jVar, b bVar) throws IOException {
        x xVar = (x) jVar;
        int iD = d(bArr, i, bVar);
        int i2 = bVar.a + iD;
        while (iD < i2) {
            iD = d(bArr, iD, bVar);
            xVar.c(bVar.a);
        }
        if (iD == i2) {
            return iD;
        }
        throw z.i();
    }

    public static int i(byte[] bArr, int i, y.j<?> jVar, b bVar) throws IOException {
        f0 f0Var = (f0) jVar;
        int iD = d(bArr, i, bVar);
        int i2 = bVar.a + iD;
        while (iD < i2) {
            iD = e(bArr, iD, bVar);
            f0Var.a(bVar.b);
        }
        if (iD == i2) {
            return iD;
        }
        throw z.i();
    }
}
