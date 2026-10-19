package kotlin.reflect.jvm.internal.impl.util;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.util.Check;

/* JADX INFO: compiled from: modifierChecks.kt */
/* JADX INFO: loaded from: classes5.dex */
final class g implements Check {
    public static final g b = new g();
    private static final String a = "should not have varargs or parameters with default values";

    private g() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public String a(o functionDescriptor) {
        Intrinsics.checkParameterIsNotNull(functionDescriptor, "functionDescriptor");
        return Check.DefaultImpls.invoke(this, functionDescriptor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public boolean b(o functionDescriptor) {
        Intrinsics.checkParameterIsNotNull(functionDescriptor, "functionDescriptor");
        List<ValueParameterDescriptor> listG = functionDescriptor.g();
        Intrinsics.checkExpressionValueIsNotNull(listG, "functionDescriptor.valueParameters");
        if (!(listG instanceof Collection) || !listG.isEmpty()) {
            for (ValueParameterDescriptor it : listG) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                if (!(!DescriptorUtilsKt.declaresOrInheritsDefaultValue(it) && it.q0() == null)) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public String getDescription() {
        return a;
    }
}
