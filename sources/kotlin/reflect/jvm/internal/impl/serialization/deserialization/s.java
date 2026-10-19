package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment;
import kotlin.reflect.jvm.internal.impl.name.ClassId;

/* JADX INFO: compiled from: ProtoBasedClassDataFinder.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class s implements h {
    private final Map<ClassId, ProtoBuf$Class> a;
    private final kotlin.reflect.jvm.internal.impl.metadata.deserialization.b b;
    private final kotlin.reflect.jvm.internal.impl.metadata.deserialization.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Function1<ClassId, d0> f9806d;

    /* JADX WARN: Multi-variable type inference failed */
    public s(ProtoBuf$PackageFragment proto, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver, kotlin.reflect.jvm.internal.impl.metadata.deserialization.a metadataVersion, Function1<? super ClassId, ? extends d0> classSource) {
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
        Intrinsics.checkParameterIsNotNull(metadataVersion, "metadataVersion");
        Intrinsics.checkParameterIsNotNull(classSource, "classSource");
        this.b = nameResolver;
        this.c = metadataVersion;
        this.f9806d = classSource;
        List<ProtoBuf$Class> listE = proto.E();
        Intrinsics.checkExpressionValueIsNotNull(listE, "proto.class_List");
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(listE, 10)), 16));
        for (Object obj : listE) {
            ProtoBuf$Class klass = (ProtoBuf$Class) obj;
            kotlin.reflect.jvm.internal.impl.metadata.deserialization.b bVar = this.b;
            Intrinsics.checkExpressionValueIsNotNull(klass, "klass");
            linkedHashMap.put(NameResolverUtilKt.getClassId(bVar, klass.h0()), obj);
        }
        this.a = linkedHashMap;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.h
    public g a(ClassId classId) {
        Intrinsics.checkParameterIsNotNull(classId, "classId");
        ProtoBuf$Class protoBuf$Class = this.a.get(classId);
        if (protoBuf$Class != null) {
            return new g(this.b, protoBuf$Class, this.c, this.f9806d.invoke(classId));
        }
        return null;
    }

    public final Collection<ClassId> b() {
        return this.a.keySet();
    }
}
