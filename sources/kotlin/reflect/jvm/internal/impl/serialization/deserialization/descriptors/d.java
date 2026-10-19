package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.incremental.UtilsKt;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationContext;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.j;

/* JADX INFO: compiled from: DeserializedPackageMemberScope.kt */
/* JADX INFO: loaded from: classes5.dex */
public class d extends DeserializedMemberScope {
    private final FqName m;
    private final s n;

    public d(s packageDescriptor, ProtoBuf$Package proto, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver, kotlin.reflect.jvm.internal.impl.metadata.deserialization.a metadataVersion, c cVar, j components, Function0<? extends Collection<Name>> classNames) {
        Intrinsics.checkParameterIsNotNull(packageDescriptor, "packageDescriptor");
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
        Intrinsics.checkParameterIsNotNull(metadataVersion, "metadataVersion");
        Intrinsics.checkParameterIsNotNull(components, "components");
        Intrinsics.checkParameterIsNotNull(classNames, "classNames");
        ProtoBuf$TypeTable protoBuf$TypeTableP = proto.P();
        Intrinsics.checkExpressionValueIsNotNull(protoBuf$TypeTableP, "proto.typeTable");
        kotlin.reflect.jvm.internal.impl.metadata.deserialization.e eVar = new kotlin.reflect.jvm.internal.impl.metadata.deserialization.e(protoBuf$TypeTableP);
        VersionRequirementTable.a aVar = VersionRequirementTable.b;
        ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTableQ = proto.Q();
        Intrinsics.checkExpressionValueIsNotNull(protoBuf$VersionRequirementTableQ, "proto.versionRequirementTable");
        DeserializationContext deserializationContextA = components.a(packageDescriptor, nameResolver, eVar, aVar.a(protoBuf$VersionRequirementTableQ), metadataVersion, cVar);
        List<ProtoBuf$Function> listI = proto.I();
        Intrinsics.checkExpressionValueIsNotNull(listI, "proto.functionList");
        List<ProtoBuf$Property> listL = proto.L();
        Intrinsics.checkExpressionValueIsNotNull(listL, "proto.propertyList");
        List<ProtoBuf$TypeAlias> listO = proto.O();
        Intrinsics.checkExpressionValueIsNotNull(listO, "proto.typeAliasList");
        super(deserializationContextA, listI, listL, listO, classNames);
        this.n = packageDescriptor;
        this.m = packageDescriptor.e();
    }

    public void A(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        UtilsKt.record(q().b().o(), location, this.n, name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public kotlin.reflect.jvm.internal.impl.descriptors.f c(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        A(name, location);
        return super.c(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
    protected void g(Collection<i> result, Function1<? super Name, Boolean> nameFilter) {
        Intrinsics.checkParameterIsNotNull(result, "result");
        Intrinsics.checkParameterIsNotNull(nameFilter, "nameFilter");
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
    protected ClassId n(Name name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        return new ClassId(this.m, name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
    protected Set<Name> t() {
        return SetsKt__SetsKt.emptySet();
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
    protected Set<Name> u() {
        return SetsKt__SetsKt.emptySet();
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
    protected boolean x(Name name) {
        boolean z;
        Intrinsics.checkParameterIsNotNull(name, "name");
        if (super.x(name)) {
            return true;
        }
        Iterable<kotlin.reflect.jvm.internal.impl.descriptors.deserialization.b> iterableK = q().b().k();
        if ((iterableK instanceof Collection) && ((Collection) iterableK).isEmpty()) {
            z = false;
        } else {
            Iterator<kotlin.reflect.jvm.internal.impl.descriptors.deserialization.b> it = iterableK.iterator();
            while (it.hasNext()) {
                if (it.next().b(this.m, name)) {
                    z = true;
                    break;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public List<i> d(DescriptorKindFilter kindFilter, Function1<? super Name, Boolean> nameFilter) {
        Intrinsics.checkParameterIsNotNull(kindFilter, "kindFilter");
        Intrinsics.checkParameterIsNotNull(nameFilter, "nameFilter");
        Collection<i> collectionI = i(kindFilter, nameFilter, NoLookupLocation.WHEN_GET_ALL_DESCRIPTORS);
        Iterable<kotlin.reflect.jvm.internal.impl.descriptors.deserialization.b> iterableK = q().b().k();
        ArrayList arrayList = new ArrayList();
        Iterator<kotlin.reflect.jvm.internal.impl.descriptors.deserialization.b> it = iterableK.iterator();
        while (it.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, it.next().a(this.m));
        }
        return CollectionsKt___CollectionsKt.plus((Collection) collectionI, (Iterable) arrayList);
    }
}
