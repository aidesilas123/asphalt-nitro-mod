package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.base.Preconditions;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: loaded from: classes.dex */
public abstract class q<E> extends AbstractCollection<E> implements Serializable {
    private static final Object[] qb = new Object[0];

    static abstract class a<E> extends b<E> {
        int oW;
        Object[] qc;
        boolean qd;

        a(int i) {
            j.a(i, "initialCapacity");
            this.qc = new Object[i];
            this.oW = 0;
        }

        private void bh(int i) {
            Object[] objArr = this.qc;
            if (objArr.length < i) {
                this.qc = Arrays.copyOf(objArr, b.s(objArr.length, i));
                this.qd = false;
            } else if (this.qd) {
                this.qc = (Object[]) objArr.clone();
                this.qd = false;
            }
        }

        public a<E> t(E e2) {
            Preconditions.checkNotNull(e2);
            bh(this.oW + 1);
            Object[] objArr = this.qc;
            int i = this.oW;
            this.oW = i + 1;
            objArr[i] = e2;
            return this;
        }
    }

    public static abstract class b<E> {
        b() {
        }

        static int s(int i, int i2) {
            if (i2 < 0) {
                throw new AssertionError("cannot store more than MAX_VALUE elements");
            }
            int iHighestOneBit = i + (i >> 1) + 1;
            if (iHighestOneBit < i2) {
                iHighestOneBit = Integer.highestOneBit(i2 - 1) << 1;
            }
            if (iHighestOneBit < 0) {
                return Integer.MAX_VALUE;
            }
            return iHighestOneBit;
        }
    }

    q() {
    }

    int a(Object[] objArr, int i) {
        ax<E> it = iterator();
        while (it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean add(E e2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public abstract boolean contains(@NullableDecl Object obj);

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* JADX INFO: renamed from: fU */
    public abstract ax<E> iterator();

    Object[] fV() {
        return null;
    }

    int fW() {
        throw new UnsupportedOperationException();
    }

    int fX() {
        throw new UnsupportedOperationException();
    }

    public s<E> fY() {
        return isEmpty() ? s.ga() : s.d(toArray());
    }

    abstract boolean fZ();

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(qb);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        Preconditions.checkNotNull(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] objArrFV = fV();
            if (objArrFV != null) {
                return (T[]) aj.a(objArrFV, fW(), fX(), tArr);
            }
            tArr = (T[]) ah.c(tArr, size);
        } else if (tArr.length > size) {
            tArr[size] = null;
        }
        a(tArr, 0);
        return tArr;
    }
}
