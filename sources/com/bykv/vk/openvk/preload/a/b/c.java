package com.bykv.vk.openvk.preload.a.b;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;

/* JADX INFO: compiled from: ConstructorConstructor.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {
    private final Map<Type, com.bykv.vk.openvk.preload.a.h<?>> a;
    private final com.bykv.vk.openvk.preload.a.b.b.b b = com.bykv.vk.openvk.preload.a.b.b.b.a();

    public c(Map<Type, com.bykv.vk.openvk.preload.a.h<?>> map) {
        this.a = map;
    }

    private <T> i<T> a(Class<? super T> cls) {
        try {
            final Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                this.b.a(declaredConstructor);
            }
            return new i<T>() { // from class: com.bykv.vk.openvk.preload.a.b.c.8
                @Override // com.bykv.vk.openvk.preload.a.b.i
                public final T a() {
                    try {
                        return (T) declaredConstructor.newInstance(null);
                    } catch (IllegalAccessException e2) {
                        throw new AssertionError(e2);
                    } catch (InstantiationException e3) {
                        throw new RuntimeException("Failed to invoke " + declaredConstructor + " with no args", e3);
                    } catch (InvocationTargetException e4) {
                        throw new RuntimeException("Failed to invoke " + declaredConstructor + " with no args", e4.getTargetException());
                    }
                }
            };
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public final <T> i<T> a(com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        final Type type = aVar.c;
        final Class<? super T> cls = aVar.b;
        final com.bykv.vk.openvk.preload.a.h<?> hVar = this.a.get(type);
        if (hVar != null) {
            return new i<T>() { // from class: com.bykv.vk.openvk.preload.a.b.c.1
                @Override // com.bykv.vk.openvk.preload.a.b.i
                public final T a() {
                    return (T) hVar.a();
                }
            };
        }
        final com.bykv.vk.openvk.preload.a.h<?> hVar2 = this.a.get(cls);
        if (hVar2 != null) {
            return new i<T>() { // from class: com.bykv.vk.openvk.preload.a.b.c.7
                @Override // com.bykv.vk.openvk.preload.a.b.i
                public final T a() {
                    return (T) hVar2.a();
                }
            };
        }
        i<T> iVarA = a(cls);
        if (iVarA != null) {
            return iVarA;
        }
        i<T> iVar = Collection.class.isAssignableFrom(cls) ? SortedSet.class.isAssignableFrom(cls) ? new i<T>() { // from class: com.bykv.vk.openvk.preload.a.b.c.9
            @Override // com.bykv.vk.openvk.preload.a.b.i
            public final T a() {
                return (T) new TreeSet();
            }
        } : EnumSet.class.isAssignableFrom(cls) ? new i<T>() { // from class: com.bykv.vk.openvk.preload.a.b.c.10
            @Override // com.bykv.vk.openvk.preload.a.b.i
            public final T a() {
                Type type2 = type;
                if (!(type2 instanceof ParameterizedType)) {
                    throw new com.bykv.vk.openvk.preload.a.l("Invalid EnumSet type: " + type.toString());
                }
                Type type3 = ((ParameterizedType) type2).getActualTypeArguments()[0];
                if (type3 instanceof Class) {
                    return (T) EnumSet.noneOf((Class) type3);
                }
                throw new com.bykv.vk.openvk.preload.a.l("Invalid EnumSet type: " + type.toString());
            }
        } : Set.class.isAssignableFrom(cls) ? new i<T>() { // from class: com.bykv.vk.openvk.preload.a.b.c.11
            @Override // com.bykv.vk.openvk.preload.a.b.i
            public final T a() {
                return (T) new LinkedHashSet();
            }
        } : Queue.class.isAssignableFrom(cls) ? new i<T>() { // from class: com.bykv.vk.openvk.preload.a.b.c.12
            @Override // com.bykv.vk.openvk.preload.a.b.i
            public final T a() {
                return (T) new ArrayDeque();
            }
        } : new i<T>() { // from class: com.bykv.vk.openvk.preload.a.b.c.13
            @Override // com.bykv.vk.openvk.preload.a.b.i
            public final T a() {
                return (T) new ArrayList();
            }
        } : Map.class.isAssignableFrom(cls) ? ConcurrentNavigableMap.class.isAssignableFrom(cls) ? new i<T>() { // from class: com.bykv.vk.openvk.preload.a.b.c.14
            @Override // com.bykv.vk.openvk.preload.a.b.i
            public final T a() {
                return (T) new ConcurrentSkipListMap();
            }
        } : ConcurrentMap.class.isAssignableFrom(cls) ? new i<T>() { // from class: com.bykv.vk.openvk.preload.a.b.c.2
            @Override // com.bykv.vk.openvk.preload.a.b.i
            public final T a() {
                return (T) new ConcurrentHashMap();
            }
        } : SortedMap.class.isAssignableFrom(cls) ? new i<T>() { // from class: com.bykv.vk.openvk.preload.a.b.c.3
            @Override // com.bykv.vk.openvk.preload.a.b.i
            public final T a() {
                return (T) new TreeMap();
            }
        } : (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(com.bykv.vk.openvk.preload.a.c.a.a(((ParameterizedType) type).getActualTypeArguments()[0]).b)) ? new i<T>() { // from class: com.bykv.vk.openvk.preload.a.b.c.5
            @Override // com.bykv.vk.openvk.preload.a.b.i
            public final T a() {
                return (T) new h();
            }
        } : new i<T>() { // from class: com.bykv.vk.openvk.preload.a.b.c.4
            @Override // com.bykv.vk.openvk.preload.a.b.i
            public final T a() {
                return (T) new LinkedHashMap();
            }
        } : null;
        return iVar != null ? iVar : new i<T>() { // from class: com.bykv.vk.openvk.preload.a.b.c.6

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final l f502d = l.a();

            @Override // com.bykv.vk.openvk.preload.a.b.i
            public final T a() {
                try {
                    return (T) this.f502d.a(cls);
                } catch (Exception e2) {
                    throw new RuntimeException("Unable to invoke no-args constructor for " + type + ". Registering an InstanceCreator with Gson for this type may fix this problem.", e2);
                }
            }
        };
    }

    public final String toString() {
        return this.a.toString();
    }
}
