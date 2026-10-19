package com.google.gson.internal;

import com.google.gson.ReflectionAccessFilter;
import com.google.gson.internal.reflect.ReflectionHelper;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
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
/* JADX INFO: loaded from: classes3.dex */
public final class a {
    private final Map<Type, com.google.gson.c<?>> a;
    private final boolean b;
    private final List<ReflectionAccessFilter> c;

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.google.gson.internal.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class C0273a<T> implements com.google.gson.internal.e<T> {
        C0273a() {
        }

        @Override // com.google.gson.internal.e
        public T a() {
            return (T) new TreeSet();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class b<T> implements com.google.gson.internal.e<T> {
        b() {
        }

        @Override // com.google.gson.internal.e
        public T a() {
            return (T) new LinkedHashSet();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class c<T> implements com.google.gson.internal.e<T> {
        c() {
        }

        @Override // com.google.gson.internal.e
        public T a() {
            return (T) new ArrayDeque();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class d<T> implements com.google.gson.internal.e<T> {
        d() {
        }

        @Override // com.google.gson.internal.e
        public T a() {
            return (T) new ArrayList();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class e<T> implements com.google.gson.internal.e<T> {
        e() {
        }

        @Override // com.google.gson.internal.e
        public T a() {
            return (T) new ConcurrentSkipListMap();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class f<T> implements com.google.gson.internal.e<T> {
        f() {
        }

        @Override // com.google.gson.internal.e
        public T a() {
            return (T) new ConcurrentHashMap();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class g<T> implements com.google.gson.internal.e<T> {
        g() {
        }

        @Override // com.google.gson.internal.e
        public T a() {
            return (T) new TreeMap();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class h<T> implements com.google.gson.internal.e<T> {
        h() {
        }

        @Override // com.google.gson.internal.e
        public T a() {
            return (T) new LinkedHashMap();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class i<T> implements com.google.gson.internal.e<T> {
        i() {
        }

        @Override // com.google.gson.internal.e
        public T a() {
            return (T) new com.google.gson.internal.d();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class j<T> implements com.google.gson.internal.e<T> {
        final /* synthetic */ Class a;

        j(Class cls) {
            this.a = cls;
        }

        @Override // com.google.gson.internal.e
        public T a() {
            try {
                return (T) com.google.gson.internal.f.a.d(this.a);
            } catch (Exception e2) {
                throw new RuntimeException("Unable to create instance of " + this.a + ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem.", e2);
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class k<T> implements com.google.gson.internal.e<T> {
        final /* synthetic */ com.google.gson.c a;
        final /* synthetic */ Type b;

        k(com.google.gson.c cVar, Type type) {
            this.a = cVar;
            this.b = type;
        }

        @Override // com.google.gson.internal.e
        public T a() {
            return (T) this.a.a(this.b);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class l<T> implements com.google.gson.internal.e<T> {
        final /* synthetic */ String a;

        l(String str) {
            this.a = str;
        }

        @Override // com.google.gson.internal.e
        public T a() {
            throw new com.google.gson.h(this.a);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class m<T> implements com.google.gson.internal.e<T> {
        final /* synthetic */ com.google.gson.c a;
        final /* synthetic */ Type b;

        m(com.google.gson.c cVar, Type type) {
            this.a = cVar;
            this.b = type;
        }

        @Override // com.google.gson.internal.e
        public T a() {
            return (T) this.a.a(this.b);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class n<T> implements com.google.gson.internal.e<T> {
        final /* synthetic */ String a;

        n(String str) {
            this.a = str;
        }

        @Override // com.google.gson.internal.e
        public T a() {
            throw new com.google.gson.h(this.a);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class o<T> implements com.google.gson.internal.e<T> {
        final /* synthetic */ String a;

        o(String str) {
            this.a = str;
        }

        @Override // com.google.gson.internal.e
        public T a() {
            throw new com.google.gson.h(this.a);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class p<T> implements com.google.gson.internal.e<T> {
        final /* synthetic */ Type a;

        p(Type type) {
            this.a = type;
        }

        @Override // com.google.gson.internal.e
        public T a() {
            Type type = this.a;
            if (!(type instanceof ParameterizedType)) {
                throw new com.google.gson.h("Invalid EnumSet type: " + this.a.toString());
            }
            Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
            if (type2 instanceof Class) {
                return (T) EnumSet.noneOf((Class) type2);
            }
            throw new com.google.gson.h("Invalid EnumSet type: " + this.a.toString());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class q<T> implements com.google.gson.internal.e<T> {
        final /* synthetic */ Type a;

        q(Type type) {
            this.a = type;
        }

        @Override // com.google.gson.internal.e
        public T a() {
            Type type = this.a;
            if (!(type instanceof ParameterizedType)) {
                throw new com.google.gson.h("Invalid EnumMap type: " + this.a.toString());
            }
            Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
            if (type2 instanceof Class) {
                return (T) new EnumMap((Class) type2);
            }
            throw new com.google.gson.h("Invalid EnumMap type: " + this.a.toString());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class r<T> implements com.google.gson.internal.e<T> {
        final /* synthetic */ String a;

        r(String str) {
            this.a = str;
        }

        @Override // com.google.gson.internal.e
        public T a() {
            throw new com.google.gson.h(this.a);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class s<T> implements com.google.gson.internal.e<T> {
        final /* synthetic */ String a;

        s(String str) {
            this.a = str;
        }

        @Override // com.google.gson.internal.e
        public T a() {
            throw new com.google.gson.h(this.a);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class t<T> implements com.google.gson.internal.e<T> {
        final /* synthetic */ Constructor a;

        t(Constructor constructor) {
            this.a = constructor;
        }

        @Override // com.google.gson.internal.e
        public T a() {
            try {
                return (T) this.a.newInstance(new Object[0]);
            } catch (IllegalAccessException e2) {
                throw ReflectionHelper.createExceptionForUnexpectedIllegalAccess(e2);
            } catch (InstantiationException e3) {
                throw new RuntimeException("Failed to invoke constructor '" + ReflectionHelper.constructorToString(this.a) + "' with no args", e3);
            } catch (InvocationTargetException e4) {
                throw new RuntimeException("Failed to invoke constructor '" + ReflectionHelper.constructorToString(this.a) + "' with no args", e4.getCause());
            }
        }
    }

    public a(Map<Type, com.google.gson.c<?>> map, boolean z, List<ReflectionAccessFilter> list) {
        this.a = map;
        this.b = z;
        this.c = list;
    }

    static String a(Class<?> cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            return "Interfaces can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: " + cls.getName();
        }
        if (!Modifier.isAbstract(modifiers)) {
            return null;
        }
        return "Abstract classes can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Class name: " + cls.getName();
    }

    private static <T> com.google.gson.internal.e<T> c(Class<? super T> cls, ReflectionAccessFilter.FilterResult filterResult) {
        String strTryMakeAccessible;
        if (Modifier.isAbstract(cls.getModifiers())) {
            return null;
        }
        boolean z = false;
        try {
            Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            ReflectionAccessFilter.FilterResult filterResult2 = ReflectionAccessFilter.FilterResult.ALLOW;
            if (filterResult == filterResult2 || (ReflectionAccessFilterHelper.canAccess(declaredConstructor, null) && (filterResult != ReflectionAccessFilter.FilterResult.BLOCK_ALL || Modifier.isPublic(declaredConstructor.getModifiers())))) {
                z = true;
            }
            if (z) {
                return (filterResult != filterResult2 || (strTryMakeAccessible = ReflectionHelper.tryMakeAccessible(declaredConstructor)) == null) ? new t(declaredConstructor) : new s(strTryMakeAccessible);
            }
            return new r("Unable to invoke no-args constructor of " + cls + "; constructor is not accessible and ReflectionAccessFilter does not permit making it accessible. Register an InstanceCreator or a TypeAdapter for this type, change the visibility of the constructor or adjust the access filter.");
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    private static <T> com.google.gson.internal.e<T> d(Type type, Class<? super T> cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            return SortedSet.class.isAssignableFrom(cls) ? new C0273a() : Set.class.isAssignableFrom(cls) ? new b() : Queue.class.isAssignableFrom(cls) ? new c() : new d();
        }
        if (Map.class.isAssignableFrom(cls)) {
            return ConcurrentNavigableMap.class.isAssignableFrom(cls) ? new e() : ConcurrentMap.class.isAssignableFrom(cls) ? new f() : SortedMap.class.isAssignableFrom(cls) ? new g() : (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(TypeToken.get(((ParameterizedType) type).getActualTypeArguments()[0]).getRawType())) ? new i() : new h();
        }
        return null;
    }

    private static <T> com.google.gson.internal.e<T> e(Type type, Class<? super T> cls) {
        if (EnumSet.class.isAssignableFrom(cls)) {
            return new p(type);
        }
        if (cls == EnumMap.class) {
            return new q(type);
        }
        return null;
    }

    private <T> com.google.gson.internal.e<T> f(Class<? super T> cls) {
        if (this.b) {
            return new j(cls);
        }
        return new l("Unable to create instance of " + cls + "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem.");
    }

    public <T> com.google.gson.internal.e<T> b(TypeToken<T> typeToken) {
        Type type = typeToken.getType();
        Class<? super T> rawType = typeToken.getRawType();
        com.google.gson.c<?> cVar = this.a.get(type);
        if (cVar != null) {
            return new k(cVar, type);
        }
        com.google.gson.c<?> cVar2 = this.a.get(rawType);
        if (cVar2 != null) {
            return new m(cVar2, type);
        }
        com.google.gson.internal.e<T> eVarE = e(type, rawType);
        if (eVarE != null) {
            return eVarE;
        }
        ReflectionAccessFilter.FilterResult filterResult = ReflectionAccessFilterHelper.getFilterResult(this.c, rawType);
        com.google.gson.internal.e<T> eVarC = c(rawType, filterResult);
        if (eVarC != null) {
            return eVarC;
        }
        com.google.gson.internal.e<T> eVarD = d(type, rawType);
        if (eVarD != null) {
            return eVarD;
        }
        String strA = a(rawType);
        if (strA != null) {
            return new n(strA);
        }
        if (filterResult == ReflectionAccessFilter.FilterResult.ALLOW) {
            return f(rawType);
        }
        return new o("Unable to create instance of " + rawType + "; ReflectionAccessFilter does not permit using reflection or Unsafe. Register an InstanceCreator or a TypeAdapter for this type or adjust the access filter to allow using reflection.");
    }

    public String toString() {
        return this.a.toString();
    }
}
