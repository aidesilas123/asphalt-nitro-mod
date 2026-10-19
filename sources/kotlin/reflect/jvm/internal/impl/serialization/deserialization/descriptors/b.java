package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedCallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor;

/* JADX INFO: compiled from: DeserializedMemberDescriptor.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class b extends ClassConstructorDescriptorImpl implements DeserializedCallableMemberDescriptor {
    private DeserializedMemberDescriptor.CoroutinesCompatibilityMode F;
    private final ProtoBuf$Constructor G;
    private final kotlin.reflect.jvm.internal.impl.metadata.deserialization.b H;
    private final kotlin.reflect.jvm.internal.impl.metadata.deserialization.e I;
    private final VersionRequirementTable J;
    private final c K;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(kotlin.reflect.jvm.internal.impl.descriptors.d containingDeclaration, kotlin.reflect.jvm.internal.impl.descriptors.h hVar, Annotations annotations, boolean z, CallableMemberDescriptor.Kind kind, ProtoBuf$Constructor proto, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver, kotlin.reflect.jvm.internal.impl.metadata.deserialization.e typeTable, VersionRequirementTable versionRequirementTable, c cVar, d0 d0Var) {
        super(containingDeclaration, hVar, annotations, z, kind, d0Var != null ? d0Var : d0.a);
        Intrinsics.checkParameterIsNotNull(containingDeclaration, "containingDeclaration");
        Intrinsics.checkParameterIsNotNull(annotations, "annotations");
        Intrinsics.checkParameterIsNotNull(kind, "kind");
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
        Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
        Intrinsics.checkParameterIsNotNull(versionRequirementTable, "versionRequirementTable");
        this.G = proto;
        this.H = nameResolver;
        this.I = typeTable;
        this.J = versionRequirementTable;
        this.K = cVar;
        this.F = DeserializedMemberDescriptor.CoroutinesCompatibilityMode.COMPATIBLE;
    }

    public /* synthetic */ b(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, kotlin.reflect.jvm.internal.impl.descriptors.h hVar, Annotations annotations, boolean z, CallableMemberDescriptor.Kind kind, ProtoBuf$Constructor protoBuf$Constructor, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b bVar, kotlin.reflect.jvm.internal.impl.metadata.deserialization.e eVar, VersionRequirementTable versionRequirementTable, c cVar, d0 d0Var, int i, n nVar) {
        this(dVar, hVar, annotations, z, kind, protoBuf$Constructor, bVar, eVar, versionRequirementTable, cVar, (i & 1024) != 0 ? null : d0Var);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public kotlin.reflect.jvm.internal.impl.metadata.deserialization.e B() {
        return this.I;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public List<kotlin.reflect.jvm.internal.impl.metadata.deserialization.g> D0() {
        return DeserializedCallableMemberDescriptor.DefaultImpls.getVersionRequirements(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public VersionRequirementTable E() {
        return this.J;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public kotlin.reflect.jvm.internal.impl.metadata.deserialization.b F() {
        return this.H;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    /* JADX INFO: renamed from: e1, reason: merged with bridge method [inline-methods] */
    public b k0(i newOwner, o oVar, CallableMemberDescriptor.Kind kind, Name name, Annotations annotations, d0 source) {
        Intrinsics.checkParameterIsNotNull(newOwner, "newOwner");
        Intrinsics.checkParameterIsNotNull(kind, "kind");
        Intrinsics.checkParameterIsNotNull(annotations, "annotations");
        Intrinsics.checkParameterIsNotNull(source, "source");
        b bVar = new b((kotlin.reflect.jvm.internal.impl.descriptors.d) newOwner, (kotlin.reflect.jvm.internal.impl.descriptors.h) oVar, annotations, this.E, kind, X(), F(), B(), E(), f1(), source);
        bVar.i1(g1());
        return bVar;
    }

    public c f1() {
        return this.K;
    }

    public DeserializedMemberDescriptor.CoroutinesCompatibilityMode g1() {
        return this.F;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    /* JADX INFO: renamed from: h1, reason: merged with bridge method [inline-methods] */
    public ProtoBuf$Constructor X() {
        return this.G;
    }

    public void i1(DeserializedMemberDescriptor.CoroutinesCompatibilityMode coroutinesCompatibilityMode) {
        Intrinsics.checkParameterIsNotNull(coroutinesCompatibilityMode, "<set-?>");
        this.F = coroutinesCompatibilityMode;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.q
    public boolean isExternal() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.o
    public boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.o
    public boolean isSuspend() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.o
    public boolean z() {
        return false;
    }
}
