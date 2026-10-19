package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.p;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.load.java.components.TypeUsage;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImplKt;
import kotlin.reflect.jvm.internal.impl.types.g0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: compiled from: JavaTypeResolver.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class JavaTypeResolverKt {
    private static final FqName a = new FqName("java.lang.Class");

    /* JADX INFO: compiled from: JavaTypeResolver.kt */
    static final class a extends Lambda implements Function0<y> {
        final /* synthetic */ i0 a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(i0 i0Var) {
            super(0);
            this.a = i0Var;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final y invoke() {
            y yVarCreateErrorType = ErrorUtils.createErrorType("Can't compute erased upper bound of type parameter `" + this.a + '`');
            Intrinsics.checkExpressionValueIsNotNull(yVarCreateErrorType, "ErrorUtils.createErrorTy… type parameter `$this`\")");
            return yVarCreateErrorType;
        }
    }

    public static final u getErasedUpperBound(i0 getErasedUpperBound, i0 i0Var, Function0<? extends u> defaultValue) {
        Intrinsics.checkParameterIsNotNull(getErasedUpperBound, "$this$getErasedUpperBound");
        Intrinsics.checkParameterIsNotNull(defaultValue, "defaultValue");
        if (getErasedUpperBound == i0Var) {
            return defaultValue.invoke();
        }
        List<u> upperBounds = getErasedUpperBound.getUpperBounds();
        Intrinsics.checkExpressionValueIsNotNull(upperBounds, "upperBounds");
        u firstUpperBound = (u) p.first((List) upperBounds);
        if (firstUpperBound.H0().q() instanceof d) {
            Intrinsics.checkExpressionValueIsNotNull(firstUpperBound, "firstUpperBound");
            return TypeUtilsKt.replaceArgumentsWithStarProjections(firstUpperBound);
        }
        if (i0Var != null) {
            getErasedUpperBound = i0Var;
        }
        f fVarC = firstUpperBound.H0().q();
        if (fVarC == null) {
            throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeParameterDescriptor");
        }
        do {
            i0 i0Var2 = (i0) fVarC;
            if (!(!Intrinsics.areEqual(i0Var2, getErasedUpperBound))) {
                return defaultValue.invoke();
            }
            List<u> upperBounds2 = i0Var2.getUpperBounds();
            Intrinsics.checkExpressionValueIsNotNull(upperBounds2, "current.upperBounds");
            u nextUpperBound = (u) p.first((List) upperBounds2);
            if (nextUpperBound.H0().q() instanceof d) {
                Intrinsics.checkExpressionValueIsNotNull(nextUpperBound, "nextUpperBound");
                return TypeUtilsKt.replaceArgumentsWithStarProjections(nextUpperBound);
            }
            fVarC = nextUpperBound.H0().q();
        } while (fVarC != null);
        throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeParameterDescriptor");
    }

    public static /* synthetic */ u getErasedUpperBound$default(i0 i0Var, i0 i0Var2, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            i0Var2 = null;
        }
        if ((i & 2) != 0) {
            function0 = new a(i0Var);
        }
        return getErasedUpperBound(i0Var, i0Var2, function0);
    }

    public static final g0 makeStarProjection(i0 typeParameter, JavaTypeAttributes attr) {
        Intrinsics.checkParameterIsNotNull(typeParameter, "typeParameter");
        Intrinsics.checkParameterIsNotNull(attr, "attr");
        return attr.c() == TypeUsage.SUPERTYPE ? new kotlin.reflect.jvm.internal.impl.types.i0(StarProjectionImplKt.starProjectionType(typeParameter)) : new StarProjectionImpl(typeParameter);
    }

    public static final JavaTypeAttributes toAttributes(TypeUsage toAttributes, boolean z, i0 i0Var) {
        Intrinsics.checkParameterIsNotNull(toAttributes, "$this$toAttributes");
        return new JavaTypeAttributes(toAttributes, null, z, i0Var, 2, null);
    }

    public static /* synthetic */ JavaTypeAttributes toAttributes$default(TypeUsage typeUsage, boolean z, i0 i0Var, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            i0Var = null;
        }
        return toAttributes(typeUsage, z, i0Var);
    }
}
