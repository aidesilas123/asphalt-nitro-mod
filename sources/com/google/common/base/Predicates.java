package com.google.common.base;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public final class Predicates {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    static abstract class ObjectPredicate implements com.google.common.base.k<Object> {
        public static final ObjectPredicate a = new a("ALWAYS_TRUE", 0);
        public static final ObjectPredicate b = new b("ALWAYS_FALSE", 1);
        public static final ObjectPredicate c = new c("IS_NULL", 2);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final ObjectPredicate f3488d = new d("NOT_NULL", 3);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final /* synthetic */ ObjectPredicate[] f3489e = e();

        enum a extends ObjectPredicate {
            a(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.base.k
            public boolean apply(Object obj) {
                return true;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.alwaysTrue()";
            }
        }

        enum b extends ObjectPredicate {
            b(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.base.k
            public boolean apply(Object obj) {
                return false;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.alwaysFalse()";
            }
        }

        enum c extends ObjectPredicate {
            c(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.base.k
            public boolean apply(Object obj) {
                return obj == null;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.isNull()";
            }
        }

        enum d extends ObjectPredicate {
            d(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.base.k
            public boolean apply(Object obj) {
                return obj != null;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.notNull()";
            }
        }

        private ObjectPredicate(String str, int i) {
        }

        private static /* synthetic */ ObjectPredicate[] e() {
            return new ObjectPredicate[]{a, b, c, f3488d};
        }

        public static ObjectPredicate valueOf(String str) {
            return (ObjectPredicate) Enum.valueOf(ObjectPredicate.class, str);
        }

        public static ObjectPredicate[] values() {
            return (ObjectPredicate[]) f3489e.clone();
        }

        <T> com.google.common.base.k<T> f() {
            return this;
        }
    }

    private static class b<T> implements com.google.common.base.k<T>, Serializable {
        private static final long serialVersionUID = 0;
        private final List<? extends com.google.common.base.k<? super T>> a;

        private b(List<? extends com.google.common.base.k<? super T>> list) {
            this.a = list;
        }

        @Override // com.google.common.base.k
        public boolean apply(T t) {
            for (int i = 0; i < this.a.size(); i++) {
                if (!this.a.get(i).apply(t)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.base.k
        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return this.a.equals(((b) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return this.a.hashCode() + 306654252;
        }

        public String toString() {
            return Predicates.e("and", this.a);
        }
    }

    private static class c<A, B> implements com.google.common.base.k<A>, Serializable {
        private static final long serialVersionUID = 0;
        final com.google.common.base.k<B> a;
        final com.google.common.base.f<A, ? extends B> b;

        private c(com.google.common.base.k<B> kVar, com.google.common.base.f<A, ? extends B> fVar) {
            this.a = (com.google.common.base.k) Preconditions.checkNotNull(kVar);
            this.b = (com.google.common.base.f) Preconditions.checkNotNull(fVar);
        }

        @Override // com.google.common.base.k
        public boolean apply(A a) {
            return this.a.apply(this.b.apply(a));
        }

        @Override // com.google.common.base.k
        public boolean equals(Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.b.equals(cVar.b) && this.a.equals(cVar.a);
        }

        public int hashCode() {
            return this.b.hashCode() ^ this.a.hashCode();
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            String strValueOf2 = String.valueOf(this.b);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 2 + strValueOf2.length());
            sb.append(strValueOf);
            sb.append("(");
            sb.append(strValueOf2);
            sb.append(")");
            return sb.toString();
        }
    }

    private static class d extends e {
        private static final long serialVersionUID = 0;

        d(String str) {
            super(com.google.common.base.j.a(str));
        }

        @Override // com.google.common.base.Predicates.e
        public String toString() {
            String strE = this.a.e();
            StringBuilder sb = new StringBuilder(String.valueOf(strE).length() + 28);
            sb.append("Predicates.containsPattern(");
            sb.append(strE);
            sb.append(")");
            return sb.toString();
        }
    }

    private static class e implements com.google.common.base.k<CharSequence>, Serializable {
        private static final long serialVersionUID = 0;
        final CommonPattern a;

        e(CommonPattern commonPattern) {
            this.a = (CommonPattern) Preconditions.checkNotNull(commonPattern);
        }

        @Override // com.google.common.base.k
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean apply(CharSequence charSequence) {
            return this.a.d(charSequence).b();
        }

        @Override // com.google.common.base.k
        public boolean equals(Object obj) {
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return Objects.equal(this.a.e(), eVar.a.e()) && this.a.c() == eVar.a.c();
        }

        public int hashCode() {
            return Objects.hashCode(this.a.e(), Integer.valueOf(this.a.c()));
        }

        public String toString() {
            String string = MoreObjects.toStringHelper(this.a).d("pattern", this.a.e()).b("pattern.flags", this.a.c()).toString();
            StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 21);
            sb.append("Predicates.contains(");
            sb.append(string);
            sb.append(")");
            return sb.toString();
        }
    }

    private static class f<T> implements com.google.common.base.k<T>, Serializable {
        private static final long serialVersionUID = 0;
        private final Collection<?> a;

        private f(Collection<?> collection) {
            this.a = (Collection) Preconditions.checkNotNull(collection);
        }

        @Override // com.google.common.base.k
        public boolean apply(T t) {
            try {
                return this.a.contains(t);
            } catch (ClassCastException | NullPointerException unused) {
                return false;
            }
        }

        @Override // com.google.common.base.k
        public boolean equals(Object obj) {
            if (obj instanceof f) {
                return this.a.equals(((f) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 15);
            sb.append("Predicates.in(");
            sb.append(strValueOf);
            sb.append(")");
            return sb.toString();
        }
    }

    private static class g<T> implements com.google.common.base.k<T>, Serializable {
        private static final long serialVersionUID = 0;
        private final Class<?> a;

        private g(Class<?> cls) {
            this.a = (Class) Preconditions.checkNotNull(cls);
        }

        @Override // com.google.common.base.k
        public boolean apply(T t) {
            return this.a.isInstance(t);
        }

        @Override // com.google.common.base.k
        public boolean equals(Object obj) {
            return (obj instanceof g) && this.a == ((g) obj).a;
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            String name = this.a.getName();
            StringBuilder sb = new StringBuilder(name.length() + 23);
            sb.append("Predicates.instanceOf(");
            sb.append(name);
            sb.append(")");
            return sb.toString();
        }
    }

    private static class h implements com.google.common.base.k<Object>, Serializable {
        private static final long serialVersionUID = 0;
        private final Object a;

        private h(Object obj) {
            this.a = obj;
        }

        @Override // com.google.common.base.k
        public boolean apply(Object obj) {
            return this.a.equals(obj);
        }

        <T> com.google.common.base.k<T> c() {
            return this;
        }

        @Override // com.google.common.base.k
        public boolean equals(Object obj) {
            if (obj instanceof h) {
                return this.a.equals(((h) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 20);
            sb.append("Predicates.equalTo(");
            sb.append(strValueOf);
            sb.append(")");
            return sb.toString();
        }
    }

    private static class i<T> implements com.google.common.base.k<T>, Serializable {
        private static final long serialVersionUID = 0;
        final com.google.common.base.k<T> a;

        i(com.google.common.base.k<T> kVar) {
            this.a = (com.google.common.base.k) Preconditions.checkNotNull(kVar);
        }

        @Override // com.google.common.base.k
        public boolean apply(T t) {
            return !this.a.apply(t);
        }

        @Override // com.google.common.base.k
        public boolean equals(Object obj) {
            if (obj instanceof i) {
                return this.a.equals(((i) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return ~this.a.hashCode();
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 16);
            sb.append("Predicates.not(");
            sb.append(strValueOf);
            sb.append(")");
            return sb.toString();
        }
    }

    private static class j<T> implements com.google.common.base.k<T>, Serializable {
        private static final long serialVersionUID = 0;
        private final List<? extends com.google.common.base.k<? super T>> a;

        private j(List<? extends com.google.common.base.k<? super T>> list) {
            this.a = list;
        }

        @Override // com.google.common.base.k
        public boolean apply(T t) {
            for (int i = 0; i < this.a.size(); i++) {
                if (this.a.get(i).apply(t)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.base.k
        public boolean equals(Object obj) {
            if (obj instanceof j) {
                return this.a.equals(((j) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return this.a.hashCode() + 87855567;
        }

        public String toString() {
            return Predicates.e("or", this.a);
        }
    }

    private static class k implements com.google.common.base.k<Class<?>>, Serializable {
        private static final long serialVersionUID = 0;
        private final Class<?> a;

        private k(Class<?> cls) {
            this.a = (Class) Preconditions.checkNotNull(cls);
        }

        @Override // com.google.common.base.k
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean apply(Class<?> cls) {
            return this.a.isAssignableFrom(cls);
        }

        @Override // com.google.common.base.k
        public boolean equals(Object obj) {
            return (obj instanceof k) && this.a == ((k) obj).a;
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            String name = this.a.getName();
            StringBuilder sb = new StringBuilder(name.length() + 22);
            sb.append("Predicates.subtypeOf(");
            sb.append(name);
            sb.append(")");
            return sb.toString();
        }
    }

    private Predicates() {
    }

    public static <T> com.google.common.base.k<T> alwaysFalse() {
        return ObjectPredicate.b.f();
    }

    public static <T> com.google.common.base.k<T> alwaysTrue() {
        return ObjectPredicate.a.f();
    }

    public static <T> com.google.common.base.k<T> and(com.google.common.base.k<? super T> kVar, com.google.common.base.k<? super T> kVar2) {
        return new b(b((com.google.common.base.k) Preconditions.checkNotNull(kVar), (com.google.common.base.k) Preconditions.checkNotNull(kVar2)));
    }

    public static <T> com.google.common.base.k<T> and(Iterable<? extends com.google.common.base.k<? super T>> iterable) {
        return new b(c(iterable));
    }

    @SafeVarargs
    public static <T> com.google.common.base.k<T> and(com.google.common.base.k<? super T>... kVarArr) {
        return new b(d(kVarArr));
    }

    private static <T> List<com.google.common.base.k<? super T>> b(com.google.common.base.k<? super T> kVar, com.google.common.base.k<? super T> kVar2) {
        return Arrays.asList(kVar, kVar2);
    }

    static <T> List<T> c(Iterable<T> iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(Preconditions.checkNotNull(it.next()));
        }
        return arrayList;
    }

    public static <A, B> com.google.common.base.k<A> compose(com.google.common.base.k<B> kVar, com.google.common.base.f<A, ? extends B> fVar) {
        return new c(kVar, fVar);
    }

    public static com.google.common.base.k<CharSequence> contains(Pattern pattern) {
        return new e(new com.google.common.base.g(pattern));
    }

    public static com.google.common.base.k<CharSequence> containsPattern(String str) {
        return new d(str);
    }

    private static <T> List<T> d(T... tArr) {
        return c(Arrays.asList(tArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String e(String str, Iterable<?> iterable) {
        StringBuilder sb = new StringBuilder("Predicates.");
        sb.append(str);
        sb.append('(');
        boolean z = true;
        for (Object obj : iterable) {
            if (!z) {
                sb.append(',');
            }
            sb.append(obj);
            z = false;
        }
        sb.append(')');
        return sb.toString();
    }

    public static <T> com.google.common.base.k<T> equalTo(T t) {
        return t == null ? isNull() : new h(t).c();
    }

    public static <T> com.google.common.base.k<T> in(Collection<? extends T> collection) {
        return new f(collection);
    }

    public static <T> com.google.common.base.k<T> instanceOf(Class<?> cls) {
        return new g(cls);
    }

    public static <T> com.google.common.base.k<T> isNull() {
        return ObjectPredicate.c.f();
    }

    public static <T> com.google.common.base.k<T> not(com.google.common.base.k<T> kVar) {
        return new i(kVar);
    }

    public static <T> com.google.common.base.k<T> notNull() {
        return ObjectPredicate.f3488d.f();
    }

    public static <T> com.google.common.base.k<T> or(com.google.common.base.k<? super T> kVar, com.google.common.base.k<? super T> kVar2) {
        return new j(b((com.google.common.base.k) Preconditions.checkNotNull(kVar), (com.google.common.base.k) Preconditions.checkNotNull(kVar2)));
    }

    public static <T> com.google.common.base.k<T> or(Iterable<? extends com.google.common.base.k<? super T>> iterable) {
        return new j(c(iterable));
    }

    @SafeVarargs
    public static <T> com.google.common.base.k<T> or(com.google.common.base.k<? super T>... kVarArr) {
        return new j(d(kVarArr));
    }

    public static com.google.common.base.k<Class<?>> subtypeOf(Class<?> cls) {
        return new k(cls);
    }
}
