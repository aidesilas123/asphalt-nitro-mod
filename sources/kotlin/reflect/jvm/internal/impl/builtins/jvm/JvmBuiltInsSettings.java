package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.collections.p;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.e0;
import kotlin.jvm.internal.l0;
import kotlin.jvm.internal.n;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentDeclarationFilterKt;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.t;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MethodSignatureMappingKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.SignatureBuildingComponents;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.types.LazyWrappedType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.types.y;
import kotlin.reflect.jvm.internal.impl.utils.DFS;

/* JADX INFO: compiled from: JvmBuiltInsSettings.kt */
/* JADX INFO: loaded from: classes5.dex */
public class JvmBuiltInsSettings implements kotlin.reflect.jvm.internal.impl.descriptors.deserialization.a, kotlin.reflect.jvm.internal.impl.descriptors.deserialization.c {
    static final /* synthetic */ KProperty[] a = {Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(JvmBuiltInsSettings.class), "cloneableType", "getCloneableType()Lorg/jetbrains/kotlin/types/SimpleType;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(JvmBuiltInsSettings.class), "notConsideredDeprecation", "getNotConsideredDeprecation()Lorg/jetbrains/kotlin/descriptors/annotations/Annotations;"))};
    private static final Set<String> b;
    private static final Set<String> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Set<String> f9079d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Set<String> f9080e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Set<String> f9081f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Set<String> f9082g;
    public static final Companion h;
    private final JavaToKotlinClassMap i;
    private final Lazy j;
    private final Lazy k;
    private final u l;
    private final kotlin.reflect.jvm.internal.impl.storage.e m;
    private final kotlin.reflect.jvm.internal.impl.storage.a<FqName, kotlin.reflect.jvm.internal.impl.descriptors.d> n;
    private final kotlin.reflect.jvm.internal.impl.storage.e o;
    private final ModuleDescriptor p;

    /* JADX INFO: compiled from: JvmBuiltInsSettings.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Set<String> a() {
            SignatureBuildingComponents signatureBuildingComponents = SignatureBuildingComponents.a;
            JvmPrimitiveType jvmPrimitiveType = JvmPrimitiveType.BYTE;
            List listListOf = CollectionsKt__CollectionsKt.listOf((Object[]) new JvmPrimitiveType[]{JvmPrimitiveType.BOOLEAN, jvmPrimitiveType, JvmPrimitiveType.DOUBLE, JvmPrimitiveType.FLOAT, jvmPrimitiveType, JvmPrimitiveType.INT, JvmPrimitiveType.LONG, JvmPrimitiveType.SHORT});
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it = listListOf.iterator();
            while (it.hasNext()) {
                String strE = ((JvmPrimitiveType) it.next()).h().g().e();
                Intrinsics.checkExpressionValueIsNotNull(strE, "it.wrapperFqName.shortName().asString()");
                String[] strArrA = signatureBuildingComponents.a("Ljava/lang/String;");
                CollectionsKt__MutableCollectionsKt.addAll(linkedHashSet, signatureBuildingComponents.d(strE, (String[]) Arrays.copyOf(strArrA, strArrA.length)));
            }
            return linkedHashSet;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Set<String> b() {
            SignatureBuildingComponents signatureBuildingComponents = SignatureBuildingComponents.a;
            List<JvmPrimitiveType> listListOf = CollectionsKt__CollectionsKt.listOf((Object[]) new JvmPrimitiveType[]{JvmPrimitiveType.BOOLEAN, JvmPrimitiveType.CHAR});
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (JvmPrimitiveType jvmPrimitiveType : listListOf) {
                String strE = jvmPrimitiveType.h().g().e();
                Intrinsics.checkExpressionValueIsNotNull(strE, "it.wrapperFqName.shortName().asString()");
                CollectionsKt__MutableCollectionsKt.addAll(linkedHashSet, signatureBuildingComponents.d(strE, jvmPrimitiveType.f() + "Value()" + jvmPrimitiveType.e()));
            }
            return linkedHashSet;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean f(FqNameUnsafe fqNameUnsafe) {
            return Intrinsics.areEqual(fqNameUnsafe, KotlinBuiltIns.h.h) || KotlinBuiltIns.isPrimitiveArray(fqNameUnsafe);
        }

        public final Set<String> c() {
            return JvmBuiltInsSettings.c;
        }

        public final Set<String> d() {
            return JvmBuiltInsSettings.b;
        }

        public final Set<String> e() {
            return JvmBuiltInsSettings.f9079d;
        }

        public final boolean g(FqNameUnsafe fqName) {
            Intrinsics.checkParameterIsNotNull(fqName, "fqName");
            if (f(fqName)) {
                return true;
            }
            ClassId classIdV = JavaToKotlinClassMap.m.v(fqName);
            if (classIdV != null) {
                try {
                    return Serializable.class.isAssignableFrom(Class.forName(classIdV.b().b()));
                } catch (ClassNotFoundException unused) {
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: JvmBuiltInsSettings.kt */
    enum JDKMemberStatus {
        BLACK_LIST,
        WHITE_LIST,
        NOT_CONSIDERED,
        DROP
    }

    /* JADX INFO: compiled from: JvmBuiltInsSettings.kt */
    static final class a extends Lambda implements Function0<y> {
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.storage.h b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(kotlin.reflect.jvm.internal.impl.storage.h hVar) {
            super(0);
            this.b = hVar;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final y invoke() {
            return FindClassInModuleKt.findNonGenericClassAcrossDependencies(JvmBuiltInsSettings.this.n(), JvmBuiltInClassDescriptorFactory.f9075e.a(), new NotFoundClasses(this.b, JvmBuiltInsSettings.this.n())).n();
        }
    }

    /* JADX INFO: compiled from: JvmBuiltInsSettings.kt */
    public static final class b extends t {
        b(ModuleDescriptor moduleDescriptor, FqName fqName) {
            super(moduleDescriptor, fqName);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
        /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] */
        public MemberScope.b m() {
            return MemberScope.b.b;
        }
    }

    /* JADX INFO: compiled from: JvmBuiltInsSettings.kt */
    static final class c extends Lambda implements Function0<y> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final y invoke() {
            y yVarJ = JvmBuiltInsSettings.this.p.k().j();
            Intrinsics.checkExpressionValueIsNotNull(yVarJ, "moduleDescriptor.builtIns.anyType");
            return yVarJ;
        }
    }

    /* JADX INFO: compiled from: JvmBuiltInsSettings.kt */
    static final class d extends Lambda implements Function0<LazyJavaClassDescriptor> {
        final /* synthetic */ LazyJavaClassDescriptor a;
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.d b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(LazyJavaClassDescriptor lazyJavaClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
            super(0);
            this.a = lazyJavaClassDescriptor;
            this.b = dVar;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final LazyJavaClassDescriptor invoke() {
            LazyJavaClassDescriptor lazyJavaClassDescriptor = this.a;
            kotlin.reflect.jvm.internal.impl.load.java.components.f fVar = kotlin.reflect.jvm.internal.impl.load.java.components.f.a;
            Intrinsics.checkExpressionValueIsNotNull(fVar, "JavaResolverCache.EMPTY");
            return lazyJavaClassDescriptor.k0(fVar, this.b);
        }
    }

    /* JADX INFO: compiled from: JvmBuiltInsSettings.kt */
    static final class e extends Lambda implements Function2<kotlin.reflect.jvm.internal.impl.descriptors.h, kotlin.reflect.jvm.internal.impl.descriptors.h, Boolean> {
        final /* synthetic */ TypeSubstitutor a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(TypeSubstitutor typeSubstitutor) {
            super(2);
            this.a = typeSubstitutor;
        }

        public final boolean a(kotlin.reflect.jvm.internal.impl.descriptors.h isEffectivelyTheSameAs, kotlin.reflect.jvm.internal.impl.descriptors.h javaConstructor) {
            Intrinsics.checkParameterIsNotNull(isEffectivelyTheSameAs, "$this$isEffectivelyTheSameAs");
            Intrinsics.checkParameterIsNotNull(javaConstructor, "javaConstructor");
            return OverridingUtil.getBothWaysOverridability(isEffectivelyTheSameAs, javaConstructor.c(this.a)) == OverridingUtil.OverrideCompatibilityInfo.Result.OVERRIDABLE;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Boolean invoke(kotlin.reflect.jvm.internal.impl.descriptors.h hVar, kotlin.reflect.jvm.internal.impl.descriptors.h hVar2) {
            return Boolean.valueOf(a(hVar, hVar2));
        }
    }

    /* JADX INFO: compiled from: JvmBuiltInsSettings.kt */
    static final class f extends Lambda implements Function1<MemberScope, Collection<? extends c0>> {
        final /* synthetic */ Name a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(Name name) {
            super(1);
            this.a = name;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Collection<? extends c0> invoke(MemberScope it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return it.a(this.a, NoLookupLocation.FROM_BUILTINS);
        }
    }

    /* JADX INFO: compiled from: JvmBuiltInsSettings.kt */
    static final class g<N> implements DFS.d<N> {
        g() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final List<LazyJavaClassDescriptor> a(kotlin.reflect.jvm.internal.impl.descriptors.d it) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            f0 f0VarI = it.i();
            Intrinsics.checkExpressionValueIsNotNull(f0VarI, "it.typeConstructor");
            Collection<u> collectionH = f0VarI.h();
            Intrinsics.checkExpressionValueIsNotNull(collectionH, "it.typeConstructor.supertypes");
            ArrayList arrayList = new ArrayList();
            Iterator<T> it2 = collectionH.iterator();
            while (it2.hasNext()) {
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = ((u) it2.next()).H0().q();
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarA = fVarC != null ? fVarC.a() : null;
                if (!(fVarA instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
                    fVarA = null;
                }
                kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarA;
                LazyJavaClassDescriptor lazyJavaClassDescriptorK = dVar != null ? JvmBuiltInsSettings.this.k(dVar) : null;
                if (lazyJavaClassDescriptorK != null) {
                    arrayList.add(lazyJavaClassDescriptorK);
                }
            }
            return arrayList;
        }
    }

    /* JADX INFO: compiled from: JvmBuiltInsSettings.kt */
    public static final class h extends DFS.b<kotlin.reflect.jvm.internal.impl.descriptors.d, JDKMemberStatus> {
        final /* synthetic */ String a;
        final /* synthetic */ l0 b;

        h(String str, l0 l0Var) {
            this.a = str;
            this.b = l0Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v4, types: [T, kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsSettings$JDKMemberStatus] */
        /* JADX WARN: Type inference failed for: r0v5, types: [T, kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsSettings$JDKMemberStatus] */
        /* JADX WARN: Type inference failed for: r0v6, types: [T, kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsSettings$JDKMemberStatus] */
        @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean c(kotlin.reflect.jvm.internal.impl.descriptors.d javaClassDescriptor) {
            Intrinsics.checkParameterIsNotNull(javaClassDescriptor, "javaClassDescriptor");
            String strK = SignatureBuildingComponents.a.k(javaClassDescriptor, this.a);
            Companion companion = JvmBuiltInsSettings.h;
            if (companion.c().contains(strK)) {
                this.b.a = JDKMemberStatus.BLACK_LIST;
            } else if (companion.e().contains(strK)) {
                this.b.a = JDKMemberStatus.WHITE_LIST;
            } else if (companion.d().contains(strK)) {
                this.b.a = JDKMemberStatus.DROP;
            }
            return ((JDKMemberStatus) this.b.a) == null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.e
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public JDKMemberStatus a() {
            JDKMemberStatus jDKMemberStatus = (JDKMemberStatus) this.b.a;
            return jDKMemberStatus != null ? jDKMemberStatus : JDKMemberStatus.NOT_CONSIDERED;
        }
    }

    /* JADX INFO: compiled from: JvmBuiltInsSettings.kt */
    static final class i<N> implements DFS.d<N> {
        public static final i a = new i();

        i() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Collection<? extends CallableMemberDescriptor> a(CallableMemberDescriptor it) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            CallableMemberDescriptor callableMemberDescriptorA = it.a();
            Intrinsics.checkExpressionValueIsNotNull(callableMemberDescriptorA, "it.original");
            return callableMemberDescriptorA.d();
        }
    }

    /* JADX INFO: compiled from: JvmBuiltInsSettings.kt */
    static final class j extends Lambda implements Function1<CallableMemberDescriptor, Boolean> {
        j() {
            super(1);
        }

        public final boolean a(CallableMemberDescriptor overridden) {
            Intrinsics.checkExpressionValueIsNotNull(overridden, "overridden");
            if (overridden.getKind() == CallableMemberDescriptor.Kind.DECLARATION) {
                JavaToKotlinClassMap javaToKotlinClassMap = JvmBuiltInsSettings.this.i;
                kotlin.reflect.jvm.internal.impl.descriptors.i iVarB = overridden.b();
                if (iVarB == null) {
                    throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                }
                if (javaToKotlinClassMap.n((kotlin.reflect.jvm.internal.impl.descriptors.d) iVarB)) {
                    return true;
                }
            }
            return false;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(CallableMemberDescriptor callableMemberDescriptor) {
            return Boolean.valueOf(a(callableMemberDescriptor));
        }
    }

    /* JADX INFO: compiled from: JvmBuiltInsSettings.kt */
    static final class k extends Lambda implements Function0<Annotations> {
        k() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Annotations invoke() {
            return Annotations.e0.a(CollectionsKt__CollectionsJVMKt.listOf(AnnotationUtilKt.createDeprecatedAnnotation$default(JvmBuiltInsSettings.this.p.k(), "This member is not fully supported by Kotlin compiler, so it may be absent or have different signature in next major version", null, null, 6, null)));
        }
    }

    static {
        Companion companion = new Companion(null);
        h = companion;
        SignatureBuildingComponents signatureBuildingComponents = SignatureBuildingComponents.a;
        b = SetsKt___SetsKt.plus(signatureBuildingComponents.e("Collection", "toArray()[Ljava/lang/Object;", "toArray([Ljava/lang/Object;)[Ljava/lang/Object;"), "java/lang/annotation/Annotation.annotationType()Ljava/lang/Class;");
        c = SetsKt___SetsKt.plus((Set) SetsKt___SetsKt.plus((Set) SetsKt___SetsKt.plus((Set) SetsKt___SetsKt.plus((Set) SetsKt___SetsKt.plus((Set) companion.b(), (Iterable) signatureBuildingComponents.e("List", "sort(Ljava/util/Comparator;)V")), (Iterable) signatureBuildingComponents.d("String", "codePointAt(I)I", "codePointBefore(I)I", "codePointCount(II)I", "compareToIgnoreCase(Ljava/lang/String;)I", "concat(Ljava/lang/String;)Ljava/lang/String;", "contains(Ljava/lang/CharSequence;)Z", "contentEquals(Ljava/lang/CharSequence;)Z", "contentEquals(Ljava/lang/StringBuffer;)Z", "endsWith(Ljava/lang/String;)Z", "equalsIgnoreCase(Ljava/lang/String;)Z", "getBytes()[B", "getBytes(II[BI)V", "getBytes(Ljava/lang/String;)[B", "getBytes(Ljava/nio/charset/Charset;)[B", "getChars(II[CI)V", "indexOf(I)I", "indexOf(II)I", "indexOf(Ljava/lang/String;)I", "indexOf(Ljava/lang/String;I)I", "intern()Ljava/lang/String;", "isEmpty()Z", "lastIndexOf(I)I", "lastIndexOf(II)I", "lastIndexOf(Ljava/lang/String;)I", "lastIndexOf(Ljava/lang/String;I)I", "matches(Ljava/lang/String;)Z", "offsetByCodePoints(II)I", "regionMatches(ILjava/lang/String;II)Z", "regionMatches(ZILjava/lang/String;II)Z", "replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "replace(CC)Ljava/lang/String;", "replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;", "split(Ljava/lang/String;I)[Ljava/lang/String;", "split(Ljava/lang/String;)[Ljava/lang/String;", "startsWith(Ljava/lang/String;I)Z", "startsWith(Ljava/lang/String;)Z", "substring(II)Ljava/lang/String;", "substring(I)Ljava/lang/String;", "toCharArray()[C", "toLowerCase()Ljava/lang/String;", "toLowerCase(Ljava/util/Locale;)Ljava/lang/String;", "toUpperCase()Ljava/lang/String;", "toUpperCase(Ljava/util/Locale;)Ljava/lang/String;", "trim()Ljava/lang/String;", "isBlank()Z", "lines()Ljava/util/stream/Stream;", "repeat(I)Ljava/lang/String;")), (Iterable) signatureBuildingComponents.d("Double", "isInfinite()Z", "isNaN()Z")), (Iterable) signatureBuildingComponents.d("Float", "isInfinite()Z", "isNaN()Z")), (Iterable) signatureBuildingComponents.d("Enum", "getDeclaringClass()Ljava/lang/Class;", "finalize()V"));
        f9079d = SetsKt___SetsKt.plus((Set) SetsKt___SetsKt.plus((Set) SetsKt___SetsKt.plus((Set) SetsKt___SetsKt.plus((Set) SetsKt___SetsKt.plus((Set) SetsKt___SetsKt.plus((Set) signatureBuildingComponents.d("CharSequence", "codePoints()Ljava/util/stream/IntStream;", "chars()Ljava/util/stream/IntStream;"), (Iterable) signatureBuildingComponents.e("Iterator", "forEachRemaining(Ljava/util/function/Consumer;)V")), (Iterable) signatureBuildingComponents.d("Iterable", "forEach(Ljava/util/function/Consumer;)V", "spliterator()Ljava/util/Spliterator;")), (Iterable) signatureBuildingComponents.d("Throwable", "setStackTrace([Ljava/lang/StackTraceElement;)V", "fillInStackTrace()Ljava/lang/Throwable;", "getLocalizedMessage()Ljava/lang/String;", "printStackTrace()V", "printStackTrace(Ljava/io/PrintStream;)V", "printStackTrace(Ljava/io/PrintWriter;)V", "getStackTrace()[Ljava/lang/StackTraceElement;", "initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;", "getSuppressed()[Ljava/lang/Throwable;", "addSuppressed(Ljava/lang/Throwable;)V")), (Iterable) signatureBuildingComponents.e("Collection", "spliterator()Ljava/util/Spliterator;", "parallelStream()Ljava/util/stream/Stream;", "stream()Ljava/util/stream/Stream;", "removeIf(Ljava/util/function/Predicate;)Z")), (Iterable) signatureBuildingComponents.e("List", "replaceAll(Ljava/util/function/UnaryOperator;)V")), (Iterable) signatureBuildingComponents.e("Map", "getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "forEach(Ljava/util/function/BiConsumer;)V", "replaceAll(Ljava/util/function/BiFunction;)V", "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z", "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;", "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"));
        f9080e = SetsKt___SetsKt.plus((Set) SetsKt___SetsKt.plus((Set) signatureBuildingComponents.e("Collection", "removeIf(Ljava/util/function/Predicate;)Z"), (Iterable) signatureBuildingComponents.e("List", "replaceAll(Ljava/util/function/UnaryOperator;)V", "sort(Ljava/util/Comparator;)V")), (Iterable) signatureBuildingComponents.e("Map", "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;", "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "remove(Ljava/lang/Object;Ljava/lang/Object;)Z", "replaceAll(Ljava/util/function/BiFunction;)V", "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z"));
        Set setA = companion.a();
        String[] strArrA = signatureBuildingComponents.a("D");
        Set setPlus = SetsKt___SetsKt.plus((Set) setA, (Iterable) signatureBuildingComponents.d("Float", (String[]) Arrays.copyOf(strArrA, strArrA.length)));
        String[] strArrA2 = signatureBuildingComponents.a("[C", "[CII", "[III", "[BIILjava/lang/String;", "[BIILjava/nio/charset/Charset;", "[BLjava/lang/String;", "[BLjava/nio/charset/Charset;", "[BII", "[B", "Ljava/lang/StringBuffer;", "Ljava/lang/StringBuilder;");
        f9081f = SetsKt___SetsKt.plus((Set) setPlus, (Iterable) signatureBuildingComponents.d("String", (String[]) Arrays.copyOf(strArrA2, strArrA2.length)));
        String[] strArrA3 = signatureBuildingComponents.a("Ljava/lang/String;Ljava/lang/Throwable;ZZ");
        f9082g = signatureBuildingComponents.d("Throwable", (String[]) Arrays.copyOf(strArrA3, strArrA3.length));
    }

    public JvmBuiltInsSettings(ModuleDescriptor moduleDescriptor, kotlin.reflect.jvm.internal.impl.storage.h storageManager, Function0<? extends ModuleDescriptor> deferredOwnerModuleDescriptor, Function0<Boolean> isAdditionalBuiltInsFeatureSupported) {
        Intrinsics.checkParameterIsNotNull(moduleDescriptor, "moduleDescriptor");
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        Intrinsics.checkParameterIsNotNull(deferredOwnerModuleDescriptor, "deferredOwnerModuleDescriptor");
        Intrinsics.checkParameterIsNotNull(isAdditionalBuiltInsFeatureSupported, "isAdditionalBuiltInsFeatureSupported");
        this.p = moduleDescriptor;
        this.i = JavaToKotlinClassMap.m;
        this.j = LazyKt__LazyJVMKt.lazy(deferredOwnerModuleDescriptor);
        this.k = LazyKt__LazyJVMKt.lazy(isAdditionalBuiltInsFeatureSupported);
        this.l = g(storageManager);
        this.m = storageManager.c(new a(storageManager));
        this.n = storageManager.a();
        this.o = storageManager.c(new k());
    }

    private final c0 f(DeserializedClassDescriptor deserializedClassDescriptor, c0 c0Var) {
        o.a<? extends c0> aVarR = c0Var.r();
        aVarR.p(deserializedClassDescriptor);
        aVarR.c(Visibilities.f9100e);
        aVarR.l(deserializedClassDescriptor.n());
        aVarR.d(deserializedClassDescriptor.E0());
        o oVarBuild = aVarR.build();
        if (oVarBuild == null) {
            Intrinsics.throwNpe();
        }
        return (c0) oVarBuild;
    }

    private final u g(kotlin.reflect.jvm.internal.impl.storage.h hVar) {
        kotlin.reflect.jvm.internal.impl.descriptors.impl.g gVar = new kotlin.reflect.jvm.internal.impl.descriptors.impl.g(new b(this.p, new FqName("java.io")), Name.identifier("Serializable"), Modality.ABSTRACT, ClassKind.INTERFACE, CollectionsKt__CollectionsJVMKt.listOf(new LazyWrappedType(hVar, new c())), d0.a, false, hVar);
        gVar.k0(MemberScope.b.b, SetsKt__SetsKt.emptySet(), null);
        y yVarN = gVar.n();
        Intrinsics.checkExpressionValueIsNotNull(yVarN, "mockSerializableClass.defaultType");
        return yVarN;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x008d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.util.Collection<kotlin.reflect.jvm.internal.impl.descriptors.c0> h(kotlin.reflect.jvm.internal.impl.descriptors.d r10, kotlin.jvm.functions.Function1<? super kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope, ? extends java.util.Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.c0>> r11) {
        /*
            Method dump skipped, instruction units count: 249
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsSettings.h(kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.jvm.b.l):java.util.Collection");
    }

    private final y i() {
        return (y) StorageKt.getValue(this.m, this, (KProperty<?>) a[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LazyJavaClassDescriptor k(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        ClassId classIdV;
        FqName fqNameB;
        if (KotlinBuiltIns.isAny(dVar) || !KotlinBuiltIns.isUnderKotlinPackage(dVar)) {
            return null;
        }
        FqNameUnsafe fqNameUnsafe = DescriptorUtilsKt.getFqNameUnsafe(dVar);
        if (!fqNameUnsafe.f() || (classIdV = this.i.v(fqNameUnsafe)) == null || (fqNameB = classIdV.b()) == null) {
            return null;
        }
        Intrinsics.checkExpressionValueIsNotNull(fqNameB, "j2kClassMap.mapKotlinToJ…leFqName() ?: return null");
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarResolveClassByFqName = DescriptorUtilKt.resolveClassByFqName(n(), fqNameB, NoLookupLocation.FROM_BUILTINS);
        return (LazyJavaClassDescriptor) (dVarResolveClassByFqName instanceof LazyJavaClassDescriptor ? dVarResolveClassByFqName : null);
    }

    private final JDKMemberStatus l(o oVar) {
        kotlin.reflect.jvm.internal.impl.descriptors.i iVarB = oVar.b();
        if (iVarB == null) {
            throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
        }
        String strComputeJvmDescriptor$default = MethodSignatureMappingKt.computeJvmDescriptor$default(oVar, false, false, 3, null);
        l0 l0Var = new l0();
        l0Var.a = null;
        Object objDfs = DFS.dfs(CollectionsKt__CollectionsJVMKt.listOf((kotlin.reflect.jvm.internal.impl.descriptors.d) iVarB), new g(), new h(strComputeJvmDescriptor$default, l0Var));
        Intrinsics.checkExpressionValueIsNotNull(objDfs, "DFS.dfs<ClassDescriptor,…CONSIDERED\n            })");
        return (JDKMemberStatus) objDfs;
    }

    private final Annotations m() {
        return (Annotations) StorageKt.getValue(this.o, this, (KProperty<?>) a[1]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ModuleDescriptor n() {
        return (ModuleDescriptor) this.j.getValue();
    }

    private final boolean o() {
        return ((Boolean) this.k.getValue()).booleanValue();
    }

    private final boolean p(c0 c0Var, boolean z) {
        kotlin.reflect.jvm.internal.impl.descriptors.i iVarB = c0Var.b();
        if (iVarB == null) {
            throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
        }
        String strComputeJvmDescriptor$default = MethodSignatureMappingKt.computeJvmDescriptor$default(c0Var, false, false, 3, null);
        if (z ^ f9080e.contains(SignatureBuildingComponents.a.k((kotlin.reflect.jvm.internal.impl.descriptors.d) iVarB, strComputeJvmDescriptor$default))) {
            return true;
        }
        Boolean boolIfAny = DFS.ifAny(CollectionsKt__CollectionsJVMKt.listOf(c0Var), i.a, new j());
        Intrinsics.checkExpressionValueIsNotNull(boolIfAny, "DFS.ifAny<CallableMember…lassDescriptor)\n        }");
        return boolIfAny.booleanValue();
    }

    private final boolean q(kotlin.reflect.jvm.internal.impl.descriptors.h hVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (hVar.g().size() == 1) {
            List<ValueParameterDescriptor> valueParameters = hVar.g();
            Intrinsics.checkExpressionValueIsNotNull(valueParameters, "valueParameters");
            Object objSingle = p.single((List<? extends Object>) valueParameters);
            Intrinsics.checkExpressionValueIsNotNull(objSingle, "valueParameters.single()");
            kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = ((ValueParameterDescriptor) objSingle).getType().H0().q();
            if (Intrinsics.areEqual(fVarC != null ? DescriptorUtilsKt.getFqNameUnsafe(fVarC) : null, DescriptorUtilsKt.getFqNameUnsafe(dVar))) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x011e  */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.Collection<kotlin.reflect.jvm.internal.impl.descriptors.c0> a(kotlin.reflect.jvm.internal.impl.name.Name r7, kotlin.reflect.jvm.internal.impl.descriptors.d r8) {
        /*
            Method dump skipped, instruction units count: 315
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsSettings.a(kotlin.reflect.jvm.internal.impl.name.Name, kotlin.reflect.jvm.internal.impl.descriptors.d):java.util.Collection");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.c
    public boolean b(kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor, c0 functionDescriptor) {
        Intrinsics.checkParameterIsNotNull(classDescriptor, "classDescriptor");
        Intrinsics.checkParameterIsNotNull(functionDescriptor, "functionDescriptor");
        LazyJavaClassDescriptor lazyJavaClassDescriptorK = k(classDescriptor);
        if (lazyJavaClassDescriptorK == null || !functionDescriptor.getAnnotations().N(PlatformDependentDeclarationFilterKt.getPLATFORM_DEPENDENT_ANNOTATION_FQ_NAME())) {
            return true;
        }
        if (!o()) {
            return false;
        }
        String strComputeJvmDescriptor$default = MethodSignatureMappingKt.computeJvmDescriptor$default(functionDescriptor, false, false, 3, null);
        LazyJavaClassMemberScope lazyJavaClassMemberScopeF0 = lazyJavaClassDescriptorK.Q();
        Name name = functionDescriptor.getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "functionDescriptor.name");
        Collection<c0> collectionA = lazyJavaClassMemberScopeF0.a(name, NoLookupLocation.FROM_BUILTINS);
        if (!(collectionA instanceof Collection) || !collectionA.isEmpty()) {
            Iterator<T> it = collectionA.iterator();
            while (it.hasNext()) {
                if (Intrinsics.areEqual(MethodSignatureMappingKt.computeJvmDescriptor$default((c0) it.next(), false, false, 3, null), strComputeJvmDescriptor$default)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.a
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> c(kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor) {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarMapJavaToKotlin$default;
        boolean z;
        Intrinsics.checkParameterIsNotNull(classDescriptor, "classDescriptor");
        if (classDescriptor.getKind() != ClassKind.CLASS || !o()) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        LazyJavaClassDescriptor lazyJavaClassDescriptorK = k(classDescriptor);
        if (lazyJavaClassDescriptorK != null && (dVarMapJavaToKotlin$default = JavaToKotlinClassMap.mapJavaToKotlin$default(this.i, DescriptorUtilsKt.getFqNameSafe(lazyJavaClassDescriptorK), FallbackBuiltIns.p.a(), null, 4, null)) != null) {
            TypeSubstitutor typeSubstitutorC = MappingUtilKt.createMappedTypeParametersSubstitution(dVarMapJavaToKotlin$default, lazyJavaClassDescriptorK).c();
            e eVar = new e(typeSubstitutorC);
            List<kotlin.reflect.jvm.internal.impl.descriptors.c> listZ0 = lazyJavaClassDescriptorK.f();
            ArrayList<kotlin.reflect.jvm.internal.impl.descriptors.c> arrayList = new ArrayList();
            Iterator<T> it = listZ0.iterator();
            while (true) {
                boolean z2 = false;
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                kotlin.reflect.jvm.internal.impl.descriptors.c javaConstructor = (kotlin.reflect.jvm.internal.impl.descriptors.c) next;
                Intrinsics.checkExpressionValueIsNotNull(javaConstructor, "javaConstructor");
                if (javaConstructor.getVisibility().c()) {
                    Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> collectionF = dVarMapJavaToKotlin$default.f();
                    Intrinsics.checkExpressionValueIsNotNull(collectionF, "defaultKotlinVersion.constructors");
                    if ((collectionF instanceof Collection) && collectionF.isEmpty()) {
                        z = true;
                        if (z) {
                            z2 = true;
                        }
                    } else {
                        for (kotlin.reflect.jvm.internal.impl.descriptors.c it2 : collectionF) {
                            Intrinsics.checkExpressionValueIsNotNull(it2, "it");
                            if (eVar.a(it2, javaConstructor)) {
                                z = false;
                                break;
                            }
                        }
                        z = true;
                        if (z && !q(javaConstructor, classDescriptor) && !KotlinBuiltIns.isDeprecated(javaConstructor) && !f9081f.contains(SignatureBuildingComponents.a.k(lazyJavaClassDescriptorK, MethodSignatureMappingKt.computeJvmDescriptor$default(javaConstructor, false, false, 3, null)))) {
                            z2 = true;
                        }
                    }
                }
                if (z2) {
                    arrayList.add(next);
                }
            }
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
            for (kotlin.reflect.jvm.internal.impl.descriptors.c javaConstructor2 : arrayList) {
                o.a<? extends o> aVarR = javaConstructor2.r();
                aVarR.p(classDescriptor);
                aVarR.l(classDescriptor.n());
                aVarR.k();
                aVarR.g(typeSubstitutorC.e());
                Set<String> set = f9082g;
                SignatureBuildingComponents signatureBuildingComponents = SignatureBuildingComponents.a;
                Intrinsics.checkExpressionValueIsNotNull(javaConstructor2, "javaConstructor");
                if (!set.contains(signatureBuildingComponents.k(lazyJavaClassDescriptorK, MethodSignatureMappingKt.computeJvmDescriptor$default(javaConstructor2, false, false, 3, null)))) {
                    aVarR.r(m());
                }
                o oVarBuild = aVarR.build();
                if (oVarBuild == null) {
                    throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassConstructorDescriptor");
                }
                arrayList2.add((kotlin.reflect.jvm.internal.impl.descriptors.c) oVarBuild);
            }
            return arrayList2;
        }
        return CollectionsKt__CollectionsKt.emptyList();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.a
    public Collection<u> d(kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor) {
        Intrinsics.checkParameterIsNotNull(classDescriptor, "classDescriptor");
        FqNameUnsafe fqNameUnsafe = DescriptorUtilsKt.getFqNameUnsafe(classDescriptor);
        Companion companion = h;
        if (!companion.f(fqNameUnsafe)) {
            return companion.g(fqNameUnsafe) ? CollectionsKt__CollectionsJVMKt.listOf(this.l) : CollectionsKt__CollectionsKt.emptyList();
        }
        y cloneableType = i();
        Intrinsics.checkExpressionValueIsNotNull(cloneableType, "cloneableType");
        return CollectionsKt__CollectionsKt.listOf((Object[]) new u[]{cloneableType, this.l});
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.a
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public Set<Name> e(kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor) {
        LazyJavaClassMemberScope lazyJavaClassMemberScopeF0;
        Set<Name> setB;
        Intrinsics.checkParameterIsNotNull(classDescriptor, "classDescriptor");
        if (!o()) {
            return SetsKt__SetsKt.emptySet();
        }
        LazyJavaClassDescriptor lazyJavaClassDescriptorK = k(classDescriptor);
        return (lazyJavaClassDescriptorK == null || (lazyJavaClassMemberScopeF0 = lazyJavaClassDescriptorK.Q()) == null || (setB = lazyJavaClassMemberScopeF0.b()) == null) ? SetsKt__SetsKt.emptySet() : setB;
    }
}
