package dagger.android;

import dagger.android.a;
import dagger.internal.DaggerCollections;
import dagger.internal.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: DispatchingAndroidInjector.java */
/* JADX INFO: loaded from: classes4.dex */
public final class d<T> implements dagger.android.a<T> {
    private final Map<String, e.a.a<a.InterfaceC0464a<?>>> a;

    /* JADX INFO: compiled from: DispatchingAndroidInjector.java */
    public static final class a extends RuntimeException {
        a(String str, ClassCastException classCastException) {
            super(str, classCastException);
        }
    }

    d(Map<Class<?>, e.a.a<a.InterfaceC0464a<?>>> map, Map<String, e.a.a<a.InterfaceC0464a<?>>> map2) {
        this.a = d(map, map2);
    }

    private String b(T t) {
        ArrayList arrayList = new ArrayList();
        for (Class<?> superclass = t.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            if (this.a.containsKey(superclass.getCanonicalName())) {
                arrayList.add(superclass.getCanonicalName());
            }
        }
        return arrayList.isEmpty() ? String.format("No injector factory bound for Class<%s>", t.getClass().getCanonicalName()) : String.format("No injector factory bound for Class<%1$s>. Injector factories were bound for supertypes of %1$s: %2$s. Did you mean to bind an injector factory for the subtype?", t.getClass().getCanonicalName(), arrayList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <C, V> Map<String, e.a.a<a.InterfaceC0464a<?>>> d(Map<Class<? extends C>, V> map, Map<String, V> map2) {
        if (map.isEmpty()) {
            return map2;
        }
        LinkedHashMap linkedHashMapNewLinkedHashMapWithExpectedSize = DaggerCollections.newLinkedHashMapWithExpectedSize(map.size() + map2.size());
        linkedHashMapNewLinkedHashMapWithExpectedSize.putAll(map2);
        for (Map.Entry<Class<? extends C>, V> entry : map.entrySet()) {
            linkedHashMapNewLinkedHashMapWithExpectedSize.put(entry.getKey().getName(), entry.getValue());
        }
        return Collections.unmodifiableMap(linkedHashMapNewLinkedHashMapWithExpectedSize);
    }

    @Override // dagger.android.a
    public void a(T t) {
        if (!c(t)) {
            throw new IllegalArgumentException(b(t));
        }
    }

    public boolean c(T t) {
        e.a.a<a.InterfaceC0464a<?>> aVar = this.a.get(t.getClass().getName());
        if (aVar == null) {
            return false;
        }
        a.InterfaceC0464a<?> interfaceC0464a = aVar.get();
        try {
            ((dagger.android.a) Preconditions.checkNotNull(interfaceC0464a.a(t), "%s.create(I) should not return null.", interfaceC0464a.getClass())).a(t);
            return true;
        } catch (ClassCastException e2) {
            throw new a(String.format("%s does not implement AndroidInjector.Factory<%s>", interfaceC0464a.getClass().getCanonicalName(), t.getClass().getCanonicalName()), e2);
        }
    }
}
