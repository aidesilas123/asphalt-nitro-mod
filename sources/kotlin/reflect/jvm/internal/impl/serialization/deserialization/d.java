package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoBufUtilKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.t;

/* JADX INFO: compiled from: AnnotationAndConstantLoaderImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class d implements b<AnnotationDescriptor, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> {
    private final f a;
    private final kotlin.reflect.jvm.internal.t.a.a b;

    public d(ModuleDescriptor module, NotFoundClasses notFoundClasses, kotlin.reflect.jvm.internal.t.a.a protocol) {
        Intrinsics.checkParameterIsNotNull(module, "module");
        Intrinsics.checkParameterIsNotNull(notFoundClasses, "notFoundClasses");
        Intrinsics.checkParameterIsNotNull(protocol, "protocol");
        this.b = protocol;
        this.a = new f(module, notFoundClasses);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.b
    public List<AnnotationDescriptor> a(t container, kotlin.reflect.jvm.internal.impl.protobuf.j callableProto, AnnotatedCallableKind kind, int i, ProtoBuf$ValueParameter proto) {
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(callableProto, "callableProto");
        Intrinsics.checkParameterIsNotNull(kind, "kind");
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        List listEmptyList = (List) proto.p(this.b.g());
        if (listEmptyList == null) {
            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listEmptyList, 10));
        Iterator it = listEmptyList.iterator();
        while (it.hasNext()) {
            arrayList.add(this.a.a((ProtoBuf$Annotation) it.next(), container.b()));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.b
    public List<AnnotationDescriptor> b(t.a container) {
        Intrinsics.checkParameterIsNotNull(container, "container");
        List listEmptyList = (List) container.f().p(this.b.a());
        if (listEmptyList == null) {
            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listEmptyList, 10));
        Iterator it = listEmptyList.iterator();
        while (it.hasNext()) {
            arrayList.add(this.a.a((ProtoBuf$Annotation) it.next(), container.b()));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.b
    public List<AnnotationDescriptor> c(ProtoBuf$Type proto, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver) {
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
        List listEmptyList = (List) proto.p(this.b.k());
        if (listEmptyList == null) {
            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listEmptyList, 10));
        Iterator it = listEmptyList.iterator();
        while (it.hasNext()) {
            arrayList.add(this.a.a((ProtoBuf$Annotation) it.next(), nameResolver));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.b
    public List<AnnotationDescriptor> d(t container, ProtoBuf$EnumEntry proto) {
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        List listEmptyList = (List) proto.p(this.b.d());
        if (listEmptyList == null) {
            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listEmptyList, 10));
        Iterator it = listEmptyList.iterator();
        while (it.hasNext()) {
            arrayList.add(this.a.a((ProtoBuf$Annotation) it.next(), container.b()));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.b
    public List<AnnotationDescriptor> e(t container, kotlin.reflect.jvm.internal.impl.protobuf.j proto, AnnotatedCallableKind kind) {
        List listEmptyList;
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        Intrinsics.checkParameterIsNotNull(kind, "kind");
        if (proto instanceof ProtoBuf$Constructor) {
            listEmptyList = (List) ((ProtoBuf$Constructor) proto).p(this.b.c());
        } else if (proto instanceof ProtoBuf$Function) {
            listEmptyList = (List) ((ProtoBuf$Function) proto).p(this.b.f());
        } else {
            if (!(proto instanceof ProtoBuf$Property)) {
                throw new IllegalStateException(("Unknown message: " + proto).toString());
            }
            int i = c.a[kind.ordinal()];
            if (i == 1) {
                listEmptyList = (List) ((ProtoBuf$Property) proto).p(this.b.h());
            } else if (i == 2) {
                listEmptyList = (List) ((ProtoBuf$Property) proto).p(this.b.i());
            } else {
                if (i != 3) {
                    throw new IllegalStateException("Unsupported callable kind with property proto".toString());
                }
                listEmptyList = (List) ((ProtoBuf$Property) proto).p(this.b.j());
            }
        }
        if (listEmptyList == null) {
            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listEmptyList, 10));
        Iterator it = listEmptyList.iterator();
        while (it.hasNext()) {
            arrayList.add(this.a.a((ProtoBuf$Annotation) it.next(), container.b()));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.b
    public List<AnnotationDescriptor> f(ProtoBuf$TypeParameter proto, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver) {
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
        List listEmptyList = (List) proto.p(this.b.l());
        if (listEmptyList == null) {
            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listEmptyList, 10));
        Iterator it = listEmptyList.iterator();
        while (it.hasNext()) {
            arrayList.add(this.a.a((ProtoBuf$Annotation) it.next(), nameResolver));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.b
    public List<AnnotationDescriptor> h(t container, ProtoBuf$Property proto) {
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        return CollectionsKt__CollectionsKt.emptyList();
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.b
    public List<AnnotationDescriptor> i(t container, kotlin.reflect.jvm.internal.impl.protobuf.j proto, AnnotatedCallableKind kind) {
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        Intrinsics.checkParameterIsNotNull(kind, "kind");
        return CollectionsKt__CollectionsKt.emptyList();
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.b
    public List<AnnotationDescriptor> j(t container, ProtoBuf$Property proto) {
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        return CollectionsKt__CollectionsKt.emptyList();
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.b
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> g(t container, ProtoBuf$Property proto, kotlin.reflect.jvm.internal.impl.types.u expectedType) {
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        Intrinsics.checkParameterIsNotNull(expectedType, "expectedType");
        ProtoBuf$Annotation.Argument.Value value = (ProtoBuf$Annotation.Argument.Value) ProtoBufUtilKt.getExtensionOrNull(proto, this.b.b());
        if (value != null) {
            return this.a.f(expectedType, value, container.b());
        }
        return null;
    }
}
