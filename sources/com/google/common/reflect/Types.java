package com.google.common.reflect;

import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicates;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Iterables;
import com.google.common.collect.o3;
import java.io.Serializable;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.security.AccessControlException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
final class Types {
    private static final Joiner a = Joiner.on(", ").h("null");

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    private static abstract class ClassOwnership {
        public static final ClassOwnership a = new a("OWNED_BY_ENCLOSING_CLASS", 0);
        public static final ClassOwnership b = new c("LOCAL_CLASS_HAS_NO_OWNER", 1);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final /* synthetic */ ClassOwnership[] f3954d = e();
        static final ClassOwnership c = f();

        enum a extends ClassOwnership {
            a(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.reflect.Types.ClassOwnership
            Class<?> g(Class<?> cls) {
                return cls.getEnclosingClass();
            }
        }

        class b<T> {
            b() {
            }
        }

        enum c extends ClassOwnership {
            c(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.reflect.Types.ClassOwnership
            Class<?> g(Class<?> cls) {
                if (cls.isLocalClass()) {
                    return null;
                }
                return cls.getEnclosingClass();
            }
        }

        class d extends b<String> {
            d() {
            }
        }

        private ClassOwnership(String str, int i) {
        }

        /* synthetic */ ClassOwnership(String str, int i, g gVar) {
            this(str, i);
        }

        private static /* synthetic */ ClassOwnership[] e() {
            return new ClassOwnership[]{a, b};
        }

        private static ClassOwnership f() {
            new d();
            ParameterizedType parameterizedType = (ParameterizedType) d.class.getGenericSuperclass();
            Objects.requireNonNull(parameterizedType);
            ParameterizedType parameterizedType2 = parameterizedType;
            for (ClassOwnership classOwnership : values()) {
                if (classOwnership.g(b.class) == parameterizedType2.getOwnerType()) {
                    return classOwnership;
                }
            }
            throw new AssertionError();
        }

        public static ClassOwnership valueOf(String str) {
            return (ClassOwnership) Enum.valueOf(ClassOwnership.class, str);
        }

        public static ClassOwnership[] values() {
            return (ClassOwnership[]) f3954d.clone();
        }

        abstract Class<?> g(Class<?> cls);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    static abstract class JavaVersion {
        public static final JavaVersion a;
        public static final JavaVersion b;
        public static final JavaVersion c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final JavaVersion f3955d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        static final JavaVersion f3956e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final /* synthetic */ JavaVersion[] f3957f;

        enum a extends JavaVersion {
            a(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            Type j(Type type) {
                Preconditions.checkNotNull(type);
                if (!(type instanceof Class)) {
                    return type;
                }
                Class cls = (Class) type;
                return cls.isArray() ? new a(cls.getComponentType()) : type;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.Types.JavaVersion
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public GenericArrayType g(Type type) {
                return new a(type);
            }
        }

        enum b extends JavaVersion {
            b(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            Type g(Type type) {
                return type instanceof Class ? Types.g((Class) type) : new a(type);
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            Type j(Type type) {
                return (Type) Preconditions.checkNotNull(type);
            }
        }

        enum c extends JavaVersion {
            c(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            Type g(Type type) {
                return JavaVersion.b.g(type);
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            String h(Type type) {
                try {
                    return (String) Type.class.getMethod("getTypeName", new Class[0]).invoke(type, new Object[0]);
                } catch (IllegalAccessException e2) {
                    throw new RuntimeException(e2);
                } catch (NoSuchMethodException unused) {
                    throw new AssertionError("Type.getTypeName should be available in Java 8");
                } catch (InvocationTargetException e3) {
                    throw new RuntimeException(e3);
                }
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            Type j(Type type) {
                return JavaVersion.b.j(type);
            }
        }

        enum d extends JavaVersion {
            d(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            boolean f() {
                return false;
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            Type g(Type type) {
                return JavaVersion.c.g(type);
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            String h(Type type) {
                return JavaVersion.c.h(type);
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            Type j(Type type) {
                return JavaVersion.c.j(type);
            }
        }

        class e extends com.google.common.reflect.b<Map.Entry<String, int[][]>> {
            e() {
            }
        }

        class f extends com.google.common.reflect.b<int[]> {
            f() {
            }
        }

        static {
            a aVar = new a("JAVA6", 0);
            a = aVar;
            b bVar = new b("JAVA7", 1);
            b = bVar;
            c cVar = new c("JAVA8", 2);
            c = cVar;
            d dVar = new d("JAVA9", 3);
            f3955d = dVar;
            f3957f = e();
            if (AnnotatedElement.class.isAssignableFrom(TypeVariable.class)) {
                if (new e().c().toString().contains("java.util.Map.java.util.Map")) {
                    f3956e = cVar;
                    return;
                } else {
                    f3956e = dVar;
                    return;
                }
            }
            if (new f().c() instanceof Class) {
                f3956e = bVar;
            } else {
                f3956e = aVar;
            }
        }

        private JavaVersion(String str, int i) {
        }

        /* synthetic */ JavaVersion(String str, int i, g gVar) {
            this(str, i);
        }

        private static /* synthetic */ JavaVersion[] e() {
            return new JavaVersion[]{a, b, c, f3955d};
        }

        public static JavaVersion valueOf(String str) {
            return (JavaVersion) Enum.valueOf(JavaVersion.class, str);
        }

        public static JavaVersion[] values() {
            return (JavaVersion[]) f3957f.clone();
        }

        boolean f() {
            return true;
        }

        abstract Type g(Type type);

        String h(Type type) {
            return Types.p(type);
        }

        final ImmutableList<Type> i(Type[] typeArr) {
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (Type type : typeArr) {
                aVarBuilder.a(j(type));
            }
            return aVarBuilder.k();
        }

        abstract Type j(Type type);
    }

    private static final class a implements GenericArrayType, Serializable {
        private static final long serialVersionUID = 0;
        private final Type a;

        a(Type type) {
            this.a = JavaVersion.f3956e.j(type);
        }

        public boolean equals(Object obj) {
            if (obj instanceof GenericArrayType) {
                return com.google.common.base.Objects.equal(getGenericComponentType(), ((GenericArrayType) obj).getGenericComponentType());
            }
            return false;
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.a;
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return String.valueOf(Types.p(this.a)).concat("[]");
        }
    }

    static final class b<X> {
        static final boolean a = !b.class.getTypeParameters()[0].equals(Types.i(b.class, "X", new Type[0]));

        b() {
        }
    }

    private static final class c implements ParameterizedType, Serializable {
        private static final long serialVersionUID = 0;
        private final Type a;
        private final ImmutableList<Type> b;
        private final Class<?> c;

        c(Type type, Class<?> cls, Type[] typeArr) {
            Preconditions.checkNotNull(cls);
            Preconditions.checkArgument(typeArr.length == cls.getTypeParameters().length);
            Types.e(typeArr, "type parameter");
            this.a = type;
            this.c = cls;
            this.b = JavaVersion.f3956e.i(typeArr);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) obj;
            return getRawType().equals(parameterizedType.getRawType()) && com.google.common.base.Objects.equal(getOwnerType(), parameterizedType.getOwnerType()) && Arrays.equals(getActualTypeArguments(), parameterizedType.getActualTypeArguments());
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return Types.o(this.b);
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.a;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.c;
        }

        public int hashCode() {
            Type type = this.a;
            return ((type == null ? 0 : type.hashCode()) ^ this.b.hashCode()) ^ this.c.hashCode();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            if (this.a != null) {
                JavaVersion javaVersion = JavaVersion.f3956e;
                if (javaVersion.f()) {
                    sb.append(javaVersion.h(this.a));
                    sb.append('.');
                }
            }
            sb.append(this.c.getName());
            sb.append('<');
            Joiner joiner = Types.a;
            ImmutableList<Type> immutableList = this.b;
            final JavaVersion javaVersion2 = JavaVersion.f3956e;
            Objects.requireNonNull(javaVersion2);
            sb.append(joiner.e(Iterables.transform(immutableList, new com.google.common.base.f() { // from class: com.google.common.reflect.a
                @Override // com.google.common.base.f
                public final Object apply(Object obj) {
                    return javaVersion2.h((Type) obj);
                }
            })));
            sb.append('>');
            return sb.toString();
        }
    }

    private static final class d<D extends GenericDeclaration> {
        private final D a;
        private final String b;
        private final ImmutableList<Type> c;

        d(D d2, String str, Type[] typeArr) {
            Types.e(typeArr, "bound for type variable");
            this.a = (D) Preconditions.checkNotNull(d2);
            this.b = (String) Preconditions.checkNotNull(str);
            this.c = ImmutableList.copyOf(typeArr);
        }

        public D a() {
            return this.a;
        }

        public String b() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (!b.a) {
                if (!(obj instanceof TypeVariable)) {
                    return false;
                }
                TypeVariable typeVariable = (TypeVariable) obj;
                return this.b.equals(typeVariable.getName()) && this.a.equals(typeVariable.getGenericDeclaration());
            }
            if (obj == null || !Proxy.isProxyClass(obj.getClass()) || !(Proxy.getInvocationHandler(obj) instanceof e)) {
                return false;
            }
            d dVar = ((e) Proxy.getInvocationHandler(obj)).b;
            return this.b.equals(dVar.b()) && this.a.equals(dVar.a()) && this.c.equals(dVar.c);
        }

        public int hashCode() {
            return this.a.hashCode() ^ this.b.hashCode();
        }

        public String toString() {
            return this.b;
        }
    }

    private static final class e implements InvocationHandler {
        private static final ImmutableMap<String, Method> a;
        private final d<?> b;

        static {
            ImmutableMap.b bVarBuilder = ImmutableMap.builder();
            for (Method method : d.class.getMethods()) {
                if (method.getDeclaringClass().equals(d.class)) {
                    try {
                        method.setAccessible(true);
                    } catch (AccessControlException unused) {
                    }
                    bVarBuilder.g(method.getName(), method);
                }
            }
            a = bVarBuilder.c();
        }

        e(d<?> dVar) {
            this.b = dVar;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Method method2 = a.get(name);
            if (method2 == null) {
                throw new UnsupportedOperationException(name);
            }
            try {
                return method2.invoke(this.b, objArr);
            } catch (InvocationTargetException e2) {
                throw e2.getCause();
            }
        }
    }

    static final class f implements WildcardType, Serializable {
        private static final long serialVersionUID = 0;
        private final ImmutableList<Type> a;
        private final ImmutableList<Type> b;

        f(Type[] typeArr, Type[] typeArr2) {
            Types.e(typeArr, "lower bound for wildcard");
            Types.e(typeArr2, "upper bound for wildcard");
            JavaVersion javaVersion = JavaVersion.f3956e;
            this.a = javaVersion.i(typeArr);
            this.b = javaVersion.i(typeArr2);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) obj;
            return this.a.equals(Arrays.asList(wildcardType.getLowerBounds())) && this.b.equals(Arrays.asList(wildcardType.getUpperBounds()));
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            return Types.o(this.a);
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return Types.o(this.b);
        }

        public int hashCode() {
            return this.a.hashCode() ^ this.b.hashCode();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("?");
            o3<Type> it = this.a.iterator();
            while (it.hasNext()) {
                Type next = it.next();
                sb.append(" super ");
                sb.append(JavaVersion.f3956e.h(next));
            }
            for (Type type : Types.f(this.b)) {
                sb.append(" extends ");
                sb.append(JavaVersion.f3956e.h(type));
            }
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(Type[] typeArr, String str) {
        for (Type type : typeArr) {
            if (type instanceof Class) {
                Preconditions.checkArgument(!r2.isPrimitive(), "Primitive type '%s' used as %s", (Class) type, str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Iterable<Type> f(Iterable<Type> iterable) {
        return Iterables.filter(iterable, Predicates.not(Predicates.equalTo(Object.class)));
    }

    static Class<?> g(Class<?> cls) {
        return Array.newInstance(cls, 0).getClass();
    }

    static Type h(Type type) {
        if (!(type instanceof WildcardType)) {
            return JavaVersion.f3956e.g(type);
        }
        WildcardType wildcardType = (WildcardType) type;
        Type[] lowerBounds = wildcardType.getLowerBounds();
        Preconditions.checkArgument(lowerBounds.length <= 1, "Wildcard cannot have more than one lower bounds.");
        if (lowerBounds.length == 1) {
            return n(h(lowerBounds[0]));
        }
        Type[] upperBounds = wildcardType.getUpperBounds();
        Preconditions.checkArgument(upperBounds.length == 1, "Wildcard should have only one upper bound.");
        return m(h(upperBounds[0]));
    }

    static <D extends GenericDeclaration> TypeVariable<D> i(D d2, String str, Type... typeArr) {
        if (typeArr.length == 0) {
            typeArr = new Type[]{Object.class};
        }
        return l(d2, str, typeArr);
    }

    static ParameterizedType j(Class<?> cls, Type... typeArr) {
        return new c(ClassOwnership.c.g(cls), cls, typeArr);
    }

    static ParameterizedType k(Type type, Class<?> cls, Type... typeArr) {
        if (type == null) {
            return j(cls, typeArr);
        }
        Preconditions.checkNotNull(typeArr);
        Preconditions.checkArgument(cls.getEnclosingClass() != null, "Owner type for unenclosed %s", cls);
        return new c(type, cls, typeArr);
    }

    private static <D extends GenericDeclaration> TypeVariable<D> l(D d2, String str, Type[] typeArr) {
        return (TypeVariable) Reflection.newProxy(TypeVariable.class, new e(new d(d2, str, typeArr)));
    }

    static WildcardType m(Type type) {
        return new f(new Type[0], new Type[]{type});
    }

    static WildcardType n(Type type) {
        return new f(new Type[]{type}, new Type[]{Object.class});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Type[] o(Collection<Type> collection) {
        return (Type[]) collection.toArray(new Type[0]);
    }

    static String p(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }
}
