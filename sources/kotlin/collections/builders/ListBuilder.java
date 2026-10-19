package kotlin.collections.builders;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.ads.RequestConfiguration;
import com.json.b4;
import com.json.qc;
import java.io.NotSerializableException;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.AbstractMutableList;
import kotlin.collections.k;
import kotlin.collections.p;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableList;
import kotlin.jvm.internal.markers.KMutableListIterator;
import kotlin.jvm.internal.n;

/* JADX INFO: compiled from: ListBuilder.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0010)\n\u0002\b\u0002\n\u0002\u0010+\n\u0002\b\u0016\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u0000 X*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u00042\b\u0012\u0004\u0012\u0002H\u00010\u00052\u00060\u0006j\u0002`\u0007:\u0002XYB\u0007\b\u0016¢\u0006\u0002\u0010\bB\u000f\b\u0016\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bBM\b\u0002\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\r\u0012\u0006\u0010\u000e\u001a\u00020\n\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000\u0012\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000¢\u0006\u0002\u0010\u0014J\u0015\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u001dJ\u001d\u0010\u001b\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010 J\u001e\u0010!\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\n2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000#H\u0016J\u0016\u0010!\u001a\u00020\u00112\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000#H\u0016J&\u0010$\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020\n2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000#2\u0006\u0010&\u001a\u00020\nH\u0002J\u001d\u0010'\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00028\u0000H\u0002¢\u0006\u0002\u0010 J\f\u0010(\u001a\b\u0012\u0004\u0012\u00028\u00000)J\b\u0010*\u001a\u00020\u001eH\u0002J\b\u0010+\u001a\u00020\u001eH\u0002J\b\u0010,\u001a\u00020\u001eH\u0016J\u0014\u0010-\u001a\u00020\u00112\n\u0010.\u001a\u0006\u0012\u0002\b\u00030)H\u0002J\u0010\u0010/\u001a\u00020\u001e2\u0006\u00100\u001a\u00020\nH\u0002J\u0010\u00101\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020\nH\u0002J\u0013\u00102\u001a\u00020\u00112\b\u0010.\u001a\u0004\u0018\u000103H\u0096\u0002J\u0016\u00104\u001a\u00028\u00002\u0006\u0010\u001f\u001a\u00020\nH\u0096\u0002¢\u0006\u0002\u00105J\b\u00106\u001a\u00020\nH\u0016J\u0015\u00107\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00028\u0000H\u0016¢\u0006\u0002\u00108J\u0018\u00109\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020\n2\u0006\u0010&\u001a\u00020\nH\u0002J\b\u0010:\u001a\u00020\u0011H\u0016J\u000f\u0010;\u001a\b\u0012\u0004\u0012\u00028\u00000<H\u0096\u0002J\u0015\u0010=\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00028\u0000H\u0016¢\u0006\u0002\u00108J\u000e\u0010>\u001a\b\u0012\u0004\u0012\u00028\u00000?H\u0016J\u0016\u0010>\u001a\b\u0012\u0004\u0012\u00028\u00000?2\u0006\u0010\u001f\u001a\u00020\nH\u0016J\b\u0010@\u001a\u00020\u001eH\u0002J\u0015\u0010A\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u001dJ\u0016\u0010B\u001a\u00020\u00112\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000#H\u0016J\u0015\u0010C\u001a\u00028\u00002\u0006\u0010\u001f\u001a\u00020\nH\u0016¢\u0006\u0002\u00105J\u0015\u0010D\u001a\u00028\u00002\u0006\u0010%\u001a\u00020\nH\u0002¢\u0006\u0002\u00105J\u0018\u0010E\u001a\u00020\u001e2\u0006\u0010F\u001a\u00020\n2\u0006\u0010G\u001a\u00020\nH\u0002J\u0016\u0010H\u001a\u00020\u00112\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000#H\u0016J.\u0010I\u001a\u00020\n2\u0006\u0010F\u001a\u00020\n2\u0006\u0010G\u001a\u00020\n2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000#2\u0006\u0010J\u001a\u00020\u0011H\u0002J\u001e\u0010K\u001a\u00028\u00002\u0006\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010LJ\u001e\u0010M\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010N\u001a\u00020\n2\u0006\u0010O\u001a\u00020\nH\u0016J\u0015\u0010P\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001030\rH\u0016¢\u0006\u0002\u0010QJ'\u0010P\u001a\b\u0012\u0004\u0012\u0002HR0\r\"\u0004\b\u0001\u0010R2\f\u0010S\u001a\b\u0012\u0004\u0012\u0002HR0\rH\u0016¢\u0006\u0002\u0010TJ\b\u0010U\u001a\u00020VH\u0016J\b\u0010W\u001a\u000203H\u0002R\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\rX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0015R\u0016\u0010\u0012\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u00118BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001a¨\u0006Z"}, d2 = {"Lkotlin/collections/builders/ListBuilder;", "E", "", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "Lkotlin/collections/AbstractMutableList;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "()V", "initialCapacity", "", "(I)V", "array", "", TypedValues.CycleType.S_WAVE_OFFSET, "length", "isReadOnly", "", "backing", qc.y, "([Ljava/lang/Object;IIZLkotlin/collections/builders/ListBuilder;Lkotlin/collections/builders/ListBuilder;)V", "[Ljava/lang/Object;", "isEffectivelyReadOnly", "()Z", "size", "getSize", "()I", "add", "element", "(Ljava/lang/Object;)Z", "", "index", "(ILjava/lang/Object;)V", "addAll", "elements", "", "addAllInternal", "i", b4.p, "addAtInternal", "build", "", "checkForComodification", "checkIsMutable", "clear", "contentEquals", "other", "ensureCapacityInternal", "minCapacity", "ensureExtraCapacity", "equals", "", "get", "(I)Ljava/lang/Object;", "hashCode", "indexOf", "(Ljava/lang/Object;)I", "insertAtInternal", "isEmpty", "iterator", "", "lastIndexOf", "listIterator", "", "registerModification", "remove", "removeAll", "removeAt", "removeAtInternal", "removeRangeInternal", "rangeOffset", "rangeLength", "retainAll", "retainOrRemoveAllInternal", "retain", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "subList", "fromIndex", "toIndex", "toArray", "()[Ljava/lang/Object;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, ShareConstants.DESTINATION, "([Ljava/lang/Object;)[Ljava/lang/Object;", "toString", "", "writeReplace", "Companion", "Itr", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
public final class ListBuilder<E> extends AbstractMutableList<E> implements List<E>, RandomAccess, Serializable, KMutableList {
    private static final a a = new a(null);
    private static final ListBuilder b;
    private E[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f8854d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f8855e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f8856f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ListBuilder<E> f8857g;
    private final ListBuilder<E> h;

    /* JADX INFO: compiled from: ListBuilder.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lkotlin/collections/builders/ListBuilder$Companion;", "", "()V", "Empty", "Lkotlin/collections/builders/ListBuilder;", "", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
    private static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: ListBuilder.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\t\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001d\b\u0016\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0015\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\rJ\b\u0010\u000e\u001a\u00020\u000bH\u0002J\t\u0010\u000f\u001a\u00020\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0010H\u0016J\u000e\u0010\u0012\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0002\u0010\u0013J\b\u0010\u0014\u001a\u00020\u0006H\u0016J\r\u0010\u0015\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u0013J\b\u0010\u0016\u001a\u00020\u0006H\u0016J\b\u0010\u0017\u001a\u00020\u000bH\u0016J\u0015\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\rR\u000e\u0010\b\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lkotlin/collections/builders/ListBuilder$Itr;", "E", "", "list", "Lkotlin/collections/builders/ListBuilder;", "index", "", "(Lkotlin/collections/builders/ListBuilder;I)V", "expectedModCount", "lastIndex", "add", "", "element", "(Ljava/lang/Object;)V", "checkForComodification", "hasNext", "", "hasPrevious", "next", "()Ljava/lang/Object;", "nextIndex", "previous", "previousIndex", "remove", "set", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
    private static final class b<E> implements ListIterator<E>, KMutableListIterator {
        private final ListBuilder<E> a;
        private int b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f8858d;

        public b(ListBuilder<E> list, int i) {
            Intrinsics.checkNotNullParameter(list, "list");
            this.a = list;
            this.b = i;
            this.c = -1;
            this.f8858d = ((AbstractList) list).modCount;
        }

        private final void c() {
            if (((AbstractList) this.a).modCount != this.f8858d) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.ListIterator
        public void add(E element) {
            c();
            ListBuilder<E> listBuilder = this.a;
            int i = this.b;
            this.b = i + 1;
            listBuilder.add(i, element);
            this.c = -1;
            this.f8858d = ((AbstractList) this.a).modCount;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.b < ((ListBuilder) this.a).f8855e;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.b > 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public E next() {
            c();
            if (this.b >= ((ListBuilder) this.a).f8855e) {
                throw new NoSuchElementException();
            }
            int i = this.b;
            this.b = i + 1;
            this.c = i;
            return (E) ((ListBuilder) this.a).c[((ListBuilder) this.a).f8854d + this.c];
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.b;
        }

        @Override // java.util.ListIterator
        public E previous() {
            c();
            int i = this.b;
            if (i <= 0) {
                throw new NoSuchElementException();
            }
            int i2 = i - 1;
            this.b = i2;
            this.c = i2;
            return (E) ((ListBuilder) this.a).c[((ListBuilder) this.a).f8854d + this.c];
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.b - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            c();
            int i = this.c;
            if (!(i != -1)) {
                throw new IllegalStateException("Call next() or previous() before removing element from the iterator.".toString());
            }
            this.a.remove(i);
            this.b = this.c;
            this.c = -1;
            this.f8858d = ((AbstractList) this.a).modCount;
        }

        @Override // java.util.ListIterator
        public void set(E element) {
            c();
            int i = this.c;
            if (!(i != -1)) {
                throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.".toString());
            }
            this.a.set(i, element);
        }
    }

    static {
        ListBuilder listBuilder = new ListBuilder(0);
        listBuilder.f8856f = true;
        b = listBuilder;
    }

    public ListBuilder() {
        this(10);
    }

    public ListBuilder(int i) {
        this(ListBuilderKt.arrayOfUninitializedElements(i), 0, 0, false, null, null);
    }

    private ListBuilder(E[] eArr, int i, int i2, boolean z, ListBuilder<E> listBuilder, ListBuilder<E> listBuilder2) {
        this.c = eArr;
        this.f8854d = i;
        this.f8855e = i2;
        this.f8856f = z;
        this.f8857g = listBuilder;
        this.h = listBuilder2;
        if (listBuilder != null) {
            ((AbstractList) this).modCount = ((AbstractList) listBuilder).modCount;
        }
    }

    private final boolean A() {
        ListBuilder<E> listBuilder;
        return this.f8856f || ((listBuilder = this.h) != null && listBuilder.f8856f);
    }

    private final void B() {
        ((AbstractList) this).modCount++;
    }

    private final E C(int i) {
        B();
        ListBuilder<E> listBuilder = this.f8857g;
        if (listBuilder != null) {
            this.f8855e--;
            return listBuilder.C(i);
        }
        E[] eArr = this.c;
        E e2 = eArr[i];
        k.copyInto(eArr, eArr, i, i + 1, this.f8854d + this.f8855e);
        ListBuilderKt.resetAt(this.c, (this.f8854d + this.f8855e) - 1);
        this.f8855e--;
        return e2;
    }

    private final void D(int i, int i2) {
        if (i2 > 0) {
            B();
        }
        ListBuilder<E> listBuilder = this.f8857g;
        if (listBuilder != null) {
            listBuilder.D(i, i2);
        } else {
            E[] eArr = this.c;
            k.copyInto(eArr, eArr, i, i + i2, this.f8855e);
            E[] eArr2 = this.c;
            int i3 = this.f8855e;
            ListBuilderKt.resetRange(eArr2, i3 - i2, i3);
        }
        this.f8855e -= i2;
    }

    private final int E(int i, int i2, Collection<? extends E> collection, boolean z) {
        int iE;
        ListBuilder<E> listBuilder = this.f8857g;
        if (listBuilder != null) {
            iE = listBuilder.E(i, i2, collection, z);
        } else {
            int i3 = 0;
            int i4 = 0;
            while (i3 < i2) {
                int i5 = i + i3;
                if (collection.contains(this.c[i5]) == z) {
                    E[] eArr = this.c;
                    i3++;
                    eArr[i4 + i] = eArr[i5];
                    i4++;
                } else {
                    i3++;
                }
            }
            int i6 = i2 - i4;
            E[] eArr2 = this.c;
            k.copyInto(eArr2, eArr2, i + i4, i2 + i, this.f8855e);
            E[] eArr3 = this.c;
            int i7 = this.f8855e;
            ListBuilderKt.resetRange(eArr3, i7 - i6, i7);
            iE = i6;
        }
        if (iE > 0) {
            B();
        }
        this.f8855e -= iE;
        return iE;
    }

    private final void h(int i, Collection<? extends E> collection, int i2) {
        B();
        ListBuilder<E> listBuilder = this.f8857g;
        if (listBuilder != null) {
            listBuilder.h(i, collection, i2);
            this.c = this.f8857g.c;
            this.f8855e += i2;
        } else {
            z(i, i2);
            Iterator<? extends E> it = collection.iterator();
            for (int i3 = 0; i3 < i2; i3++) {
                this.c[i + i3] = it.next();
            }
        }
    }

    private final void i(int i, E e2) {
        B();
        ListBuilder<E> listBuilder = this.f8857g;
        if (listBuilder == null) {
            z(i, 1);
            this.c[i] = e2;
        } else {
            listBuilder.i(i, e2);
            this.c = this.f8857g.c;
            this.f8855e++;
        }
    }

    private final void n() {
        ListBuilder<E> listBuilder = this.h;
        if (listBuilder != null && ((AbstractList) listBuilder).modCount != ((AbstractList) this).modCount) {
            throw new ConcurrentModificationException();
        }
    }

    private final void r() {
        if (A()) {
            throw new UnsupportedOperationException();
        }
    }

    private final boolean t(List<?> list) {
        return ListBuilderKt.a(this.c, this.f8854d, this.f8855e, list);
    }

    private final void v(int i) {
        if (i < 0) {
            throw new OutOfMemoryError();
        }
        E[] eArr = this.c;
        if (i > eArr.length) {
            this.c = (E[]) ListBuilderKt.copyOfUninitializedElements(this.c, kotlin.collections.AbstractList.a.e(eArr.length, i));
        }
    }

    private final Object writeReplace() throws NotSerializableException {
        if (A()) {
            return new SerializedCollection(this, 0);
        }
        throw new NotSerializableException("The list cannot be serialized while it is being built.");
    }

    private final void y(int i) {
        v(this.f8855e + i);
    }

    private final void z(int i, int i2) {
        y(i2);
        E[] eArr = this.c;
        k.copyInto(eArr, eArr, i + i2, i, this.f8854d + this.f8855e);
        this.f8855e += i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int index, E element) {
        r();
        n();
        kotlin.collections.AbstractList.a.c(index, this.f8855e);
        i(this.f8854d + index, element);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E element) {
        r();
        n();
        i(this.f8854d + this.f8855e, element);
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int index, Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        r();
        n();
        kotlin.collections.AbstractList.a.c(index, this.f8855e);
        int size = elements.size();
        h(this.f8854d + index, elements, size);
        return size > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        r();
        n();
        int size = elements.size();
        h(this.f8854d + this.f8855e, elements, size);
        return size > 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        r();
        n();
        D(this.f8854d, this.f8855e);
    }

    @Override // kotlin.collections.AbstractMutableList
    /* JADX INFO: renamed from: e */
    public int getF8867e() {
        n();
        return this.f8855e;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object other) {
        n();
        return other == this || ((other instanceof List) && t((List) other));
    }

    @Override // kotlin.collections.AbstractMutableList
    public E f(int i) {
        r();
        n();
        kotlin.collections.AbstractList.a.b(i, this.f8855e);
        return C(this.f8854d + i);
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int index) {
        n();
        kotlin.collections.AbstractList.a.b(index, this.f8855e);
        return this.c[this.f8854d + index];
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        n();
        return ListBuilderKt.b(this.c, this.f8854d, this.f8855e);
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object element) {
        n();
        for (int i = 0; i < this.f8855e; i++) {
            if (Intrinsics.areEqual(this.c[this.f8854d + i], element)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        n();
        return this.f8855e == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return listIterator(0);
    }

    public final List<E> j() {
        if (this.f8857g != null) {
            throw new IllegalStateException();
        }
        r();
        this.f8856f = true;
        return this.f8855e > 0 ? this : b;
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object element) {
        n();
        for (int i = this.f8855e - 1; i >= 0; i--) {
            if (Intrinsics.areEqual(this.c[this.f8854d + i], element)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator(int index) {
        n();
        kotlin.collections.AbstractList.a.c(index, this.f8855e);
        return new b(this, index);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object element) {
        r();
        n();
        int iIndexOf = indexOf(element);
        if (iIndexOf >= 0) {
            remove(iIndexOf);
        }
        return iIndexOf >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        r();
        n();
        return E(this.f8854d, this.f8855e, elements, false) > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        r();
        n();
        return E(this.f8854d, this.f8855e, elements, true) > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int index, E element) {
        r();
        n();
        kotlin.collections.AbstractList.a.b(index, this.f8855e);
        E[] eArr = this.c;
        int i = this.f8854d;
        E e2 = eArr[i + index];
        eArr[i + index] = element;
        return e2;
    }

    @Override // java.util.AbstractList, java.util.List
    public List<E> subList(int fromIndex, int toIndex) {
        kotlin.collections.AbstractList.a.d(fromIndex, toIndex, this.f8855e);
        E[] eArr = this.c;
        int i = this.f8854d + fromIndex;
        int i2 = toIndex - fromIndex;
        boolean z = this.f8856f;
        ListBuilder<E> listBuilder = this.h;
        return new ListBuilder(eArr, i, i2, z, this, listBuilder == null ? this : listBuilder);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray() {
        n();
        E[] eArr = this.c;
        int i = this.f8854d;
        return k.copyOfRange(eArr, i, this.f8855e + i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public <T> T[] toArray(T[] destination) {
        Intrinsics.checkNotNullParameter(destination, "destination");
        n();
        int length = destination.length;
        int i = this.f8855e;
        if (length >= i) {
            E[] eArr = this.c;
            int i2 = this.f8854d;
            k.copyInto(eArr, destination, 0, i2, i + i2);
            return (T[]) p.terminateCollectionToArray(this.f8855e, destination);
        }
        E[] eArr2 = this.c;
        int i3 = this.f8854d;
        T[] tArr = (T[]) Arrays.copyOfRange(eArr2, i3, i + i3, destination.getClass());
        Intrinsics.checkNotNullExpressionValue(tArr, "copyOfRange(...)");
        return tArr;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        n();
        return ListBuilderKt.c(this.c, this.f8854d, this.f8855e, this);
    }
}
