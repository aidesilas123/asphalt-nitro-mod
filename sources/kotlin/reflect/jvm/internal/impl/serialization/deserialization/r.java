package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.d0;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KProperty1;
import kotlin.reflect.jvm.internal.impl.builtins.FunctionTypesKt;
import kotlin.reflect.jvm.internal.impl.types.m0;

/* JADX INFO: compiled from: MemberDeserializer.kt */
/* JADX INFO: loaded from: classes5.dex */
final /* synthetic */ class r extends d0 {
    public static final KProperty1 a = new r();

    r() {
    }

    @Override // kotlin.reflect.KProperty1
    public Object get(Object obj) {
        return Boolean.valueOf(FunctionTypesKt.isSuspendFunctionType((m0) obj));
    }

    @Override // kotlin.jvm.internal.l, kotlin.reflect.KCallable
    public String getName() {
        return "isSuspendFunctionType";
    }

    @Override // kotlin.jvm.internal.l
    public KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinPackage(FunctionTypesKt.class, "deserialization");
    }

    @Override // kotlin.jvm.internal.l
    public String getSignature() {
        return "isSuspendFunctionType(Lorg/jetbrains/kotlin/types/KotlinType;)Z";
    }
}
