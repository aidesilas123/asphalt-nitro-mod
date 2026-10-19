package com.google.common.collect;

import com.google.common.collect.Multisets;
import com.google.common.collect.c2;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.SortedSet;

/* JADX INFO: compiled from: SortedMultisets.java */
/* JADX INFO: loaded from: classes3.dex */
final class f3 {

    /* JADX INFO: compiled from: SortedMultisets.java */
    static class a<E> extends Multisets.h<E> implements SortedSet<E> {
        private final e3<E> a;

        a(e3<E> e3Var) {
            this.a = e3Var;
        }

        @Override // java.util.SortedSet
        public Comparator<? super E> comparator() {
            return i().comparator();
        }

        @Override // java.util.SortedSet
        public E first() {
            return (E) f3.d(i().firstEntry());
        }

        @Override // java.util.SortedSet
        public SortedSet<E> headSet(E e2) {
            return i().J(e2, BoundType.OPEN).k();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return Multisets.e(i().entrySet().iterator());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Multisets.h
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public final e3<E> i() {
            return this.a;
        }

        @Override // java.util.SortedSet
        public E last() {
            return (E) f3.d(i().lastEntry());
        }

        @Override // java.util.SortedSet
        public SortedSet<E> subSet(E e2, E e3) {
            return i().q(e2, BoundType.CLOSED, e3, BoundType.OPEN).k();
        }

        @Override // java.util.SortedSet
        public SortedSet<E> tailSet(E e2) {
            return i().L(e2, BoundType.CLOSED).k();
        }
    }

    /* JADX INFO: compiled from: SortedMultisets.java */
    static class b<E> extends a<E> implements NavigableSet<E> {
        b(e3<E> e3Var) {
            super(e3Var);
        }

        @Override // java.util.NavigableSet
        public E ceiling(E e2) {
            return (E) f3.c(i().L(e2, BoundType.CLOSED).firstEntry());
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            return new b(i().w());
        }

        @Override // java.util.NavigableSet
        public E floor(E e2) {
            return (E) f3.c(i().J(e2, BoundType.CLOSED).lastEntry());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(E e2, boolean z) {
            return new b(i().J(e2, BoundType.f(z)));
        }

        @Override // java.util.NavigableSet
        public E higher(E e2) {
            return (E) f3.c(i().L(e2, BoundType.OPEN).firstEntry());
        }

        @Override // java.util.NavigableSet
        public E lower(E e2) {
            return (E) f3.c(i().J(e2, BoundType.OPEN).lastEntry());
        }

        @Override // java.util.NavigableSet
        public E pollFirst() {
            return (E) f3.c(i().pollFirstEntry());
        }

        @Override // java.util.NavigableSet
        public E pollLast() {
            return (E) f3.c(i().pollLastEntry());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(E e2, boolean z, E e3, boolean z2) {
            return new b(i().q(e2, BoundType.f(z), e3, BoundType.f(z2)));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(E e2, boolean z) {
            return new b(i().L(e2, BoundType.f(z)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> E c(c2.a<E> aVar) {
        if (aVar == null) {
            return null;
        }
        return aVar.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> E d(c2.a<E> aVar) {
        if (aVar != null) {
            return aVar.c();
        }
        throw new NoSuchElementException();
    }
}
