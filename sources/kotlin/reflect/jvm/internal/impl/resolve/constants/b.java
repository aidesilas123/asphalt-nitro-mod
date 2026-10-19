package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;

/* JADX INFO: compiled from: constantValues.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class b extends g<List<? extends g<?>>> {
    private final Function1<ModuleDescriptor, kotlin.reflect.jvm.internal.impl.types.u> b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public b(List<? extends g<?>> value, Function1<? super ModuleDescriptor, ? extends kotlin.reflect.jvm.internal.impl.types.u> computeType) {
        super(value);
        Intrinsics.checkParameterIsNotNull(value, "value");
        Intrinsics.checkParameterIsNotNull(computeType, "computeType");
        this.b = computeType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public kotlin.reflect.jvm.internal.impl.types.u a(ModuleDescriptor module) {
        Intrinsics.checkParameterIsNotNull(module, "module");
        kotlin.reflect.jvm.internal.impl.types.u uVarInvoke = this.b.invoke(module);
        if (!KotlinBuiltIns.isArray(uVarInvoke)) {
            KotlinBuiltIns.isPrimitiveArray(uVarInvoke);
        }
        return uVarInvoke;
    }
}
