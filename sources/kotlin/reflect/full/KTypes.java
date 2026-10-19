package kotlin.reflect.full;

import java.lang.reflect.Type;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KType;
import kotlin.reflect.jvm.internal.KTypeImpl;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: KTypes.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class KTypes {

    /* JADX INFO: compiled from: KTypes.kt */
    static final class a extends Lambda implements Function0<Type> {
        final /* synthetic */ KType a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(KType kType) {
            super(0);
            this.a = kType;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Type invoke() {
            return ((KTypeImpl) this.a).g();
        }
    }

    /* JADX INFO: compiled from: KTypes.kt */
    static final class b extends Lambda implements Function0<Type> {
        final /* synthetic */ KType a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(KType kType) {
            super(0);
            this.a = kType;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Type invoke() {
            return ((KTypeImpl) this.a).g();
        }
    }

    /* JADX INFO: compiled from: KTypes.kt */
    static final class c extends Lambda implements Function0<Type> {
        final /* synthetic */ KType a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(KType kType) {
            super(0);
            this.a = kType;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Type invoke() {
            return ((KTypeImpl) this.a).g();
        }
    }

    public static final boolean isSubtypeOf(KType isSubtypeOf, KType other) {
        Intrinsics.checkParameterIsNotNull(isSubtypeOf, "$this$isSubtypeOf");
        Intrinsics.checkParameterIsNotNull(other, "other");
        return TypeUtilsKt.isSubtypeOf(((KTypeImpl) isSubtypeOf).j(), ((KTypeImpl) other).j());
    }

    public static final boolean isSupertypeOf(KType isSupertypeOf, KType other) {
        Intrinsics.checkParameterIsNotNull(isSupertypeOf, "$this$isSupertypeOf");
        Intrinsics.checkParameterIsNotNull(other, "other");
        return isSubtypeOf(other, isSupertypeOf);
    }

    public static final KType withNullability(KType withNullability, boolean z) {
        Intrinsics.checkParameterIsNotNull(withNullability, "$this$withNullability");
        if (withNullability.n()) {
            if (z) {
                return withNullability;
            }
            u uVarMakeNotNullable = TypeUtils.makeNotNullable(((KTypeImpl) withNullability).j());
            Intrinsics.checkExpressionValueIsNotNull(uVarMakeNotNullable, "TypeUtils.makeNotNullabl…(this as KTypeImpl).type)");
            return new KTypeImpl(uVarMakeNotNullable, new a(withNullability));
        }
        u uVarJ = ((KTypeImpl) withNullability).j();
        if (FlexibleTypesKt.isFlexible(uVarJ)) {
            u uVarMakeNullableAsSpecified = TypeUtils.makeNullableAsSpecified(uVarJ, z);
            Intrinsics.checkExpressionValueIsNotNull(uVarMakeNullableAsSpecified, "TypeUtils.makeNullableAs…ied(kotlinType, nullable)");
            return new KTypeImpl(uVarMakeNullableAsSpecified, new b(withNullability));
        }
        if (!z) {
            return withNullability;
        }
        u uVarMakeNullable = TypeUtils.makeNullable(uVarJ);
        Intrinsics.checkExpressionValueIsNotNull(uVarMakeNullable, "TypeUtils.makeNullable(kotlinType)");
        return new KTypeImpl(uVarMakeNullable, new c(withNullability));
    }
}
