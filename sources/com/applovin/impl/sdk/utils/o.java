package com.applovin.impl.sdk.utils;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.Comparable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.RandomAccess;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class o<T extends Comparable<? super T>> implements RandomAccess, Set<T> {
    private final ArrayList<T> aVQ = new ArrayList<>();
    private final HashSet<T> aVR = new HashSet<>();

    public T Lp() {
        return this.aVQ.get(size() - 1);
    }

    public void a(int i, T t) {
        this.aVR.remove(this.aVQ.get(i));
        this.aVQ.set(i, t);
        this.aVR.add(t);
    }

    @Override // java.util.Set, java.util.Collection
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public boolean add(T t) {
        if (contains(t)) {
            return false;
        }
        if (isEmpty() || t.compareTo(Lp()) > 0) {
            this.aVQ.add(t);
        } else {
            this.aVQ.add(c(t), t);
        }
        return this.aVR.add(t);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean addAll(@NonNull Collection<? extends T> collection) {
        boolean z;
        Iterator<? extends T> it = collection.iterator();
        while (true) {
            while (it.hasNext()) {
                z = add(it.next()) || z;
            }
            return z;
        }
    }

    public int b(@Nullable T t) {
        if (t == null || !contains(t)) {
            return -1;
        }
        return c(t);
    }

    public int c(T t) {
        int iBinarySearch = Collections.binarySearch(this.aVQ, t);
        if (iBinarySearch < 0) {
            return ~iBinarySearch;
        }
        Comparable comparableGU = gU(iBinarySearch);
        while (iBinarySearch >= 0 && comparableGU == gU(iBinarySearch)) {
            iBinarySearch--;
        }
        return iBinarySearch + 1;
    }

    @Override // java.util.Set, java.util.Collection
    public void clear() {
        this.aVQ.clear();
        this.aVR.clear();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean contains(@Nullable Object obj) {
        return this.aVR.contains(obj);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(@NonNull Collection<?> collection) {
        return this.aVR.containsAll(collection);
    }

    public int d(T t) {
        int iBinarySearch = Collections.binarySearch(this.aVQ, t);
        if (iBinarySearch < 0) {
            return ~iBinarySearch;
        }
        Comparable comparableGU = gU(iBinarySearch);
        while (iBinarySearch < size() && comparableGU == gU(iBinarySearch)) {
            iBinarySearch++;
        }
        return iBinarySearch;
    }

    public T gU(int i) {
        return this.aVQ.get(i);
    }

    public T gV(int i) {
        T tRemove = this.aVQ.remove(i);
        this.aVR.remove(tRemove);
        return tRemove;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        return this.aVQ.isEmpty();
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    @NonNull
    public Iterator<T> iterator() {
        return this.aVQ.iterator();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean remove(@Nullable Object obj) {
        int iB = b((Comparable) obj);
        if (iB == -1) {
            return false;
        }
        this.aVQ.remove(iB);
        return this.aVR.remove(obj);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(@NonNull Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (true) {
            while (it.hasNext()) {
                boolean z = z || remove(it.next());
            }
            return false;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(@NonNull Collection<?> collection) {
        boolean z = false;
        for (int size = size() - 1; size >= 0; size--) {
            T t = this.aVQ.get(size);
            if (!collection.contains(t)) {
                this.aVQ.remove(size);
                this.aVR.remove(t);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Set, java.util.Collection
    public int size() {
        return this.aVQ.size();
    }

    @Override // java.util.Set, java.util.Collection
    @NonNull
    public Object[] toArray() {
        return this.aVQ.toArray();
    }

    @Override // java.util.Set, java.util.Collection
    @NonNull
    public <T1> T1[] toArray(@NonNull T1[] t1Arr) {
        return (T1[]) this.aVQ.toArray(t1Arr);
    }
}
