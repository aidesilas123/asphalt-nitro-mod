package com.fyber.inneractive.sdk.protobuf;

import com.fyber.inneractive.sdk.protobuf.y;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public final class f1 {
    public static final Class<?> a;
    public static final k1<?, ?> b;
    public static final k1<?, ?> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final k1<?, ?> f2664d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessageV3");
        } catch (Throwable unused) {
            cls = null;
        }
        a = cls;
        b = a(false);
        c = a(true);
        f2664d = new m1();
    }

    public static int a(int i, Object obj, d1 d1Var) {
        if (obj instanceof b0) {
            return l.b(i) + l.a((b0) obj);
        }
        int iB = l.b(i);
        int serializedSize = ((a) ((o0) obj)).getSerializedSize(d1Var);
        return iB + l.c(serializedSize) + serializedSize;
    }

    public static int a(int i, List<i> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iB = size * l.b(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            iB += l.a(list.get(i2));
        }
        return iB;
    }

    public static int a(int i, List<o0> list, d1 d1Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iA = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iA += l.a(i, list.get(i2), d1Var);
        }
        return iA;
    }

    public static int a(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return z ? l.b(i) + l.c(size) + size : size * l.a(i, true);
    }

    public static int a(List<Integer> list) {
        int iA;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof x) {
            x xVar = (x) list;
            iA = 0;
            while (i < size) {
                iA += l.a(xVar.e(i));
                i++;
            }
        } else {
            iA = 0;
            while (i < size) {
                iA += l.a(list.get(i).intValue());
                i++;
            }
        }
        return iA;
    }

    public static k1<?, ?> a(boolean z) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return (k1) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static <UT, UB> UB a(int i, int i2, UB ub, k1<UT, UB> k1Var) {
        if (ub == null) {
            ub = k1Var.a();
        }
        k1Var.b(ub, i, i2);
        return ub;
    }

    public static <UT, UB> UB a(int i, List<Integer> list, y.d<?> dVar, UB ub, k1<UT, UB> k1Var) {
        if (dVar == null) {
            return ub;
        }
        int size = list.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            int iIntValue = list.get(i3).intValue();
            if (dVar.a(iIntValue) != null) {
                if (i3 != i2) {
                    list.set(i2, Integer.valueOf(iIntValue));
                }
                i2++;
            } else {
                if (ub == null) {
                    ub = k1Var.a();
                }
                k1Var.b(ub, i, iIntValue);
            }
        }
        if (i2 != size) {
            list.subList(i2, size).clear();
        }
        return ub;
    }

    public static <UT, UB> UB a(int i, List<Integer> list, y.e eVar, UB ub, k1<UT, UB> k1Var) {
        if (eVar == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int iIntValue = list.get(i3).intValue();
                if (eVar.a(iIntValue)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(iIntValue));
                    }
                    i2++;
                } else {
                    if (ub == null) {
                        ub = k1Var.a();
                    }
                    k1Var.b(ub, i, iIntValue);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = it.next().intValue();
                if (!eVar.a(iIntValue2)) {
                    if (ub == null) {
                        ub = k1Var.a();
                    }
                    k1Var.b(ub, i, iIntValue2);
                    it.remove();
                }
            }
        }
        return ub;
    }

    public static void a(int i, List<i> list, s1 s1Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) s1Var;
        mVar.getClass();
        for (int i2 = 0; i2 < list.size(); i2++) {
            mVar.a.b(i, list.get(i2));
        }
    }

    public static void a(int i, List<?> list, s1 s1Var, d1 d1Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) s1Var;
        mVar.getClass();
        for (int i2 = 0; i2 < list.size(); i2++) {
            mVar.a(i, list.get(i2), d1Var);
        }
    }

    public static void a(int i, List<Boolean> list, s1 s1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) s1Var;
        mVar.getClass();
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                mVar.a.b(i, list.get(i2).booleanValue());
                i2++;
            }
            return;
        }
        mVar.a.i(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).booleanValue();
            Logger logger = l.b;
            i3++;
        }
        mVar.a.g(i3);
        while (i2 < list.size()) {
            mVar.a.a(list.get(i2).booleanValue() ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int b(int i, List<?> list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int iB = l.b(i) * size;
        if (list instanceof d0) {
            d0 d0Var = (d0) list;
            while (i2 < size) {
                Object objA = d0Var.a(i2);
                iB += objA instanceof i ? l.a((i) objA) : l.a((String) objA);
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                iB += obj instanceof i ? l.a((i) obj) : l.a((String) obj);
                i2++;
            }
        }
        return iB;
    }

    public static int b(int i, List<?> list, d1 d1Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iB = l.b(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            if (obj instanceof b0) {
                iB += l.a((b0) obj);
            } else {
                int serializedSize = ((a) ((o0) obj)).getSerializedSize(d1Var);
                iB += l.c(serializedSize) + serializedSize;
            }
        }
        return iB;
    }

    public static int b(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iA = a(list);
        return z ? l.b(i) + l.c(iA) + iA : iA + (size * l.b(i));
    }

    public static int b(List<?> list) {
        return list.size() * 4;
    }

    public static void b(int i, List<String> list, s1 s1Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) s1Var;
        mVar.getClass();
        int i2 = 0;
        if (!(list instanceof d0)) {
            while (i2 < list.size()) {
                mVar.a.b(i, list.get(i2));
                i2++;
            }
            return;
        }
        d0 d0Var = (d0) list;
        while (i2 < list.size()) {
            Object objA = d0Var.a(i2);
            if (objA instanceof String) {
                mVar.a.b(i, (String) objA);
            } else {
                mVar.a.b(i, (i) objA);
            }
            i2++;
        }
    }

    public static void b(int i, List<?> list, s1 s1Var, d1 d1Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) s1Var;
        mVar.getClass();
        for (int i2 = 0; i2 < list.size(); i2++) {
            mVar.a.b(i, (o0) list.get(i2), d1Var);
        }
    }

    public static void b(int i, List<Double> list, s1 s1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) s1Var;
        mVar.getClass();
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                l lVar = mVar.a;
                double dDoubleValue = list.get(i2).doubleValue();
                lVar.getClass();
                lVar.f(i, Double.doubleToRawLongBits(dDoubleValue));
                i2++;
            }
            return;
        }
        mVar.a.i(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).doubleValue();
            Logger logger = l.b;
            i3 += 8;
        }
        mVar.a.g(i3);
        while (i2 < list.size()) {
            l lVar2 = mVar.a;
            double dDoubleValue2 = list.get(i2).doubleValue();
            lVar2.getClass();
            lVar2.c(Double.doubleToRawLongBits(dDoubleValue2));
            i2++;
        }
    }

    public static int c(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (!z) {
            return size * l.b(i, 0);
        }
        int i2 = size * 4;
        return l.b(i) + l.c(i2) + i2;
    }

    public static int c(List<?> list) {
        return list.size() * 8;
    }

    public static void c(int i, List<Integer> list, s1 s1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) s1Var;
        mVar.getClass();
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                mVar.a.h(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        mVar.a.i(i, 2);
        int iA = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iA += l.a(list.get(i3).intValue());
        }
        mVar.a.g(iA);
        while (i2 < list.size()) {
            mVar.a.f(list.get(i2).intValue());
            i2++;
        }
    }

    public static int d(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (!z) {
            return size * l.a(i, 0L);
        }
        int i2 = size * 8;
        return l.b(i) + l.c(i2) + i2;
    }

    public static int d(List<Integer> list) {
        int iA;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof x) {
            x xVar = (x) list;
            iA = 0;
            while (i < size) {
                iA += l.a(xVar.e(i));
                i++;
            }
        } else {
            iA = 0;
            while (i < size) {
                iA += l.a(list.get(i).intValue());
                i++;
            }
        }
        return iA;
    }

    public static void d(int i, List<Integer> list, s1 s1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) s1Var;
        mVar.getClass();
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                mVar.a.g(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        mVar.a.i(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            Logger logger = l.b;
            i3 += 4;
        }
        mVar.a.g(i3);
        while (i2 < list.size()) {
            mVar.a.e(list.get(i2).intValue());
            i2++;
        }
    }

    public static int e(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iD = d(list);
        return z ? l.b(i) + l.c(iD) + iD : iD + (size * l.b(i));
    }

    public static int e(List<Long> list) {
        int iA;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof f0) {
            f0 f0Var = (f0) list;
            iA = 0;
            while (i < size) {
                iA += l.a(f0Var.d(i));
                i++;
            }
        } else {
            iA = 0;
            while (i < size) {
                iA += l.a(list.get(i).longValue());
                i++;
            }
        }
        return iA;
    }

    public static void e(int i, List<Long> list, s1 s1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) s1Var;
        mVar.getClass();
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                mVar.a.f(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        mVar.a.i(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            Logger logger = l.b;
            i3 += 8;
        }
        mVar.a.g(i3);
        while (i2 < list.size()) {
            mVar.a.c(list.get(i2).longValue());
            i2++;
        }
    }

    public static int f(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        int iE = e(list);
        return z ? l.b(i) + l.c(iE) + iE : iE + (list.size() * l.b(i));
    }

    public static int f(List<Integer> list) {
        int iC;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof x) {
            x xVar = (x) list;
            iC = 0;
            while (i < size) {
                iC += l.c(l.d(xVar.e(i)));
                i++;
            }
        } else {
            iC = 0;
            while (i < size) {
                iC += l.c(l.d(list.get(i).intValue()));
                i++;
            }
        }
        return iC;
    }

    public static void f(int i, List<Float> list, s1 s1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) s1Var;
        mVar.getClass();
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                l lVar = mVar.a;
                float fFloatValue = list.get(i2).floatValue();
                lVar.getClass();
                lVar.g(i, Float.floatToRawIntBits(fFloatValue));
                i2++;
            }
            return;
        }
        mVar.a.i(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).floatValue();
            Logger logger = l.b;
            i3 += 4;
        }
        mVar.a.g(i3);
        while (i2 < list.size()) {
            l lVar2 = mVar.a;
            float fFloatValue2 = list.get(i2).floatValue();
            lVar2.getClass();
            lVar2.e(Float.floatToRawIntBits(fFloatValue2));
            i2++;
        }
    }

    public static int g(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iF = f(list);
        return z ? l.b(i) + l.c(iF) + iF : iF + (size * l.b(i));
    }

    public static int g(List<Long> list) {
        int iA;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof f0) {
            f0 f0Var = (f0) list;
            iA = 0;
            while (i < size) {
                iA += l.a(l.b(f0Var.d(i)));
                i++;
            }
        } else {
            iA = 0;
            while (i < size) {
                iA += l.a(l.b(list.get(i).longValue()));
                i++;
            }
        }
        return iA;
    }

    public static void g(int i, List<Integer> list, s1 s1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) s1Var;
        mVar.getClass();
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                mVar.a.h(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        mVar.a.i(i, 2);
        int iA = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iA += l.a(list.get(i3).intValue());
        }
        mVar.a.g(iA);
        while (i2 < list.size()) {
            mVar.a.f(list.get(i2).intValue());
            i2++;
        }
    }

    public static int h(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iG = g(list);
        return z ? l.b(i) + l.c(iG) + iG : iG + (size * l.b(i));
    }

    public static int h(List<Integer> list) {
        int iC;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof x) {
            x xVar = (x) list;
            iC = 0;
            while (i < size) {
                iC += l.c(xVar.e(i));
                i++;
            }
        } else {
            iC = 0;
            while (i < size) {
                iC += l.c(list.get(i).intValue());
                i++;
            }
        }
        return iC;
    }

    public static void h(int i, List<Long> list, s1 s1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) s1Var;
        mVar.getClass();
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                mVar.a.g(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        mVar.a.i(i, 2);
        int iA = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iA += l.a(list.get(i3).longValue());
        }
        mVar.a.g(iA);
        while (i2 < list.size()) {
            mVar.a.d(list.get(i2).longValue());
            i2++;
        }
    }

    public static int i(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iH = h(list);
        return z ? l.b(i) + l.c(iH) + iH : iH + (size * l.b(i));
    }

    public static int i(List<Long> list) {
        int iA;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof f0) {
            f0 f0Var = (f0) list;
            iA = 0;
            while (i < size) {
                iA += l.a(f0Var.d(i));
                i++;
            }
        } else {
            iA = 0;
            while (i < size) {
                iA += l.a(list.get(i).longValue());
                i++;
            }
        }
        return iA;
    }

    public static void i(int i, List<Integer> list, s1 s1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) s1Var;
        mVar.getClass();
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                mVar.a.g(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        mVar.a.i(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            Logger logger = l.b;
            i3 += 4;
        }
        mVar.a.g(i3);
        while (i2 < list.size()) {
            mVar.a.e(list.get(i2).intValue());
            i2++;
        }
    }

    public static int j(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = i(list);
        return z ? l.b(i) + l.c(i2) + i2 : i2 + (size * l.b(i));
    }

    public static void j(int i, List<Long> list, s1 s1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) s1Var;
        mVar.getClass();
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                mVar.a.f(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        mVar.a.i(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            Logger logger = l.b;
            i3 += 8;
        }
        mVar.a.g(i3);
        while (i2 < list.size()) {
            mVar.a.c(list.get(i2).longValue());
            i2++;
        }
    }

    public static void k(int i, List<Integer> list, s1 s1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) s1Var;
        mVar.getClass();
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                mVar.a.j(i, l.d(list.get(i2).intValue()));
                i2++;
            }
            return;
        }
        mVar.a.i(i, 2);
        int iC = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iC += l.c(l.d(list.get(i3).intValue()));
        }
        mVar.a.g(iC);
        while (i2 < list.size()) {
            mVar.a.g(l.d(list.get(i2).intValue()));
            i2++;
        }
    }

    public static void l(int i, List<Long> list, s1 s1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) s1Var;
        mVar.getClass();
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                mVar.a.g(i, l.b(list.get(i2).longValue()));
                i2++;
            }
            return;
        }
        mVar.a.i(i, 2);
        int iA = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iA += l.a(l.b(list.get(i3).longValue()));
        }
        mVar.a.g(iA);
        while (i2 < list.size()) {
            mVar.a.d(l.b(list.get(i2).longValue()));
            i2++;
        }
    }

    public static void m(int i, List<Integer> list, s1 s1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) s1Var;
        mVar.getClass();
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                mVar.a.j(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        mVar.a.i(i, 2);
        int iC = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iC += l.c(list.get(i3).intValue());
        }
        mVar.a.g(iC);
        while (i2 < list.size()) {
            mVar.a.g(list.get(i2).intValue());
            i2++;
        }
    }

    public static void n(int i, List<Long> list, s1 s1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) s1Var;
        mVar.getClass();
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                mVar.a.g(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        mVar.a.i(i, 2);
        int iA = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iA += l.a(list.get(i3).longValue());
        }
        mVar.a.g(iA);
        while (i2 < list.size()) {
            mVar.a.d(list.get(i2).longValue());
            i2++;
        }
    }
}
