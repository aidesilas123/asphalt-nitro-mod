package com.fyber.inneractive.sdk.protobuf;

import com.fyber.inneractive.sdk.protobuf.e;
import com.fyber.inneractive.sdk.protobuf.h0;
import com.fyber.inneractive.sdk.protobuf.p1;
import com.fyber.inneractive.sdk.protobuf.y;
import com.google.android.gms.drive.DriveFile;
import java.io.IOException;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes2.dex */
public final class r0<T> implements d1<T> {
    public static final int[] r = new int[0];
    public static final Unsafe s;
    public final int[] a;
    public final Object[] b;
    public final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2700d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final o0 f2701e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f2702f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f2703g;
    public final boolean h;
    public final boolean i;
    public final int[] j;
    public final int k;
    public final int l;
    public final t0 m;
    public final e0 n;
    public final k1<?, ?> o;
    public final r<?> p;
    public final j0 q;

    static {
        Unsafe unsafe;
        Unsafe unsafe2 = p1.a;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new o1());
        } catch (Throwable unused) {
            unsafe = null;
        }
        s = unsafe;
    }

    public r0(int[] iArr, Object[] objArr, int i, int i2, o0 o0Var, boolean z, boolean z2, int[] iArr2, int i3, int i4, t0 t0Var, e0 e0Var, k1<?, ?> k1Var, r<?> rVar, j0 j0Var) {
        this.a = iArr;
        this.b = objArr;
        this.c = i;
        this.f2700d = i2;
        this.f2703g = o0Var instanceof GeneratedMessageLite;
        this.h = z;
        this.f2702f = rVar != null && rVar.a(o0Var);
        this.i = z2;
        this.j = iArr2;
        this.k = i3;
        this.l = i4;
        this.m = t0Var;
        this.n = e0Var;
        this.o = k1Var;
        this.p = rVar;
        this.f2701e = o0Var;
        this.q = j0Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:128:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0341  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0394  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.fyber.inneractive.sdk.protobuf.r0 a(com.fyber.inneractive.sdk.protobuf.m0 r35, com.fyber.inneractive.sdk.protobuf.t0 r36, com.fyber.inneractive.sdk.protobuf.e0 r37, com.fyber.inneractive.sdk.protobuf.k1 r38, com.fyber.inneractive.sdk.protobuf.r r39, com.fyber.inneractive.sdk.protobuf.j0 r40) {
        /*
            Method dump skipped, instruction units count: 1053
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.protobuf.r0.a(com.fyber.inneractive.sdk.protobuf.m0, com.fyber.inneractive.sdk.protobuf.t0, com.fyber.inneractive.sdk.protobuf.e0, com.fyber.inneractive.sdk.protobuf.k1, com.fyber.inneractive.sdk.protobuf.r, com.fyber.inneractive.sdk.protobuf.j0):com.fyber.inneractive.sdk.protobuf.r0");
    }

    public static Field a(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    public static <T> boolean a(T t, long j) {
        return ((Boolean) p1.g(t, j)).booleanValue();
    }

    public static <T> double b(T t, long j) {
        return ((Double) p1.g(t, j)).doubleValue();
    }

    public static <T> float c(T t, long j) {
        return ((Float) p1.g(t, j)).floatValue();
    }

    public static <T> int d(T t, long j) {
        return ((Integer) p1.g(t, j)).intValue();
    }

    public static long d(int i) {
        return i & 1048575;
    }

    public static <T> long e(T t, long j) {
        return ((Long) p1.g(t, j)).longValue();
    }

    public static l1 e(Object obj) {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        l1 l1Var = generatedMessageLite.unknownFields;
        if (l1Var != l1.f2692f) {
            return l1Var;
        }
        l1 l1VarC = l1.c();
        generatedMessageLite.unknownFields = l1VarC;
        return l1VarC;
    }

    public static int f(int i) {
        return (i & 267386880) >>> 20;
    }

    public final int a(int i, int i2) {
        int length = (this.a.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.a[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    public final int a(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, e.b bVar) throws IOException {
        Unsafe unsafe = s;
        long j2 = this.a[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 != 1) {
                    return i;
                }
                unsafe.putObject(t, j, Double.valueOf(Double.longBitsToDouble(e.b(bArr, i))));
                int i9 = i + 8;
                unsafe.putInt(t, j2, i4);
                return i9;
            case 52:
                if (i5 != 5) {
                    return i;
                }
                unsafe.putObject(t, j, Float.valueOf(Float.intBitsToFloat(e.a(bArr, i))));
                int i10 = i + 4;
                unsafe.putInt(t, j2, i4);
                return i10;
            case 53:
            case 54:
                if (i5 != 0) {
                    return i;
                }
                int iE = e.e(bArr, i, bVar);
                unsafe.putObject(t, j, Long.valueOf(bVar.b));
                unsafe.putInt(t, j2, i4);
                return iE;
            case 55:
            case 62:
                if (i5 != 0) {
                    return i;
                }
                int iD = e.d(bArr, i, bVar);
                unsafe.putObject(t, j, Integer.valueOf(bVar.a));
                unsafe.putInt(t, j2, i4);
                return iD;
            case 56:
            case 65:
                if (i5 != 1) {
                    return i;
                }
                unsafe.putObject(t, j, Long.valueOf(e.b(bArr, i)));
                int i11 = i + 8;
                unsafe.putInt(t, j2, i4);
                return i11;
            case 57:
            case 64:
                if (i5 != 5) {
                    return i;
                }
                unsafe.putObject(t, j, Integer.valueOf(e.a(bArr, i)));
                int i12 = i + 4;
                unsafe.putInt(t, j2, i4);
                return i12;
            case 58:
                if (i5 != 0) {
                    return i;
                }
                int iE2 = e.e(bArr, i, bVar);
                unsafe.putObject(t, j, Boolean.valueOf(bVar.b != 0));
                unsafe.putInt(t, j2, i4);
                return iE2;
            case 59:
                if (i5 != 2) {
                    return i;
                }
                int iD2 = e.d(bArr, i, bVar);
                int i13 = bVar.a;
                if (i13 == 0) {
                    unsafe.putObject(t, j, "");
                } else {
                    if ((i6 & DriveFile.MODE_WRITE_ONLY) != 0 && !q1.b(bArr, iD2, iD2 + i13)) {
                        throw z.c();
                    }
                    unsafe.putObject(t, j, new String(bArr, iD2, i13, y.a));
                    iD2 += i13;
                }
                unsafe.putInt(t, j2, i4);
                return iD2;
            case 60:
                if (i5 != 2) {
                    return i;
                }
                int iA = e.a(c(i8), bArr, i, i2, bVar);
                Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                if (object == null) {
                    unsafe.putObject(t, j, bVar.c);
                } else {
                    unsafe.putObject(t, j, y.a(object, bVar.c));
                }
                unsafe.putInt(t, j2, i4);
                return iA;
            case 61:
                if (i5 != 2) {
                    return i;
                }
                int iA2 = e.a(bArr, i, bVar);
                unsafe.putObject(t, j, bVar.c);
                unsafe.putInt(t, j2, i4);
                return iA2;
            case 63:
                if (i5 != 0) {
                    return i;
                }
                int iD3 = e.d(bArr, i, bVar);
                int i14 = bVar.a;
                y.e eVarA = a(i8);
                if (eVarA == null || eVarA.a(i14)) {
                    unsafe.putObject(t, j, Integer.valueOf(i14));
                    unsafe.putInt(t, j2, i4);
                } else {
                    e(t).a(i3, Long.valueOf(i14));
                }
                return iD3;
            case 66:
                if (i5 != 0) {
                    return i;
                }
                int iD4 = e.d(bArr, i, bVar);
                unsafe.putObject(t, j, Integer.valueOf(j.b(bVar.a)));
                unsafe.putInt(t, j2, i4);
                return iD4;
            case 67:
                if (i5 != 0) {
                    return i;
                }
                int iE3 = e.e(bArr, i, bVar);
                unsafe.putObject(t, j, Long.valueOf(j.a(bVar.b)));
                unsafe.putInt(t, j2, i4);
                return iE3;
            case 68:
                if (i5 != 3) {
                    return i;
                }
                int iA3 = e.a(c(i8), bArr, i, i2, (i3 & (-8)) | 4, bVar);
                Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                if (object2 == null) {
                    unsafe.putObject(t, j, bVar.c);
                } else {
                    unsafe.putObject(t, j, y.a(object2, bVar.c));
                }
                unsafe.putInt(t, j2, i4);
                return iA3;
            default:
                return i;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int a(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, e.b bVar) throws IOException {
        int iA;
        int iD = i;
        Unsafe unsafe = s;
        y.j jVarB = (y.j) unsafe.getObject(t, j2);
        if (!jVarB.d()) {
            int size = jVarB.size();
            jVarB = jVarB.b(size == 0 ? 10 : size * 2);
            unsafe.putObject(t, j2, jVarB);
        }
        switch (i7) {
            case 18:
            case 35:
                if (i5 == 2) {
                    return e.b(bArr, iD, jVarB, bVar);
                }
                if (i5 == 1) {
                    n nVar = (n) jVarB;
                    nVar.a(Double.longBitsToDouble(e.b(bArr, i)));
                    while (true) {
                        int i8 = iD + 8;
                        if (i8 >= i2) {
                            return i8;
                        }
                        iD = e.d(bArr, i8, bVar);
                        if (i3 != bVar.a) {
                            return i8;
                        }
                        nVar.a(Double.longBitsToDouble(e.b(bArr, iD)));
                    }
                }
                break;
            case 19:
            case 36:
                if (i5 == 2) {
                    return e.e(bArr, iD, jVarB, bVar);
                }
                if (i5 == 5) {
                    v vVar = (v) jVarB;
                    vVar.a(Float.intBitsToFloat(e.a(bArr, i)));
                    while (true) {
                        int i9 = iD + 4;
                        if (i9 >= i2) {
                            return i9;
                        }
                        iD = e.d(bArr, i9, bVar);
                        if (i3 != bVar.a) {
                            return i9;
                        }
                        vVar.a(Float.intBitsToFloat(e.a(bArr, iD)));
                    }
                }
                break;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 == 2) {
                    return e.i(bArr, iD, jVarB, bVar);
                }
                if (i5 == 0) {
                    f0 f0Var = (f0) jVarB;
                    int iE = e.e(bArr, iD, bVar);
                    f0Var.a(bVar.b);
                    while (iE < i2) {
                        int iD2 = e.d(bArr, iE, bVar);
                        if (i3 != bVar.a) {
                            return iE;
                        }
                        iE = e.e(bArr, iD2, bVar);
                        f0Var.a(bVar.b);
                    }
                    return iE;
                }
                break;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i5 == 2) {
                    return e.h(bArr, iD, jVarB, bVar);
                }
                if (i5 == 0) {
                    return e.a(i3, bArr, i, i2, (y.j<?>) jVarB, bVar);
                }
                break;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 == 2) {
                    return e.d(bArr, iD, jVarB, bVar);
                }
                if (i5 == 1) {
                    f0 f0Var2 = (f0) jVarB;
                    f0Var2.a(e.b(bArr, i));
                    while (true) {
                        int i10 = iD + 8;
                        if (i10 >= i2) {
                            return i10;
                        }
                        iD = e.d(bArr, i10, bVar);
                        if (i3 != bVar.a) {
                            return i10;
                        }
                        f0Var2.a(e.b(bArr, iD));
                    }
                }
                break;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i5 == 2) {
                    return e.c(bArr, iD, jVarB, bVar);
                }
                if (i5 == 5) {
                    x xVar = (x) jVarB;
                    xVar.c(e.a(bArr, i));
                    while (true) {
                        int i11 = iD + 4;
                        if (i11 >= i2) {
                            return i11;
                        }
                        iD = e.d(bArr, i11, bVar);
                        if (i3 != bVar.a) {
                            return i11;
                        }
                        xVar.c(e.a(bArr, iD));
                    }
                }
                break;
            case 25:
            case 42:
                if (i5 == 2) {
                    return e.a(bArr, iD, (y.j<?>) jVarB, bVar);
                }
                if (i5 == 0) {
                    g gVar = (g) jVarB;
                    int iE2 = e.e(bArr, iD, bVar);
                    gVar.a(bVar.b != 0);
                    while (iE2 < i2) {
                        int iD3 = e.d(bArr, iE2, bVar);
                        if (i3 != bVar.a) {
                            return iE2;
                        }
                        iE2 = e.e(bArr, iD3, bVar);
                        gVar.a(bVar.b != 0);
                    }
                    return iE2;
                }
                break;
            case 26:
                if (i5 == 2) {
                    if ((j & 536870912) == 0) {
                        iD = e.d(bArr, iD, bVar);
                        int i12 = bVar.a;
                        if (i12 < 0) {
                            throw z.f();
                        }
                        if (i12 == 0) {
                            jVarB.add("");
                        } else {
                            jVarB.add(new String(bArr, iD, i12, y.a));
                            iD += i12;
                        }
                        while (iD < i2) {
                            int iD4 = e.d(bArr, iD, bVar);
                            if (i3 != bVar.a) {
                                break;
                            } else {
                                iD = e.d(bArr, iD4, bVar);
                                int i13 = bVar.a;
                                if (i13 < 0) {
                                    throw z.f();
                                }
                                if (i13 == 0) {
                                    jVarB.add("");
                                } else {
                                    jVarB.add(new String(bArr, iD, i13, y.a));
                                    iD += i13;
                                }
                            }
                        }
                    } else {
                        iD = e.d(bArr, iD, bVar);
                        int i14 = bVar.a;
                        if (i14 < 0) {
                            throw z.f();
                        }
                        if (i14 == 0) {
                            jVarB.add("");
                        } else {
                            int i15 = iD + i14;
                            if (!q1.b(bArr, iD, i15)) {
                                throw z.c();
                            }
                            jVarB.add(new String(bArr, iD, i14, y.a));
                            iD = i15;
                        }
                        while (iD < i2) {
                            int iD5 = e.d(bArr, iD, bVar);
                            if (i3 != bVar.a) {
                                break;
                            } else {
                                iD = e.d(bArr, iD5, bVar);
                                int i16 = bVar.a;
                                if (i16 < 0) {
                                    throw z.f();
                                }
                                if (i16 == 0) {
                                    jVarB.add("");
                                } else {
                                    int i17 = iD + i16;
                                    if (!q1.b(bArr, iD, i17)) {
                                        throw z.c();
                                    }
                                    jVarB.add(new String(bArr, iD, i16, y.a));
                                    iD = i17;
                                }
                            }
                        }
                    }
                }
                break;
            case 27:
                if (i5 == 2) {
                    return e.a(c(i6), i3, bArr, i, i2, jVarB, bVar);
                }
                break;
            case 28:
                if (i5 == 2) {
                    int iD6 = e.d(bArr, iD, bVar);
                    int i18 = bVar.a;
                    if (i18 < 0) {
                        throw z.f();
                    }
                    if (i18 > bArr.length - iD6) {
                        throw z.i();
                    }
                    if (i18 == 0) {
                        jVarB.add(i.b);
                    } else {
                        jVarB.add(i.a(bArr, iD6, i18));
                        iD6 += i18;
                    }
                    while (iD6 < i2) {
                        int iD7 = e.d(bArr, iD6, bVar);
                        if (i3 != bVar.a) {
                            return iD6;
                        }
                        iD6 = e.d(bArr, iD7, bVar);
                        int i19 = bVar.a;
                        if (i19 < 0) {
                            throw z.f();
                        }
                        if (i19 > bArr.length - iD6) {
                            throw z.i();
                        }
                        if (i19 == 0) {
                            jVarB.add(i.b);
                        } else {
                            jVarB.add(i.a(bArr, iD6, i19));
                            iD6 += i19;
                        }
                    }
                    return iD6;
                }
                break;
            case 30:
            case 44:
                if (i5 == 2) {
                    iA = e.h(bArr, iD, jVarB, bVar);
                } else if (i5 == 0) {
                    iA = e.a(i3, bArr, i, i2, (y.j<?>) jVarB, bVar);
                }
                GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) t;
                l1 l1Var = generatedMessageLite.unknownFields;
                if (l1Var == l1.f2692f) {
                    l1Var = null;
                }
                l1 l1Var2 = (l1) f1.a(i4, (List<Integer>) jVarB, a(i6), l1Var, (k1<UT, l1>) this.o);
                if (l1Var2 != null) {
                    generatedMessageLite.unknownFields = l1Var2;
                }
                return iA;
            case 33:
            case 47:
                if (i5 == 2) {
                    return e.f(bArr, iD, jVarB, bVar);
                }
                if (i5 == 0) {
                    x xVar2 = (x) jVarB;
                    int iD8 = e.d(bArr, iD, bVar);
                    xVar2.c(j.b(bVar.a));
                    while (iD8 < i2) {
                        int iD9 = e.d(bArr, iD8, bVar);
                        if (i3 != bVar.a) {
                            return iD8;
                        }
                        iD8 = e.d(bArr, iD9, bVar);
                        xVar2.c(j.b(bVar.a));
                    }
                    return iD8;
                }
                break;
            case 34:
            case 48:
                if (i5 == 2) {
                    return e.g(bArr, iD, jVarB, bVar);
                }
                if (i5 == 0) {
                    f0 f0Var3 = (f0) jVarB;
                    int iE3 = e.e(bArr, iD, bVar);
                    f0Var3.a(j.a(bVar.b));
                    while (iE3 < i2) {
                        int iD10 = e.d(bArr, iE3, bVar);
                        if (i3 != bVar.a) {
                            return iE3;
                        }
                        iE3 = e.e(bArr, iD10, bVar);
                        f0Var3.a(j.a(bVar.b));
                    }
                    return iE3;
                }
                break;
            case 49:
                if (i5 == 3) {
                    d1 d1VarC = c(i6);
                    int i20 = (i3 & (-8)) | 4;
                    iD = e.a(d1VarC, bArr, i, i2, i20, bVar);
                    jVarB.add(bVar.c);
                    while (iD < i2) {
                        int iD11 = e.d(bArr, iD, bVar);
                        if (i3 == bVar.a) {
                            iD = e.a(d1VarC, bArr, iD11, i2, i20, bVar);
                            jVarB.add(bVar.c);
                        }
                    }
                }
                break;
        }
        return iD;
    }

    public final <K, V> int a(T t, byte[] bArr, int i, int i2, int i3, long j, e.b bVar) throws IOException {
        Unsafe unsafe = s;
        Object obj = this.b[(i3 / 3) * 2];
        Object object = unsafe.getObject(t, j);
        if (this.q.d(object)) {
            Object objB = this.q.b(obj);
            this.q.a(objB, object);
            unsafe.putObject(t, j, objB);
            object = objB;
        }
        this.q.f(obj);
        this.q.c(object);
        int iD = e.d(bArr, i, bVar);
        int i4 = bVar.a;
        if (i4 < 0 || i4 > i2 - iD) {
            throw z.i();
        }
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:125:0x0393, code lost:
    
        if (r0 != r1) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x03df, code lost:
    
        if (r0 != r15) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x03e1, code lost:
    
        r10 = r30;
        r13 = r31;
        r12 = r33;
        r8 = r35;
        r11 = r36;
        r5 = r20;
        r2 = r21;
        r6 = r22;
        r9 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x03f5, code lost:
    
        r8 = r35;
        r2 = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int a(T r31, byte[] r32, int r33, int r34, int r35, com.fyber.inneractive.sdk.protobuf.e.b r36) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1272
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.protobuf.r0.a(java.lang.Object, byte[], int, int, int, com.fyber.inneractive.sdk.protobuf.e$b):int");
    }

    public final y.e a(int i) {
        return (y.e) this.b[((i / 3) * 2) + 1];
    }

    @Override // com.fyber.inneractive.sdk.protobuf.d1
    public T a() {
        return (T) this.m.a(this.f2701e);
    }

    public final <UT, UB> UB a(Object obj, int i, UB ub, k1<UT, UB> k1Var) {
        y.e eVarA;
        int[] iArr = this.a;
        int i2 = iArr[i];
        Object objG = p1.g(obj, d(iArr[i + 1]));
        if (objG == null || (eVarA = a(i)) == null) {
            return ub;
        }
        Map<?, ?> mapC = this.q.c(objG);
        this.q.f(this.b[(i / 3) * 2]);
        for (Map.Entry<?, ?> entry : mapC.entrySet()) {
            if (!eVarA.a(((Integer) entry.getValue()).intValue())) {
                if (ub == null) {
                    k1Var.a();
                }
                entry.getKey();
                entry.getValue();
                throw null;
            }
        }
        return ub;
    }

    public final void a(int i, Object obj, s1 s1Var) throws IOException {
        if (obj instanceof String) {
            ((m) s1Var).a.b(i, (String) obj);
        } else {
            ((m) s1Var).a.b(i, (i) obj);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0078, code lost:
    
        r0 = r16.k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007c, code lost:
    
        if (r0 >= r16.l) goto L356;
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007e, code lost:
    
        r13 = a(r19, r16.j[r0], r13, r17);
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0089, code lost:
    
        if (r13 == null) goto L360;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x008b, code lost:
    
        r17.b(r19, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x008e, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final <UT, UB, ET extends com.fyber.inneractive.sdk.protobuf.u.b<ET>> void a(com.fyber.inneractive.sdk.protobuf.k1<UT, UB> r17, com.fyber.inneractive.sdk.protobuf.r<ET> r18, T r19, com.fyber.inneractive.sdk.protobuf.c1 r20, com.fyber.inneractive.sdk.protobuf.q r21) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1722
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.protobuf.r0.a(com.fyber.inneractive.sdk.protobuf.k1, com.fyber.inneractive.sdk.protobuf.r, java.lang.Object, com.fyber.inneractive.sdk.protobuf.c1, com.fyber.inneractive.sdk.protobuf.q):void");
    }

    public final <K, V> void a(s1 s1Var, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            this.q.f(this.b[(i2 / 3) * 2]);
            Map<?, ?> mapA = this.q.a(obj);
            m mVar = (m) s1Var;
            mVar.a.getClass();
            Iterator<Map.Entry<?, ?>> it = mapA.entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry<?, ?> next = it.next();
                mVar.a.i(i, 2);
                next.getKey();
                next.getValue();
                throw null;
            }
        }
    }

    public final void a(Object obj, int i, c1 c1Var) throws IOException {
        if ((536870912 & i) != 0) {
            p1.a(obj, d(i), c1Var.p());
        } else if (this.f2703g) {
            p1.a(obj, d(i), c1Var.n());
        } else {
            p1.a(obj, d(i), c1Var.a());
        }
    }

    public final <E> void a(Object obj, int i, c1 c1Var, d1<E> d1Var, q qVar) throws IOException {
        c1Var.b(this.n.b(obj, d(i)), d1Var, qVar);
    }

    public final <K, V> void a(Object obj, int i, Object obj2, q qVar, c1 c1Var) throws IOException {
        long jD = d(this.a[i + 1]);
        Object objG = p1.g(obj, jD);
        if (objG == null) {
            objG = this.q.b(obj2);
            p1.a(obj, jD, objG);
        } else if (this.q.d(objG)) {
            Object objB = this.q.b(obj2);
            this.q.a(objB, objG);
            p1.a(obj, jD, objB);
            objG = objB;
        }
        Map<?, ?> mapC = this.q.c(objG);
        this.q.f(obj2);
        c1Var.a(mapC, (h0.a) null, qVar);
    }

    public final <E> void a(Object obj, long j, c1 c1Var, d1<E> d1Var, q qVar) throws IOException {
        c1Var.a(this.n.b(obj, j), d1Var, qVar);
    }

    @Override // com.fyber.inneractive.sdk.protobuf.d1
    public void a(T t, c1 c1Var, q qVar) throws IOException {
        qVar.getClass();
        a(this.o, this.p, t, c1Var, qVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:188:0x063f  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0066  */
    @Override // com.fyber.inneractive.sdk.protobuf.d1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(T r18, com.fyber.inneractive.sdk.protobuf.s1 r19) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 3152
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.protobuf.r0.a(java.lang.Object, com.fyber.inneractive.sdk.protobuf.s1):void");
    }

    @Override // com.fyber.inneractive.sdk.protobuf.d1
    public void a(T t, T t2) {
        t2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.a;
            if (i >= iArr.length) {
                k1<?, ?> k1Var = this.o;
                Class<?> cls = f1.a;
                k1Var.c(t, k1Var.a(k1Var.b(t), k1Var.b(t2)));
                if (this.f2702f) {
                    r<?> rVar = this.p;
                    u<T> uVarA = rVar.a(t2);
                    if (uVarA.a.isEmpty()) {
                        return;
                    }
                    rVar.b(t).a((u) uVarA);
                    return;
                }
                return;
            }
            int i2 = iArr[i + 1];
            long jD = d(i2);
            int i3 = this.a[i];
            switch (f(i2)) {
                case 0:
                    if (a((Object) t2, i)) {
                        p1.d dVar = p1.f2697e;
                        dVar.a(t, jD, dVar.c(t2, jD));
                        b((Object) t, i);
                    }
                    break;
                case 1:
                    if (a((Object) t2, i)) {
                        p1.d dVar2 = p1.f2697e;
                        dVar2.a((Object) t, jD, dVar2.d(t2, jD));
                        b((Object) t, i);
                    }
                    break;
                case 2:
                    if (a((Object) t2, i)) {
                        p1.a((Object) t, jD, p1.f(t2, jD));
                        b((Object) t, i);
                    }
                    break;
                case 3:
                    if (a((Object) t2, i)) {
                        p1.a((Object) t, jD, p1.f(t2, jD));
                        b((Object) t, i);
                    }
                    break;
                case 4:
                    if (a((Object) t2, i)) {
                        p1.a((Object) t, jD, p1.e(t2, jD));
                        b((Object) t, i);
                    }
                    break;
                case 5:
                    if (a((Object) t2, i)) {
                        p1.a((Object) t, jD, p1.f(t2, jD));
                        b((Object) t, i);
                    }
                    break;
                case 6:
                    if (a((Object) t2, i)) {
                        p1.a((Object) t, jD, p1.e(t2, jD));
                        b((Object) t, i);
                    }
                    break;
                case 7:
                    if (a((Object) t2, i)) {
                        p1.d dVar3 = p1.f2697e;
                        dVar3.a(t, jD, dVar3.a(t2, jD));
                        b((Object) t, i);
                    }
                    break;
                case 8:
                    if (a((Object) t2, i)) {
                        p1.a(t, jD, p1.g(t2, jD));
                        b((Object) t, i);
                    }
                    break;
                case 9:
                    a(t, t2, i);
                    break;
                case 10:
                    if (a((Object) t2, i)) {
                        p1.a(t, jD, p1.g(t2, jD));
                        b((Object) t, i);
                    }
                    break;
                case 11:
                    if (a((Object) t2, i)) {
                        p1.a((Object) t, jD, p1.e(t2, jD));
                        b((Object) t, i);
                    }
                    break;
                case 12:
                    if (a((Object) t2, i)) {
                        p1.a((Object) t, jD, p1.e(t2, jD));
                        b((Object) t, i);
                    }
                    break;
                case 13:
                    if (a((Object) t2, i)) {
                        p1.a((Object) t, jD, p1.e(t2, jD));
                        b((Object) t, i);
                    }
                    break;
                case 14:
                    if (a((Object) t2, i)) {
                        p1.a((Object) t, jD, p1.f(t2, jD));
                        b((Object) t, i);
                    }
                    break;
                case 15:
                    if (a((Object) t2, i)) {
                        p1.a((Object) t, jD, p1.e(t2, jD));
                        b((Object) t, i);
                    }
                    break;
                case 16:
                    if (a((Object) t2, i)) {
                        p1.a((Object) t, jD, p1.f(t2, jD));
                        b((Object) t, i);
                    }
                    break;
                case 17:
                    a(t, t2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.n.a(t, t2, jD);
                    break;
                case 50:
                    j0 j0Var = this.q;
                    Class<?> cls2 = f1.a;
                    p1.a(t, jD, j0Var.a(p1.g(t, jD), p1.g(t2, jD)));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (a(t2, i3, i)) {
                        p1.a(t, jD, p1.g(t2, jD));
                        b(t, i3, i);
                    }
                    break;
                case 60:
                    b(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (a(t2, i3, i)) {
                        p1.a(t, jD, p1.g(t2, jD));
                        b(t, i3, i);
                    }
                    break;
                case 68:
                    b(t, t2, i);
                    break;
            }
            i += 3;
        }
    }

    public final void a(T t, T t2, int i) {
        long jD = d(this.a[i + 1]);
        if (a((Object) t2, i)) {
            Object objG = p1.g(t, jD);
            Object objG2 = p1.g(t2, jD);
            if (objG != null && objG2 != null) {
                p1.a(t, jD, y.a(objG, objG2));
                b((Object) t, i);
            } else if (objG2 != null) {
                p1.a(t, jD, objG2);
                b((Object) t, i);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:111:0x02b2, code lost:
    
        if (r0 != r5) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0308, code lost:
    
        if (r0 != r15) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x030a, code lost:
    
        r2 = r20;
        r6 = r24;
        r7 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0311, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:34:0x009f. Please report as an issue. */
    @Override // com.fyber.inneractive.sdk.protobuf.d1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(T r31, byte[] r32, int r33, int r34, com.fyber.inneractive.sdk.protobuf.e.b r35) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 908
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.protobuf.r0.a(java.lang.Object, byte[], int, int, com.fyber.inneractive.sdk.protobuf.e$b):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ad  */
    @Override // com.fyber.inneractive.sdk.protobuf.d1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean a(T r14) {
        /*
            Method dump skipped, instruction units count: 275
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.protobuf.r0.a(java.lang.Object):boolean");
    }

    public final boolean a(T t, int i) {
        int[] iArr = this.a;
        int i2 = iArr[i + 2];
        long j = 1048575 & i2;
        if (j != 1048575) {
            return (p1.e(t, j) & (1 << (i2 >>> 20))) != 0;
        }
        int i3 = iArr[i + 1];
        long jD = d(i3);
        switch (f(i3)) {
            case 0:
                return p1.f2697e.c(t, jD) != 0.0d;
            case 1:
                return p1.f2697e.d(t, jD) != 0.0f;
            case 2:
                return p1.f(t, jD) != 0;
            case 3:
                return p1.f(t, jD) != 0;
            case 4:
                return p1.e(t, jD) != 0;
            case 5:
                return p1.f(t, jD) != 0;
            case 6:
                return p1.e(t, jD) != 0;
            case 7:
                return p1.f2697e.a(t, jD);
            case 8:
                Object objG = p1.g(t, jD);
                if (objG instanceof String) {
                    return !((String) objG).isEmpty();
                }
                if (objG instanceof i) {
                    return !i.b.equals(objG);
                }
                throw new IllegalArgumentException();
            case 9:
                return p1.g(t, jD) != null;
            case 10:
                return !i.b.equals(p1.g(t, jD));
            case 11:
                return p1.e(t, jD) != 0;
            case 12:
                return p1.e(t, jD) != 0;
            case 13:
                return p1.e(t, jD) != 0;
            case 14:
                return p1.f(t, jD) != 0;
            case 15:
                return p1.e(t, jD) != 0;
            case 16:
                return p1.f(t, jD) != 0;
            case 17:
                return p1.g(t, jD) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    public final boolean a(T t, int i, int i2) {
        return p1.e(t, (long) (this.a[i2 + 2] & 1048575)) == i;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:256:0x057b. Please report as an issue. */
    @Override // com.fyber.inneractive.sdk.protobuf.d1
    public int b(T t) {
        int iC;
        int iD;
        int i;
        int i2;
        int i3;
        int iA;
        int iB;
        int iA2;
        int iD2;
        int iC2;
        int iB2;
        int iC3;
        int iA3;
        int iA4;
        int iA5;
        int iC4;
        int iB3;
        int iC5;
        int i4 = 1048575;
        int i5 = 1;
        if (this.h) {
            Unsafe unsafe = s;
            iC = 0;
            for (int i6 = 0; i6 < this.a.length; i6 += 3) {
                int iG = g(i6);
                int iF = f(iG);
                int i7 = this.a[i6];
                long jD = d(iG);
                int i8 = (iF < FieldType.DOUBLE_LIST_PACKED.id() || iF > FieldType.SINT64_LIST_PACKED.id()) ? 0 : this.a[i6 + 2] & 1048575;
                switch (iF) {
                    case 0:
                        if (a((Object) t, i6)) {
                            iA4 = l.a(i7, 0.0d);
                            iA5 = iA4;
                            iC += iA5;
                        }
                        break;
                    case 1:
                        if (a((Object) t, i6)) {
                            iA5 = l.a(i7, 0.0f);
                            iC += iA5;
                        }
                        break;
                    case 2:
                        if (a((Object) t, i6)) {
                            iA5 = l.b(i7, p1.f(t, jD));
                            iC += iA5;
                        }
                        break;
                    case 3:
                        if (a((Object) t, i6)) {
                            iA5 = l.e(i7, p1.f(t, jD));
                            iC += iA5;
                        }
                        break;
                    case 4:
                        if (a((Object) t, i6)) {
                            iA5 = l.c(i7, p1.e(t, jD));
                            iC += iA5;
                        }
                        break;
                    case 5:
                        if (a((Object) t, i6)) {
                            iA5 = l.a(i7, 0L);
                            iC += iA5;
                        }
                        break;
                    case 6:
                        if (a((Object) t, i6)) {
                            iA5 = l.b(i7, 0);
                            iC += iA5;
                        }
                        break;
                    case 7:
                        if (a((Object) t, i6)) {
                            iA5 = l.a(i7, true);
                            iC += iA5;
                        }
                        break;
                    case 8:
                        if (a((Object) t, i6)) {
                            Object objG = p1.g(t, jD);
                            iA5 = objG instanceof i ? l.a(i7, (i) objG) : l.a(i7, (String) objG);
                            iC += iA5;
                        }
                        break;
                    case 9:
                        if (a((Object) t, i6)) {
                            iA5 = f1.a(i7, p1.g(t, jD), c(i6));
                            iC += iA5;
                        }
                        break;
                    case 10:
                        if (a((Object) t, i6)) {
                            iA5 = l.a(i7, (i) p1.g(t, jD));
                            iC += iA5;
                        }
                        break;
                    case 11:
                        if (a((Object) t, i6)) {
                            iA5 = l.f(i7, p1.e(t, jD));
                            iC += iA5;
                        }
                        break;
                    case 12:
                        if (a((Object) t, i6)) {
                            iA5 = l.a(i7, p1.e(t, jD));
                            iC += iA5;
                        }
                        break;
                    case 13:
                        if (a((Object) t, i6)) {
                            iA5 = l.d(i7, 0);
                            iC += iA5;
                        }
                        break;
                    case 14:
                        if (a((Object) t, i6)) {
                            iA5 = l.c(i7, 0L);
                            iC += iA5;
                        }
                        break;
                    case 15:
                        if (a((Object) t, i6)) {
                            iA5 = l.e(i7, p1.e(t, jD));
                            iC += iA5;
                        }
                        break;
                    case 16:
                        if (a((Object) t, i6)) {
                            iA5 = l.d(i7, p1.f(t, jD));
                            iC += iA5;
                        }
                        break;
                    case 17:
                        if (a((Object) t, i6)) {
                            iA5 = l.a(i7, (o0) p1.g(t, jD), c(i6));
                            iC += iA5;
                        }
                        break;
                    case 18:
                        iA5 = f1.d(i7, (List) p1.g(t, jD), false);
                        iC += iA5;
                        break;
                    case 19:
                        iA5 = f1.c(i7, (List) p1.g(t, jD), false);
                        iC += iA5;
                        break;
                    case 20:
                        iA5 = f1.f(i7, (List) p1.g(t, jD), false);
                        iC += iA5;
                        break;
                    case 21:
                        iA5 = f1.j(i7, (List) p1.g(t, jD), false);
                        iC += iA5;
                        break;
                    case 22:
                        iA5 = f1.e(i7, (List) p1.g(t, jD), false);
                        iC += iA5;
                        break;
                    case 23:
                        iA5 = f1.d(i7, (List) p1.g(t, jD), false);
                        iC += iA5;
                        break;
                    case 24:
                        iA5 = f1.c(i7, (List) p1.g(t, jD), false);
                        iC += iA5;
                        break;
                    case 25:
                        iA5 = f1.a(i7, (List<?>) p1.g(t, jD), false);
                        iC += iA5;
                        break;
                    case 26:
                        iA5 = f1.b(i7, (List) p1.g(t, jD));
                        iC += iA5;
                        break;
                    case 27:
                        iA5 = f1.b(i7, (List<?>) p1.g(t, jD), c(i6));
                        iC += iA5;
                        break;
                    case 28:
                        iA5 = f1.a(i7, (List<i>) p1.g(t, jD));
                        iC += iA5;
                        break;
                    case 29:
                        iA5 = f1.i(i7, (List) p1.g(t, jD), false);
                        iC += iA5;
                        break;
                    case 30:
                        iA5 = f1.b(i7, (List<Integer>) p1.g(t, jD), false);
                        iC += iA5;
                        break;
                    case 31:
                        iA5 = f1.c(i7, (List) p1.g(t, jD), false);
                        iC += iA5;
                        break;
                    case 32:
                        iA5 = f1.d(i7, (List) p1.g(t, jD), false);
                        iC += iA5;
                        break;
                    case 33:
                        iA5 = f1.g(i7, (List) p1.g(t, jD), false);
                        iC += iA5;
                        break;
                    case 34:
                        iA5 = f1.h(i7, (List) p1.g(t, jD), false);
                        iC += iA5;
                        break;
                    case 35:
                        iC4 = f1.c((List) unsafe.getObject(t, jD));
                        if (iC4 > 0) {
                            if (this.i) {
                                unsafe.putInt(t, i8, iC4);
                            }
                            iB3 = l.b(i7);
                            iC5 = l.c(iC4);
                            iA5 = iC4 + iB3 + iC5;
                            iC += iA5;
                        }
                        break;
                    case 36:
                        iC4 = f1.b((List) unsafe.getObject(t, jD));
                        if (iC4 > 0) {
                            if (this.i) {
                                unsafe.putInt(t, i8, iC4);
                            }
                            iB3 = l.b(i7);
                            iC5 = l.c(iC4);
                            iA5 = iC4 + iB3 + iC5;
                            iC += iA5;
                        }
                        break;
                    case 37:
                        iC4 = f1.e((List) unsafe.getObject(t, jD));
                        if (iC4 > 0) {
                            if (this.i) {
                                unsafe.putInt(t, i8, iC4);
                            }
                            iB3 = l.b(i7);
                            iC5 = l.c(iC4);
                            iA5 = iC4 + iB3 + iC5;
                            iC += iA5;
                        }
                        break;
                    case 38:
                        iC4 = f1.i((List) unsafe.getObject(t, jD));
                        if (iC4 > 0) {
                            if (this.i) {
                                unsafe.putInt(t, i8, iC4);
                            }
                            iB3 = l.b(i7);
                            iC5 = l.c(iC4);
                            iA5 = iC4 + iB3 + iC5;
                            iC += iA5;
                        }
                        break;
                    case 39:
                        iC4 = f1.d((List) unsafe.getObject(t, jD));
                        if (iC4 > 0) {
                            if (this.i) {
                                unsafe.putInt(t, i8, iC4);
                            }
                            iB3 = l.b(i7);
                            iC5 = l.c(iC4);
                            iA5 = iC4 + iB3 + iC5;
                            iC += iA5;
                        }
                        break;
                    case 40:
                        iC4 = f1.c((List) unsafe.getObject(t, jD));
                        if (iC4 > 0) {
                            if (this.i) {
                                unsafe.putInt(t, i8, iC4);
                            }
                            iB3 = l.b(i7);
                            iC5 = l.c(iC4);
                            iA5 = iC4 + iB3 + iC5;
                            iC += iA5;
                        }
                        break;
                    case 41:
                        iC4 = f1.b((List) unsafe.getObject(t, jD));
                        if (iC4 > 0) {
                            if (this.i) {
                                unsafe.putInt(t, i8, iC4);
                            }
                            iB3 = l.b(i7);
                            iC5 = l.c(iC4);
                            iA5 = iC4 + iB3 + iC5;
                            iC += iA5;
                        }
                        break;
                    case 42:
                        List list = (List) unsafe.getObject(t, jD);
                        Class<?> cls = f1.a;
                        iC4 = list.size();
                        if (iC4 > 0) {
                            if (this.i) {
                                unsafe.putInt(t, i8, iC4);
                            }
                            iB3 = l.b(i7);
                            iC5 = l.c(iC4);
                            iA5 = iC4 + iB3 + iC5;
                            iC += iA5;
                        }
                        break;
                    case 43:
                        iC4 = f1.h((List) unsafe.getObject(t, jD));
                        if (iC4 > 0) {
                            if (this.i) {
                                unsafe.putInt(t, i8, iC4);
                            }
                            iB3 = l.b(i7);
                            iC5 = l.c(iC4);
                            iA5 = iC4 + iB3 + iC5;
                            iC += iA5;
                        }
                        break;
                    case 44:
                        iC4 = f1.a((List<Integer>) unsafe.getObject(t, jD));
                        if (iC4 > 0) {
                            if (this.i) {
                                unsafe.putInt(t, i8, iC4);
                            }
                            iB3 = l.b(i7);
                            iC5 = l.c(iC4);
                            iA5 = iC4 + iB3 + iC5;
                            iC += iA5;
                        }
                        break;
                    case 45:
                        iC4 = f1.b((List) unsafe.getObject(t, jD));
                        if (iC4 > 0) {
                            if (this.i) {
                                unsafe.putInt(t, i8, iC4);
                            }
                            iB3 = l.b(i7);
                            iC5 = l.c(iC4);
                            iA5 = iC4 + iB3 + iC5;
                            iC += iA5;
                        }
                        break;
                    case 46:
                        iC4 = f1.c((List) unsafe.getObject(t, jD));
                        if (iC4 > 0) {
                            if (this.i) {
                                unsafe.putInt(t, i8, iC4);
                            }
                            iB3 = l.b(i7);
                            iC5 = l.c(iC4);
                            iA5 = iC4 + iB3 + iC5;
                            iC += iA5;
                        }
                        break;
                    case 47:
                        iC4 = f1.f((List) unsafe.getObject(t, jD));
                        if (iC4 > 0) {
                            if (this.i) {
                                unsafe.putInt(t, i8, iC4);
                            }
                            iB3 = l.b(i7);
                            iC5 = l.c(iC4);
                            iA5 = iC4 + iB3 + iC5;
                            iC += iA5;
                        }
                        break;
                    case 48:
                        iC4 = f1.g((List) unsafe.getObject(t, jD));
                        if (iC4 > 0) {
                            if (this.i) {
                                unsafe.putInt(t, i8, iC4);
                            }
                            iB3 = l.b(i7);
                            iC5 = l.c(iC4);
                            iA5 = iC4 + iB3 + iC5;
                            iC += iA5;
                        }
                        break;
                    case 49:
                        iA5 = f1.a(i7, (List<o0>) p1.g(t, jD), c(i6));
                        iC += iA5;
                        break;
                    case 50:
                        iA5 = this.q.a(i7, p1.g(t, jD), b(i6));
                        iC += iA5;
                        break;
                    case 51:
                        if (a(t, i7, i6)) {
                            iA4 = l.a(i7, 0.0d);
                            iA5 = iA4;
                            iC += iA5;
                        }
                        break;
                    case 52:
                        if (a(t, i7, i6)) {
                            iA5 = l.a(i7, 0.0f);
                            iC += iA5;
                        }
                        break;
                    case 53:
                        if (a(t, i7, i6)) {
                            iA5 = l.b(i7, e(t, jD));
                            iC += iA5;
                        }
                        break;
                    case 54:
                        if (a(t, i7, i6)) {
                            iA5 = l.e(i7, e(t, jD));
                            iC += iA5;
                        }
                        break;
                    case 55:
                        if (a(t, i7, i6)) {
                            iA5 = l.c(i7, d(t, jD));
                            iC += iA5;
                        }
                        break;
                    case 56:
                        if (a(t, i7, i6)) {
                            iA5 = l.a(i7, 0L);
                            iC += iA5;
                        }
                        break;
                    case 57:
                        if (a(t, i7, i6)) {
                            iA5 = l.b(i7, 0);
                            iC += iA5;
                        }
                        break;
                    case 58:
                        if (a(t, i7, i6)) {
                            iA5 = l.a(i7, true);
                            iC += iA5;
                        }
                        break;
                    case 59:
                        if (a(t, i7, i6)) {
                            Object objG2 = p1.g(t, jD);
                            iA5 = objG2 instanceof i ? l.a(i7, (i) objG2) : l.a(i7, (String) objG2);
                            iC += iA5;
                        }
                        break;
                    case 60:
                        if (a(t, i7, i6)) {
                            iA5 = f1.a(i7, p1.g(t, jD), c(i6));
                            iC += iA5;
                        }
                        break;
                    case 61:
                        if (a(t, i7, i6)) {
                            iA5 = l.a(i7, (i) p1.g(t, jD));
                            iC += iA5;
                        }
                        break;
                    case 62:
                        if (a(t, i7, i6)) {
                            iA5 = l.f(i7, d(t, jD));
                            iC += iA5;
                        }
                        break;
                    case 63:
                        if (a(t, i7, i6)) {
                            iA5 = l.a(i7, d(t, jD));
                            iC += iA5;
                        }
                        break;
                    case 64:
                        if (a(t, i7, i6)) {
                            iA5 = l.d(i7, 0);
                            iC += iA5;
                        }
                        break;
                    case 65:
                        if (a(t, i7, i6)) {
                            iA5 = l.c(i7, 0L);
                            iC += iA5;
                        }
                        break;
                    case 66:
                        if (a(t, i7, i6)) {
                            iA5 = l.e(i7, d(t, jD));
                            iC += iA5;
                        }
                        break;
                    case 67:
                        if (a(t, i7, i6)) {
                            iA5 = l.d(i7, e(t, jD));
                            iC += iA5;
                        }
                        break;
                    case 68:
                        if (a(t, i7, i6)) {
                            iA5 = l.a(i7, (o0) p1.g(t, jD), c(i6));
                            iC += iA5;
                        }
                        break;
                }
            }
            k1<?, ?> k1Var = this.o;
            iD = k1Var.c(k1Var.b(t));
        } else {
            Unsafe unsafe2 = s;
            int i9 = 0;
            int i10 = 0;
            int i11 = 1048575;
            int i12 = 0;
            while (i9 < this.a.length) {
                int iG2 = g(i9);
                int i13 = this.a[i9];
                int iF2 = f(iG2);
                if (iF2 <= 17) {
                    i = this.a[i9 + 2];
                    int i14 = i & i4;
                    i2 = i5 << (i >>> 20);
                    if (i14 != i11) {
                        i12 = unsafe2.getInt(t, i14);
                        i11 = i14;
                    }
                } else {
                    i = (!this.i || iF2 < FieldType.DOUBLE_LIST_PACKED.id() || iF2 > FieldType.SINT64_LIST_PACKED.id()) ? 0 : this.a[i9 + 2] & i4;
                    i2 = 0;
                }
                long jD2 = d(iG2);
                switch (iF2) {
                    case 0:
                        i3 = i11;
                        if ((i12 & i2) != 0) {
                            iA = l.a(i13, 0.0d);
                            i10 += iA;
                        }
                        break;
                    case 1:
                        i3 = i11;
                        if ((i12 & i2) != 0) {
                            iA = l.a(i13, 0.0f);
                            i10 += iA;
                        }
                        break;
                    case 2:
                        i3 = i11;
                        if ((i12 & i2) != 0) {
                            iB = l.b(i13, unsafe2.getLong(t, jD2));
                            iA = iB;
                            i10 += iA;
                        }
                        break;
                    case 3:
                        i3 = i11;
                        if ((i12 & i2) != 0) {
                            iB = l.e(i13, unsafe2.getLong(t, jD2));
                            iA = iB;
                            i10 += iA;
                        }
                        break;
                    case 4:
                        i3 = i11;
                        if ((i12 & i2) != 0) {
                            iB = l.c(i13, unsafe2.getInt(t, jD2));
                            iA = iB;
                            i10 += iA;
                        }
                        break;
                    case 5:
                        i3 = i11;
                        if ((i12 & i2) != 0) {
                            iB = l.a(i13, 0L);
                            iA = iB;
                            i10 += iA;
                        }
                        break;
                    case 6:
                        i3 = i11;
                        if ((i12 & i2) != 0) {
                            iB = l.b(i13, 0);
                            iA = iB;
                            i10 += iA;
                        }
                        break;
                    case 7:
                        i3 = i11;
                        if ((i12 & i2) != 0) {
                            iA = l.a(i13, true);
                            i10 += iA;
                        }
                        break;
                    case 8:
                        i3 = i11;
                        if ((i12 & i2) != 0) {
                            Object object = unsafe2.getObject(t, jD2);
                            iA2 = object instanceof i ? l.a(i13, (i) object) : l.a(i13, (String) object);
                            iA = iA2;
                            i10 += iA;
                        }
                        break;
                    case 9:
                        i3 = i11;
                        if ((i12 & i2) != 0) {
                            iA2 = f1.a(i13, unsafe2.getObject(t, jD2), c(i9));
                            iA = iA2;
                            i10 += iA;
                        }
                        break;
                    case 10:
                        i3 = i11;
                        if ((i12 & i2) != 0) {
                            iA2 = l.a(i13, (i) unsafe2.getObject(t, jD2));
                            iA = iA2;
                            i10 += iA;
                        }
                        break;
                    case 11:
                        i3 = i11;
                        if ((i12 & i2) != 0) {
                            iA2 = l.f(i13, unsafe2.getInt(t, jD2));
                            iA = iA2;
                            i10 += iA;
                        }
                        break;
                    case 12:
                        i3 = i11;
                        if ((i12 & i2) != 0) {
                            iA2 = l.a(i13, unsafe2.getInt(t, jD2));
                            iA = iA2;
                            i10 += iA;
                        }
                        break;
                    case 13:
                        i3 = i11;
                        if ((i12 & i2) != 0) {
                            iA = l.d(i13, 0);
                            i10 += iA;
                        }
                        break;
                    case 14:
                        i3 = i11;
                        if ((i12 & i2) != 0) {
                            iA2 = l.c(i13, 0L);
                            iA = iA2;
                            i10 += iA;
                        }
                        break;
                    case 15:
                        i3 = i11;
                        if ((i12 & i2) != 0) {
                            iA2 = l.e(i13, unsafe2.getInt(t, jD2));
                            iA = iA2;
                            i10 += iA;
                        }
                        break;
                    case 16:
                        i3 = i11;
                        if ((i12 & i2) != 0) {
                            iA2 = l.d(i13, unsafe2.getLong(t, jD2));
                            iA = iA2;
                            i10 += iA;
                        }
                        break;
                    case 17:
                        i3 = i11;
                        if ((i12 & i2) != 0) {
                            iA2 = l.a(i13, (o0) unsafe2.getObject(t, jD2), c(i9));
                            iA = iA2;
                            i10 += iA;
                        }
                        break;
                    case 18:
                        i3 = i11;
                        iD2 = f1.d(i13, (List) unsafe2.getObject(t, jD2), false);
                        iA = iD2;
                        i10 += iA;
                        break;
                    case 19:
                        i3 = i11;
                        iD2 = f1.c(i13, (List) unsafe2.getObject(t, jD2), false);
                        iA = iD2;
                        i10 += iA;
                        break;
                    case 20:
                        i3 = i11;
                        iD2 = f1.f(i13, (List) unsafe2.getObject(t, jD2), false);
                        iA = iD2;
                        i10 += iA;
                        break;
                    case 21:
                        i3 = i11;
                        iD2 = f1.j(i13, (List) unsafe2.getObject(t, jD2), false);
                        iA = iD2;
                        i10 += iA;
                        break;
                    case 22:
                        i3 = i11;
                        iD2 = f1.e(i13, (List) unsafe2.getObject(t, jD2), false);
                        iA = iD2;
                        i10 += iA;
                        break;
                    case 23:
                        i3 = i11;
                        iD2 = f1.d(i13, (List) unsafe2.getObject(t, jD2), false);
                        iA = iD2;
                        i10 += iA;
                        break;
                    case 24:
                        i3 = i11;
                        iD2 = f1.c(i13, (List) unsafe2.getObject(t, jD2), false);
                        iA = iD2;
                        i10 += iA;
                        break;
                    case 25:
                        i3 = i11;
                        iD2 = f1.a(i13, (List<?>) unsafe2.getObject(t, jD2), false);
                        iA = iD2;
                        i10 += iA;
                        break;
                    case 26:
                        i3 = i11;
                        iA2 = f1.b(i13, (List) unsafe2.getObject(t, jD2));
                        iA = iA2;
                        i10 += iA;
                        break;
                    case 27:
                        i3 = i11;
                        iA2 = f1.b(i13, (List<?>) unsafe2.getObject(t, jD2), c(i9));
                        iA = iA2;
                        i10 += iA;
                        break;
                    case 28:
                        i3 = i11;
                        iA2 = f1.a(i13, (List<i>) unsafe2.getObject(t, jD2));
                        iA = iA2;
                        i10 += iA;
                        break;
                    case 29:
                        i3 = i11;
                        iD2 = f1.i(i13, (List) unsafe2.getObject(t, jD2), false);
                        iA = iD2;
                        i10 += iA;
                        break;
                    case 30:
                        i3 = i11;
                        iD2 = f1.b(i13, (List<Integer>) unsafe2.getObject(t, jD2), false);
                        iA = iD2;
                        i10 += iA;
                        break;
                    case 31:
                        i3 = i11;
                        iD2 = f1.c(i13, (List) unsafe2.getObject(t, jD2), false);
                        iA = iD2;
                        i10 += iA;
                        break;
                    case 32:
                        i3 = i11;
                        iD2 = f1.d(i13, (List) unsafe2.getObject(t, jD2), false);
                        iA = iD2;
                        i10 += iA;
                        break;
                    case 33:
                        i3 = i11;
                        iD2 = f1.g(i13, (List) unsafe2.getObject(t, jD2), false);
                        iA = iD2;
                        i10 += iA;
                        break;
                    case 34:
                        i3 = i11;
                        iD2 = f1.h(i13, (List) unsafe2.getObject(t, jD2), false);
                        iA = iD2;
                        i10 += iA;
                        break;
                    case 35:
                        i3 = i11;
                        iC2 = f1.c((List) unsafe2.getObject(t, jD2));
                        if (iC2 > 0) {
                            if (this.i) {
                                unsafe2.putInt(t, i, iC2);
                            }
                            iB2 = l.b(i13);
                            iC3 = l.c(iC2);
                            iA2 = iB2 + iC3 + iC2;
                            iA = iA2;
                            i10 += iA;
                        }
                        break;
                    case 36:
                        i3 = i11;
                        iC2 = f1.b((List) unsafe2.getObject(t, jD2));
                        if (iC2 > 0) {
                            if (this.i) {
                                unsafe2.putInt(t, i, iC2);
                            }
                            iB2 = l.b(i13);
                            iC3 = l.c(iC2);
                            iA2 = iB2 + iC3 + iC2;
                            iA = iA2;
                            i10 += iA;
                        }
                        break;
                    case 37:
                        i3 = i11;
                        iC2 = f1.e((List) unsafe2.getObject(t, jD2));
                        if (iC2 > 0) {
                            if (this.i) {
                                unsafe2.putInt(t, i, iC2);
                            }
                            iB2 = l.b(i13);
                            iC3 = l.c(iC2);
                            iA2 = iB2 + iC3 + iC2;
                            iA = iA2;
                            i10 += iA;
                        }
                        break;
                    case 38:
                        i3 = i11;
                        iC2 = f1.i((List) unsafe2.getObject(t, jD2));
                        if (iC2 > 0) {
                            if (this.i) {
                                unsafe2.putInt(t, i, iC2);
                            }
                            iB2 = l.b(i13);
                            iC3 = l.c(iC2);
                            iA2 = iB2 + iC3 + iC2;
                            iA = iA2;
                            i10 += iA;
                        }
                        break;
                    case 39:
                        i3 = i11;
                        iC2 = f1.d((List) unsafe2.getObject(t, jD2));
                        if (iC2 > 0) {
                            if (this.i) {
                                unsafe2.putInt(t, i, iC2);
                            }
                            iB2 = l.b(i13);
                            iC3 = l.c(iC2);
                            iA2 = iB2 + iC3 + iC2;
                            iA = iA2;
                            i10 += iA;
                        }
                        break;
                    case 40:
                        i3 = i11;
                        iC2 = f1.c((List) unsafe2.getObject(t, jD2));
                        if (iC2 > 0) {
                            if (this.i) {
                                unsafe2.putInt(t, i, iC2);
                            }
                            iB2 = l.b(i13);
                            iC3 = l.c(iC2);
                            iA2 = iB2 + iC3 + iC2;
                            iA = iA2;
                            i10 += iA;
                        }
                        break;
                    case 41:
                        i3 = i11;
                        iC2 = f1.b((List) unsafe2.getObject(t, jD2));
                        if (iC2 > 0) {
                            if (this.i) {
                                unsafe2.putInt(t, i, iC2);
                            }
                            iB2 = l.b(i13);
                            iC3 = l.c(iC2);
                            iA2 = iB2 + iC3 + iC2;
                            iA = iA2;
                            i10 += iA;
                        }
                        break;
                    case 42:
                        i3 = i11;
                        List list2 = (List) unsafe2.getObject(t, jD2);
                        Class<?> cls2 = f1.a;
                        iC2 = list2.size();
                        if (iC2 > 0) {
                            if (this.i) {
                                unsafe2.putInt(t, i, iC2);
                            }
                            iB2 = l.b(i13);
                            iC3 = l.c(iC2);
                            iA2 = iB2 + iC3 + iC2;
                            iA = iA2;
                            i10 += iA;
                        }
                        break;
                    case 43:
                        i3 = i11;
                        iC2 = f1.h((List) unsafe2.getObject(t, jD2));
                        if (iC2 > 0) {
                            if (this.i) {
                                unsafe2.putInt(t, i, iC2);
                            }
                            iB2 = l.b(i13);
                            iC3 = l.c(iC2);
                            iA2 = iB2 + iC3 + iC2;
                            iA = iA2;
                            i10 += iA;
                        }
                        break;
                    case 44:
                        i3 = i11;
                        iC2 = f1.a((List<Integer>) unsafe2.getObject(t, jD2));
                        if (iC2 > 0) {
                            if (this.i) {
                                unsafe2.putInt(t, i, iC2);
                            }
                            iB2 = l.b(i13);
                            iC3 = l.c(iC2);
                            iA2 = iB2 + iC3 + iC2;
                            iA = iA2;
                            i10 += iA;
                        }
                        break;
                    case 45:
                        i3 = i11;
                        iC2 = f1.b((List) unsafe2.getObject(t, jD2));
                        if (iC2 > 0) {
                            if (this.i) {
                                unsafe2.putInt(t, i, iC2);
                            }
                            iB2 = l.b(i13);
                            iC3 = l.c(iC2);
                            iA2 = iB2 + iC3 + iC2;
                            iA = iA2;
                            i10 += iA;
                        }
                        break;
                    case 46:
                        i3 = i11;
                        iC2 = f1.c((List) unsafe2.getObject(t, jD2));
                        if (iC2 > 0) {
                            if (this.i) {
                                unsafe2.putInt(t, i, iC2);
                            }
                            iB2 = l.b(i13);
                            iC3 = l.c(iC2);
                            iA2 = iB2 + iC3 + iC2;
                            iA = iA2;
                            i10 += iA;
                        }
                        break;
                    case 47:
                        i3 = i11;
                        iC2 = f1.f((List) unsafe2.getObject(t, jD2));
                        if (iC2 > 0) {
                            if (this.i) {
                                unsafe2.putInt(t, i, iC2);
                            }
                            iB2 = l.b(i13);
                            iC3 = l.c(iC2);
                            iA2 = iB2 + iC3 + iC2;
                            iA = iA2;
                            i10 += iA;
                        }
                        break;
                    case 48:
                        iC2 = f1.g((List) unsafe2.getObject(t, jD2));
                        if (iC2 > 0) {
                            i3 = i11;
                            if (this.i) {
                                unsafe2.putInt(t, i, iC2);
                            }
                            iB2 = l.b(i13);
                            iC3 = l.c(iC2);
                            iA2 = iB2 + iC3 + iC2;
                            iA = iA2;
                            i10 += iA;
                        } else {
                            i3 = i11;
                        }
                        break;
                    case 49:
                        iA3 = f1.a(i13, (List<o0>) unsafe2.getObject(t, jD2), c(i9));
                        i3 = i11;
                        iA = iA3;
                        i10 += iA;
                        break;
                    case 50:
                        iA3 = this.q.a(i13, unsafe2.getObject(t, jD2), b(i9));
                        i3 = i11;
                        iA = iA3;
                        i10 += iA;
                        break;
                    case 51:
                        if (a(t, i13, i9)) {
                            iA3 = l.a(i13, 0.0d);
                            i3 = i11;
                            iA = iA3;
                            i10 += iA;
                        } else {
                            i3 = i11;
                        }
                        break;
                    case 52:
                        if (a(t, i13, i9)) {
                            iB = l.a(i13, 0.0f);
                            i3 = i11;
                            iA = iB;
                            i10 += iA;
                        } else {
                            i3 = i11;
                        }
                        break;
                    case 53:
                        if (a(t, i13, i9)) {
                            iA3 = l.b(i13, e(t, jD2));
                            i3 = i11;
                            iA = iA3;
                            i10 += iA;
                        } else {
                            i3 = i11;
                        }
                        break;
                    case 54:
                        if (a(t, i13, i9)) {
                            iA3 = l.e(i13, e(t, jD2));
                            i3 = i11;
                            iA = iA3;
                            i10 += iA;
                        } else {
                            i3 = i11;
                        }
                        break;
                    case 55:
                        if (a(t, i13, i9)) {
                            iA3 = l.c(i13, d(t, jD2));
                            i3 = i11;
                            iA = iA3;
                            i10 += iA;
                        } else {
                            i3 = i11;
                        }
                        break;
                    case 56:
                        if (a(t, i13, i9)) {
                            iA3 = l.a(i13, 0L);
                            i3 = i11;
                            iA = iA3;
                            i10 += iA;
                        } else {
                            i3 = i11;
                        }
                        break;
                    case 57:
                        if (a(t, i13, i9)) {
                            iB = l.b(i13, 0);
                            i3 = i11;
                            iA = iB;
                            i10 += iA;
                        } else {
                            i3 = i11;
                        }
                        break;
                    case 58:
                        if (a(t, i13, i9)) {
                            iB = l.a(i13, true);
                            i3 = i11;
                            iA = iB;
                            i10 += iA;
                        } else {
                            i3 = i11;
                        }
                        break;
                    case 59:
                        if (a(t, i13, i9)) {
                            Object object2 = unsafe2.getObject(t, jD2);
                            iA3 = object2 instanceof i ? l.a(i13, (i) object2) : l.a(i13, (String) object2);
                            i3 = i11;
                            iA = iA3;
                            i10 += iA;
                        } else {
                            i3 = i11;
                        }
                        break;
                    case 60:
                        if (a(t, i13, i9)) {
                            iA3 = f1.a(i13, unsafe2.getObject(t, jD2), c(i9));
                            i3 = i11;
                            iA = iA3;
                            i10 += iA;
                        } else {
                            i3 = i11;
                        }
                        break;
                    case 61:
                        if (a(t, i13, i9)) {
                            iA3 = l.a(i13, (i) unsafe2.getObject(t, jD2));
                            i3 = i11;
                            iA = iA3;
                            i10 += iA;
                        } else {
                            i3 = i11;
                        }
                        break;
                    case 62:
                        if (a(t, i13, i9)) {
                            iA3 = l.f(i13, d(t, jD2));
                            i3 = i11;
                            iA = iA3;
                            i10 += iA;
                        } else {
                            i3 = i11;
                        }
                        break;
                    case 63:
                        if (a(t, i13, i9)) {
                            iA3 = l.a(i13, d(t, jD2));
                            i3 = i11;
                            iA = iA3;
                            i10 += iA;
                        } else {
                            i3 = i11;
                        }
                        break;
                    case 64:
                        if (a(t, i13, i9)) {
                            iB = l.d(i13, 0);
                            i3 = i11;
                            iA = iB;
                            i10 += iA;
                        } else {
                            i3 = i11;
                        }
                        break;
                    case 65:
                        if (a(t, i13, i9)) {
                            iA3 = l.c(i13, 0L);
                            i3 = i11;
                            iA = iA3;
                            i10 += iA;
                        } else {
                            i3 = i11;
                        }
                        break;
                    case 66:
                        if (a(t, i13, i9)) {
                            iA3 = l.e(i13, d(t, jD2));
                            i3 = i11;
                            iA = iA3;
                            i10 += iA;
                        } else {
                            i3 = i11;
                        }
                        break;
                    case 67:
                        if (a(t, i13, i9)) {
                            iA3 = l.d(i13, e(t, jD2));
                            i3 = i11;
                            iA = iA3;
                            i10 += iA;
                        } else {
                            i3 = i11;
                        }
                        break;
                    case 68:
                        if (a(t, i13, i9)) {
                            iA3 = l.a(i13, (o0) unsafe2.getObject(t, jD2), c(i9));
                            i3 = i11;
                            iA = iA3;
                            i10 += iA;
                        } else {
                            i3 = i11;
                        }
                        break;
                    default:
                        i3 = i11;
                        break;
                }
                i9 += 3;
                i11 = i3;
                i4 = 1048575;
                i5 = 1;
            }
            k1<?, ?> k1Var2 = this.o;
            iC = i10 + k1Var2.c(k1Var2.b(t));
            if (!this.f2702f) {
                return iC;
            }
            iD = this.p.a(t).d();
        }
        return iC + iD;
    }

    public final Object b(int i) {
        return this.b[(i / 3) * 2];
    }

    public final void b(T t, int i) {
        int i2 = this.a[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        p1.a((Object) t, j, (1 << (i2 >>> 20)) | p1.e(t, j));
    }

    public final void b(T t, int i, int i2) {
        p1.a((Object) t, this.a[i2 + 2] & 1048575, i);
    }

    public final void b(Object obj, int i, c1 c1Var) throws IOException {
        if ((536870912 & i) != 0) {
            c1Var.b(this.n.b(obj, d(i)));
        } else {
            c1Var.q(this.n.b(obj, d(i)));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void b(T r13, com.fyber.inneractive.sdk.protobuf.s1 r14) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1744
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.protobuf.r0.b(java.lang.Object, com.fyber.inneractive.sdk.protobuf.s1):void");
    }

    public final void b(T t, T t2, int i) {
        int[] iArr = this.a;
        int i2 = iArr[i + 1];
        int i3 = iArr[i];
        long jD = d(i2);
        if (a(t2, i3, i)) {
            Object objG = a(t, i3, i) ? p1.g(t, jD) : null;
            Object objG2 = p1.g(t2, jD);
            if (objG != null && objG2 != null) {
                p1.a(t, jD, y.a(objG, objG2));
                b(t, i3, i);
            } else if (objG2 != null) {
                p1.a(t, jD, objG2);
                b(t, i3, i);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:162:0x0275  */
    @Override // com.fyber.inneractive.sdk.protobuf.d1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean b(T r10, T r11) {
        /*
            Method dump skipped, instruction units count: 820
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.protobuf.r0.b(java.lang.Object, java.lang.Object):boolean");
    }

    public final d1 c(int i) {
        int i2 = (i / 3) * 2;
        Object[] objArr = this.b;
        d1 d1Var = (d1) objArr[i2];
        if (d1Var != null) {
            return d1Var;
        }
        d1<T> d1VarA = z0.c.a((Class) objArr[i2 + 1]);
        this.b[i2] = d1VarA;
        return d1VarA;
    }

    @Override // com.fyber.inneractive.sdk.protobuf.d1
    public void c(T t) {
        int i;
        int i2 = this.k;
        while (true) {
            i = this.l;
            if (i2 >= i) {
                break;
            }
            long jD = d(g(this.j[i2]));
            Object objG = p1.g(t, jD);
            if (objG != null) {
                p1.a(t, jD, this.q.e(objG));
            }
            i2++;
        }
        int length = this.j.length;
        while (i < length) {
            this.n.a(t, this.j[i]);
            i++;
        }
        this.o.e(t);
        if (this.f2702f) {
            this.p.c(t);
        }
    }

    @Override // com.fyber.inneractive.sdk.protobuf.d1
    public int d(T t) {
        int i;
        int iA;
        int length = this.a.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int iG = g(i3);
            int i4 = this.a[i3];
            long jD = d(iG);
            int iHashCode = 37;
            switch (f(iG)) {
                case 0:
                    i = i2 * 53;
                    iA = y.a(Double.doubleToLongBits(p1.f2697e.c(t, jD)));
                    i2 = i + iA;
                    break;
                case 1:
                    i = i2 * 53;
                    iA = Float.floatToIntBits(p1.f2697e.d(t, jD));
                    i2 = i + iA;
                    break;
                case 2:
                    i = i2 * 53;
                    iA = y.a(p1.f(t, jD));
                    i2 = i + iA;
                    break;
                case 3:
                    i = i2 * 53;
                    iA = y.a(p1.f(t, jD));
                    i2 = i + iA;
                    break;
                case 4:
                    i = i2 * 53;
                    iA = p1.e(t, jD);
                    i2 = i + iA;
                    break;
                case 5:
                    i = i2 * 53;
                    iA = y.a(p1.f(t, jD));
                    i2 = i + iA;
                    break;
                case 6:
                    i = i2 * 53;
                    iA = p1.e(t, jD);
                    i2 = i + iA;
                    break;
                case 7:
                    i = i2 * 53;
                    iA = y.a(p1.f2697e.a(t, jD));
                    i2 = i + iA;
                    break;
                case 8:
                    i = i2 * 53;
                    iA = ((String) p1.g(t, jD)).hashCode();
                    i2 = i + iA;
                    break;
                case 9:
                    Object objG = p1.g(t, jD);
                    if (objG != null) {
                        iHashCode = objG.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 10:
                    i = i2 * 53;
                    iA = p1.g(t, jD).hashCode();
                    i2 = i + iA;
                    break;
                case 11:
                    i = i2 * 53;
                    iA = p1.e(t, jD);
                    i2 = i + iA;
                    break;
                case 12:
                    i = i2 * 53;
                    iA = p1.e(t, jD);
                    i2 = i + iA;
                    break;
                case 13:
                    i = i2 * 53;
                    iA = p1.e(t, jD);
                    i2 = i + iA;
                    break;
                case 14:
                    i = i2 * 53;
                    iA = y.a(p1.f(t, jD));
                    i2 = i + iA;
                    break;
                case 15:
                    i = i2 * 53;
                    iA = p1.e(t, jD);
                    i2 = i + iA;
                    break;
                case 16:
                    i = i2 * 53;
                    iA = y.a(p1.f(t, jD));
                    i2 = i + iA;
                    break;
                case 17:
                    Object objG2 = p1.g(t, jD);
                    if (objG2 != null) {
                        iHashCode = objG2.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i = i2 * 53;
                    iA = p1.g(t, jD).hashCode();
                    i2 = i + iA;
                    break;
                case 50:
                    i = i2 * 53;
                    iA = p1.g(t, jD).hashCode();
                    i2 = i + iA;
                    break;
                case 51:
                    if (a(t, i4, i3)) {
                        i = i2 * 53;
                        iA = y.a(Double.doubleToLongBits(b(t, jD)));
                        i2 = i + iA;
                    }
                    break;
                case 52:
                    if (a(t, i4, i3)) {
                        i = i2 * 53;
                        iA = Float.floatToIntBits(c(t, jD));
                        i2 = i + iA;
                    }
                    break;
                case 53:
                    if (a(t, i4, i3)) {
                        i = i2 * 53;
                        iA = y.a(e(t, jD));
                        i2 = i + iA;
                    }
                    break;
                case 54:
                    if (a(t, i4, i3)) {
                        i = i2 * 53;
                        iA = y.a(e(t, jD));
                        i2 = i + iA;
                    }
                    break;
                case 55:
                    if (a(t, i4, i3)) {
                        i = i2 * 53;
                        iA = d(t, jD);
                        i2 = i + iA;
                    }
                    break;
                case 56:
                    if (a(t, i4, i3)) {
                        i = i2 * 53;
                        iA = y.a(e(t, jD));
                        i2 = i + iA;
                    }
                    break;
                case 57:
                    if (a(t, i4, i3)) {
                        i = i2 * 53;
                        iA = d(t, jD);
                        i2 = i + iA;
                    }
                    break;
                case 58:
                    if (a(t, i4, i3)) {
                        i = i2 * 53;
                        iA = y.a(a(t, jD));
                        i2 = i + iA;
                    }
                    break;
                case 59:
                    if (a(t, i4, i3)) {
                        i = i2 * 53;
                        iA = ((String) p1.g(t, jD)).hashCode();
                        i2 = i + iA;
                    }
                    break;
                case 60:
                    if (a(t, i4, i3)) {
                        i = i2 * 53;
                        iA = p1.g(t, jD).hashCode();
                        i2 = i + iA;
                    }
                    break;
                case 61:
                    if (a(t, i4, i3)) {
                        i = i2 * 53;
                        iA = p1.g(t, jD).hashCode();
                        i2 = i + iA;
                    }
                    break;
                case 62:
                    if (a(t, i4, i3)) {
                        i = i2 * 53;
                        iA = d(t, jD);
                        i2 = i + iA;
                    }
                    break;
                case 63:
                    if (a(t, i4, i3)) {
                        i = i2 * 53;
                        iA = d(t, jD);
                        i2 = i + iA;
                    }
                    break;
                case 64:
                    if (a(t, i4, i3)) {
                        i = i2 * 53;
                        iA = d(t, jD);
                        i2 = i + iA;
                    }
                    break;
                case 65:
                    if (a(t, i4, i3)) {
                        i = i2 * 53;
                        iA = y.a(e(t, jD));
                        i2 = i + iA;
                    }
                    break;
                case 66:
                    if (a(t, i4, i3)) {
                        i = i2 * 53;
                        iA = d(t, jD);
                        i2 = i + iA;
                    }
                    break;
                case 67:
                    if (a(t, i4, i3)) {
                        i = i2 * 53;
                        iA = y.a(e(t, jD));
                        i2 = i + iA;
                    }
                    break;
                case 68:
                    if (a(t, i4, i3)) {
                        i = i2 * 53;
                        iA = p1.g(t, jD).hashCode();
                        i2 = i + iA;
                    }
                    break;
            }
        }
        int iHashCode2 = (i2 * 53) + this.o.b(t).hashCode();
        return this.f2702f ? (iHashCode2 * 53) + this.p.a(t).a.hashCode() : iHashCode2;
    }

    public final int e(int i) {
        if (i < this.c || i > this.f2700d) {
            return -1;
        }
        return a(i, 0);
    }

    public final int g(int i) {
        return this.a[i + 1];
    }
}
