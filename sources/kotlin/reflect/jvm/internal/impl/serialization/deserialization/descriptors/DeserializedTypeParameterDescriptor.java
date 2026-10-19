package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.g0;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoTypeTableUtilKt;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationContext;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.NameResolverUtilKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.v;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: DeserializedTypeParameterDescriptor.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class DeserializedTypeParameterDescriptor extends kotlin.reflect.jvm.internal.impl.descriptors.impl.b {
    private final kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.a k;
    private final DeserializationContext l;
    private final ProtoBuf$TypeParameter m;

    /* JADX INFO: compiled from: DeserializedTypeParameterDescriptor.kt */
    static final class a extends Lambda implements Function0<List<? extends AnnotationDescriptor>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<AnnotationDescriptor> invoke() {
            return CollectionsKt___CollectionsKt.toList(DeserializedTypeParameterDescriptor.this.l.b().d().f(DeserializedTypeParameterDescriptor.this.z0(), DeserializedTypeParameterDescriptor.this.l.f()));
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DeserializedTypeParameterDescriptor(DeserializationContext c, ProtoBuf$TypeParameter proto, int i) {
        Intrinsics.checkParameterIsNotNull(c, "c");
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        kotlin.reflect.jvm.internal.impl.storage.h hVarG = c.g();
        i iVarD = c.d();
        Name name = NameResolverUtilKt.getName(c.f(), proto.H());
        v vVar = v.a;
        ProtoBuf$TypeParameter.Variance varianceN = proto.N();
        Intrinsics.checkExpressionValueIsNotNull(varianceN, "proto.variance");
        super(hVarG, iVarD, name, vVar.e(varianceN), proto.I(), i, d0.a, g0.a.a);
        this.l = c;
        this.m = proto;
        this.k = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.a(c.g(), new a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.e
    /* JADX INFO: renamed from: B0, reason: merged with bridge method [inline-methods] */
    public Void b0(u type) {
        Intrinsics.checkParameterIsNotNull(type, "type");
        throw new IllegalStateException("There should be no cycles for deserialized type parameters, but found for: " + this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.e
    protected List<u> e0() {
        List<ProtoBuf$Type> listUpperBounds = ProtoTypeTableUtilKt.upperBounds(this.m, this.l.i());
        if (listUpperBounds.isEmpty()) {
            return CollectionsKt__CollectionsJVMKt.listOf(DescriptorUtilsKt.getBuiltIns(this).y());
        }
        TypeDeserializer typeDeserializerH = this.l.h();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listUpperBounds, 10));
        Iterator<T> it = listUpperBounds.iterator();
        while (it.hasNext()) {
            arrayList.add(typeDeserializerH.k((ProtoBuf$Type) it.next()));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.b, kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.a getAnnotations() {
        return this.k;
    }

    public final ProtoBuf$TypeParameter z0() {
        return this.m;
    }
}
