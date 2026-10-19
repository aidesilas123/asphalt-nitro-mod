package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: compiled from: FlexibleTypeDeserializer.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface n {

    /* JADX INFO: compiled from: FlexibleTypeDeserializer.kt */
    public static final class a implements n {
        public static final a a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.n
        public kotlin.reflect.jvm.internal.impl.types.u a(ProtoBuf$Type proto, String flexibleId, y lowerBound, y upperBound) {
            Intrinsics.checkParameterIsNotNull(proto, "proto");
            Intrinsics.checkParameterIsNotNull(flexibleId, "flexibleId");
            Intrinsics.checkParameterIsNotNull(lowerBound, "lowerBound");
            Intrinsics.checkParameterIsNotNull(upperBound, "upperBound");
            throw new IllegalArgumentException("This method should not be used.");
        }
    }

    kotlin.reflect.jvm.internal.impl.types.u a(ProtoBuf$Type protoBuf$Type, String str, y yVar, y yVar2);
}
