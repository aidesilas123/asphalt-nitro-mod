package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.Collection;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;

/* JADX INFO: compiled from: PrimitiveTypeUtil.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class PrimitiveTypeUtilKt {
    public static final Collection<kotlin.reflect.jvm.internal.impl.types.u> getAllSignedLiteralTypes(ModuleDescriptor allSignedLiteralTypes) {
        Intrinsics.checkParameterIsNotNull(allSignedLiteralTypes, "$this$allSignedLiteralTypes");
        return CollectionsKt__CollectionsKt.listOf((Object[]) new kotlin.reflect.jvm.internal.impl.types.y[]{allSignedLiteralTypes.k().D(), allSignedLiteralTypes.k().F(), allSignedLiteralTypes.k().t(), allSignedLiteralTypes.k().Q()});
    }
}
