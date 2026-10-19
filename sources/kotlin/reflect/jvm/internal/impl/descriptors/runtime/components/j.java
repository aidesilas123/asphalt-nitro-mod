package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;

/* JADX INFO: compiled from: ReflectKotlinClass.kt */
/* JADX INFO: loaded from: classes5.dex */
final class j {
    public static final j a = new j();

    private j() {
    }

    public final String a(Constructor<?> constructor) {
        Intrinsics.checkParameterIsNotNull(constructor, "constructor");
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        for (Class<?> parameterType : constructor.getParameterTypes()) {
            Intrinsics.checkExpressionValueIsNotNull(parameterType, "parameterType");
            sb.append(ReflectClassUtilKt.getDesc(parameterType));
        }
        sb.append(")V");
        String string = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "sb.toString()");
        return string;
    }

    public final String b(Field field) {
        Intrinsics.checkParameterIsNotNull(field, "field");
        Class<?> type = field.getType();
        Intrinsics.checkExpressionValueIsNotNull(type, "field.type");
        return ReflectClassUtilKt.getDesc(type);
    }

    public final String c(Method method) {
        Intrinsics.checkParameterIsNotNull(method, "method");
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        for (Class<?> parameterType : method.getParameterTypes()) {
            Intrinsics.checkExpressionValueIsNotNull(parameterType, "parameterType");
            sb.append(ReflectClassUtilKt.getDesc(parameterType));
        }
        sb.append(")");
        Class<?> returnType = method.getReturnType();
        Intrinsics.checkExpressionValueIsNotNull(returnType, "method.returnType");
        sb.append(ReflectClassUtilKt.getDesc(returnType));
        String string = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "sb.toString()");
        return string;
    }
}
