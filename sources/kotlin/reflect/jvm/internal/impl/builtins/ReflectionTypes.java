package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.p;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.e0;
import kotlin.jvm.internal.n;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: ReflectionTypes.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ReflectionTypes {
    static final /* synthetic */ KProperty[] a = {Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(ReflectionTypes.class), "kClass", "getKClass()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(ReflectionTypes.class), "kProperty", "getKProperty()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(ReflectionTypes.class), "kProperty0", "getKProperty0()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(ReflectionTypes.class), "kProperty1", "getKProperty1()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(ReflectionTypes.class), "kProperty2", "getKProperty2()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(ReflectionTypes.class), "kMutableProperty0", "getKMutableProperty0()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(ReflectionTypes.class), "kMutableProperty1", "getKMutableProperty1()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(ReflectionTypes.class), "kMutableProperty2", "getKMutableProperty2()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"))};
    public static final b b = new b(null);
    private final Lazy c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f9049d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a f9050e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a f9051f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final a f9052g;
    private final a h;
    private final a i;
    private final a j;
    private final a k;
    private final NotFoundClasses l;

    /* JADX INFO: compiled from: ReflectionTypes.kt */
    private static final class a {
        private final int a;

        public a(int i) {
            this.a = i;
        }

        public final kotlin.reflect.jvm.internal.impl.descriptors.d a(ReflectionTypes types, KProperty<?> property) {
            Intrinsics.checkParameterIsNotNull(types, "types");
            Intrinsics.checkParameterIsNotNull(property, "property");
            return types.a(StringsKt__StringsJVMKt.capitalize(property.getName()), this.a);
        }
    }

    /* JADX INFO: compiled from: ReflectionTypes.kt */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(n nVar) {
            this();
        }

        public final u a(ModuleDescriptor module) {
            Intrinsics.checkParameterIsNotNull(module, "module");
            ClassId classId = KotlinBuiltIns.h.l0;
            Intrinsics.checkExpressionValueIsNotNull(classId, "KotlinBuiltIns.FQ_NAMES.kProperty");
            kotlin.reflect.jvm.internal.impl.descriptors.d dVarFindClassAcrossModuleDependencies = FindClassInModuleKt.findClassAcrossModuleDependencies(module, classId);
            if (dVarFindClassAcrossModuleDependencies == null) {
                return null;
            }
            Annotations annotationsB = Annotations.e0.b();
            f0 f0VarI = dVarFindClassAcrossModuleDependencies.i();
            Intrinsics.checkExpressionValueIsNotNull(f0VarI, "kPropertyClass.typeConstructor");
            List<i0> parameters = f0VarI.getParameters();
            Intrinsics.checkExpressionValueIsNotNull(parameters, "kPropertyClass.typeConstructor.parameters");
            Object objSingle = p.single((List<? extends Object>) parameters);
            Intrinsics.checkExpressionValueIsNotNull(objSingle, "kPropertyClass.typeConstructor.parameters.single()");
            return KotlinTypeFactory.simpleNotNullType(annotationsB, dVarFindClassAcrossModuleDependencies, CollectionsKt__CollectionsJVMKt.listOf(new StarProjectionImpl((i0) objSingle)));
        }
    }

    /* JADX INFO: compiled from: ReflectionTypes.kt */
    static final class c extends Lambda implements Function0<MemberScope> {
        final /* synthetic */ ModuleDescriptor a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(ModuleDescriptor moduleDescriptor) {
            super(0);
            this.a = moduleDescriptor;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final MemberScope invoke() {
            return this.a.d0(ReflectionTypesKt.getKOTLIN_REFLECT_FQ_NAME()).m();
        }
    }

    public ReflectionTypes(ModuleDescriptor module, NotFoundClasses notFoundClasses) {
        Intrinsics.checkParameterIsNotNull(module, "module");
        Intrinsics.checkParameterIsNotNull(notFoundClasses, "notFoundClasses");
        this.l = notFoundClasses;
        this.c = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.b, (Function0) new c(module));
        this.f9049d = new a(1);
        this.f9050e = new a(1);
        this.f9051f = new a(1);
        this.f9052g = new a(2);
        this.h = new a(3);
        this.i = new a(1);
        this.j = new a(2);
        this.k = new a(3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlin.reflect.jvm.internal.impl.descriptors.d a(String str, int i) {
        Name nameIdentifier = Name.identifier(str);
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier, "Name.identifier(className)");
        f fVarC = c().c(nameIdentifier, NoLookupLocation.FROM_REFLECTION);
        if (!(fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
            fVarC = null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC;
        return dVar != null ? dVar : this.l.a(new ClassId(ReflectionTypesKt.getKOTLIN_REFLECT_FQ_NAME(), nameIdentifier), CollectionsKt__CollectionsJVMKt.listOf(Integer.valueOf(i)));
    }

    private final MemberScope c() {
        return (MemberScope) this.c.getValue();
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.d b() {
        return this.f9049d.a(this, a[0]);
    }
}
