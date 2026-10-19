package com.google.firebase.components;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class Component<T> {
    private final Set<Class<? super T>> a;
    private final Set<Dependency> b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f4042d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ComponentFactory<T> f4043e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Set<Class<?>> f4044f;

    public static class Builder<T> {
        private final Set<Class<? super T>> a;
        private final Set<Dependency> b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f4045d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private ComponentFactory<T> f4046e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Set<Class<?>> f4047f;

        @SafeVarargs
        private Builder(Class<T> cls, Class<? super T>... clsArr) {
            HashSet hashSet = new HashSet();
            this.a = hashSet;
            this.b = new HashSet();
            this.c = 0;
            this.f4045d = 0;
            this.f4047f = new HashSet();
            Preconditions.checkNotNull(cls, "Null interface");
            hashSet.add(cls);
            for (Class<? super T> cls2 : clsArr) {
                Preconditions.checkNotNull(cls2, "Null interface");
            }
            Collections.addAll(this.a, clsArr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Builder<T> g() {
            this.f4045d = 1;
            return this;
        }

        private Builder<T> h(int i) {
            Preconditions.checkState(this.c == 0, "Instantiation type has already been set.");
            this.c = i;
            return this;
        }

        private void i(Class<?> cls) {
            Preconditions.checkArgument(!this.a.contains(cls), "Components are not allowed to depend on interfaces they themselves provide.");
        }

        public Builder<T> b(Dependency dependency) {
            Preconditions.checkNotNull(dependency, "Null dependency");
            i(dependency.b());
            this.b.add(dependency);
            return this;
        }

        public Builder<T> c() {
            return h(1);
        }

        public Component<T> d() {
            Preconditions.checkState(this.f4046e != null, "Missing required property: factory.");
            return new Component<>(new HashSet(this.a), new HashSet(this.b), this.c, this.f4045d, this.f4046e, this.f4047f);
        }

        public Builder<T> e() {
            return h(2);
        }

        public Builder<T> f(ComponentFactory<T> componentFactory) {
            this.f4046e = (ComponentFactory) Preconditions.checkNotNull(componentFactory, "Null factory");
            return this;
        }
    }

    private Component(Set<Class<? super T>> set, Set<Dependency> set2, int i, int i2, ComponentFactory<T> componentFactory, Set<Class<?>> set3) {
        this.a = Collections.unmodifiableSet(set);
        this.b = Collections.unmodifiableSet(set2);
        this.c = i;
        this.f4042d = i2;
        this.f4043e = componentFactory;
        this.f4044f = Collections.unmodifiableSet(set3);
    }

    public static <T> Builder<T> builder(Class<T> cls) {
        return new Builder<>(cls, new Class[0]);
    }

    @SafeVarargs
    public static <T> Builder<T> builder(Class<T> cls, Class<? super T>... clsArr) {
        return new Builder<>(cls, clsArr);
    }

    static /* synthetic */ Object h(Object obj, ComponentContainer componentContainer) {
        return obj;
    }

    static /* synthetic */ Object i(Object obj, ComponentContainer componentContainer) {
        return obj;
    }

    public static <T> Component<T> intoSet(final T t, Class<T> cls) {
        return intoSetBuilder(cls).f(new ComponentFactory() { // from class: com.google.firebase.components.a
            @Override // com.google.firebase.components.ComponentFactory
            public final Object a(ComponentContainer componentContainer) {
                Object obj = t;
                Component.h(obj, componentContainer);
                return obj;
            }
        }).d();
    }

    public static <T> Builder<T> intoSetBuilder(Class<T> cls) {
        return builder(cls).g();
    }

    static /* synthetic */ Object j(Object obj, ComponentContainer componentContainer) {
        return obj;
    }

    @Deprecated
    public static <T> Component<T> of(Class<T> cls, final T t) {
        return builder(cls).f(new ComponentFactory() { // from class: com.google.firebase.components.b
            @Override // com.google.firebase.components.ComponentFactory
            public final Object a(ComponentContainer componentContainer) {
                Object obj = t;
                Component.i(obj, componentContainer);
                return obj;
            }
        }).d();
    }

    @SafeVarargs
    public static <T> Component<T> of(final T t, Class<T> cls, Class<? super T>... clsArr) {
        return builder(cls, clsArr).f(new ComponentFactory() { // from class: com.google.firebase.components.c
            @Override // com.google.firebase.components.ComponentFactory
            public final Object a(ComponentContainer componentContainer) {
                Object obj = t;
                Component.j(obj, componentContainer);
                return obj;
            }
        }).d();
    }

    public Set<Dependency> a() {
        return this.b;
    }

    public ComponentFactory<T> b() {
        return this.f4043e;
    }

    public Set<Class<? super T>> c() {
        return this.a;
    }

    public Set<Class<?>> d() {
        return this.f4044f;
    }

    public boolean e() {
        return this.c == 1;
    }

    public boolean f() {
        return this.c == 2;
    }

    public boolean g() {
        return this.f4042d == 0;
    }

    public String toString() {
        return "Component<" + Arrays.toString(this.a.toArray()) + ">{" + this.c + ", type=" + this.f4042d + ", deps=" + Arrays.toString(this.b.toArray()) + "}";
    }
}
