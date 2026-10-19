package dagger.android;

import dagger.android.a;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class DispatchingAndroidInjector_Factory<T> implements dagger.internal.b<d<T>> {
    private final e.a.a<Map<Class<?>, e.a.a<a.InterfaceC0464a<?>>>> a;
    private final e.a.a<Map<String, e.a.a<a.InterfaceC0464a<?>>>> b;

    public DispatchingAndroidInjector_Factory(e.a.a<Map<Class<?>, e.a.a<a.InterfaceC0464a<?>>>> aVar, e.a.a<Map<String, e.a.a<a.InterfaceC0464a<?>>>> aVar2) {
        this.a = aVar;
        this.b = aVar2;
    }

    public static <T> DispatchingAndroidInjector_Factory<T> create(e.a.a<Map<Class<?>, e.a.a<a.InterfaceC0464a<?>>>> aVar, e.a.a<Map<String, e.a.a<a.InterfaceC0464a<?>>>> aVar2) {
        return new DispatchingAndroidInjector_Factory<>(aVar, aVar2);
    }

    public static <T> d<T> newInstance(Map<Class<?>, e.a.a<a.InterfaceC0464a<?>>> map, Map<String, e.a.a<a.InterfaceC0464a<?>>> map2) {
        return new d<>(map, map2);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public d<T> get() {
        return newInstance(this.a.get(), this.b.get());
    }
}
