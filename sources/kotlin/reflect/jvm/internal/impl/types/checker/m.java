package kotlin.reflect.jvm.internal.impl.types.checker;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.g0;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: TypeCheckerProcedureCallbacksImpl.java */
/* JADX INFO: loaded from: classes5.dex */
class m implements n {
    m() {
    }

    private static /* synthetic */ void f(int i) {
        Object[] objArr = new Object[3];
        switch (i) {
            case 1:
            case 4:
                objArr[0] = DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B;
                break;
            case 2:
            case 7:
                objArr[0] = "typeCheckingProcedure";
                break;
            case 3:
            default:
                objArr[0] = "a";
                break;
            case 5:
            case 10:
                objArr[0] = "subtype";
                break;
            case 6:
            case 11:
                objArr[0] = "supertype";
                break;
            case 8:
                objArr[0] = "type";
                break;
            case 9:
                objArr[0] = "typeProjection";
                break;
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckerProcedureCallbacksImpl";
        switch (i) {
            case 3:
            case 4:
                objArr[2] = "assertEqualTypeConstructors";
                break;
            case 5:
            case 6:
            case 7:
                objArr[2] = "assertSubtype";
                break;
            case 8:
            case 9:
                objArr[2] = "capture";
                break;
            case 10:
            case 11:
                objArr[2] = "noCorrespondingSupertype";
                break;
            default:
                objArr[2] = "assertEqualTypes";
                break;
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.n
    public boolean a(u uVar, u uVar2, TypeCheckingProcedure typeCheckingProcedure) {
        if (uVar == null) {
            f(5);
        }
        if (uVar2 == null) {
            f(6);
        }
        if (typeCheckingProcedure == null) {
            f(7);
        }
        return typeCheckingProcedure.h(uVar, uVar2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.n
    public boolean b(u uVar, g0 g0Var) {
        if (uVar == null) {
            f(8);
        }
        if (g0Var != null) {
            return false;
        }
        f(9);
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.n
    public boolean c(f0 f0Var, f0 f0Var2) {
        if (f0Var == null) {
            f(3);
        }
        if (f0Var2 == null) {
            f(4);
        }
        return f0Var.equals(f0Var2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.n
    public boolean d(u uVar, u uVar2) {
        if (uVar == null) {
            f(10);
        }
        if (uVar2 != null) {
            return false;
        }
        f(11);
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.n
    public boolean e(u uVar, u uVar2, TypeCheckingProcedure typeCheckingProcedure) {
        if (uVar == null) {
            f(0);
        }
        if (uVar2 == null) {
            f(1);
        }
        if (typeCheckingProcedure == null) {
            f(2);
        }
        return typeCheckingProcedure.d(uVar, uVar2);
    }
}
