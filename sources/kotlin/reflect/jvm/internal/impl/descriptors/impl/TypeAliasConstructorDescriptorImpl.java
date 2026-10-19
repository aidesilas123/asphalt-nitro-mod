package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.e0;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.h0;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.SpecialTypesKt;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: compiled from: TypeAliasConstructorDescriptor.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class TypeAliasConstructorDescriptorImpl extends FunctionDescriptorImpl implements y {
    static final /* synthetic */ KProperty[] D = {Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(TypeAliasConstructorDescriptorImpl.class), "withDispatchReceiver", "getWithDispatchReceiver()Lorg/jetbrains/kotlin/descriptors/impl/TypeAliasConstructorDescriptor;"))};
    public static final Companion E = new Companion(null);
    private final kotlin.reflect.jvm.internal.impl.storage.f F;
    private kotlin.reflect.jvm.internal.impl.descriptors.c G;
    private final kotlin.reflect.jvm.internal.impl.storage.h H;
    private final h0 I;

    /* JADX INFO: compiled from: TypeAliasConstructorDescriptor.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.n nVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final TypeSubstitutor b(h0 h0Var) {
            if (h0Var.q() == null) {
                return null;
            }
            return TypeSubstitutor.create(h0Var.D());
        }

        public final y a(kotlin.reflect.jvm.internal.impl.storage.h storageManager, h0 typeAliasDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.c constructor) {
            kotlin.reflect.jvm.internal.impl.descriptors.c cVarC;
            Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
            Intrinsics.checkParameterIsNotNull(typeAliasDescriptor, "typeAliasDescriptor");
            Intrinsics.checkParameterIsNotNull(constructor, "constructor");
            TypeSubstitutor typeSubstitutorB = b(typeAliasDescriptor);
            b0 b0VarCreateExtensionReceiverParameterForCallable = null;
            if (typeSubstitutorB != null && (cVarC = constructor.c(typeSubstitutorB)) != null) {
                Annotations annotations = constructor.getAnnotations();
                CallableMemberDescriptor.Kind kind = constructor.getKind();
                Intrinsics.checkExpressionValueIsNotNull(kind, "constructor.kind");
                d0 source = typeAliasDescriptor.getSource();
                Intrinsics.checkExpressionValueIsNotNull(source, "typeAliasDescriptor.source");
                TypeAliasConstructorDescriptorImpl typeAliasConstructorDescriptorImpl = new TypeAliasConstructorDescriptorImpl(storageManager, typeAliasDescriptor, cVarC, null, annotations, kind, source, null);
                List<ValueParameterDescriptor> substitutedValueParameters = FunctionDescriptorImpl.getSubstitutedValueParameters(typeAliasConstructorDescriptorImpl, constructor.g(), typeSubstitutorB);
                if (substitutedValueParameters != null) {
                    Intrinsics.checkExpressionValueIsNotNull(substitutedValueParameters, "FunctionDescriptorImpl.g…         ) ?: return null");
                    kotlin.reflect.jvm.internal.impl.types.y yVarLowerIfFlexible = FlexibleTypesKt.lowerIfFlexible(cVarC.getReturnType().K0());
                    kotlin.reflect.jvm.internal.impl.types.y yVarN = typeAliasDescriptor.n();
                    Intrinsics.checkExpressionValueIsNotNull(yVarN, "typeAliasDescriptor.defaultType");
                    kotlin.reflect.jvm.internal.impl.types.y yVarWithAbbreviation = SpecialTypesKt.withAbbreviation(yVarLowerIfFlexible, yVarN);
                    b0 it = constructor.H();
                    if (it != null) {
                        Intrinsics.checkExpressionValueIsNotNull(it, "it");
                        b0VarCreateExtensionReceiverParameterForCallable = DescriptorFactory.createExtensionReceiverParameterForCallable(typeAliasConstructorDescriptorImpl, typeSubstitutorB.g(it.getType(), Variance.INVARIANT), Annotations.e0.b());
                    }
                    typeAliasConstructorDescriptorImpl.F0(b0VarCreateExtensionReceiverParameterForCallable, null, typeAliasDescriptor.o(), substitutedValueParameters, yVarWithAbbreviation, Modality.FINAL, typeAliasDescriptor.getVisibility());
                    return typeAliasConstructorDescriptorImpl;
                }
            }
            return null;
        }
    }

    /* JADX INFO: compiled from: TypeAliasConstructorDescriptor.kt */
    static final class a extends Lambda implements Function0<TypeAliasConstructorDescriptorImpl> {
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.c b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(kotlin.reflect.jvm.internal.impl.descriptors.c cVar) {
            super(0);
            this.b = cVar;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final TypeAliasConstructorDescriptorImpl invoke() {
            kotlin.reflect.jvm.internal.impl.storage.h hVarI = TypeAliasConstructorDescriptorImpl.this.I();
            h0 h0VarC1 = TypeAliasConstructorDescriptorImpl.this.c1();
            kotlin.reflect.jvm.internal.impl.descriptors.c cVar = this.b;
            TypeAliasConstructorDescriptorImpl typeAliasConstructorDescriptorImpl = TypeAliasConstructorDescriptorImpl.this;
            Annotations annotations = cVar.getAnnotations();
            CallableMemberDescriptor.Kind kind = this.b.getKind();
            Intrinsics.checkExpressionValueIsNotNull(kind, "underlyingConstructorDescriptor.kind");
            d0 source = TypeAliasConstructorDescriptorImpl.this.c1().getSource();
            Intrinsics.checkExpressionValueIsNotNull(source, "typeAliasDescriptor.source");
            TypeAliasConstructorDescriptorImpl typeAliasConstructorDescriptorImpl2 = new TypeAliasConstructorDescriptorImpl(hVarI, h0VarC1, cVar, typeAliasConstructorDescriptorImpl, annotations, kind, source, null);
            TypeSubstitutor typeSubstitutorB = TypeAliasConstructorDescriptorImpl.E.b(TypeAliasConstructorDescriptorImpl.this.c1());
            if (typeSubstitutorB == null) {
                return null;
            }
            b0 b0VarH = this.b.H();
            typeAliasConstructorDescriptorImpl2.F0(null, b0VarH != null ? b0VarH.c(typeSubstitutorB) : null, TypeAliasConstructorDescriptorImpl.this.c1().o(), TypeAliasConstructorDescriptorImpl.this.g(), TypeAliasConstructorDescriptorImpl.this.getReturnType(), Modality.FINAL, TypeAliasConstructorDescriptorImpl.this.c1().getVisibility());
            return typeAliasConstructorDescriptorImpl2;
        }
    }

    private TypeAliasConstructorDescriptorImpl(kotlin.reflect.jvm.internal.impl.storage.h hVar, h0 h0Var, kotlin.reflect.jvm.internal.impl.descriptors.c cVar, y yVar, Annotations annotations, CallableMemberDescriptor.Kind kind, d0 d0Var) {
        super(h0Var, yVar, annotations, Name.special("<init>"), kind, d0Var);
        this.H = hVar;
        this.I = h0Var;
        J0(c1().R());
        this.F = hVar.e(new a(cVar));
        this.G = cVar;
    }

    public /* synthetic */ TypeAliasConstructorDescriptorImpl(kotlin.reflect.jvm.internal.impl.storage.h hVar, h0 h0Var, kotlin.reflect.jvm.internal.impl.descriptors.c cVar, y yVar, Annotations annotations, CallableMemberDescriptor.Kind kind, d0 d0Var, kotlin.jvm.internal.n nVar) {
        this(hVar, h0Var, cVar, yVar, annotations, kind, d0Var);
    }

    public final kotlin.reflect.jvm.internal.impl.storage.h I() {
        return this.H;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.y
    public kotlin.reflect.jvm.internal.impl.descriptors.c N() {
        return this.G;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.h
    public boolean V() {
        return N().V();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.h
    public kotlin.reflect.jvm.internal.impl.descriptors.d W() {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarW = N().W();
        Intrinsics.checkExpressionValueIsNotNull(dVarW, "underlyingConstructorDescriptor.constructedClass");
        return dVarW;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    /* JADX INFO: renamed from: Y0, reason: merged with bridge method [inline-methods] */
    public y A0(kotlin.reflect.jvm.internal.impl.descriptors.i newOwner, Modality modality, m0 visibility, CallableMemberDescriptor.Kind kind, boolean z) {
        Intrinsics.checkParameterIsNotNull(newOwner, "newOwner");
        Intrinsics.checkParameterIsNotNull(modality, "modality");
        Intrinsics.checkParameterIsNotNull(visibility, "visibility");
        Intrinsics.checkParameterIsNotNull(kind, "kind");
        kotlin.reflect.jvm.internal.impl.descriptors.o oVarBuild = r().p(newOwner).j(modality).c(visibility).q(kind).n(z).build();
        if (oVarBuild != null) {
            return (y) oVarBuild;
        }
        throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptor");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    /* JADX INFO: renamed from: Z0, reason: merged with bridge method [inline-methods] */
    public TypeAliasConstructorDescriptorImpl k0(kotlin.reflect.jvm.internal.impl.descriptors.i newOwner, kotlin.reflect.jvm.internal.impl.descriptors.o oVar, CallableMemberDescriptor.Kind kind, Name name, Annotations annotations, d0 source) {
        Intrinsics.checkParameterIsNotNull(newOwner, "newOwner");
        Intrinsics.checkParameterIsNotNull(kind, "kind");
        Intrinsics.checkParameterIsNotNull(annotations, "annotations");
        Intrinsics.checkParameterIsNotNull(source, "source");
        CallableMemberDescriptor.Kind kind2 = CallableMemberDescriptor.Kind.DECLARATION;
        if (kind != kind2) {
            CallableMemberDescriptor.Kind kind3 = CallableMemberDescriptor.Kind.SYNTHESIZED;
        }
        return new TypeAliasConstructorDescriptorImpl(this.H, c1(), N(), this, annotations, kind2, source);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.i, kotlin.reflect.jvm.internal.impl.descriptors.i
    /* JADX INFO: renamed from: a1, reason: merged with bridge method [inline-methods] */
    public h0 b() {
        return c1();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.i, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.i
    /* JADX INFO: renamed from: b1, reason: merged with bridge method [inline-methods] */
    public y a() {
        kotlin.reflect.jvm.internal.impl.descriptors.o oVarA = super.a();
        if (oVarA != null) {
            return (y) oVarA;
        }
        throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptor");
    }

    public h0 c1() {
        return this.I;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.f0
    /* JADX INFO: renamed from: d1, reason: merged with bridge method [inline-methods] */
    public y c(TypeSubstitutor substitutor) {
        Intrinsics.checkParameterIsNotNull(substitutor, "substitutor");
        kotlin.reflect.jvm.internal.impl.descriptors.o oVarC = super.c(substitutor);
        if (oVarC == null) {
            throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptorImpl");
        }
        TypeAliasConstructorDescriptorImpl typeAliasConstructorDescriptorImpl = (TypeAliasConstructorDescriptorImpl) oVarC;
        TypeSubstitutor typeSubstitutorCreate = TypeSubstitutor.create(typeAliasConstructorDescriptorImpl.getReturnType());
        Intrinsics.checkExpressionValueIsNotNull(typeSubstitutorCreate, "TypeSubstitutor.create(s…asConstructor.returnType)");
        kotlin.reflect.jvm.internal.impl.descriptors.c cVarC = N().a().c(typeSubstitutorCreate);
        if (cVarC == null) {
            return null;
        }
        typeAliasConstructorDescriptorImpl.G = cVarC;
        return typeAliasConstructorDescriptorImpl;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.a
    public kotlin.reflect.jvm.internal.impl.types.u getReturnType() {
        kotlin.reflect.jvm.internal.impl.types.u returnType = super.getReturnType();
        if (returnType == null) {
            Intrinsics.throwNpe();
        }
        return returnType;
    }
}
