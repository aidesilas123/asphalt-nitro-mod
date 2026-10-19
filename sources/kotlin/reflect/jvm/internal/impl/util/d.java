package kotlin.reflect.jvm.internal.impl.util;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.ReflectionTypes;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.util.Check;

/* JADX INFO: compiled from: modifierChecks.kt */
/* JADX INFO: loaded from: classes5.dex */
final class d implements Check {
    public static final d b = new d();
    private static final String a = "second parameter must be of type KProperty<*> or its supertype";

    private d() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public String a(o functionDescriptor) {
        Intrinsics.checkParameterIsNotNull(functionDescriptor, "functionDescriptor");
        return Check.DefaultImpls.invoke(this, functionDescriptor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public boolean b(o functionDescriptor) {
        Intrinsics.checkParameterIsNotNull(functionDescriptor, "functionDescriptor");
        ValueParameterDescriptor secondParameter = functionDescriptor.g().get(1);
        ReflectionTypes.b bVar = ReflectionTypes.b;
        Intrinsics.checkExpressionValueIsNotNull(secondParameter, "secondParameter");
        u uVarA = bVar.a(DescriptorUtilsKt.getModule(secondParameter));
        if (uVarA == null) {
            return false;
        }
        u type = secondParameter.getType();
        Intrinsics.checkExpressionValueIsNotNull(type, "secondParameter.type");
        return TypeUtilsKt.isSubtypeOf(uVarA, TypeUtilsKt.makeNotNullable(type));
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public String getDescription() {
        return a;
    }
}
