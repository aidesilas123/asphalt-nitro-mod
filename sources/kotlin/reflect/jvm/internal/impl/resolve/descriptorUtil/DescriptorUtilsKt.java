package kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.p;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.l0;
import kotlin.jvm.internal.q;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.x;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.constants.g;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefinerKt;
import kotlin.reflect.jvm.internal.impl.types.checker.d;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.utils.DFS;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.v;

/* JADX INFO: compiled from: DescriptorUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class DescriptorUtilsKt {
    private static final Name a;

    /* JADX INFO: compiled from: DescriptorUtils.kt */
    static final class a extends Lambda implements Function2<MemberScope, Boolean, v> {
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.d a;
        final /* synthetic */ LinkedHashSet b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, LinkedHashSet linkedHashSet) {
            super(2);
            this.a = dVar;
            this.b = linkedHashSet;
        }

        public final void a(MemberScope scope, boolean z) {
            Intrinsics.checkParameterIsNotNull(scope, "scope");
            for (i iVar : ResolutionScope.DefaultImpls.getContributedDescriptors$default(scope, DescriptorKindFilter.q, null, 2, null)) {
                if (iVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
                    kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) iVar;
                    if (DescriptorUtils.isDirectSubclass(dVar, this.a)) {
                        this.b.add(iVar);
                    }
                    if (z) {
                        MemberScope memberScopeO = dVar.O();
                        Intrinsics.checkExpressionValueIsNotNull(memberScopeO, "descriptor.unsubstitutedInnerClassesScope");
                        a(memberScopeO, z);
                    }
                }
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ v invoke(MemberScope memberScope, Boolean bool) {
            a(memberScope, bool.booleanValue());
            return v.a;
        }
    }

    /* JADX INFO: compiled from: DescriptorUtils.kt */
    static final class b<N> implements DFS.d<N> {
        public static final b a = new b();

        b() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final List<ValueParameterDescriptor> a(ValueParameterDescriptor current) {
            Intrinsics.checkExpressionValueIsNotNull(current, "current");
            Collection<ValueParameterDescriptor> collectionD = current.d();
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(collectionD, 10));
            Iterator<T> it = collectionD.iterator();
            while (it.hasNext()) {
                arrayList.add(((ValueParameterDescriptor) it.next()).a());
            }
            return arrayList;
        }
    }

    /* JADX INFO: compiled from: DescriptorUtils.kt */
    static final /* synthetic */ class c extends q implements Function1<ValueParameterDescriptor, Boolean> {
        public static final c a = new c();

        c() {
            super(1);
        }

        public final boolean a(ValueParameterDescriptor p1) {
            Intrinsics.checkParameterIsNotNull(p1, "p1");
            return p1.u0();
        }

        @Override // kotlin.jvm.internal.l, kotlin.reflect.KCallable
        public final String getName() {
            return "declaresDefaultValue";
        }

        @Override // kotlin.jvm.internal.l
        public final KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(ValueParameterDescriptor.class);
        }

        @Override // kotlin.jvm.internal.l
        public final String getSignature() {
            return "declaresDefaultValue()Z";
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(ValueParameterDescriptor valueParameterDescriptor) {
            return Boolean.valueOf(a(valueParameterDescriptor));
        }
    }

    /* JADX INFO: compiled from: DescriptorUtils.kt */
    static final class d<N> implements DFS.d<N> {
        final /* synthetic */ boolean a;

        d(boolean z) {
            this.a = z;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Iterable<CallableMemberDescriptor> a(CallableMemberDescriptor callableMemberDescriptor) {
            Collection<? extends CallableMemberDescriptor> collectionD;
            if (this.a) {
                callableMemberDescriptor = callableMemberDescriptor != null ? callableMemberDescriptor.a() : null;
            }
            return (callableMemberDescriptor == null || (collectionD = callableMemberDescriptor.d()) == null) ? CollectionsKt__CollectionsKt.emptyList() : collectionD;
        }
    }

    /* JADX INFO: compiled from: DescriptorUtils.kt */
    public static final class e extends DFS.b<CallableMemberDescriptor, CallableMemberDescriptor> {
        final /* synthetic */ l0 a;
        final /* synthetic */ Function1 b;

        e(l0 l0Var, Function1 function1) {
            this.a = l0Var;
            this.b = function1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.b, kotlin.reflect.jvm.internal.impl.utils.DFS.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void b(CallableMemberDescriptor current) {
            Intrinsics.checkParameterIsNotNull(current, "current");
            if (((CallableMemberDescriptor) this.a.a) == null && ((Boolean) this.b.invoke(current)).booleanValue()) {
                this.a.a = current;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.e
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public boolean c(CallableMemberDescriptor current) {
            Intrinsics.checkParameterIsNotNull(current, "current");
            return ((CallableMemberDescriptor) this.a.a) == null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.e
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public CallableMemberDescriptor a() {
            return (CallableMemberDescriptor) this.a.a;
        }
    }

    /* JADX INFO: compiled from: DescriptorUtils.kt */
    static final class f extends Lambda implements Function1<i, i> {
        public static final f a = new f();

        f() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final i invoke(i it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return it.b();
        }
    }

    static {
        Name nameIdentifier = Name.identifier("value");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier, "Name.identifier(\"value\")");
        a = nameIdentifier;
    }

    public static final Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> computeSealedSubclasses(kotlin.reflect.jvm.internal.impl.descriptors.d sealedClass) {
        Intrinsics.checkParameterIsNotNull(sealedClass, "sealedClass");
        if (sealedClass.p() != Modality.SEALED) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        a aVar = new a(sealedClass, linkedHashSet);
        i iVarB = sealedClass.b();
        Intrinsics.checkExpressionValueIsNotNull(iVarB, "sealedClass.containingDeclaration");
        if (iVarB instanceof s) {
            aVar.a(((s) iVarB).m(), false);
        }
        MemberScope memberScopeO = sealedClass.O();
        Intrinsics.checkExpressionValueIsNotNull(memberScopeO, "sealedClass.unsubstitutedInnerClassesScope");
        aVar.a(memberScopeO, true);
        return linkedHashSet;
    }

    public static final boolean declaresOrInheritsDefaultValue(ValueParameterDescriptor declaresOrInheritsDefaultValue) {
        Intrinsics.checkParameterIsNotNull(declaresOrInheritsDefaultValue, "$this$declaresOrInheritsDefaultValue");
        Boolean boolIfAny = DFS.ifAny(CollectionsKt__CollectionsJVMKt.listOf(declaresOrInheritsDefaultValue), b.a, c.a);
        Intrinsics.checkExpressionValueIsNotNull(boolIfAny, "DFS.ifAny(\n        listO…eclaresDefaultValue\n    )");
        return boolIfAny.booleanValue();
    }

    public static final g<?> firstArgument(AnnotationDescriptor firstArgument) {
        Intrinsics.checkParameterIsNotNull(firstArgument, "$this$firstArgument");
        return (g) p.firstOrNull(firstArgument.a().values());
    }

    public static final CallableMemberDescriptor firstOverridden(CallableMemberDescriptor firstOverridden, boolean z, Function1<? super CallableMemberDescriptor, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(firstOverridden, "$this$firstOverridden");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        l0 l0Var = new l0();
        l0Var.a = null;
        return (CallableMemberDescriptor) DFS.dfs(CollectionsKt__CollectionsJVMKt.listOf(firstOverridden), new d(z), new e(l0Var, predicate));
    }

    public static /* synthetic */ CallableMemberDescriptor firstOverridden$default(CallableMemberDescriptor callableMemberDescriptor, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return firstOverridden(callableMemberDescriptor, z, function1);
    }

    public static final FqName fqNameOrNull(i fqNameOrNull) {
        Intrinsics.checkParameterIsNotNull(fqNameOrNull, "$this$fqNameOrNull");
        FqNameUnsafe fqNameUnsafe = getFqNameUnsafe(fqNameOrNull);
        if (!fqNameUnsafe.f()) {
            fqNameUnsafe = null;
        }
        if (fqNameUnsafe != null) {
            return fqNameUnsafe.l();
        }
        return null;
    }

    public static final kotlin.reflect.jvm.internal.impl.descriptors.d getAnnotationClass(AnnotationDescriptor annotationClass) {
        Intrinsics.checkParameterIsNotNull(annotationClass, "$this$annotationClass");
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = annotationClass.getType().H0().q();
        if (!(fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
            fVarC = null;
        }
        return (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC;
    }

    public static final KotlinBuiltIns getBuiltIns(i builtIns) {
        Intrinsics.checkParameterIsNotNull(builtIns, "$this$builtIns");
        return getModule(builtIns).k();
    }

    public static final ClassId getClassId(kotlin.reflect.jvm.internal.impl.descriptors.f fVar) {
        i iVarB;
        ClassId classId;
        if (fVar == null || (iVarB = fVar.b()) == null) {
            return null;
        }
        if (iVarB instanceof s) {
            return new ClassId(((s) iVarB).e(), fVar.getName());
        }
        if (!(iVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.g) || (classId = getClassId((kotlin.reflect.jvm.internal.impl.descriptors.f) iVarB)) == null) {
            return null;
        }
        return classId.d(fVar.getName());
    }

    public static final FqName getFqNameSafe(i fqNameSafe) {
        Intrinsics.checkParameterIsNotNull(fqNameSafe, "$this$fqNameSafe");
        FqName fqNameSafe2 = DescriptorUtils.getFqNameSafe(fqNameSafe);
        Intrinsics.checkExpressionValueIsNotNull(fqNameSafe2, "DescriptorUtils.getFqNameSafe(this)");
        return fqNameSafe2;
    }

    public static final FqNameUnsafe getFqNameUnsafe(i fqNameUnsafe) {
        Intrinsics.checkParameterIsNotNull(fqNameUnsafe, "$this$fqNameUnsafe");
        FqNameUnsafe fqName = DescriptorUtils.getFqName(fqNameUnsafe);
        Intrinsics.checkExpressionValueIsNotNull(fqName, "DescriptorUtils.getFqName(this)");
        return fqName;
    }

    public static final kotlin.reflect.jvm.internal.impl.types.checker.d getKotlinTypeRefiner(ModuleDescriptor getKotlinTypeRefiner) {
        kotlin.reflect.jvm.internal.impl.types.checker.d dVar;
        Intrinsics.checkParameterIsNotNull(getKotlinTypeRefiner, "$this$getKotlinTypeRefiner");
        kotlin.reflect.jvm.internal.impl.types.checker.i iVar = (kotlin.reflect.jvm.internal.impl.types.checker.i) getKotlinTypeRefiner.h0(KotlinTypeRefinerKt.getREFINER_CAPABILITY());
        return (iVar == null || (dVar = (kotlin.reflect.jvm.internal.impl.types.checker.d) iVar.a()) == null) ? d.a.a : dVar;
    }

    public static final ModuleDescriptor getModule(i module) {
        Intrinsics.checkParameterIsNotNull(module, "$this$module");
        ModuleDescriptor containingModule = DescriptorUtils.getContainingModule(module);
        Intrinsics.checkExpressionValueIsNotNull(containingModule, "DescriptorUtils.getContainingModule(this)");
        return containingModule;
    }

    public static final Sequence<i> getParents(i parents) {
        Intrinsics.checkParameterIsNotNull(parents, "$this$parents");
        return SequencesKt___SequencesKt.drop(getParentsWithSelf(parents), 1);
    }

    public static final Sequence<i> getParentsWithSelf(i parentsWithSelf) {
        Intrinsics.checkParameterIsNotNull(parentsWithSelf, "$this$parentsWithSelf");
        return SequencesKt__SequencesKt.generateSequence(parentsWithSelf, f.a);
    }

    public static final CallableMemberDescriptor getPropertyIfAccessor(CallableMemberDescriptor propertyIfAccessor) {
        Intrinsics.checkParameterIsNotNull(propertyIfAccessor, "$this$propertyIfAccessor");
        if (!(propertyIfAccessor instanceof x)) {
            return propertyIfAccessor;
        }
        y correspondingProperty = ((x) propertyIfAccessor).P();
        Intrinsics.checkExpressionValueIsNotNull(correspondingProperty, "correspondingProperty");
        return correspondingProperty;
    }

    public static final kotlin.reflect.jvm.internal.impl.descriptors.d getSuperClassNotAny(kotlin.reflect.jvm.internal.impl.descriptors.d getSuperClassNotAny) {
        Intrinsics.checkParameterIsNotNull(getSuperClassNotAny, "$this$getSuperClassNotAny");
        for (u uVar : getSuperClassNotAny.n().H0().h()) {
            if (!KotlinBuiltIns.isAnyOrNullableAny(uVar)) {
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = uVar.H0().q();
                if (DescriptorUtils.isClassOrEnumClass(fVarC)) {
                    if (fVarC != null) {
                        return (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC;
                    }
                    throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                }
            }
        }
        return null;
    }

    public static final boolean isTypeRefinementEnabled(ModuleDescriptor isTypeRefinementEnabled) {
        Intrinsics.checkParameterIsNotNull(isTypeRefinementEnabled, "$this$isTypeRefinementEnabled");
        kotlin.reflect.jvm.internal.impl.types.checker.i iVar = (kotlin.reflect.jvm.internal.impl.types.checker.i) isTypeRefinementEnabled.h0(KotlinTypeRefinerKt.getREFINER_CAPABILITY());
        return (iVar != null ? (kotlin.reflect.jvm.internal.impl.types.checker.d) iVar.a() : null) != null;
    }

    public static final kotlin.reflect.jvm.internal.impl.descriptors.d resolveTopLevelClass(ModuleDescriptor resolveTopLevelClass, FqName topLevelClassFqName, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(resolveTopLevelClass, "$this$resolveTopLevelClass");
        Intrinsics.checkParameterIsNotNull(topLevelClassFqName, "topLevelClassFqName");
        Intrinsics.checkParameterIsNotNull(location, "location");
        topLevelClassFqName.d();
        FqName fqNameE = topLevelClassFqName.e();
        Intrinsics.checkExpressionValueIsNotNull(fqNameE, "topLevelClassFqName.parent()");
        MemberScope memberScopeM = resolveTopLevelClass.d0(fqNameE).m();
        Name nameG = topLevelClassFqName.g();
        Intrinsics.checkExpressionValueIsNotNull(nameG, "topLevelClassFqName.shortName()");
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = memberScopeM.c(nameG, location);
        if (!(fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
            fVarC = null;
        }
        return (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC;
    }
}
