package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext;

/* JADX INFO: compiled from: AbstractStrictEqualityTypeChecker.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class d {
    public static final d a = new d();

    private d() {
    }

    private final boolean a(TypeSystemContext typeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.g gVar, kotlin.reflect.jvm.internal.impl.types.model.g gVar2) {
        if (typeSystemContext.d(gVar) == typeSystemContext.d(gVar2) && typeSystemContext.n(gVar) == typeSystemContext.n(gVar2)) {
            if ((typeSystemContext.Y(gVar) == null) == (typeSystemContext.Y(gVar2) == null) && typeSystemContext.A(typeSystemContext.b(gVar), typeSystemContext.b(gVar2))) {
                if (typeSystemContext.x(gVar, gVar2)) {
                    return true;
                }
                int iD = typeSystemContext.d(gVar);
                for (int i = 0; i < iD; i++) {
                    kotlin.reflect.jvm.internal.impl.types.model.i iVarR = typeSystemContext.r(gVar, i);
                    kotlin.reflect.jvm.internal.impl.types.model.i iVarR2 = typeSystemContext.r(gVar2, i);
                    if (typeSystemContext.i(iVarR) != typeSystemContext.i(iVarR2)) {
                        return false;
                    }
                    if (!typeSystemContext.i(iVarR) && (typeSystemContext.U(iVarR) != typeSystemContext.U(iVarR2) || !c(typeSystemContext, typeSystemContext.a0(iVarR), typeSystemContext.a0(iVarR2)))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    private final boolean c(TypeSystemContext typeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.f fVar, kotlin.reflect.jvm.internal.impl.types.model.f fVar2) {
        if (fVar == fVar2) {
            return true;
        }
        kotlin.reflect.jvm.internal.impl.types.model.g gVarA = typeSystemContext.a(fVar);
        kotlin.reflect.jvm.internal.impl.types.model.g gVarA2 = typeSystemContext.a(fVar2);
        if (gVarA != null && gVarA2 != null) {
            return a(typeSystemContext, gVarA, gVarA2);
        }
        kotlin.reflect.jvm.internal.impl.types.model.e eVarK = typeSystemContext.K(fVar);
        kotlin.reflect.jvm.internal.impl.types.model.e eVarK2 = typeSystemContext.K(fVar2);
        return eVarK != null && eVarK2 != null && a(typeSystemContext, typeSystemContext.y(eVarK), typeSystemContext.y(eVarK2)) && a(typeSystemContext, typeSystemContext.R(eVarK), typeSystemContext.R(eVarK2));
    }

    public final boolean b(TypeSystemContext context, kotlin.reflect.jvm.internal.impl.types.model.f a2, kotlin.reflect.jvm.internal.impl.types.model.f b) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(a2, "a");
        Intrinsics.checkParameterIsNotNull(b, "b");
        return c(context, a2, b);
    }
}
