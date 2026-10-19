package com.google.common.base;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Equivalence<T> {

    static final class a extends Equivalence<Object> implements Serializable {
        static final a a = new a();
        private static final long serialVersionUID = 1;

        a() {
        }

        private Object readResolve() {
            return a;
        }

        @Override // com.google.common.base.Equivalence
        protected boolean a(Object obj, Object obj2) {
            return obj.equals(obj2);
        }

        @Override // com.google.common.base.Equivalence
        protected int b(Object obj) {
            return obj.hashCode();
        }
    }

    static final class b extends Equivalence<Object> implements Serializable {
        static final b a = new b();
        private static final long serialVersionUID = 1;

        b() {
        }

        private Object readResolve() {
            return a;
        }

        @Override // com.google.common.base.Equivalence
        protected boolean a(Object obj, Object obj2) {
            return false;
        }

        @Override // com.google.common.base.Equivalence
        protected int b(Object obj) {
            return System.identityHashCode(obj);
        }
    }

    protected Equivalence() {
    }

    public static Equivalence<Object> equals() {
        return a.a;
    }

    public static Equivalence<Object> identity() {
        return b.a;
    }

    protected abstract boolean a(T t, T t2);

    protected abstract int b(T t);

    public final boolean c(T t, T t2) {
        if (t == t2) {
            return true;
        }
        if (t == null || t2 == null) {
            return false;
        }
        return a(t, t2);
    }

    public final int d(T t) {
        if (t == null) {
            return 0;
        }
        return b(t);
    }
}
