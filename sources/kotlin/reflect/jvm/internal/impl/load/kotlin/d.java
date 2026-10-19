package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: compiled from: JavaFlexibleTypeDeserializer.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class d implements kotlin.reflect.jvm.internal.impl.serialization.deserialization.n {
    public static final d a = new d();

    private d() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.n
    public u a(ProtoBuf$Type proto, String flexibleId, y lowerBound, y upperBound) {
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        Intrinsics.checkParameterIsNotNull(flexibleId, "flexibleId");
        Intrinsics.checkParameterIsNotNull(lowerBound, "lowerBound");
        Intrinsics.checkParameterIsNotNull(upperBound, "upperBound");
        if (!(!Intrinsics.areEqual(flexibleId, "kotlin.jvm.PlatformType"))) {
            return proto.s(JvmProtoBuf.f9634g) ? new kotlin.reflect.jvm.internal.impl.load.java.lazy.types.b(lowerBound, upperBound) : KotlinTypeFactory.flexibleType(lowerBound, upperBound);
        }
        y yVarCreateErrorType = ErrorUtils.createErrorType("Error java flexible type with id: " + flexibleId + ". (" + lowerBound + ".." + upperBound + ')');
        Intrinsics.checkExpressionValueIsNotNull(yVarCreateErrorType, "ErrorUtils.createErrorTy…owerBound..$upperBound)\")");
        return yVarCreateErrorType;
    }
}
