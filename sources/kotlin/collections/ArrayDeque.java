package kotlin.collections;

import com.google.android.gms.ads.RequestConfiguration;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX INFO: renamed from: kotlin.collections.j, reason: from Kotlin metadata */
/* JADX INFO: compiled from: ArrayDeque.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u001b\b\u0007\u0018\u0000 P*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001PB\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B\u0007\b\u0016¢\u0006\u0002\u0010\u0006B\u0015\b\u0016\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\b¢\u0006\u0002\u0010\tJ\u0015\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0016J\u001d\u0010\u0013\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0019J\u001e\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0016J\u0016\u0010\u001a\u001a\u00020\u00142\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0016J\u0013\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00028\u0000¢\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00028\u0000¢\u0006\u0002\u0010\u001cJ\b\u0010\u001e\u001a\u00020\u0017H\u0016J\u0016\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\u0016J\u001e\u0010 \u001a\u00020\u00172\u0006\u0010!\u001a\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0002J\u0010\u0010\"\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\u0004H\u0002J\u0010\u0010$\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0010\u0010%\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u0004H\u0002J\u001d\u0010'\u001a\u00020\u00142\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00140)H\u0082\bJ\u000b\u0010*\u001a\u00028\u0000¢\u0006\u0002\u0010+J\r\u0010,\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010+J\u0016\u0010-\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u0004H\u0096\u0002¢\u0006\u0002\u0010.J\u0010\u0010/\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0015\u00100\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016¢\u0006\u0002\u00101J\u0016\u00102\u001a\u00028\u00002\u0006\u0010!\u001a\u00020\u0004H\u0083\b¢\u0006\u0002\u0010.J\u0011\u0010!\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0083\bJM\u00103\u001a\u00020\u00172>\u00104\u001a:\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b6\u0012\b\b7\u0012\u0004\b\b(\u000e\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000b¢\u0006\f\b6\u0012\b\b7\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\u001705H\u0000¢\u0006\u0002\b8J\b\u00109\u001a\u00020\u0014H\u0016J\u000b\u0010:\u001a\u00028\u0000¢\u0006\u0002\u0010+J\u0015\u0010;\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016¢\u0006\u0002\u00101J\r\u0010<\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010+J\u0010\u0010=\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0010\u0010>\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0015\u0010?\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0016J\u0016\u0010@\u001a\u00020\u00142\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0016J\u0015\u0010A\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u0004H\u0016¢\u0006\u0002\u0010.J\u000b\u0010B\u001a\u00028\u0000¢\u0006\u0002\u0010+J\r\u0010C\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010+J\u000b\u0010D\u001a\u00028\u0000¢\u0006\u0002\u0010+J\r\u0010E\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010+J\u0016\u0010F\u001a\u00020\u00142\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0016J\u001e\u0010G\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010HJ\u0017\u0010I\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bH\u0000¢\u0006\u0004\bJ\u0010KJ)\u0010I\u001a\b\u0012\u0004\u0012\u0002HL0\u000b\"\u0004\b\u0001\u0010L2\f\u0010M\u001a\b\u0012\u0004\u0012\u0002HL0\u000bH\u0000¢\u0006\u0004\bJ\u0010NJ\u0015\u0010O\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bH\u0016¢\u0006\u0002\u0010KJ'\u0010O\u001a\b\u0012\u0004\u0012\u0002HL0\u000b\"\u0004\b\u0001\u0010L2\f\u0010M\u001a\b\u0012\u0004\u0012\u0002HL0\u000bH\u0016¢\u0006\u0002\u0010NR\u0018\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u000e\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004@RX\u0096\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006Q"}, d2 = {"Lkotlin/collections/ArrayDeque;", "E", "Lkotlin/collections/AbstractMutableList;", "initialCapacity", "", "(I)V", "()V", "elements", "", "(Ljava/util/Collection;)V", "elementData", "", "", "[Ljava/lang/Object;", TtmlNode.TAG_HEAD, "<set-?>", "size", "getSize", "()I", "add", "", "element", "(Ljava/lang/Object;)Z", "", "index", "(ILjava/lang/Object;)V", "addAll", "addFirst", "(Ljava/lang/Object;)V", "addLast", "clear", "contains", "copyCollectionElements", "internalIndex", "copyElements", "newCapacity", "decremented", "ensureCapacity", "minCapacity", "filterInPlace", "predicate", "Lkotlin/Function1;", "first", "()Ljava/lang/Object;", "firstOrNull", "get", "(I)Ljava/lang/Object;", "incremented", "indexOf", "(Ljava/lang/Object;)I", "internalGet", "internalStructure", "structure", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "internalStructure$kotlin_stdlib", "isEmpty", "last", "lastIndexOf", "lastOrNull", "negativeMod", "positiveMod", "remove", "removeAll", "removeAt", "removeFirst", "removeFirstOrNull", "removeLast", "removeLastOrNull", "retainAll", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "testToArray", "testToArray$kotlin_stdlib", "()[Ljava/lang/Object;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "array", "([Ljava/lang/Object;)[Ljava/lang/Object;", "toArray", "Companion", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
public final class ArrayDeque<E> extends AbstractMutableList<E> {
    public static final a a = new a(null);
    private static final Object[] b = new Object[0];
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object[] f8866d = b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f8867e;

    /* JADX INFO: renamed from: kotlin.collections.j$a */
    /* JADX INFO: compiled from: ArrayDeque.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0018\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlin/collections/ArrayDeque$Companion;", "", "()V", "defaultMinCapacity", "", "emptyElementData", "", "[Ljava/lang/Object;", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }
    }

    private final void h(int i, Collection<? extends E> collection) {
        Iterator<? extends E> it = collection.iterator();
        int length = this.f8866d.length;
        while (i < length && it.hasNext()) {
            this.f8866d[i] = it.next();
            i++;
        }
        int i2 = this.c;
        for (int i3 = 0; i3 < i2 && it.hasNext(); i3++) {
            this.f8866d[i3] = it.next();
        }
        this.f8867e = size() + collection.size();
    }

    private final void i(int i) {
        Object[] objArr = new Object[i];
        Object[] objArr2 = this.f8866d;
        k.copyInto(objArr2, objArr, 0, this.c, objArr2.length);
        Object[] objArr3 = this.f8866d;
        int length = objArr3.length;
        int i2 = this.c;
        k.copyInto(objArr3, objArr, length - i2, 0, i2);
        this.c = 0;
        this.f8866d = objArr;
    }

    private final int j(int i) {
        return i == 0 ? ArraysKt___ArraysKt.getLastIndex(this.f8866d) : i - 1;
    }

    private final void n(int i) {
        if (i < 0) {
            throw new IllegalStateException("Deque is too big.");
        }
        Object[] objArr = this.f8866d;
        if (i <= objArr.length) {
            return;
        }
        if (objArr == b) {
            this.f8866d = new Object[RangesKt___RangesKt.coerceAtLeast(i, 10)];
        } else {
            i(AbstractList.a.e(objArr.length, i));
        }
    }

    private final int r(int i) {
        if (i == ArraysKt___ArraysKt.getLastIndex(this.f8866d)) {
            return 0;
        }
        return i + 1;
    }

    private final int t(int i) {
        return i < 0 ? i + this.f8866d.length : i;
    }

    private final int v(int i) {
        Object[] objArr = this.f8866d;
        return i >= objArr.length ? i - objArr.length : i;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int index, E element) {
        AbstractList.a.c(index, size());
        if (index == size()) {
            addLast(element);
            return;
        }
        if (index == 0) {
            addFirst(element);
            return;
        }
        n(size() + 1);
        int iV = v(this.c + index);
        if (index < ((size() + 1) >> 1)) {
            int iJ = j(iV);
            int iJ2 = j(this.c);
            int i = this.c;
            if (iJ >= i) {
                Object[] objArr = this.f8866d;
                objArr[iJ2] = objArr[i];
                k.copyInto(objArr, objArr, i, i + 1, iJ + 1);
            } else {
                Object[] objArr2 = this.f8866d;
                k.copyInto(objArr2, objArr2, i - 1, i, objArr2.length);
                Object[] objArr3 = this.f8866d;
                objArr3[objArr3.length - 1] = objArr3[0];
                k.copyInto(objArr3, objArr3, 0, 1, iJ + 1);
            }
            this.f8866d[iJ] = element;
            this.c = iJ2;
        } else {
            int iV2 = v(this.c + size());
            if (iV < iV2) {
                Object[] objArr4 = this.f8866d;
                k.copyInto(objArr4, objArr4, iV + 1, iV, iV2);
            } else {
                Object[] objArr5 = this.f8866d;
                k.copyInto(objArr5, objArr5, 1, 0, iV2);
                Object[] objArr6 = this.f8866d;
                objArr6[0] = objArr6[objArr6.length - 1];
                k.copyInto(objArr6, objArr6, iV + 1, iV, objArr6.length - 1);
            }
            this.f8866d[iV] = element;
        }
        this.f8867e = size() + 1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E element) {
        addLast(element);
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int index, Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        AbstractList.a.c(index, size());
        if (elements.isEmpty()) {
            return false;
        }
        if (index == size()) {
            return addAll(elements);
        }
        n(size() + elements.size());
        int iV = v(this.c + size());
        int iV2 = v(this.c + index);
        int size = elements.size();
        if (index < ((size() + 1) >> 1)) {
            int i = this.c;
            int length = i - size;
            if (iV2 < i) {
                Object[] objArr = this.f8866d;
                k.copyInto(objArr, objArr, length, i, objArr.length);
                if (size >= iV2) {
                    Object[] objArr2 = this.f8866d;
                    k.copyInto(objArr2, objArr2, objArr2.length - size, 0, iV2);
                } else {
                    Object[] objArr3 = this.f8866d;
                    k.copyInto(objArr3, objArr3, objArr3.length - size, 0, size);
                    Object[] objArr4 = this.f8866d;
                    k.copyInto(objArr4, objArr4, 0, size, iV2);
                }
            } else if (length >= 0) {
                Object[] objArr5 = this.f8866d;
                k.copyInto(objArr5, objArr5, length, i, iV2);
            } else {
                Object[] objArr6 = this.f8866d;
                length += objArr6.length;
                int i2 = iV2 - i;
                int length2 = objArr6.length - length;
                if (length2 >= i2) {
                    k.copyInto(objArr6, objArr6, length, i, iV2);
                } else {
                    k.copyInto(objArr6, objArr6, length, i, i + length2);
                    Object[] objArr7 = this.f8866d;
                    k.copyInto(objArr7, objArr7, 0, this.c + length2, iV2);
                }
            }
            this.c = length;
            h(t(iV2 - size), elements);
        } else {
            int i3 = iV2 + size;
            if (iV2 < iV) {
                int i4 = size + iV;
                Object[] objArr8 = this.f8866d;
                if (i4 <= objArr8.length) {
                    k.copyInto(objArr8, objArr8, i3, iV2, iV);
                } else if (i3 >= objArr8.length) {
                    k.copyInto(objArr8, objArr8, i3 - objArr8.length, iV2, iV);
                } else {
                    int length3 = iV - (i4 - objArr8.length);
                    k.copyInto(objArr8, objArr8, 0, length3, iV);
                    Object[] objArr9 = this.f8866d;
                    k.copyInto(objArr9, objArr9, i3, iV2, length3);
                }
            } else {
                Object[] objArr10 = this.f8866d;
                k.copyInto(objArr10, objArr10, size, 0, iV);
                Object[] objArr11 = this.f8866d;
                if (i3 >= objArr11.length) {
                    k.copyInto(objArr11, objArr11, i3 - objArr11.length, iV2, objArr11.length);
                } else {
                    k.copyInto(objArr11, objArr11, 0, objArr11.length - size, objArr11.length);
                    Object[] objArr12 = this.f8866d;
                    k.copyInto(objArr12, objArr12, i3, iV2, objArr12.length - size);
                }
            }
            h(iV2, elements);
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (elements.isEmpty()) {
            return false;
        }
        n(size() + elements.size());
        h(v(this.c + size()), elements);
        return true;
    }

    public final void addFirst(E element) {
        n(size() + 1);
        int iJ = j(this.c);
        this.c = iJ;
        this.f8866d[iJ] = element;
        this.f8867e = size() + 1;
    }

    public final void addLast(E element) {
        n(size() + 1);
        this.f8866d[v(this.c + size())] = element;
        this.f8867e = size() + 1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        int iV = v(this.c + size());
        int i = this.c;
        if (i < iV) {
            ArraysKt___ArraysJvmKt.fill(this.f8866d, (Object) null, i, iV);
        } else if (!isEmpty()) {
            Object[] objArr = this.f8866d;
            ArraysKt___ArraysJvmKt.fill(objArr, (Object) null, this.c, objArr.length);
            ArraysKt___ArraysJvmKt.fill(this.f8866d, (Object) null, 0, iV);
        }
        this.c = 0;
        this.f8867e = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object element) {
        return indexOf(element) != -1;
    }

    @Override // kotlin.collections.AbstractMutableList
    /* JADX INFO: renamed from: e, reason: from getter */
    public int getF8867e() {
        return this.f8867e;
    }

    @Override // kotlin.collections.AbstractMutableList
    public E f(int i) {
        AbstractList.a.b(i, size());
        if (i == CollectionsKt__CollectionsKt.getLastIndex(this)) {
            return removeLast();
        }
        if (i == 0) {
            return removeFirst();
        }
        int iV = v(this.c + i);
        E e2 = (E) this.f8866d[iV];
        if (i < (size() >> 1)) {
            int i2 = this.c;
            if (iV >= i2) {
                Object[] objArr = this.f8866d;
                k.copyInto(objArr, objArr, i2 + 1, i2, iV);
            } else {
                Object[] objArr2 = this.f8866d;
                k.copyInto(objArr2, objArr2, 1, 0, iV);
                Object[] objArr3 = this.f8866d;
                objArr3[0] = objArr3[objArr3.length - 1];
                int i3 = this.c;
                k.copyInto(objArr3, objArr3, i3 + 1, i3, objArr3.length - 1);
            }
            Object[] objArr4 = this.f8866d;
            int i4 = this.c;
            objArr4[i4] = null;
            this.c = r(i4);
        } else {
            int iV2 = v(this.c + CollectionsKt__CollectionsKt.getLastIndex(this));
            if (iV <= iV2) {
                Object[] objArr5 = this.f8866d;
                k.copyInto(objArr5, objArr5, iV, iV + 1, iV2 + 1);
            } else {
                Object[] objArr6 = this.f8866d;
                k.copyInto(objArr6, objArr6, iV, iV + 1, objArr6.length);
                Object[] objArr7 = this.f8866d;
                objArr7[objArr7.length - 1] = objArr7[0];
                k.copyInto(objArr7, objArr7, 0, 1, iV2 + 1);
            }
            this.f8866d[iV2] = null;
        }
        this.f8867e = size() - 1;
        return e2;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int index) {
        AbstractList.a.b(index, size());
        return (E) this.f8866d[v(this.c + index)];
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object element) {
        int i;
        int iV = v(this.c + size());
        int length = this.c;
        if (length < iV) {
            while (length < iV) {
                if (Intrinsics.areEqual(element, this.f8866d[length])) {
                    i = this.c;
                } else {
                    length++;
                }
            }
            return -1;
        }
        if (length < iV) {
            return -1;
        }
        int length2 = this.f8866d.length;
        while (true) {
            if (length >= length2) {
                for (int i2 = 0; i2 < iV; i2++) {
                    if (Intrinsics.areEqual(element, this.f8866d[i2])) {
                        length = i2 + this.f8866d.length;
                        i = this.c;
                    }
                }
                return -1;
            }
            if (Intrinsics.areEqual(element, this.f8866d[length])) {
                i = this.c;
                break;
            }
            length++;
        }
        return length - i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return size() == 0;
    }

    public final E last() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        return (E) this.f8866d[v(this.c + CollectionsKt__CollectionsKt.getLastIndex(this))];
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object element) {
        int lastIndex;
        int i;
        int iV = v(this.c + size());
        int i2 = this.c;
        if (i2 < iV) {
            lastIndex = iV - 1;
            if (i2 <= lastIndex) {
                while (!Intrinsics.areEqual(element, this.f8866d[lastIndex])) {
                    if (lastIndex != i2) {
                        lastIndex--;
                    }
                }
                i = this.c;
                return lastIndex - i;
            }
            return -1;
        }
        if (i2 > iV) {
            int i3 = iV - 1;
            while (true) {
                if (-1 >= i3) {
                    lastIndex = ArraysKt___ArraysKt.getLastIndex(this.f8866d);
                    int i4 = this.c;
                    if (i4 <= lastIndex) {
                        while (!Intrinsics.areEqual(element, this.f8866d[lastIndex])) {
                            if (lastIndex != i4) {
                                lastIndex--;
                            }
                        }
                        i = this.c;
                    }
                } else {
                    if (Intrinsics.areEqual(element, this.f8866d[i3])) {
                        lastIndex = i3 + this.f8866d.length;
                        i = this.c;
                        break;
                    }
                    i3--;
                }
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object element) {
        int iIndexOf = indexOf(element);
        if (iIndexOf == -1) {
            return false;
        }
        remove(iIndexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection<? extends Object> elements) {
        int iV;
        Intrinsics.checkNotNullParameter(elements, "elements");
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty()) {
            if (!(this.f8866d.length == 0)) {
                int iV2 = v(this.c + size());
                int i = this.c;
                if (i < iV2) {
                    iV = i;
                    while (i < iV2) {
                        Object obj = this.f8866d[i];
                        if (!elements.contains(obj)) {
                            this.f8866d[iV] = obj;
                            iV++;
                        } else {
                            z = true;
                        }
                        i++;
                    }
                    ArraysKt___ArraysJvmKt.fill(this.f8866d, (Object) null, iV, iV2);
                } else {
                    int length = this.f8866d.length;
                    int i2 = i;
                    boolean z2 = false;
                    while (i < length) {
                        Object[] objArr = this.f8866d;
                        Object obj2 = objArr[i];
                        objArr[i] = null;
                        if (!elements.contains(obj2)) {
                            this.f8866d[i2] = obj2;
                            i2++;
                        } else {
                            z2 = true;
                        }
                        i++;
                    }
                    iV = v(i2);
                    for (int i3 = 0; i3 < iV2; i3++) {
                        Object[] objArr2 = this.f8866d;
                        Object obj3 = objArr2[i3];
                        objArr2[i3] = null;
                        if (!elements.contains(obj3)) {
                            this.f8866d[iV] = obj3;
                            iV = r(iV);
                        } else {
                            z2 = true;
                        }
                    }
                    z = z2;
                }
                if (z) {
                    this.f8867e = t(iV - this.c);
                }
            }
        }
        return z;
    }

    public final E removeFirst() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        Object[] objArr = this.f8866d;
        int i = this.c;
        E e2 = (E) objArr[i];
        objArr[i] = null;
        this.c = r(i);
        this.f8867e = size() - 1;
        return e2;
    }

    public final E removeLast() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        int iV = v(this.c + CollectionsKt__CollectionsKt.getLastIndex(this));
        Object[] objArr = this.f8866d;
        E e2 = (E) objArr[iV];
        objArr[iV] = null;
        this.f8867e = size() - 1;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection<? extends Object> elements) {
        int iV;
        Intrinsics.checkNotNullParameter(elements, "elements");
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty()) {
            if (!(this.f8866d.length == 0)) {
                int iV2 = v(this.c + size());
                int i = this.c;
                if (i < iV2) {
                    iV = i;
                    while (i < iV2) {
                        Object obj = this.f8866d[i];
                        if (elements.contains(obj)) {
                            this.f8866d[iV] = obj;
                            iV++;
                        } else {
                            z = true;
                        }
                        i++;
                    }
                    ArraysKt___ArraysJvmKt.fill(this.f8866d, (Object) null, iV, iV2);
                } else {
                    int length = this.f8866d.length;
                    int i2 = i;
                    boolean z2 = false;
                    while (i < length) {
                        Object[] objArr = this.f8866d;
                        Object obj2 = objArr[i];
                        objArr[i] = null;
                        if (elements.contains(obj2)) {
                            this.f8866d[i2] = obj2;
                            i2++;
                        } else {
                            z2 = true;
                        }
                        i++;
                    }
                    iV = v(i2);
                    for (int i3 = 0; i3 < iV2; i3++) {
                        Object[] objArr2 = this.f8866d;
                        Object obj3 = objArr2[i3];
                        objArr2[i3] = null;
                        if (elements.contains(obj3)) {
                            this.f8866d[iV] = obj3;
                            iV = r(iV);
                        } else {
                            z2 = true;
                        }
                    }
                    z = z2;
                }
                if (z) {
                    this.f8867e = t(iV - this.c);
                }
            }
        }
        return z;
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int index, E element) {
        AbstractList.a.b(index, size());
        int iV = v(this.c + index);
        Object[] objArr = this.f8866d;
        E e2 = (E) objArr[iV];
        objArr[iV] = element;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public <T> T[] toArray(T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        if (array.length < size()) {
            array = (T[]) ArraysKt__ArraysJVMKt.arrayOfNulls(array, size());
        }
        int iV = v(this.c + size());
        int i = this.c;
        if (i < iV) {
            ArraysKt___ArraysJvmKt.copyInto$default(this.f8866d, array, 0, i, iV, 2, (Object) null);
        } else if (!isEmpty()) {
            Object[] objArr = this.f8866d;
            k.copyInto(objArr, array, 0, this.c, objArr.length);
            Object[] objArr2 = this.f8866d;
            k.copyInto(objArr2, array, objArr2.length - this.c, 0, iV);
        }
        return (T[]) p.terminateCollectionToArray(size(), array);
    }

    public final E y() {
        if (isEmpty()) {
            return null;
        }
        return removeFirst();
    }

    public final E z() {
        if (isEmpty()) {
            return null;
        }
        return removeLast();
    }
}
