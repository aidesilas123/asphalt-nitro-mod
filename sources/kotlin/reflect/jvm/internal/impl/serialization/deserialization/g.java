package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;

/* JADX INFO: compiled from: ClassData.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class g {
    private final kotlin.reflect.jvm.internal.impl.metadata.deserialization.b a;
    private final ProtoBuf$Class b;
    private final kotlin.reflect.jvm.internal.impl.metadata.deserialization.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d0 f9799d;

    public g(kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver, ProtoBuf$Class classProto, kotlin.reflect.jvm.internal.impl.metadata.deserialization.a metadataVersion, d0 sourceElement) {
        Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
        Intrinsics.checkParameterIsNotNull(classProto, "classProto");
        Intrinsics.checkParameterIsNotNull(metadataVersion, "metadataVersion");
        Intrinsics.checkParameterIsNotNull(sourceElement, "sourceElement");
        this.a = nameResolver;
        this.b = classProto;
        this.c = metadataVersion;
        this.f9799d = sourceElement;
    }

    public final kotlin.reflect.jvm.internal.impl.metadata.deserialization.b a() {
        return this.a;
    }

    public final ProtoBuf$Class b() {
        return this.b;
    }

    public final kotlin.reflect.jvm.internal.impl.metadata.deserialization.a c() {
        return this.c;
    }

    public final d0 d() {
        return this.f9799d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return Intrinsics.areEqual(this.a, gVar.a) && Intrinsics.areEqual(this.b, gVar.b) && Intrinsics.areEqual(this.c, gVar.c) && Intrinsics.areEqual(this.f9799d, gVar.f9799d);
    }

    public int hashCode() {
        kotlin.reflect.jvm.internal.impl.metadata.deserialization.b bVar = this.a;
        int iHashCode = (bVar != null ? bVar.hashCode() : 0) * 31;
        ProtoBuf$Class protoBuf$Class = this.b;
        int iHashCode2 = (iHashCode + (protoBuf$Class != null ? protoBuf$Class.hashCode() : 0)) * 31;
        kotlin.reflect.jvm.internal.impl.metadata.deserialization.a aVar = this.c;
        int iHashCode3 = (iHashCode2 + (aVar != null ? aVar.hashCode() : 0)) * 31;
        d0 d0Var = this.f9799d;
        return iHashCode3 + (d0Var != null ? d0Var.hashCode() : 0);
    }

    public String toString() {
        return "ClassData(nameResolver=" + this.a + ", classProto=" + this.b + ", metadataVersion=" + this.c + ", sourceElement=" + this.f9799d + ")";
    }
}
