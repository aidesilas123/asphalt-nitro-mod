package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.Multisets;
import com.google.common.collect.c2;
import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.Enum;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class EnumMultiset<E extends Enum<E>> extends k<E> implements Serializable {
    private static final long serialVersionUID = 0;
    private transient Class<E> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private transient E[] f3566d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private transient int[] f3567e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private transient int f3568f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private transient long f3569g;

    class a extends EnumMultiset<E>.c<E> {
        a() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.EnumMultiset.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public E a(int i) {
            return (E) EnumMultiset.this.f3566d[i];
        }
    }

    class b extends EnumMultiset<E>.c<c2.a<E>> {

        class a extends Multisets.f<E> {
            final /* synthetic */ int a;

            a(int i) {
                this.a = i;
            }

            @Override // com.google.common.collect.c2.a
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public E c() {
                return (E) EnumMultiset.this.f3566d[this.a];
            }

            @Override // com.google.common.collect.c2.a
            public int getCount() {
                return EnumMultiset.this.f3567e[this.a];
            }
        }

        b() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.EnumMultiset.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public c2.a<E> a(int i) {
            return new a(i);
        }
    }

    abstract class c<T> implements Iterator<T> {
        int a = 0;
        int b = -1;

        c() {
        }

        abstract T a(int i);

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (this.a < EnumMultiset.this.f3566d.length) {
                int[] iArr = EnumMultiset.this.f3567e;
                int i = this.a;
                if (iArr[i] > 0) {
                    return true;
                }
                this.a = i + 1;
            }
            return false;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T tA = a(this.a);
            int i = this.a;
            this.b = i;
            this.a = i + 1;
            return tA;
        }

        @Override // java.util.Iterator
        public void remove() {
            z.e(this.b >= 0);
            if (EnumMultiset.this.f3567e[this.b] > 0) {
                EnumMultiset.r(EnumMultiset.this);
                EnumMultiset.t(EnumMultiset.this, r0.f3567e[this.b]);
                EnumMultiset.this.f3567e[this.b] = 0;
            }
            this.b = -1;
        }
    }

    private EnumMultiset(Class<E> cls) {
        this.c = cls;
        Preconditions.checkArgument(cls.isEnum());
        E[] enumConstants = cls.getEnumConstants();
        this.f3566d = enumConstants;
        this.f3567e = new int[enumConstants.length];
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Class<E> cls) {
        return new EnumMultiset<>(cls);
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Iterable<E> iterable) {
        Iterator<E> it = iterable.iterator();
        Preconditions.checkArgument(it.hasNext(), "EnumMultiset constructor passed empty Iterable");
        EnumMultiset<E> enumMultiset = new EnumMultiset<>(it.next().getDeclaringClass());
        Iterables.addAll(enumMultiset, iterable);
        return enumMultiset;
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Iterable<E> iterable, Class<E> cls) {
        EnumMultiset<E> enumMultisetCreate = create(cls);
        Iterables.addAll(enumMultisetCreate, iterable);
        return enumMultisetCreate;
    }

    static /* synthetic */ int r(EnumMultiset enumMultiset) {
        int i = enumMultiset.f3568f;
        enumMultiset.f3568f = i - 1;
        return i;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        Class<E> cls = (Class) objectInputStream.readObject();
        this.c = cls;
        E[] enumConstants = cls.getEnumConstants();
        this.f3566d = enumConstants;
        this.f3567e = new int[enumConstants.length];
        y2.f(this, objectInputStream);
    }

    static /* synthetic */ long t(EnumMultiset enumMultiset, long j) {
        long j2 = enumMultiset.f3569g - j;
        enumMultiset.f3569g = j2;
        return j2;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.c);
        y2.k(this, objectOutputStream);
    }

    private void x(Object obj) {
        Preconditions.checkNotNull(obj);
        if (y(obj)) {
            return;
        }
        String strValueOf = String.valueOf(this.c);
        String strValueOf2 = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 21 + strValueOf2.length());
        sb.append("Expected an ");
        sb.append(strValueOf);
        sb.append(" but got ");
        sb.append(strValueOf2);
        throw new ClassCastException(sb.toString());
    }

    private boolean y(Object obj) {
        if (!(obj instanceof Enum)) {
            return false;
        }
        Enum r5 = (Enum) obj;
        int iOrdinal = r5.ordinal();
        E[] eArr = this.f3566d;
        return iOrdinal < eArr.length && eArr[iOrdinal] == r5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.k, com.google.common.collect.c2
    public /* bridge */ /* synthetic */ boolean I(Object obj, int i, int i2) {
        return super.I(obj, i, i2);
    }

    @Override // com.google.common.collect.c2
    public int K(Object obj) {
        if (obj == null || !y(obj)) {
            return 0;
        }
        return this.f3567e[((Enum) obj).ordinal()];
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        Arrays.fill(this.f3567e, 0);
        this.f3569g = 0L;
        this.f3568f = 0;
    }

    @Override // com.google.common.collect.k, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.c2
    public /* bridge */ /* synthetic */ boolean contains(Object obj) {
        return super.contains(obj);
    }

    @Override // com.google.common.collect.k, com.google.common.collect.c2
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.k
    int g() {
        return this.f3568f;
    }

    @Override // com.google.common.collect.k
    Iterator<E> h() {
        return new a();
    }

    @Override // com.google.common.collect.k
    Iterator<c2.a<E>> i() {
        return new b();
    }

    @Override // com.google.common.collect.k, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.c2
    public Iterator<E> iterator() {
        return Multisets.h(this);
    }

    @Override // com.google.common.collect.k, com.google.common.collect.c2
    public /* bridge */ /* synthetic */ Set k() {
        return super.k();
    }

    @Override // com.google.common.collect.k, com.google.common.collect.c2
    public int s(Object obj, int i) {
        if (obj == null || !y(obj)) {
            return 0;
        }
        Enum r1 = (Enum) obj;
        z.b(i, "occurrences");
        if (i == 0) {
            return K(obj);
        }
        int iOrdinal = r1.ordinal();
        int[] iArr = this.f3567e;
        int i2 = iArr[iOrdinal];
        if (i2 == 0) {
            return 0;
        }
        if (i2 <= i) {
            iArr[iOrdinal] = 0;
            this.f3568f--;
            this.f3569g -= (long) i2;
        } else {
            iArr[iOrdinal] = i2 - i;
            this.f3569g -= (long) i;
        }
        return i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.c2
    public int size() {
        return Ints.saturatedCast(this.f3569g);
    }

    @Override // com.google.common.collect.k, com.google.common.collect.c2
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public int u(E e2, int i) {
        x(e2);
        z.b(i, "occurrences");
        if (i == 0) {
            return K(e2);
        }
        int iOrdinal = e2.ordinal();
        int i2 = this.f3567e[iOrdinal];
        long j = i;
        long j2 = ((long) i2) + j;
        Preconditions.checkArgument(j2 <= 2147483647L, "too many occurrences: %s", j2);
        this.f3567e[iOrdinal] = (int) j2;
        if (i2 == 0) {
            this.f3568f++;
        }
        this.f3569g += j;
        return i2;
    }

    @Override // com.google.common.collect.k, com.google.common.collect.c2
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public int m(E e2, int i) {
        x(e2);
        z.b(i, "count");
        int iOrdinal = e2.ordinal();
        int[] iArr = this.f3567e;
        int i2 = iArr[iOrdinal];
        iArr[iOrdinal] = i;
        this.f3569g += (long) (i - i2);
        if (i2 == 0 && i > 0) {
            this.f3568f++;
        } else if (i2 > 0 && i == 0) {
            this.f3568f--;
        }
        return i2;
    }
}
