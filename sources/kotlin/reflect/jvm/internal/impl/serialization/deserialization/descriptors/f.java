package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedCallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: DeserializedMemberDescriptor.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class f extends SimpleFunctionDescriptorImpl implements DeserializedCallableMemberDescriptor {
    private DeserializedMemberDescriptor.CoroutinesCompatibilityMode D;
    private final ProtoBuf$Function E;
    private final kotlin.reflect.jvm.internal.impl.metadata.deserialization.b F;
    private final kotlin.reflect.jvm.internal.impl.metadata.deserialization.e G;
    private final VersionRequirementTable H;
    private final c I;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(i containingDeclaration, c0 c0Var, Annotations annotations, Name name, CallableMemberDescriptor.Kind kind, ProtoBuf$Function proto, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver, kotlin.reflect.jvm.internal.impl.metadata.deserialization.e typeTable, VersionRequirementTable versionRequirementTable, c cVar, d0 d0Var) {
        super(containingDeclaration, c0Var, annotations, name, kind, d0Var != null ? d0Var : d0.a);
        Intrinsics.checkParameterIsNotNull(containingDeclaration, "containingDeclaration");
        Intrinsics.checkParameterIsNotNull(annotations, "annotations");
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(kind, "kind");
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
        Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
        Intrinsics.checkParameterIsNotNull(versionRequirementTable, "versionRequirementTable");
        this.E = proto;
        this.F = nameResolver;
        this.G = typeTable;
        this.H = versionRequirementTable;
        this.I = cVar;
        this.D = DeserializedMemberDescriptor.CoroutinesCompatibilityMode.COMPATIBLE;
    }

    public /* synthetic */ f(i iVar, c0 c0Var, Annotations annotations, Name name, CallableMemberDescriptor.Kind kind, ProtoBuf$Function protoBuf$Function, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b bVar, kotlin.reflect.jvm.internal.impl.metadata.deserialization.e eVar, VersionRequirementTable versionRequirementTable, c cVar, d0 d0Var, int i, n nVar) {
        this(iVar, c0Var, annotations, name, kind, protoBuf$Function, bVar, eVar, versionRequirementTable, cVar, (i & 1024) != 0 ? null : d0Var);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public kotlin.reflect.jvm.internal.impl.metadata.deserialization.e B() {
        return this.G;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public List<kotlin.reflect.jvm.internal.impl.metadata.deserialization.g> D0() {
        return DeserializedCallableMemberDescriptor.DefaultImpls.getVersionRequirements(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public VersionRequirementTable E() {
        return this.H;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public kotlin.reflect.jvm.internal.impl.metadata.deserialization.b F() {
        return this.F;
    }

    public c c1() {
        return this.I;
    }

    public DeserializedMemberDescriptor.CoroutinesCompatibilityMode d1() {
        return this.D;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    /* JADX INFO: renamed from: e1, reason: merged with bridge method [inline-methods] */
    public ProtoBuf$Function X() {
        return this.E;
    }

    public final SimpleFunctionDescriptorImpl f1(b0 b0Var, b0 b0Var2, List<? extends i0> typeParameters, List<? extends ValueParameterDescriptor> unsubstitutedValueParameters, u uVar, Modality modality, m0 visibility, Map<? extends a.InterfaceC0516a<?>, ?> userDataMap, DeserializedMemberDescriptor.CoroutinesCompatibilityMode isExperimentalCoroutineInReleaseEnvironment) {
        Intrinsics.checkParameterIsNotNull(typeParameters, "typeParameters");
        Intrinsics.checkParameterIsNotNull(unsubstitutedValueParameters, "unsubstitutedValueParameters");
        Intrinsics.checkParameterIsNotNull(visibility, "visibility");
        Intrinsics.checkParameterIsNotNull(userDataMap, "userDataMap");
        Intrinsics.checkParameterIsNotNull(isExperimentalCoroutineInReleaseEnvironment, "isExperimentalCoroutineInReleaseEnvironment");
        SimpleFunctionDescriptorImpl simpleFunctionDescriptorImplB1 = super.b1(b0Var, b0Var2, typeParameters, unsubstitutedValueParameters, uVar, modality, visibility, userDataMap);
        this.D = isExperimentalCoroutineInReleaseEnvironment;
        Intrinsics.checkExpressionValueIsNotNull(simpleFunctionDescriptorImplB1, "super.initialize(\n      …easeEnvironment\n        }");
        return simpleFunctionDescriptorImplB1;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    protected FunctionDescriptorImpl k0(i newOwner, o oVar, CallableMemberDescriptor.Kind kind, Name name, Annotations annotations, d0 source) {
        Name name2;
        Intrinsics.checkParameterIsNotNull(newOwner, "newOwner");
        Intrinsics.checkParameterIsNotNull(kind, "kind");
        Intrinsics.checkParameterIsNotNull(annotations, "annotations");
        Intrinsics.checkParameterIsNotNull(source, "source");
        c0 c0Var = (c0) oVar;
        if (name != null) {
            name2 = name;
        } else {
            Name name3 = getName();
            Intrinsics.checkExpressionValueIsNotNull(name3, "name");
            name2 = name3;
        }
        f fVar = new f(newOwner, c0Var, annotations, name2, kind, X(), F(), B(), E(), c1(), source);
        fVar.D = d1();
        return fVar;
    }
}
