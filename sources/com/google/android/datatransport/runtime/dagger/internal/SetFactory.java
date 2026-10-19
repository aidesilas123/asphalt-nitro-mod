package com.google.android.datatransport.runtime.dagger.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class SetFactory<T> implements com.google.android.datatransport.runtime.dagger.internal.b<Set<T>> {
    private static final com.google.android.datatransport.runtime.dagger.internal.b<Set<Object>> a = InstanceFactory.create(Collections.emptySet());
    private final List<e.a.a<T>> b;
    private final List<e.a.a<Collection<T>>> c;

    public static final class b<T> {
        private final List<e.a.a<T>> a;
        private final List<e.a.a<Collection<T>>> b;

        private b(int i, int i2) {
            this.a = DaggerCollections.presizedList(i);
            this.b = DaggerCollections.presizedList(i2);
        }
    }

    public static <T> b<T> builder(int i, int i2) {
        return new b<>(i, i2);
    }

    public static <T> com.google.android.datatransport.runtime.dagger.internal.b<Set<T>> empty() {
        return (com.google.android.datatransport.runtime.dagger.internal.b<Set<T>>) a;
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Set<T> get() {
        int size = this.b.size();
        ArrayList arrayList = new ArrayList(this.c.size());
        int size2 = this.c.size();
        for (int i = 0; i < size2; i++) {
            Collection<T> collection = this.c.get(i).get();
            size += collection.size();
            arrayList.add(collection);
        }
        HashSet hashSetB = DaggerCollections.b(size);
        int size3 = this.b.size();
        for (int i2 = 0; i2 < size3; i2++) {
            hashSetB.add(Preconditions.checkNotNull(this.b.get(i2).get()));
        }
        int size4 = arrayList.size();
        for (int i3 = 0; i3 < size4; i3++) {
            Iterator it = ((Collection) arrayList.get(i3)).iterator();
            while (it.hasNext()) {
                hashSetB.add(Preconditions.checkNotNull(it.next()));
            }
        }
        return Collections.unmodifiableSet(hashSetB);
    }
}
