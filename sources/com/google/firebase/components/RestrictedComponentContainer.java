package com.google.firebase.components;

import com.google.firebase.events.Publisher;
import com.google.firebase.inject.Provider;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
final class RestrictedComponentContainer extends AbstractComponentContainer {
    private final Set<Class<?>> a;
    private final Set<Class<?>> b;
    private final Set<Class<?>> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set<Class<?>> f4053d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Set<Class<?>> f4054e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Set<Class<?>> f4055f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ComponentContainer f4056g;

    private static class RestrictedPublisher implements Publisher {
        private final Set<Class<?>> a;
        private final Publisher b;

        public RestrictedPublisher(Set<Class<?>> set, Publisher publisher) {
            this.a = set;
            this.b = publisher;
        }
    }

    RestrictedComponentContainer(Component<?> component, ComponentContainer componentContainer) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        for (Dependency dependency : component.a()) {
            if (dependency.d()) {
                if (dependency.f()) {
                    hashSet4.add(dependency.b());
                } else {
                    hashSet.add(dependency.b());
                }
            } else if (dependency.c()) {
                hashSet3.add(dependency.b());
            } else if (dependency.f()) {
                hashSet5.add(dependency.b());
            } else {
                hashSet2.add(dependency.b());
            }
        }
        if (!component.d().isEmpty()) {
            hashSet.add(Publisher.class);
        }
        this.a = Collections.unmodifiableSet(hashSet);
        this.b = Collections.unmodifiableSet(hashSet2);
        this.c = Collections.unmodifiableSet(hashSet3);
        this.f4053d = Collections.unmodifiableSet(hashSet4);
        this.f4054e = Collections.unmodifiableSet(hashSet5);
        this.f4055f = component.d();
        this.f4056g = componentContainer;
    }

    @Override // com.google.firebase.components.AbstractComponentContainer, com.google.firebase.components.ComponentContainer
    public <T> T a(Class<T> cls) {
        if (!this.a.contains(cls)) {
            throw new DependencyException(String.format("Attempting to request an undeclared dependency %s.", cls));
        }
        T t = (T) this.f4056g.a(cls);
        return !cls.equals(Publisher.class) ? t : (T) new RestrictedPublisher(this.f4055f, (Publisher) t);
    }

    @Override // com.google.firebase.components.ComponentContainer
    public <T> Provider<Set<T>> b(Class<T> cls) {
        if (this.f4054e.contains(cls)) {
            return this.f4056g.b(cls);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Provider<Set<%s>>.", cls));
    }

    @Override // com.google.firebase.components.AbstractComponentContainer, com.google.firebase.components.ComponentContainer
    public <T> Set<T> c(Class<T> cls) {
        if (this.f4053d.contains(cls)) {
            return this.f4056g.c(cls);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Set<%s>.", cls));
    }

    @Override // com.google.firebase.components.ComponentContainer
    public <T> Provider<T> d(Class<T> cls) {
        if (this.b.contains(cls)) {
            return this.f4056g.d(cls);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Provider<%s>.", cls));
    }
}
