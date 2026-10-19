package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterUtilsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.h0;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.y;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutionKt;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: DeserializedMemberDescriptor.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class g extends kotlin.reflect.jvm.internal.impl.descriptors.impl.d implements DeserializedMemberDescriptor {
    private Collection<? extends y> h;
    private kotlin.reflect.jvm.internal.impl.types.y i;
    private kotlin.reflect.jvm.internal.impl.types.y j;
    private List<? extends i0> k;
    private kotlin.reflect.jvm.internal.impl.types.y l;
    private DeserializedMemberDescriptor.CoroutinesCompatibilityMode m;
    private final kotlin.reflect.jvm.internal.impl.storage.h n;
    private final ProtoBuf$TypeAlias o;
    private final kotlin.reflect.jvm.internal.impl.metadata.deserialization.b p;
    private final kotlin.reflect.jvm.internal.impl.metadata.deserialization.e q;
    private final VersionRequirementTable r;
    private final c s;

    /* JADX WARN: Illegal instructions before constructor call */
    public g(kotlin.reflect.jvm.internal.impl.storage.h storageManager, i containingDeclaration, Annotations annotations, Name name, m0 visibility, ProtoBuf$TypeAlias proto, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver, kotlin.reflect.jvm.internal.impl.metadata.deserialization.e typeTable, VersionRequirementTable versionRequirementTable, c cVar) {
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        Intrinsics.checkParameterIsNotNull(containingDeclaration, "containingDeclaration");
        Intrinsics.checkParameterIsNotNull(annotations, "annotations");
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(visibility, "visibility");
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
        Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
        Intrinsics.checkParameterIsNotNull(versionRequirementTable, "versionRequirementTable");
        d0 d0Var = d0.a;
        Intrinsics.checkExpressionValueIsNotNull(d0Var, "SourceElement.NO_SOURCE");
        super(containingDeclaration, annotations, name, d0Var, visibility);
        this.n = storageManager;
        this.o = proto;
        this.p = nameResolver;
        this.q = typeTable;
        this.r = versionRequirementTable;
        this.s = cVar;
        this.m = DeserializedMemberDescriptor.CoroutinesCompatibilityMode.COMPATIBLE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public kotlin.reflect.jvm.internal.impl.metadata.deserialization.e B() {
        return this.q;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.h0
    public kotlin.reflect.jvm.internal.impl.types.y D() {
        kotlin.reflect.jvm.internal.impl.types.y yVar = this.j;
        if (yVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("expandedType");
        }
        return yVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public List<kotlin.reflect.jvm.internal.impl.metadata.deserialization.g> D0() {
        return DeserializedMemberDescriptor.DefaultImpls.getVersionRequirements(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public VersionRequirementTable E() {
        return this.r;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public kotlin.reflect.jvm.internal.impl.metadata.deserialization.b F() {
        return this.p;
    }

    public c F0() {
        return this.s;
    }

    public DeserializedMemberDescriptor.CoroutinesCompatibilityMode G0() {
        return this.m;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    /* JADX INFO: renamed from: H0, reason: merged with bridge method [inline-methods] */
    public ProtoBuf$TypeAlias X() {
        return this.o;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.d
    protected kotlin.reflect.jvm.internal.impl.storage.h I() {
        return this.n;
    }

    public final void I0(List<? extends i0> declaredTypeParameters, kotlin.reflect.jvm.internal.impl.types.y underlyingType, kotlin.reflect.jvm.internal.impl.types.y expandedType, DeserializedMemberDescriptor.CoroutinesCompatibilityMode isExperimentalCoroutineInReleaseEnvironment) {
        Intrinsics.checkParameterIsNotNull(declaredTypeParameters, "declaredTypeParameters");
        Intrinsics.checkParameterIsNotNull(underlyingType, "underlyingType");
        Intrinsics.checkParameterIsNotNull(expandedType, "expandedType");
        Intrinsics.checkParameterIsNotNull(isExperimentalCoroutineInReleaseEnvironment, "isExperimentalCoroutineInReleaseEnvironment");
        B0(declaredTypeParameters);
        this.i = underlyingType;
        this.j = expandedType;
        this.k = TypeParameterUtilsKt.computeConstructorTypeParameters(this);
        this.l = b0();
        this.h = k0();
        this.m = isExperimentalCoroutineInReleaseEnvironment;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f0
    /* JADX INFO: renamed from: J0, reason: merged with bridge method [inline-methods] */
    public h0 c(TypeSubstitutor substitutor) {
        Intrinsics.checkParameterIsNotNull(substitutor, "substitutor");
        if (substitutor.f()) {
            return this;
        }
        kotlin.reflect.jvm.internal.impl.storage.h hVarI = I();
        i containingDeclaration = b();
        Intrinsics.checkExpressionValueIsNotNull(containingDeclaration, "containingDeclaration");
        Annotations annotations = getAnnotations();
        Intrinsics.checkExpressionValueIsNotNull(annotations, "annotations");
        Name name = getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "name");
        g gVar = new g(hVarI, containingDeclaration, annotations, name, getVisibility(), X(), F(), B(), E(), F0());
        List<i0> listO = o();
        kotlin.reflect.jvm.internal.impl.types.y yVarO0 = o0();
        Variance variance = Variance.INVARIANT;
        u uVarG = substitutor.g(yVarO0, variance);
        Intrinsics.checkExpressionValueIsNotNull(uVarG, "substitutor.safeSubstitu…Type, Variance.INVARIANT)");
        kotlin.reflect.jvm.internal.impl.types.y yVarAsSimpleType = TypeSubstitutionKt.asSimpleType(uVarG);
        u uVarG2 = substitutor.g(D(), variance);
        Intrinsics.checkExpressionValueIsNotNull(uVarG2, "substitutor.safeSubstitu…Type, Variance.INVARIANT)");
        gVar.I0(listO, yVarAsSimpleType, TypeSubstitutionKt.asSimpleType(uVarG2), G0());
        return gVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f
    public kotlin.reflect.jvm.internal.impl.types.y n() {
        kotlin.reflect.jvm.internal.impl.types.y yVar = this.l;
        if (yVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("defaultTypeImpl");
        }
        return yVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.h0
    public kotlin.reflect.jvm.internal.impl.types.y o0() {
        kotlin.reflect.jvm.internal.impl.types.y yVar = this.i;
        if (yVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("underlyingType");
        }
        return yVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.h0
    public kotlin.reflect.jvm.internal.impl.descriptors.d q() {
        if (KotlinTypeKt.isError(D())) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarQ = D().H0().q();
        return (kotlin.reflect.jvm.internal.impl.descriptors.d) (fVarQ instanceof kotlin.reflect.jvm.internal.impl.descriptors.d ? fVarQ : null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.d
    protected List<i0> z0() {
        List list = this.k;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("typeConstructorParameters");
        }
        return list;
    }
}
