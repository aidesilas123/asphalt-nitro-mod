package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.a0;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.v;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.n;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedCallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor;

/* JADX INFO: compiled from: DeserializedMemberDescriptor.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class e extends PropertyDescriptorImpl implements DeserializedCallableMemberDescriptor {
    private DeserializedMemberDescriptor.CoroutinesCompatibilityMode A;
    private final ProtoBuf$Property B;
    private final kotlin.reflect.jvm.internal.impl.metadata.deserialization.b C;
    private final kotlin.reflect.jvm.internal.impl.metadata.deserialization.e D;
    private final VersionRequirementTable E;
    private final c F;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(i containingDeclaration, y yVar, Annotations annotations, Modality modality, m0 visibility, boolean z, Name name, CallableMemberDescriptor.Kind kind, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, ProtoBuf$Property proto, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver, kotlin.reflect.jvm.internal.impl.metadata.deserialization.e typeTable, VersionRequirementTable versionRequirementTable, c cVar) {
        super(containingDeclaration, yVar, annotations, modality, visibility, z, name, kind, d0.a, z2, z3, z6, false, z4, z5);
        Intrinsics.checkParameterIsNotNull(containingDeclaration, "containingDeclaration");
        Intrinsics.checkParameterIsNotNull(annotations, "annotations");
        Intrinsics.checkParameterIsNotNull(modality, "modality");
        Intrinsics.checkParameterIsNotNull(visibility, "visibility");
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(kind, "kind");
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
        Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
        Intrinsics.checkParameterIsNotNull(versionRequirementTable, "versionRequirementTable");
        this.B = proto;
        this.C = nameResolver;
        this.D = typeTable;
        this.E = versionRequirementTable;
        this.F = cVar;
        this.A = DeserializedMemberDescriptor.CoroutinesCompatibilityMode.COMPATIBLE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public kotlin.reflect.jvm.internal.impl.metadata.deserialization.e B() {
        return this.D;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl
    protected PropertyDescriptorImpl B0(i newOwner, Modality newModality, m0 newVisibility, y yVar, CallableMemberDescriptor.Kind kind, Name newName, d0 source) {
        Intrinsics.checkParameterIsNotNull(newOwner, "newOwner");
        Intrinsics.checkParameterIsNotNull(newModality, "newModality");
        Intrinsics.checkParameterIsNotNull(newVisibility, "newVisibility");
        Intrinsics.checkParameterIsNotNull(kind, "kind");
        Intrinsics.checkParameterIsNotNull(newName, "newName");
        Intrinsics.checkParameterIsNotNull(source, "source");
        return new e(newOwner, yVar, getAnnotations(), newModality, newVisibility, J(), newName, kind, s0(), isConst(), isExternal(), y(), c0(), X(), F(), B(), E(), R0());
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public List<kotlin.reflect.jvm.internal.impl.metadata.deserialization.g> D0() {
        return DeserializedCallableMemberDescriptor.DefaultImpls.getVersionRequirements(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public VersionRequirementTable E() {
        return this.E;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public kotlin.reflect.jvm.internal.impl.metadata.deserialization.b F() {
        return this.C;
    }

    public c R0() {
        return this.F;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    /* JADX INFO: renamed from: S0, reason: merged with bridge method [inline-methods] */
    public ProtoBuf$Property X() {
        return this.B;
    }

    public final void T0(v vVar, a0 a0Var, n nVar, n nVar2, DeserializedMemberDescriptor.CoroutinesCompatibilityMode isExperimentalCoroutineInReleaseEnvironment) {
        Intrinsics.checkParameterIsNotNull(isExperimentalCoroutineInReleaseEnvironment, "isExperimentalCoroutineInReleaseEnvironment");
        super.K0(vVar, a0Var, nVar, nVar2);
        kotlin.v vVar2 = kotlin.v.a;
        this.A = isExperimentalCoroutineInReleaseEnvironment;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.q
    public boolean isExternal() {
        Boolean boolA = Flags.z.a(X().M());
        Intrinsics.checkExpressionValueIsNotNull(boolA, "Flags.IS_EXTERNAL_PROPERTY.get(proto.flags)");
        return boolA.booleanValue();
    }
}
