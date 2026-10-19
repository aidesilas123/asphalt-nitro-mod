package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.Array;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function10;
import kotlin.jvm.functions.Function11;
import kotlin.jvm.functions.Function12;
import kotlin.jvm.functions.Function13;
import kotlin.jvm.functions.Function14;
import kotlin.jvm.functions.Function15;
import kotlin.jvm.functions.Function16;
import kotlin.jvm.functions.Function17;
import kotlin.jvm.functions.Function18;
import kotlin.jvm.functions.Function19;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function20;
import kotlin.jvm.functions.Function21;
import kotlin.jvm.functions.Function22;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.functions.Function7;
import kotlin.jvm.functions.Function8;
import kotlin.jvm.functions.Function9;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: reflectClassUtil.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ReflectClassUtilKt {
    private static final List<KClass<? extends Object>> a;
    private static final Map<Class<? extends Object>, Class<? extends Object>> b;
    private static final Map<Class<? extends Object>, Class<? extends Object>> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map<Class<? extends Function<?>>, Integer> f9164d;

    /* JADX INFO: compiled from: reflectClassUtil.kt */
    static final class a extends Lambda implements Function1<ParameterizedType, ParameterizedType> {
        public static final a a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ParameterizedType invoke(ParameterizedType it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            Type ownerType = it.getOwnerType();
            if (!(ownerType instanceof ParameterizedType)) {
                ownerType = null;
            }
            return (ParameterizedType) ownerType;
        }
    }

    /* JADX INFO: compiled from: reflectClassUtil.kt */
    static final class b extends Lambda implements Function1<ParameterizedType, Sequence<? extends Type>> {
        public static final b a = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Sequence<Type> invoke(ParameterizedType it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            Type[] actualTypeArguments = it.getActualTypeArguments();
            Intrinsics.checkExpressionValueIsNotNull(actualTypeArguments, "it.actualTypeArguments");
            return ArraysKt___ArraysKt.asSequence(actualTypeArguments);
        }
    }

    static {
        int i = 0;
        List<KClass<? extends Object>> listListOf = CollectionsKt__CollectionsKt.listOf((Object[]) new KClass[]{Reflection.getOrCreateKotlinClass(Boolean.TYPE), Reflection.getOrCreateKotlinClass(Byte.TYPE), Reflection.getOrCreateKotlinClass(Character.TYPE), Reflection.getOrCreateKotlinClass(Double.TYPE), Reflection.getOrCreateKotlinClass(Float.TYPE), Reflection.getOrCreateKotlinClass(Integer.TYPE), Reflection.getOrCreateKotlinClass(Long.TYPE), Reflection.getOrCreateKotlinClass(Short.TYPE)});
        a = listListOf;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listListOf, 10));
        Iterator<T> it = listListOf.iterator();
        while (it.hasNext()) {
            KClass kClass = (KClass) it.next();
            arrayList.add(TuplesKt.to(JvmClassMappingKt.getJavaObjectType(kClass), JvmClassMappingKt.getJavaPrimitiveType(kClass)));
        }
        b = MapsKt__MapsKt.toMap(arrayList);
        List<KClass<? extends Object>> list = a;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            KClass kClass2 = (KClass) it2.next();
            arrayList2.add(TuplesKt.to(JvmClassMappingKt.getJavaPrimitiveType(kClass2), JvmClassMappingKt.getJavaObjectType(kClass2)));
        }
        c = MapsKt__MapsKt.toMap(arrayList2);
        List listListOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new Class[]{Function0.class, Function1.class, Function2.class, Function3.class, Function4.class, Function5.class, Function6.class, Function7.class, Function8.class, Function9.class, Function10.class, Function11.class, Function12.class, Function13.class, Function14.class, Function15.class, Function16.class, Function17.class, Function18.class, Function19.class, Function20.class, Function21.class, Function22.class});
        ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listListOf2, 10));
        for (Object obj : listListOf2) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            arrayList3.add(TuplesKt.to((Class) obj, Integer.valueOf(i)));
            i = i2;
        }
        f9164d = MapsKt__MapsKt.toMap(arrayList3);
    }

    public static final Class<?> createArrayType(Class<?> createArrayType) {
        Intrinsics.checkParameterIsNotNull(createArrayType, "$this$createArrayType");
        return Array.newInstance(createArrayType, 0).getClass();
    }

    public static final ClassId getClassId(Class<?> classId) {
        ClassId classId2;
        ClassId classIdD;
        Intrinsics.checkParameterIsNotNull(classId, "$this$classId");
        if (classId.isPrimitive()) {
            throw new IllegalArgumentException("Can't compute ClassId for primitive type: " + classId);
        }
        if (classId.isArray()) {
            throw new IllegalArgumentException("Can't compute ClassId for array type: " + classId);
        }
        if (classId.getEnclosingMethod() == null && classId.getEnclosingConstructor() == null) {
            String simpleName = classId.getSimpleName();
            Intrinsics.checkExpressionValueIsNotNull(simpleName, "simpleName");
            if (!(simpleName.length() == 0)) {
                Class<?> declaringClass = classId.getDeclaringClass();
                if (declaringClass != null && (classId2 = getClassId(declaringClass)) != null && (classIdD = classId2.d(Name.identifier(classId.getSimpleName()))) != null) {
                    return classIdD;
                }
                ClassId classId3 = ClassId.topLevel(new FqName(classId.getName()));
                Intrinsics.checkExpressionValueIsNotNull(classId3, "ClassId.topLevel(FqName(name))");
                return classId3;
            }
        }
        FqName fqName = new FqName(classId.getName());
        return new ClassId(fqName.e(), FqName.topLevel(fqName.g()), true);
    }

    public static final String getDesc(Class<?> desc) {
        Intrinsics.checkParameterIsNotNull(desc, "$this$desc");
        if (Intrinsics.areEqual(desc, Void.TYPE)) {
            return "V";
        }
        String name = createArrayType(desc).getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "createArrayType().name");
        String strSubstring = name.substring(1);
        Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.String).substring(startIndex)");
        return StringsKt__StringsJVMKt.replace$default(strSubstring, '.', '/', false, 4, (Object) null);
    }

    public static final Integer getFunctionClassArity(Class<?> functionClassArity) {
        Intrinsics.checkParameterIsNotNull(functionClassArity, "$this$functionClassArity");
        return f9164d.get(functionClassArity);
    }

    public static final List<Type> getParameterizedTypeArguments(Type parameterizedTypeArguments) {
        Intrinsics.checkParameterIsNotNull(parameterizedTypeArguments, "$this$parameterizedTypeArguments");
        if (!(parameterizedTypeArguments instanceof ParameterizedType)) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        ParameterizedType parameterizedType = (ParameterizedType) parameterizedTypeArguments;
        if (parameterizedType.getOwnerType() != null) {
            return SequencesKt___SequencesKt.toList(SequencesKt___SequencesKt.flatMap(SequencesKt__SequencesKt.generateSequence(parameterizedTypeArguments, a.a), b.a));
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        Intrinsics.checkExpressionValueIsNotNull(actualTypeArguments, "actualTypeArguments");
        return ArraysKt___ArraysKt.toList(actualTypeArguments);
    }

    public static final Class<?> getPrimitiveByWrapper(Class<?> primitiveByWrapper) {
        Intrinsics.checkParameterIsNotNull(primitiveByWrapper, "$this$primitiveByWrapper");
        return b.get(primitiveByWrapper);
    }

    public static final ClassLoader getSafeClassLoader(Class<?> safeClassLoader) {
        Intrinsics.checkParameterIsNotNull(safeClassLoader, "$this$safeClassLoader");
        ClassLoader classLoader = safeClassLoader.getClassLoader();
        if (classLoader != null) {
            return classLoader;
        }
        ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
        Intrinsics.checkExpressionValueIsNotNull(systemClassLoader, "ClassLoader.getSystemClassLoader()");
        return systemClassLoader;
    }

    public static final Class<?> getWrapperByPrimitive(Class<?> wrapperByPrimitive) {
        Intrinsics.checkParameterIsNotNull(wrapperByPrimitive, "$this$wrapperByPrimitive");
        return c.get(wrapperByPrimitive);
    }

    public static final boolean isEnumClassOrSpecializedEnumEntryClass(Class<?> isEnumClassOrSpecializedEnumEntryClass) {
        Intrinsics.checkParameterIsNotNull(isEnumClassOrSpecializedEnumEntryClass, "$this$isEnumClassOrSpecializedEnumEntryClass");
        return Enum.class.isAssignableFrom(isEnumClassOrSpecializedEnumEntryClass);
    }
}
