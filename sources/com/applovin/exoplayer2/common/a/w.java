package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.base.Preconditions;
import java.util.Arrays;
import java.util.Collection;
import java.util.Set;
import java.util.SortedSet;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: loaded from: classes.dex */
public abstract class w<E> extends q<E> implements Set<E> {

    @NullableDecl
    private transient s<E> qw;

    w() {
    }

    private static <E> w<E> a(int i, Object... objArr) {
        if (i == 0) {
            return gy();
        }
        if (i == 1) {
            return y(objArr[0]);
        }
        int iBk = bk(i);
        Object[] objArr2 = new Object[iBk];
        int i2 = iBk - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            Object objB = ah.b(objArr[i5], i5);
            int iHashCode = objB.hashCode();
            int iBg = p.bg(iHashCode);
            while (true) {
                int i6 = iBg & i2;
                Object obj = objArr2[i6];
                if (obj == null) {
                    objArr[i4] = objB;
                    objArr2[i6] = objB;
                    i3 += iHashCode;
                    i4++;
                    break;
                }
                if (obj.equals(objB)) {
                    break;
                }
                iBg++;
            }
        }
        Arrays.fill(objArr, i4, i, (Object) null);
        if (i4 == 1) {
            return new ar(objArr[0], i3);
        }
        if (bk(i4) < iBk / 2) {
            return a(i4, objArr);
        }
        if (v(i4, objArr.length)) {
            objArr = Arrays.copyOf(objArr, i4);
        }
        return new am(objArr, i3, objArr2, i2, i4);
    }

    public static <E> w<E> a(E e2, E e3, E e4) {
        return a(3, e2, e3, e4);
    }

    static int bk(int i) {
        int iMax = Math.max(i, 2);
        if (iMax >= 751619276) {
            Preconditions.checkArgument(iMax < 1073741824, "collection too large");
            return 1073741824;
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
        while (((double) iHighestOneBit) * 0.7d < iMax) {
            iHighestOneBit <<= 1;
        }
        return iHighestOneBit;
    }

    public static <E> w<E> e(Collection<? extends E> collection) {
        if ((collection instanceof w) && !(collection instanceof SortedSet)) {
            w<E> wVar = (w) collection;
            if (!wVar.fZ()) {
                return wVar;
            }
        }
        Object[] array = collection.toArray();
        return a(array.length, array);
    }

    public static <E> w<E> e(E[] eArr) {
        int length = eArr.length;
        return length != 0 ? length != 1 ? a(eArr.length, (Object[]) eArr.clone()) : y(eArr[0]) : gy();
    }

    public static <E> w<E> gy() {
        return am.qT;
    }

    public static <E> w<E> m(E e2, E e3) {
        return a(2, e2, e3);
    }

    private static boolean v(int i, int i2) {
        return i < (i2 >> 1) + (i2 >> 2);
    }

    public static <E> w<E> y(E e2) {
        return new ar(e2);
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof w) && gz() && ((w) obj).gz() && hashCode() != obj.hashCode()) {
            return false;
        }
        return aq.a(this, obj);
    }

    @Override // com.applovin.exoplayer2.common.a.q, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* JADX INFO: renamed from: fU, reason: merged with bridge method [inline-methods] */
    public abstract ax<E> iterator();

    @Override // com.applovin.exoplayer2.common.a.q
    public s<E> fY() {
        s<E> sVar = this.qw;
        if (sVar != null) {
            return sVar;
        }
        s<E> sVarGA = gA();
        this.qw = sVarGA;
        return sVarGA;
    }

    s<E> gA() {
        return s.d(toArray());
    }

    boolean gz() {
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return aq.a(this);
    }
}
