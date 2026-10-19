package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionSpecificBehaviorKt;

/* JADX INFO: compiled from: context.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class DeserializationContext {
    private final TypeDeserializer a;
    private final MemberDeserializer b;
    private final j c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.metadata.deserialization.b f9775d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.descriptors.i f9776e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.metadata.deserialization.e f9777f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final VersionRequirementTable f9778g;
    private final kotlin.reflect.jvm.internal.impl.metadata.deserialization.a h;
    private final kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.c i;

    public DeserializationContext(j components, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver, kotlin.reflect.jvm.internal.impl.descriptors.i containingDeclaration, kotlin.reflect.jvm.internal.impl.metadata.deserialization.e typeTable, VersionRequirementTable versionRequirementTable, kotlin.reflect.jvm.internal.impl.metadata.deserialization.a metadataVersion, kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.c cVar, TypeDeserializer typeDeserializer, List<ProtoBuf$TypeParameter> typeParameters) {
        String strA;
        Intrinsics.checkParameterIsNotNull(components, "components");
        Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
        Intrinsics.checkParameterIsNotNull(containingDeclaration, "containingDeclaration");
        Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
        Intrinsics.checkParameterIsNotNull(versionRequirementTable, "versionRequirementTable");
        Intrinsics.checkParameterIsNotNull(metadataVersion, "metadataVersion");
        Intrinsics.checkParameterIsNotNull(typeParameters, "typeParameters");
        this.c = components;
        this.f9775d = nameResolver;
        this.f9776e = containingDeclaration;
        this.f9777f = typeTable;
        this.f9778g = versionRequirementTable;
        this.h = metadataVersion;
        this.i = cVar;
        this.a = new TypeDeserializer(this, typeDeserializer, typeParameters, "Deserializer for \"" + containingDeclaration.getName() + '\"', (cVar == null || (strA = cVar.a()) == null) ? "[container not found]" : strA, false, 32, null);
        this.b = new MemberDeserializer(this);
    }

    public static /* synthetic */ DeserializationContext childContext$default(DeserializationContext deserializationContext, kotlin.reflect.jvm.internal.impl.descriptors.i iVar, List list, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b bVar, kotlin.reflect.jvm.internal.impl.metadata.deserialization.e eVar, VersionRequirementTable versionRequirementTable, kotlin.reflect.jvm.internal.impl.metadata.deserialization.a aVar, int i, Object obj) {
        if ((i & 4) != 0) {
            bVar = deserializationContext.f9775d;
        }
        kotlin.reflect.jvm.internal.impl.metadata.deserialization.b bVar2 = bVar;
        if ((i & 8) != 0) {
            eVar = deserializationContext.f9777f;
        }
        kotlin.reflect.jvm.internal.impl.metadata.deserialization.e eVar2 = eVar;
        if ((i & 16) != 0) {
            versionRequirementTable = deserializationContext.f9778g;
        }
        VersionRequirementTable versionRequirementTable2 = versionRequirementTable;
        if ((i & 32) != 0) {
            aVar = deserializationContext.h;
        }
        return deserializationContext.a(iVar, list, bVar2, eVar2, versionRequirementTable2, aVar);
    }

    public final DeserializationContext a(kotlin.reflect.jvm.internal.impl.descriptors.i descriptor, List<ProtoBuf$TypeParameter> typeParameterProtos, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver, kotlin.reflect.jvm.internal.impl.metadata.deserialization.e typeTable, VersionRequirementTable versionRequirementTable, kotlin.reflect.jvm.internal.impl.metadata.deserialization.a metadataVersion) {
        Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
        Intrinsics.checkParameterIsNotNull(typeParameterProtos, "typeParameterProtos");
        Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
        Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
        VersionRequirementTable versionRequirementTable2 = versionRequirementTable;
        Intrinsics.checkParameterIsNotNull(versionRequirementTable2, "versionRequirementTable");
        Intrinsics.checkParameterIsNotNull(metadataVersion, "metadataVersion");
        j jVar = this.c;
        if (!VersionSpecificBehaviorKt.isVersionRequirementTableWrittenCorrectly(metadataVersion)) {
            versionRequirementTable2 = this.f9778g;
        }
        return new DeserializationContext(jVar, nameResolver, descriptor, typeTable, versionRequirementTable2, metadataVersion, this.i, this.a, typeParameterProtos);
    }

    public final j b() {
        return this.c;
    }

    public final kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.c c() {
        return this.i;
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.i d() {
        return this.f9776e;
    }

    public final MemberDeserializer e() {
        return this.b;
    }

    public final kotlin.reflect.jvm.internal.impl.metadata.deserialization.b f() {
        return this.f9775d;
    }

    public final kotlin.reflect.jvm.internal.impl.storage.h g() {
        return this.c.t();
    }

    public final TypeDeserializer h() {
        return this.a;
    }

    public final kotlin.reflect.jvm.internal.impl.metadata.deserialization.e i() {
        return this.f9777f;
    }

    public final VersionRequirementTable j() {
        return this.f9778g;
    }
}
