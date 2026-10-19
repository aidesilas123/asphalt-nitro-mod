package kotlin.reflect.jvm.internal.calls;

import com.json.b4;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TypeCastException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.k;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.o;

/* JADX INFO: compiled from: AnnotationConstructorCaller.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class AnnotationConstructorCallerKt {

    /* JADX INFO: compiled from: AnnotationConstructorCaller.kt */
    static final class a extends Lambda implements Function1<Object, Boolean> {
        final /* synthetic */ Class a;
        final /* synthetic */ List b;
        final /* synthetic */ Map c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Class cls, List list, Map map) {
            super(1);
            this.a = cls;
            this.b = list;
            this.c = map;
        }

        /* JADX WARN: Removed duplicated region for block: B:113:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final boolean a(java.lang.Object r7) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
            /*
                Method dump skipped, instruction units count: 302
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt.a.a(java.lang.Object):boolean");
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
            return Boolean.valueOf(a(obj));
        }
    }

    /* JADX INFO: compiled from: AnnotationConstructorCaller.kt */
    static final class b extends Lambda implements Function0<Integer> {
        final /* synthetic */ Map a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Map map) {
            super(0);
            this.a = map;
        }

        public final int c() {
            int iHashCode = 0;
            for (Map.Entry entry : this.a.entrySet()) {
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                iHashCode += (value instanceof boolean[] ? Arrays.hashCode((boolean[]) value) : value instanceof char[] ? Arrays.hashCode((char[]) value) : value instanceof byte[] ? Arrays.hashCode((byte[]) value) : value instanceof short[] ? Arrays.hashCode((short[]) value) : value instanceof int[] ? Arrays.hashCode((int[]) value) : value instanceof float[] ? Arrays.hashCode((float[]) value) : value instanceof long[] ? Arrays.hashCode((long[]) value) : value instanceof double[] ? Arrays.hashCode((double[]) value) : value instanceof Object[] ? Arrays.hashCode((Object[]) value) : value.hashCode()) ^ (str.hashCode() * 127);
            }
            return iHashCode;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Integer invoke() {
            return Integer.valueOf(c());
        }
    }

    /* JADX INFO: compiled from: AnnotationConstructorCaller.kt */
    static final class c implements InvocationHandler {
        final /* synthetic */ Class a;
        final /* synthetic */ Lazy b;
        final /* synthetic */ KProperty c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Lazy f9022d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ KProperty f9023e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ a f9024f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ Map f9025g;

        c(Class cls, Lazy lazy, KProperty kProperty, Lazy lazy2, KProperty kProperty2, a aVar, Map map) {
            this.a = cls;
            this.b = lazy;
            this.c = kProperty;
            this.f9022d = lazy2;
            this.f9023e = kProperty2;
            this.f9024f = aVar;
            this.f9025g = map;
        }

        @Override // java.lang.reflect.InvocationHandler
        public final Object invoke(Object obj, Method method, Object[] objArr) {
            Intrinsics.checkExpressionValueIsNotNull(method, "method");
            String name = method.getName();
            if (name != null) {
                int iHashCode = name.hashCode();
                if (iHashCode != -1776922004) {
                    if (iHashCode != 147696667) {
                        if (iHashCode == 1444986633 && name.equals("annotationType")) {
                            return this.a;
                        }
                    } else if (name.equals("hashCode")) {
                        return this.f9022d.getValue();
                    }
                } else if (name.equals("toString")) {
                    return this.b.getValue();
                }
            }
            if (Intrinsics.areEqual(name, "equals") && objArr != null && objArr.length == 1) {
                return Boolean.valueOf(this.f9024f.a(k.single(objArr)));
            }
            if (this.f9025g.containsKey(name)) {
                return this.f9025g.get(name);
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Method is not supported: ");
            sb.append(method);
            sb.append(" (args: ");
            if (objArr == null) {
                objArr = new Object[0];
            }
            sb.append(ArraysKt___ArraysKt.toList(objArr));
            sb.append(')');
            throw new o(sb.toString());
        }
    }

    /* JADX INFO: compiled from: AnnotationConstructorCaller.kt */
    static final class d extends Lambda implements Function0<String> {
        final /* synthetic */ Class a;
        final /* synthetic */ Map b;

        /* JADX INFO: compiled from: AnnotationConstructorCaller.kt */
        static final class a extends Lambda implements Function1<Map.Entry<? extends String, ? extends Object>, String> {
            public static final a a = new a();

            a() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final String invoke(Map.Entry<String, ? extends Object> entry) {
                Intrinsics.checkParameterIsNotNull(entry, "entry");
                String key = entry.getKey();
                Object value = entry.getValue();
                return key + b4.R + (value instanceof boolean[] ? Arrays.toString((boolean[]) value) : value instanceof char[] ? Arrays.toString((char[]) value) : value instanceof byte[] ? Arrays.toString((byte[]) value) : value instanceof short[] ? Arrays.toString((short[]) value) : value instanceof int[] ? Arrays.toString((int[]) value) : value instanceof float[] ? Arrays.toString((float[]) value) : value instanceof long[] ? Arrays.toString((long[]) value) : value instanceof double[] ? Arrays.toString((double[]) value) : value instanceof Object[] ? Arrays.toString((Object[]) value) : value.toString());
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(Class cls, Map map) {
            super(0);
            this.a = cls;
            this.b = map;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            StringBuilder sb = new StringBuilder();
            sb.append('@');
            sb.append(this.a.getCanonicalName());
            CollectionsKt___CollectionsKt.joinTo$default(this.b.entrySet(), sb, ", ", "(", ")", 0, null, a.a, 48, null);
            String string = sb.toString();
            Intrinsics.checkExpressionValueIsNotNull(string, "StringBuilder().apply(builderAction).toString()");
            return string;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void a(int i, String str, Class<?> cls) {
        String strR;
        KClass orCreateKotlinClass = Intrinsics.areEqual(cls, Class.class) ? Reflection.getOrCreateKotlinClass(KClass.class) : (cls.isArray() && Intrinsics.areEqual(cls.getComponentType(), Class.class)) ? Reflection.getOrCreateKotlinClass(KClass[].class) : JvmClassMappingKt.getKotlinClass(cls);
        if (Intrinsics.areEqual(orCreateKotlinClass.r(), Reflection.getOrCreateKotlinClass(Object[].class).r())) {
            StringBuilder sb = new StringBuilder();
            sb.append(orCreateKotlinClass.r());
            sb.append('<');
            Class<?> componentType = JvmClassMappingKt.getJavaClass(orCreateKotlinClass).getComponentType();
            Intrinsics.checkExpressionValueIsNotNull(componentType, "kotlinClass.java.componentType");
            sb.append(JvmClassMappingKt.getKotlinClass(componentType).r());
            sb.append('>');
            strR = sb.toString();
        } else {
            strR = orCreateKotlinClass.r();
        }
        throw new IllegalArgumentException("Argument #" + i + ' ' + str + " is not of the required type " + strR);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object b(Object obj, Class<?> cls) {
        if (obj instanceof Class) {
            return null;
        }
        if (obj instanceof KClass) {
            obj = JvmClassMappingKt.getJavaClass((KClass) obj);
        } else if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            if (objArr instanceof Class[]) {
                return null;
            }
            if (!(objArr instanceof KClass[])) {
                obj = objArr;
            } else {
                if (obj == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<kotlin.reflect.KClass<*>>");
                }
                KClass[] kClassArr = (KClass[]) obj;
                ArrayList arrayList = new ArrayList(kClassArr.length);
                for (KClass kClass : kClassArr) {
                    arrayList.add(JvmClassMappingKt.getJavaClass(kClass));
                }
                obj = arrayList.toArray(new Class[0]);
                if (obj == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
                }
            }
        }
        if (cls.isInstance(obj)) {
            return obj;
        }
        return null;
    }

    public static final <T> T createAnnotationInstance(Class<T> annotationClass, Map<String, ? extends Object> values, List<Method> methods) {
        Intrinsics.checkParameterIsNotNull(annotationClass, "annotationClass");
        Intrinsics.checkParameterIsNotNull(values, "values");
        Intrinsics.checkParameterIsNotNull(methods, "methods");
        a aVar = new a(annotationClass, methods, values);
        Lazy lazy = LazyKt__LazyJVMKt.lazy(new b(values));
        T t = (T) Proxy.newProxyInstance(annotationClass.getClassLoader(), new Class[]{annotationClass}, new c(annotationClass, LazyKt__LazyJVMKt.lazy(new d(annotationClass, values)), null, lazy, null, aVar, values));
        if (t != null) {
            return t;
        }
        throw new TypeCastException("null cannot be cast to non-null type T");
    }

    public static /* synthetic */ Object createAnnotationInstance$default(Class cls, Map map, List list, int i, Object obj) {
        if ((i & 4) != 0) {
            Set setKeySet = map.keySet();
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(setKeySet, 10));
            Iterator it = setKeySet.iterator();
            while (it.hasNext()) {
                arrayList.add(cls.getDeclaredMethod((String) it.next(), new Class[0]));
            }
            list = arrayList;
        }
        return createAnnotationInstance(cls, map, list);
    }
}
