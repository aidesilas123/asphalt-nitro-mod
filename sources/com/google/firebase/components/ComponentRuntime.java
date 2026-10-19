package com.google.firebase.components;

import android.util.Log;
import com.google.firebase.components.ComponentRuntime;
import com.google.firebase.dynamicloading.ComponentLoader;
import com.google.firebase.events.Publisher;
import com.google.firebase.events.Subscriber;
import com.google.firebase.inject.Provider;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public class ComponentRuntime extends AbstractComponentContainer implements ComponentLoader {
    private static final Provider<Set<Object>> a = new Provider() { // from class: com.google.firebase.components.j
        @Override // com.google.firebase.inject.Provider
        public final Object get() {
            return Collections.emptySet();
        }
    };
    private final Map<Component<?>, Provider<?>> b;
    private final Map<Class<?>, Provider<?>> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<Class<?>, LazySet<?>> f4048d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<Provider<ComponentRegistrar>> f4049e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final EventBus f4050f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final AtomicReference<Boolean> f4051g;

    public static final class Builder {
        private final Executor a;
        private final List<Provider<ComponentRegistrar>> b = new ArrayList();
        private final List<Component<?>> c = new ArrayList();

        Builder(Executor executor) {
            this.a = executor;
        }

        static /* synthetic */ ComponentRegistrar e(ComponentRegistrar componentRegistrar) {
            return componentRegistrar;
        }

        public Builder a(Component<?> component) {
            this.c.add(component);
            return this;
        }

        public Builder b(final ComponentRegistrar componentRegistrar) {
            this.b.add(new Provider() { // from class: com.google.firebase.components.f
                @Override // com.google.firebase.inject.Provider
                public final Object get() {
                    ComponentRegistrar componentRegistrar2 = componentRegistrar;
                    ComponentRuntime.Builder.e(componentRegistrar2);
                    return componentRegistrar2;
                }
            });
            return this;
        }

        public Builder c(Collection<Provider<ComponentRegistrar>> collection) {
            this.b.addAll(collection);
            return this;
        }

        public ComponentRuntime d() {
            return new ComponentRuntime(this.a, this.b, this.c);
        }
    }

    private ComponentRuntime(Executor executor, Iterable<Provider<ComponentRegistrar>> iterable, Collection<Component<?>> collection) {
        this.b = new HashMap();
        this.c = new HashMap();
        this.f4048d = new HashMap();
        this.f4051g = new AtomicReference<>();
        EventBus eventBus = new EventBus(executor);
        this.f4050f = eventBus;
        ArrayList arrayList = new ArrayList();
        arrayList.add(Component.of(eventBus, EventBus.class, Subscriber.class, Publisher.class));
        arrayList.add(Component.of(this, ComponentLoader.class, new Class[0]));
        for (Component<?> component : collection) {
            if (component != null) {
                arrayList.add(component);
            }
        }
        this.f4049e = h(iterable);
        e(arrayList);
    }

    public static Builder builder(Executor executor) {
        return new Builder(executor);
    }

    private void e(List<Component<?>> list) {
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            Iterator<Provider<ComponentRegistrar>> it = this.f4049e.iterator();
            while (it.hasNext()) {
                try {
                    ComponentRegistrar componentRegistrar = it.next().get();
                    if (componentRegistrar != null) {
                        list.addAll(componentRegistrar.getComponents());
                        it.remove();
                    }
                } catch (InvalidRegistrarException e2) {
                    it.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e2);
                }
            }
            if (this.b.isEmpty()) {
                CycleDetector.a(list);
            } else {
                ArrayList arrayList2 = new ArrayList(this.b.keySet());
                arrayList2.addAll(list);
                CycleDetector.a(arrayList2);
            }
            for (final Component<?> component : list) {
                this.b.put(component, new Lazy(new Provider() { // from class: com.google.firebase.components.e
                    @Override // com.google.firebase.inject.Provider
                    public final Object get() {
                        return this.a.j(component);
                    }
                }));
            }
            arrayList.addAll(o(list));
            arrayList.addAll(p());
            n();
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((Runnable) it2.next()).run();
        }
        m();
    }

    private void f(Map<Component<?>, Provider<?>> map, boolean z) {
        for (Map.Entry<Component<?>, Provider<?>> entry : map.entrySet()) {
            Component<?> key = entry.getKey();
            Provider<?> value = entry.getValue();
            if (key.e() || (key.f() && z)) {
                value.get();
            }
        }
        this.f4050f.c();
    }

    private static <T> List<T> h(Iterable<T> iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ Object j(Component component) {
        return component.b().a(new RestrictedComponentContainer(component, this));
    }

    private void m() {
        Boolean bool = this.f4051g.get();
        if (bool != null) {
            f(this.b, bool.booleanValue());
        }
    }

    private void n() {
        for (Component<?> component : this.b.keySet()) {
            for (Dependency dependency : component.a()) {
                if (dependency.f() && !this.f4048d.containsKey(dependency.b())) {
                    this.f4048d.put(dependency.b(), LazySet.b(Collections.emptySet()));
                } else if (this.c.containsKey(dependency.b())) {
                    continue;
                } else {
                    if (dependency.e()) {
                        throw new MissingDependencyException(String.format("Unsatisfied dependency for component %s: %s", component, dependency.b()));
                    }
                    if (!dependency.f()) {
                        this.c.put(dependency.b(), OptionalProvider.a());
                    }
                }
            }
        }
    }

    private List<Runnable> o(List<Component<?>> list) {
        ArrayList arrayList = new ArrayList();
        for (Component<?> component : list) {
            if (component.g()) {
                final Provider<?> provider = this.b.get(component);
                for (Class<? super Object> cls : component.c()) {
                    if (this.c.containsKey(cls)) {
                        final OptionalProvider optionalProvider = (OptionalProvider) this.c.get(cls);
                        arrayList.add(new Runnable() { // from class: com.google.firebase.components.h
                            @Override // java.lang.Runnable
                            public final void run() {
                                optionalProvider.d(provider);
                            }
                        });
                    } else {
                        this.c.put(cls, provider);
                    }
                }
            }
        }
        return arrayList;
    }

    private List<Runnable> p() {
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        for (Map.Entry<Component<?>, Provider<?>> entry : this.b.entrySet()) {
            Component<?> key = entry.getKey();
            if (!key.g()) {
                Provider<?> value = entry.getValue();
                for (Class<? super Object> cls : key.c()) {
                    if (!map.containsKey(cls)) {
                        map.put(cls, new HashSet());
                    }
                    ((Set) map.get(cls)).add(value);
                }
            }
        }
        for (Map.Entry entry2 : map.entrySet()) {
            if (this.f4048d.containsKey(entry2.getKey())) {
                final LazySet<?> lazySet = this.f4048d.get(entry2.getKey());
                for (final Provider provider : (Set) entry2.getValue()) {
                    arrayList.add(new Runnable() { // from class: com.google.firebase.components.g
                        @Override // java.lang.Runnable
                        public final void run() {
                            lazySet.a(provider);
                        }
                    });
                }
            } else {
                this.f4048d.put((Class) entry2.getKey(), LazySet.b((Collection) entry2.getValue()));
            }
        }
        return arrayList;
    }

    @Override // com.google.firebase.components.AbstractComponentContainer, com.google.firebase.components.ComponentContainer
    public /* bridge */ /* synthetic */ Object a(Class cls) {
        return super.a(cls);
    }

    @Override // com.google.firebase.components.ComponentContainer
    public synchronized <T> Provider<Set<T>> b(Class<T> cls) {
        LazySet<?> lazySet = this.f4048d.get(cls);
        if (lazySet != null) {
            return lazySet;
        }
        return (Provider<Set<T>>) a;
    }

    @Override // com.google.firebase.components.AbstractComponentContainer, com.google.firebase.components.ComponentContainer
    public /* bridge */ /* synthetic */ Set c(Class cls) {
        return super.c(cls);
    }

    @Override // com.google.firebase.components.ComponentContainer
    public synchronized <T> Provider<T> d(Class<T> cls) {
        Preconditions.checkNotNull(cls, "Null interface requested.");
        return (Provider) this.c.get(cls);
    }

    public void g(boolean z) {
        HashMap map;
        if (this.f4051g.compareAndSet(null, Boolean.valueOf(z))) {
            synchronized (this) {
                map = new HashMap(this.b);
            }
            f(map, z);
        }
    }
}
