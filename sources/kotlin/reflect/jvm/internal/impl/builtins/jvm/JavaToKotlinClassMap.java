package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.FqNamesUtilKt;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.name.SpecialNames;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: JavaToKotlinClassMap.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class JavaToKotlinClassMap {
    private static final String a;
    private static final String b;
    private static final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f9070d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final ClassId f9071e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final FqName f9072f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final ClassId f9073g;
    private static final HashMap<FqNameUnsafe, ClassId> h;
    private static final HashMap<FqNameUnsafe, ClassId> i;
    private static final HashMap<FqNameUnsafe, FqName> j;
    private static final HashMap<FqNameUnsafe, FqName> k;
    private static final List<a> l;
    public static final JavaToKotlinClassMap m;

    /* JADX INFO: compiled from: JavaToKotlinClassMap.kt */
    public static final class a {
        private final ClassId a;
        private final ClassId b;
        private final ClassId c;

        public a(ClassId javaClass, ClassId kotlinReadOnly, ClassId kotlinMutable) {
            Intrinsics.checkParameterIsNotNull(javaClass, "javaClass");
            Intrinsics.checkParameterIsNotNull(kotlinReadOnly, "kotlinReadOnly");
            Intrinsics.checkParameterIsNotNull(kotlinMutable, "kotlinMutable");
            this.a = javaClass;
            this.b = kotlinReadOnly;
            this.c = kotlinMutable;
        }

        public final ClassId a() {
            return this.a;
        }

        public final ClassId b() {
            return this.b;
        }

        public final ClassId c() {
            return this.c;
        }

        public final ClassId d() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.areEqual(this.a, aVar.a) && Intrinsics.areEqual(this.b, aVar.b) && Intrinsics.areEqual(this.c, aVar.c);
        }

        public int hashCode() {
            ClassId classId = this.a;
            int iHashCode = (classId != null ? classId.hashCode() : 0) * 31;
            ClassId classId2 = this.b;
            int iHashCode2 = (iHashCode + (classId2 != null ? classId2.hashCode() : 0)) * 31;
            ClassId classId3 = this.c;
            return iHashCode2 + (classId3 != null ? classId3.hashCode() : 0);
        }

        public String toString() {
            return "PlatformMutabilityMapping(javaClass=" + this.a + ", kotlinReadOnly=" + this.b + ", kotlinMutable=" + this.c + ")";
        }
    }

    static {
        JavaToKotlinClassMap javaToKotlinClassMap = new JavaToKotlinClassMap();
        m = javaToKotlinClassMap;
        StringBuilder sb = new StringBuilder();
        FunctionClassDescriptor.Kind kind = FunctionClassDescriptor.Kind.a;
        sb.append(kind.f().toString());
        sb.append(".");
        sb.append(kind.e());
        a = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        FunctionClassDescriptor.Kind kind2 = FunctionClassDescriptor.Kind.c;
        sb2.append(kind2.f().toString());
        sb2.append(".");
        sb2.append(kind2.e());
        b = sb2.toString();
        StringBuilder sb3 = new StringBuilder();
        FunctionClassDescriptor.Kind kind3 = FunctionClassDescriptor.Kind.b;
        sb3.append(kind3.f().toString());
        sb3.append(".");
        sb3.append(kind3.e());
        c = sb3.toString();
        StringBuilder sb4 = new StringBuilder();
        FunctionClassDescriptor.Kind kind4 = FunctionClassDescriptor.Kind.f9064d;
        sb4.append(kind4.f().toString());
        sb4.append(".");
        sb4.append(kind4.e());
        f9070d = sb4.toString();
        ClassId classId = ClassId.topLevel(new FqName("kotlin.jvm.functions.FunctionN"));
        Intrinsics.checkExpressionValueIsNotNull(classId, "ClassId.topLevel(FqName(…vm.functions.FunctionN\"))");
        f9071e = classId;
        FqName fqNameB = classId.b();
        Intrinsics.checkExpressionValueIsNotNull(fqNameB, "FUNCTION_N_CLASS_ID.asSingleFqName()");
        f9072f = fqNameB;
        ClassId classId2 = ClassId.topLevel(new FqName("kotlin.reflect.KFunction"));
        Intrinsics.checkExpressionValueIsNotNull(classId2, "ClassId.topLevel(FqName(…tlin.reflect.KFunction\"))");
        f9073g = classId2;
        h = new HashMap<>();
        i = new HashMap<>();
        j = new HashMap<>();
        k = new HashMap<>();
        KotlinBuiltIns.e eVar = KotlinBuiltIns.h;
        ClassId classId3 = ClassId.topLevel(eVar.M);
        Intrinsics.checkExpressionValueIsNotNull(classId3, "ClassId.topLevel(FQ_NAMES.iterable)");
        FqName fqName = eVar.U;
        Intrinsics.checkExpressionValueIsNotNull(fqName, "FQ_NAMES.mutableIterable");
        FqName fqNameF = classId3.f();
        FqName fqNameF2 = classId3.f();
        Intrinsics.checkExpressionValueIsNotNull(fqNameF2, "kotlinReadOnly.packageFqName");
        FqName fqNameTail = FqNamesUtilKt.tail(fqName, fqNameF2);
        ClassId classId4 = new ClassId(fqNameF, fqNameTail, false);
        ClassId classId5 = ClassId.topLevel(eVar.L);
        Intrinsics.checkExpressionValueIsNotNull(classId5, "ClassId.topLevel(FQ_NAMES.iterator)");
        FqName fqName2 = eVar.T;
        Intrinsics.checkExpressionValueIsNotNull(fqName2, "FQ_NAMES.mutableIterator");
        FqName fqNameF3 = classId5.f();
        FqName fqNameF4 = classId5.f();
        Intrinsics.checkExpressionValueIsNotNull(fqNameF4, "kotlinReadOnly.packageFqName");
        ClassId classId6 = new ClassId(fqNameF3, FqNamesUtilKt.tail(fqName2, fqNameF4), false);
        ClassId classId7 = ClassId.topLevel(eVar.N);
        Intrinsics.checkExpressionValueIsNotNull(classId7, "ClassId.topLevel(FQ_NAMES.collection)");
        FqName fqName3 = eVar.V;
        Intrinsics.checkExpressionValueIsNotNull(fqName3, "FQ_NAMES.mutableCollection");
        FqName fqNameF5 = classId7.f();
        FqName fqNameF6 = classId7.f();
        Intrinsics.checkExpressionValueIsNotNull(fqNameF6, "kotlinReadOnly.packageFqName");
        ClassId classId8 = new ClassId(fqNameF5, FqNamesUtilKt.tail(fqName3, fqNameF6), false);
        ClassId classId9 = ClassId.topLevel(eVar.O);
        Intrinsics.checkExpressionValueIsNotNull(classId9, "ClassId.topLevel(FQ_NAMES.list)");
        FqName fqName4 = eVar.W;
        Intrinsics.checkExpressionValueIsNotNull(fqName4, "FQ_NAMES.mutableList");
        FqName fqNameF7 = classId9.f();
        FqName fqNameF8 = classId9.f();
        Intrinsics.checkExpressionValueIsNotNull(fqNameF8, "kotlinReadOnly.packageFqName");
        ClassId classId10 = new ClassId(fqNameF7, FqNamesUtilKt.tail(fqName4, fqNameF8), false);
        ClassId classId11 = ClassId.topLevel(eVar.Q);
        Intrinsics.checkExpressionValueIsNotNull(classId11, "ClassId.topLevel(FQ_NAMES.set)");
        FqName fqName5 = eVar.Y;
        Intrinsics.checkExpressionValueIsNotNull(fqName5, "FQ_NAMES.mutableSet");
        FqName fqNameF9 = classId11.f();
        FqName fqNameF10 = classId11.f();
        Intrinsics.checkExpressionValueIsNotNull(fqNameF10, "kotlinReadOnly.packageFqName");
        ClassId classId12 = new ClassId(fqNameF9, FqNamesUtilKt.tail(fqName5, fqNameF10), false);
        ClassId classId13 = ClassId.topLevel(eVar.P);
        Intrinsics.checkExpressionValueIsNotNull(classId13, "ClassId.topLevel(FQ_NAMES.listIterator)");
        FqName fqName6 = eVar.X;
        Intrinsics.checkExpressionValueIsNotNull(fqName6, "FQ_NAMES.mutableListIterator");
        FqName fqNameF11 = classId13.f();
        FqName fqNameF12 = classId13.f();
        Intrinsics.checkExpressionValueIsNotNull(fqNameF12, "kotlinReadOnly.packageFqName");
        ClassId classId14 = new ClassId(fqNameF11, FqNamesUtilKt.tail(fqName6, fqNameF12), false);
        ClassId classId15 = ClassId.topLevel(eVar.R);
        Intrinsics.checkExpressionValueIsNotNull(classId15, "ClassId.topLevel(FQ_NAMES.map)");
        FqName fqName7 = eVar.Z;
        Intrinsics.checkExpressionValueIsNotNull(fqName7, "FQ_NAMES.mutableMap");
        FqName fqNameF13 = classId15.f();
        FqName fqNameF14 = classId15.f();
        Intrinsics.checkExpressionValueIsNotNull(fqNameF14, "kotlinReadOnly.packageFqName");
        ClassId classId16 = new ClassId(fqNameF13, FqNamesUtilKt.tail(fqName7, fqNameF14), false);
        ClassId classIdD = ClassId.topLevel(eVar.R).d(eVar.S.g());
        Intrinsics.checkExpressionValueIsNotNull(classIdD, "ClassId.topLevel(FQ_NAME…MES.mapEntry.shortName())");
        FqName fqName8 = eVar.a0;
        Intrinsics.checkExpressionValueIsNotNull(fqName8, "FQ_NAMES.mutableMapEntry");
        FqName fqNameF15 = classIdD.f();
        FqName fqNameF16 = classIdD.f();
        Intrinsics.checkExpressionValueIsNotNull(fqNameF16, "kotlinReadOnly.packageFqName");
        List<a> listListOf = CollectionsKt__CollectionsKt.listOf((Object[]) new a[]{new a(javaToKotlinClassMap.g(Iterable.class), classId3, classId4), new a(javaToKotlinClassMap.g(Iterator.class), classId5, classId6), new a(javaToKotlinClassMap.g(Collection.class), classId7, classId8), new a(javaToKotlinClassMap.g(List.class), classId9, classId10), new a(javaToKotlinClassMap.g(Set.class), classId11, classId12), new a(javaToKotlinClassMap.g(ListIterator.class), classId13, classId14), new a(javaToKotlinClassMap.g(Map.class), classId15, classId16), new a(javaToKotlinClassMap.g(Map.Entry.class), classIdD, new ClassId(fqNameF15, FqNamesUtilKt.tail(fqName8, fqNameF16), false))});
        l = listListOf;
        FqNameUnsafe fqNameUnsafe = eVar.a;
        Intrinsics.checkExpressionValueIsNotNull(fqNameUnsafe, "FQ_NAMES.any");
        javaToKotlinClassMap.f(Object.class, fqNameUnsafe);
        FqNameUnsafe fqNameUnsafe2 = eVar.f9044g;
        Intrinsics.checkExpressionValueIsNotNull(fqNameUnsafe2, "FQ_NAMES.string");
        javaToKotlinClassMap.f(String.class, fqNameUnsafe2);
        FqNameUnsafe fqNameUnsafe3 = eVar.f9043f;
        Intrinsics.checkExpressionValueIsNotNull(fqNameUnsafe3, "FQ_NAMES.charSequence");
        javaToKotlinClassMap.f(CharSequence.class, fqNameUnsafe3);
        FqName fqName9 = eVar.t;
        Intrinsics.checkExpressionValueIsNotNull(fqName9, "FQ_NAMES.throwable");
        javaToKotlinClassMap.e(Throwable.class, fqName9);
        FqNameUnsafe fqNameUnsafe4 = eVar.c;
        Intrinsics.checkExpressionValueIsNotNull(fqNameUnsafe4, "FQ_NAMES.cloneable");
        javaToKotlinClassMap.f(Cloneable.class, fqNameUnsafe4);
        FqNameUnsafe fqNameUnsafe5 = eVar.q;
        Intrinsics.checkExpressionValueIsNotNull(fqNameUnsafe5, "FQ_NAMES.number");
        javaToKotlinClassMap.f(Number.class, fqNameUnsafe5);
        FqName fqName10 = eVar.u;
        Intrinsics.checkExpressionValueIsNotNull(fqName10, "FQ_NAMES.comparable");
        javaToKotlinClassMap.e(Comparable.class, fqName10);
        FqNameUnsafe fqNameUnsafe6 = eVar.r;
        Intrinsics.checkExpressionValueIsNotNull(fqNameUnsafe6, "FQ_NAMES._enum");
        javaToKotlinClassMap.f(Enum.class, fqNameUnsafe6);
        FqName fqName11 = eVar.C;
        Intrinsics.checkExpressionValueIsNotNull(fqName11, "FQ_NAMES.annotation");
        javaToKotlinClassMap.e(Annotation.class, fqName11);
        Iterator<a> it = listListOf.iterator();
        while (it.hasNext()) {
            javaToKotlinClassMap.d(it.next());
        }
        for (JvmPrimitiveType jvmPrimitiveType : JvmPrimitiveType.values()) {
            ClassId classId17 = ClassId.topLevel(jvmPrimitiveType.h());
            Intrinsics.checkExpressionValueIsNotNull(classId17, "ClassId.topLevel(jvmType.wrapperFqName)");
            ClassId classId18 = ClassId.topLevel(KotlinBuiltIns.getPrimitiveFqName(jvmPrimitiveType.g()));
            Intrinsics.checkExpressionValueIsNotNull(classId18, "ClassId.topLevel(KotlinB…e(jvmType.primitiveType))");
            javaToKotlinClassMap.a(classId17, classId18);
        }
        for (ClassId classId19 : kotlin.reflect.jvm.internal.impl.builtins.c.b.a()) {
            ClassId classId20 = ClassId.topLevel(new FqName("kotlin.jvm.internal." + classId19.h().e() + "CompanionObject"));
            Intrinsics.checkExpressionValueIsNotNull(classId20, "ClassId.topLevel(FqName(…g() + \"CompanionObject\"))");
            ClassId classIdD2 = classId19.d(SpecialNames.c);
            Intrinsics.checkExpressionValueIsNotNull(classIdD2, "classId.createNestedClas…AME_FOR_COMPANION_OBJECT)");
            javaToKotlinClassMap.a(classId20, classIdD2);
        }
        for (int i2 = 0; i2 < 23; i2++) {
            ClassId classId21 = ClassId.topLevel(new FqName("kotlin.jvm.functions.Function" + i2));
            Intrinsics.checkExpressionValueIsNotNull(classId21, "ClassId.topLevel(FqName(…m.functions.Function$i\"))");
            ClassId functionClassId = KotlinBuiltIns.getFunctionClassId(i2);
            Intrinsics.checkExpressionValueIsNotNull(functionClassId, "KotlinBuiltIns.getFunctionClassId(i)");
            javaToKotlinClassMap.a(classId21, functionClassId);
            javaToKotlinClassMap.c(new FqName(b + i2), f9073g);
        }
        for (int i3 = 0; i3 < 22; i3++) {
            FunctionClassDescriptor.Kind kind5 = FunctionClassDescriptor.Kind.f9064d;
            javaToKotlinClassMap.c(new FqName((kind5.f().toString() + "." + kind5.e()) + i3), f9073g);
        }
        FqName fqNameL = KotlinBuiltIns.h.b.l();
        Intrinsics.checkExpressionValueIsNotNull(fqNameL, "FQ_NAMES.nothing.toSafe()");
        javaToKotlinClassMap.c(fqNameL, javaToKotlinClassMap.g(Void.class));
    }

    private JavaToKotlinClassMap() {
    }

    private final void a(ClassId classId, ClassId classId2) {
        b(classId, classId2);
        FqName fqNameB = classId2.b();
        Intrinsics.checkExpressionValueIsNotNull(fqNameB, "kotlinClassId.asSingleFqName()");
        c(fqNameB, classId);
    }

    private final void b(ClassId classId, ClassId classId2) {
        HashMap<FqNameUnsafe, ClassId> map = h;
        FqNameUnsafe fqNameUnsafeJ = classId.b().j();
        Intrinsics.checkExpressionValueIsNotNull(fqNameUnsafeJ, "javaClassId.asSingleFqName().toUnsafe()");
        map.put(fqNameUnsafeJ, classId2);
    }

    private final void c(FqName fqName, ClassId classId) {
        HashMap<FqNameUnsafe, ClassId> map = i;
        FqNameUnsafe fqNameUnsafeJ = fqName.j();
        Intrinsics.checkExpressionValueIsNotNull(fqNameUnsafeJ, "kotlinFqNameUnsafe.toUnsafe()");
        map.put(fqNameUnsafeJ, classId);
    }

    private final void d(a aVar) {
        ClassId classIdA = aVar.a();
        ClassId classIdB = aVar.b();
        ClassId classIdC = aVar.c();
        a(classIdA, classIdB);
        FqName fqNameB = classIdC.b();
        Intrinsics.checkExpressionValueIsNotNull(fqNameB, "mutableClassId.asSingleFqName()");
        c(fqNameB, classIdA);
        FqName fqNameB2 = classIdB.b();
        Intrinsics.checkExpressionValueIsNotNull(fqNameB2, "readOnlyClassId.asSingleFqName()");
        FqName fqNameB3 = classIdC.b();
        Intrinsics.checkExpressionValueIsNotNull(fqNameB3, "mutableClassId.asSingleFqName()");
        HashMap<FqNameUnsafe, FqName> map = j;
        FqNameUnsafe fqNameUnsafeJ = classIdC.b().j();
        Intrinsics.checkExpressionValueIsNotNull(fqNameUnsafeJ, "mutableClassId.asSingleFqName().toUnsafe()");
        map.put(fqNameUnsafeJ, fqNameB2);
        HashMap<FqNameUnsafe, FqName> map2 = k;
        FqNameUnsafe fqNameUnsafeJ2 = fqNameB2.j();
        Intrinsics.checkExpressionValueIsNotNull(fqNameUnsafeJ2, "readOnlyFqName.toUnsafe()");
        map2.put(fqNameUnsafeJ2, fqNameB3);
    }

    private final void e(Class<?> cls, FqName fqName) {
        ClassId classIdG = g(cls);
        ClassId classId = ClassId.topLevel(fqName);
        Intrinsics.checkExpressionValueIsNotNull(classId, "ClassId.topLevel(kotlinFqName)");
        a(classIdG, classId);
    }

    private final void f(Class<?> cls, FqNameUnsafe fqNameUnsafe) {
        FqName fqNameL = fqNameUnsafe.l();
        Intrinsics.checkExpressionValueIsNotNull(fqNameL, "kotlinFqName.toSafe()");
        e(cls, fqNameL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ClassId g(Class<?> cls) {
        if (!cls.isPrimitive()) {
            cls.isArray();
        }
        Class<?> declaringClass = cls.getDeclaringClass();
        if (declaringClass == null) {
            ClassId classId = ClassId.topLevel(new FqName(cls.getCanonicalName()));
            Intrinsics.checkExpressionValueIsNotNull(classId, "ClassId.topLevel(FqName(clazz.canonicalName))");
            return classId;
        }
        ClassId classIdD = g(declaringClass).d(Name.identifier(cls.getSimpleName()));
        Intrinsics.checkExpressionValueIsNotNull(classIdD, "classId(outer).createNes…tifier(clazz.simpleName))");
        return classIdD;
    }

    private final d j(d dVar, Map<FqNameUnsafe, FqName> map, String str) {
        FqName fqName = map.get(DescriptorUtils.getFqName(dVar));
        if (fqName != null) {
            d dVarO = DescriptorUtilsKt.getBuiltIns(dVar).o(fqName);
            Intrinsics.checkExpressionValueIsNotNull(dVarO, "descriptor.builtIns.getB…Name(oppositeClassFqName)");
            return dVarO;
        }
        throw new IllegalArgumentException("Given class " + dVar + " is not a " + str + " collection");
    }

    private final boolean m(FqNameUnsafe fqNameUnsafe, String str) {
        Integer intOrNull;
        String strB = fqNameUnsafe.b();
        Intrinsics.checkExpressionValueIsNotNull(strB, "kotlinFqName.asString()");
        String strSubstringAfter = StringsKt__StringsKt.substringAfter(strB, str, "");
        return (strSubstringAfter.length() > 0) && !StringsKt__StringsKt.startsWith$default((CharSequence) strSubstringAfter, '0', false, 2, (Object) null) && (intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(strSubstringAfter)) != null && intOrNull.intValue() >= 23;
    }

    public static /* synthetic */ d mapJavaToKotlin$default(JavaToKotlinClassMap javaToKotlinClassMap, FqName fqName, KotlinBuiltIns kotlinBuiltIns, Integer num, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            num = null;
        }
        return javaToKotlinClassMap.t(fqName, kotlinBuiltIns, num);
    }

    public final d h(d mutable) {
        Intrinsics.checkParameterIsNotNull(mutable, "mutable");
        return j(mutable, j, "mutable");
    }

    public final d i(d readOnly) {
        Intrinsics.checkParameterIsNotNull(readOnly, "readOnly");
        return j(readOnly, k, "read-only");
    }

    public final FqName k() {
        return f9072f;
    }

    public final List<a> l() {
        return l;
    }

    public final boolean n(d mutable) {
        Intrinsics.checkParameterIsNotNull(mutable, "mutable");
        return o(DescriptorUtils.getFqName(mutable));
    }

    public final boolean o(FqNameUnsafe fqNameUnsafe) {
        HashMap<FqNameUnsafe, FqName> map = j;
        if (map != null) {
            return map.containsKey(fqNameUnsafe);
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.Map<K, *>");
    }

    public final boolean p(u type) {
        Intrinsics.checkParameterIsNotNull(type, "type");
        d classDescriptor = TypeUtils.getClassDescriptor(type);
        return classDescriptor != null && n(classDescriptor);
    }

    public final boolean q(d readOnly) {
        Intrinsics.checkParameterIsNotNull(readOnly, "readOnly");
        return r(DescriptorUtils.getFqName(readOnly));
    }

    public final boolean r(FqNameUnsafe fqNameUnsafe) {
        HashMap<FqNameUnsafe, FqName> map = k;
        if (map != null) {
            return map.containsKey(fqNameUnsafe);
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.Map<K, *>");
    }

    public final boolean s(u type) {
        Intrinsics.checkParameterIsNotNull(type, "type");
        d classDescriptor = TypeUtils.getClassDescriptor(type);
        return classDescriptor != null && q(classDescriptor);
    }

    public final d t(FqName fqName, KotlinBuiltIns builtIns, Integer num) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        Intrinsics.checkParameterIsNotNull(builtIns, "builtIns");
        ClassId classIdU = (num == null || !Intrinsics.areEqual(fqName, f9072f)) ? u(fqName) : KotlinBuiltIns.getFunctionClassId(num.intValue());
        if (classIdU != null) {
            return builtIns.o(classIdU.b());
        }
        return null;
    }

    public final ClassId u(FqName fqName) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        return h.get(fqName.j());
    }

    public final ClassId v(FqNameUnsafe kotlinFqName) {
        Intrinsics.checkParameterIsNotNull(kotlinFqName, "kotlinFqName");
        if (!m(kotlinFqName, a) && !m(kotlinFqName, c)) {
            if (!m(kotlinFqName, b) && !m(kotlinFqName, f9070d)) {
                return i.get(kotlinFqName);
            }
            return f9073g;
        }
        return f9071e;
    }

    public final Collection<d> w(FqName fqName, KotlinBuiltIns builtIns) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        Intrinsics.checkParameterIsNotNull(builtIns, "builtIns");
        d dVarMapJavaToKotlin$default = mapJavaToKotlin$default(this, fqName, builtIns, null, 4, null);
        if (dVarMapJavaToKotlin$default == null) {
            return SetsKt__SetsKt.emptySet();
        }
        FqName fqName2 = k.get(DescriptorUtilsKt.getFqNameUnsafe(dVarMapJavaToKotlin$default));
        if (fqName2 == null) {
            return SetsKt__SetsJVMKt.setOf(dVarMapJavaToKotlin$default);
        }
        Intrinsics.checkExpressionValueIsNotNull(fqName2, "readOnlyToMutable[kotlin…eturn setOf(kotlinAnalog)");
        d dVarO = builtIns.o(fqName2);
        Intrinsics.checkExpressionValueIsNotNull(dVarO, "builtIns.getBuiltInClass…otlinMutableAnalogFqName)");
        return CollectionsKt__CollectionsKt.listOf((Object[]) new d[]{dVarMapJavaToKotlin$default, dVarO});
    }
}
