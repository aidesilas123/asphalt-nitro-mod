package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
class CompactHashSet<E> extends AbstractSet<E> implements Serializable {
    private transient Object a;
    private transient int[] b;
    transient Object[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private transient int f3554d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private transient int f3555e;

    class a implements Iterator<E> {
        int a;
        int b;
        int c = -1;

        a() {
            this.a = CompactHashSet.this.f3554d;
            this.b = CompactHashSet.this.n();
        }

        private void b() {
            if (CompactHashSet.this.f3554d != this.a) {
                throw new ConcurrentModificationException();
            }
        }

        void c() {
            this.a += 32;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.b >= 0;
        }

        @Override // java.util.Iterator
        public E next() {
            b();
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            int i = this.b;
            this.c = i;
            E e2 = (E) CompactHashSet.this.i(i);
            this.b = CompactHashSet.this.r(this.b);
            return e2;
        }

        @Override // java.util.Iterator
        public void remove() {
            b();
            z.e(this.c >= 0);
            c();
            CompactHashSet compactHashSet = CompactHashSet.this;
            compactHashSet.remove(compactHashSet.i(this.c));
            this.b = CompactHashSet.this.d(this.b, this.c);
            this.c = -1;
        }
    }

    CompactHashSet() {
        x(3);
    }

    CompactHashSet(int i) {
        x(i);
    }

    private Object[] B() {
        Object[] objArr = this.c;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    private int[] C() {
        int[] iArr = this.b;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    private Object D() {
        Object obj = this.a;
        Objects.requireNonNull(obj);
        return obj;
    }

    private void F(int i) {
        int iMin;
        int length = C().length;
        if (i <= length || (iMin = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) == length) {
            return;
        }
        E(iMin);
    }

    private int G(int i, int i2, int i3, int i4) {
        Object objA = a0.a(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            a0.i(objA, i3 & i5, i4 + 1);
        }
        Object objD = D();
        int[] iArrC = C();
        for (int i6 = 0; i6 <= i; i6++) {
            int iH = a0.h(objD, i6);
            while (iH != 0) {
                int i7 = iH - 1;
                int i8 = iArrC[i7];
                int iB = a0.b(i8, i) | i6;
                int i9 = iB & i5;
                int iH2 = a0.h(objA, i9);
                a0.i(objA, i9, iH);
                iArrC[i7] = a0.d(iB, iH2, i5);
                iH = a0.c(i8, i);
            }
        }
        this.a = objA;
        O(i5);
        return i5;
    }

    private void H(int i, E e2) {
        B()[i] = e2;
    }

    private void M(int i, int i2) {
        C()[i] = i2;
    }

    private void O(int i) {
        this.f3554d = a0.d(this.f3554d, 32 - Integer.numberOfLeadingZeros(i), 31);
    }

    public static <E> CompactHashSet<E> create() {
        return new CompactHashSet<>();
    }

    public static <E> CompactHashSet<E> create(Collection<? extends E> collection) {
        CompactHashSet<E> compactHashSetCreateWithExpectedSize = createWithExpectedSize(collection.size());
        compactHashSetCreateWithExpectedSize.addAll(collection);
        return compactHashSetCreateWithExpectedSize;
    }

    @SafeVarargs
    public static <E> CompactHashSet<E> create(E... eArr) {
        CompactHashSet<E> compactHashSetCreateWithExpectedSize = createWithExpectedSize(eArr.length);
        Collections.addAll(compactHashSetCreateWithExpectedSize, eArr);
        return compactHashSetCreateWithExpectedSize;
    }

    public static <E> CompactHashSet<E> createWithExpectedSize(int i) {
        return new CompactHashSet<>(i);
    }

    private Set<E> g(int i) {
        return new LinkedHashSet(i, 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public E i(int i) {
        return (E) B()[i];
    }

    private int j(int i) {
        return C()[i];
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i = objectInputStream.readInt();
        if (i < 0) {
            StringBuilder sb = new StringBuilder(25);
            sb.append("Invalid size: ");
            sb.append(i);
            throw new InvalidObjectException(sb.toString());
        }
        x(i);
        for (int i2 = 0; i2 < i; i2++) {
            add(objectInputStream.readObject());
        }
    }

    private int t() {
        return (1 << (this.f3554d & 31)) - 1;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            objectOutputStream.writeObject(it.next());
        }
    }

    boolean A() {
        return this.a == null;
    }

    void E(int i) {
        this.b = Arrays.copyOf(C(), i);
        this.c = Arrays.copyOf(B(), i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(E e2) {
        if (A()) {
            e();
        }
        Set<E> setH = h();
        if (setH != null) {
            return setH.add(e2);
        }
        int[] iArrC = C();
        Object[] objArrB = B();
        int i = this.f3555e;
        int i2 = i + 1;
        int iD = l1.d(e2);
        int iT = t();
        int i3 = iD & iT;
        int iH = a0.h(D(), i3);
        if (iH != 0) {
            int iB = a0.b(iD, iT);
            int i4 = 0;
            while (true) {
                int i5 = iH - 1;
                int i6 = iArrC[i5];
                if (a0.b(i6, iT) == iB && com.google.common.base.Objects.equal(e2, objArrB[i5])) {
                    return false;
                }
                int iC = a0.c(i6, iT);
                i4++;
                if (iC != 0) {
                    iH = iC;
                } else {
                    if (i4 >= 9) {
                        return f().add(e2);
                    }
                    if (i2 > iT) {
                        iT = G(iT, a0.e(iT), iD, i);
                    } else {
                        iArrC[i5] = a0.d(i6, i2, iT);
                    }
                }
            }
        } else if (i2 > iT) {
            iT = G(iT, a0.e(iT), iD, i);
        } else {
            a0.i(D(), i3, i2);
        }
        F(i2);
        y(i, e2, iD, iT);
        this.f3555e = i2;
        v();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        if (A()) {
            return;
        }
        v();
        Set<E> setH = h();
        if (setH != null) {
            this.f3554d = Ints.constrainToRange(size(), 3, 1073741823);
            setH.clear();
            this.a = null;
            this.f3555e = 0;
            return;
        }
        Arrays.fill(B(), 0, this.f3555e, (Object) null);
        a0.g(D());
        Arrays.fill(C(), 0, this.f3555e, 0);
        this.f3555e = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        if (A()) {
            return false;
        }
        Set<E> setH = h();
        if (setH != null) {
            return setH.contains(obj);
        }
        int iD = l1.d(obj);
        int iT = t();
        int iH = a0.h(D(), iD & iT);
        if (iH == 0) {
            return false;
        }
        int iB = a0.b(iD, iT);
        do {
            int i = iH - 1;
            int iJ = j(i);
            if (a0.b(iJ, iT) == iB && com.google.common.base.Objects.equal(obj, i(i))) {
                return true;
            }
            iH = a0.c(iJ, iT);
        } while (iH != 0);
        return false;
    }

    int d(int i, int i2) {
        return i - 1;
    }

    int e() {
        Preconditions.checkState(A(), "Arrays already allocated");
        int i = this.f3554d;
        int iJ = a0.j(i);
        this.a = a0.a(iJ);
        O(iJ - 1);
        this.b = new int[i];
        this.c = new Object[i];
        return i;
    }

    Set<E> f() {
        Set<E> setG = g(t() + 1);
        int iN = n();
        while (iN >= 0) {
            setG.add(i(iN));
            iN = r(iN);
        }
        this.a = setG;
        this.b = null;
        this.c = null;
        v();
        return setG;
    }

    Set<E> h() {
        Object obj = this.a;
        if (obj instanceof Set) {
            return (Set) obj;
        }
        return null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        Set<E> setH = h();
        return setH != null ? setH.iterator() : new a();
    }

    int n() {
        return isEmpty() ? -1 : 0;
    }

    int r(int i) {
        int i2 = i + 1;
        if (i2 < this.f3555e) {
            return i2;
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        if (A()) {
            return false;
        }
        Set<E> setH = h();
        if (setH != null) {
            return setH.remove(obj);
        }
        int iT = t();
        int iF = a0.f(obj, null, iT, D(), C(), B(), null);
        if (iF == -1) {
            return false;
        }
        z(iF, iT);
        this.f3555e--;
        v();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        Set<E> setH = h();
        return setH != null ? setH.size() : this.f3555e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public Object[] toArray() {
        if (A()) {
            return new Object[0];
        }
        Set<E> setH = h();
        return setH != null ? setH.toArray() : Arrays.copyOf(B(), this.f3555e);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        if (!A()) {
            Set<E> setH = h();
            return setH != null ? (T[]) setH.toArray(tArr) : (T[]) ObjectArrays.g(B(), 0, this.f3555e, tArr);
        }
        if (tArr.length > 0) {
            tArr[0] = null;
        }
        return tArr;
    }

    void v() {
        this.f3554d += 32;
    }

    void x(int i) {
        Preconditions.checkArgument(i >= 0, "Expected size must be >= 0");
        this.f3554d = Ints.constrainToRange(i, 1, 1073741823);
    }

    void y(int i, E e2, int i2, int i3) {
        M(i, a0.d(i2, 0, i3));
        H(i, e2);
    }

    void z(int i, int i2) {
        Object objD = D();
        int[] iArrC = C();
        Object[] objArrB = B();
        int size = size() - 1;
        if (i >= size) {
            objArrB[i] = null;
            iArrC[i] = 0;
            return;
        }
        Object obj = objArrB[size];
        objArrB[i] = obj;
        objArrB[size] = null;
        iArrC[i] = iArrC[size];
        iArrC[size] = 0;
        int iD = l1.d(obj) & i2;
        int iH = a0.h(objD, iD);
        int i3 = size + 1;
        if (iH == i3) {
            a0.i(objD, iD, i + 1);
            return;
        }
        while (true) {
            int i4 = iH - 1;
            int i5 = iArrC[i4];
            int iC = a0.c(i5, i2);
            if (iC == i3) {
                iArrC[i4] = a0.d(i5, i + 1, i2);
                return;
            }
            iH = iC;
        }
    }
}
