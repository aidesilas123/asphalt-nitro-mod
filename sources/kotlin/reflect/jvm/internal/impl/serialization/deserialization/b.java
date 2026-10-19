package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.t;

/* JADX INFO: compiled from: AnnotationAndConstantLoader.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface b<A, C> {
    List<A> a(t tVar, kotlin.reflect.jvm.internal.impl.protobuf.j jVar, AnnotatedCallableKind annotatedCallableKind, int i, ProtoBuf$ValueParameter protoBuf$ValueParameter);

    List<A> b(t.a aVar);

    List<A> c(ProtoBuf$Type protoBuf$Type, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b bVar);

    List<A> d(t tVar, ProtoBuf$EnumEntry protoBuf$EnumEntry);

    List<A> e(t tVar, kotlin.reflect.jvm.internal.impl.protobuf.j jVar, AnnotatedCallableKind annotatedCallableKind);

    List<A> f(ProtoBuf$TypeParameter protoBuf$TypeParameter, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b bVar);

    C g(t tVar, ProtoBuf$Property protoBuf$Property, kotlin.reflect.jvm.internal.impl.types.u uVar);

    List<A> h(t tVar, ProtoBuf$Property protoBuf$Property);

    List<A> i(t tVar, kotlin.reflect.jvm.internal.impl.protobuf.j jVar, AnnotatedCallableKind annotatedCallableKind);

    List<A> j(t tVar, ProtoBuf$Property protoBuf$Property);
}
