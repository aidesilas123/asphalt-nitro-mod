package kotlin.reflect.jvm.internal.impl.utils;

import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.TypeCastException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.jvm.internal.n;

/* JADX INFO: compiled from: SmartSet.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class SmartSet<T> extends AbstractSet<T> {
    public static final b a = new b(null);
    private Object b;
    private int c;

    /* JADX INFO: compiled from: SmartSet.kt */
    private static final class a<T> implements Iterator<T>, KMutableIterator {
        private final Iterator<T> a;

        public a(T[] array) {
            Intrinsics.checkParameterIsNotNull(array, "array");
            this.a = ArrayIteratorKt.iterator(array);
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.a.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            return this.a.next();
        }
    }

    /* JADX INFO: compiled from: SmartSet.kt */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(n nVar) {
            this();
        }

        public final <T> SmartSet<T> a() {
            return new SmartSet<>(null);
        }

        public final <T> SmartSet<T> b(Collection<? extends T> set) {
            Intrinsics.checkParameterIsNotNull(set, "set");
            SmartSet<T> smartSet = new SmartSet<>(null);
            smartSet.addAll(set);
            return smartSet;
        }
    }

    /* JADX INFO: compiled from: SmartSet.kt */
    private static final class c<T> implements Iterator<T>, KMutableIterator {
        private boolean a = true;
        private final T b;

        public c(T t) {
            this.b = t;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.a;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!this.a) {
                throw new NoSuchElementException();
            }
            this.a = false;
            return this.b;
        }
    }

    private SmartSet() {
    }

    public /* synthetic */ SmartSet(n nVar) {
        this();
    }

    public static final <T> SmartSet<T> create() {
        return a.a();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(T t) {
        Object obj;
        if (size() == 0) {
            this.b = t;
        } else if (size() == 1) {
            if (Intrinsics.areEqual(this.b, t)) {
                return false;
            }
            this.b = new Object[]{this.b, t};
        } else if (size() < 5) {
            Object obj2 = this.b;
            if (obj2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            Object[] objArr = (Object[]) obj2;
            if (ArraysKt___ArraysKt.contains(objArr, t)) {
                return false;
            }
            if (size() == 4) {
                LinkedHashSet linkedHashSetLinkedSetOf = SetsKt__SetsKt.linkedSetOf(Arrays.copyOf(objArr, objArr.length));
                linkedHashSetLinkedSetOf.add(t);
                obj = linkedHashSetLinkedSetOf;
            } else {
                Object[] objArrCopyOf = Arrays.copyOf(objArr, size() + 1);
                Intrinsics.checkExpressionValueIsNotNull(objArrCopyOf, "java.util.Arrays.copyOf(this, newSize)");
                objArrCopyOf[objArrCopyOf.length - 1] = t;
                obj = objArrCopyOf;
            }
            this.b = obj;
        } else {
            Object obj3 = this.b;
            if (obj3 == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.MutableSet<T>");
            }
            if (!TypeIntrinsics.asMutableSet(obj3).add(t)) {
                return false;
            }
        }
        f(size() + 1);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.b = null;
        f(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        if (size() == 0) {
            return false;
        }
        if (size() == 1) {
            return Intrinsics.areEqual(this.b, obj);
        }
        if (size() < 5) {
            Object obj2 = this.b;
            if (obj2 != null) {
                return ArraysKt___ArraysKt.contains((Object[]) obj2, obj);
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        Object obj3 = this.b;
        if (obj3 != null) {
            return ((Set) obj3).contains(obj);
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.Set<T>");
    }

    public int e() {
        return this.c;
    }

    public void f(int i) {
        this.c = i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<T> iterator() {
        if (size() == 0) {
            return Collections.emptySet().iterator();
        }
        if (size() == 1) {
            return new c(this.b);
        }
        if (size() < 5) {
            Object obj = this.b;
            if (obj != null) {
                return new a((Object[]) obj);
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        Object obj2 = this.b;
        if (obj2 != null) {
            return TypeIntrinsics.asMutableSet(obj2).iterator();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.MutableSet<T>");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return e();
    }
}
