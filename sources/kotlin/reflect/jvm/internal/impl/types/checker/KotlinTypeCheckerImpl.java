package kotlin.reflect.jvm.internal.impl.types.checker;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.reflect.jvm.internal.impl.types.checker.c;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: loaded from: classes5.dex */
public class KotlinTypeCheckerImpl implements c {
    private final TypeCheckingProcedure c;

    static class a extends m {
        final /* synthetic */ c.a a;

        a(c.a aVar) {
            this.a = aVar;
        }

        private static /* synthetic */ void f(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "constructor1";
            } else {
                objArr[0] = "constructor2";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeCheckerImpl$1";
            objArr[2] = "assertEqualTypeConstructors";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.m, kotlin.reflect.jvm.internal.impl.types.checker.n
        public boolean c(f0 f0Var, f0 f0Var2) {
            if (f0Var == null) {
                f(0);
            }
            if (f0Var2 == null) {
                f(1);
            }
            return f0Var.equals(f0Var2) || this.a.a(f0Var, f0Var2);
        }
    }

    protected KotlinTypeCheckerImpl(TypeCheckingProcedure typeCheckingProcedure) {
        if (typeCheckingProcedure == null) {
            e(1);
        }
        this.c = typeCheckingProcedure;
    }

    private static /* synthetic */ void e(int i) {
        Object[] objArr = new Object[3];
        if (i == 1) {
            objArr[0] = "procedure";
        } else if (i == 2) {
            objArr[0] = "subtype";
        } else if (i == 3) {
            objArr[0] = "supertype";
        } else if (i == 4) {
            objArr[0] = "a";
        } else if (i != 5) {
            objArr[0] = "equalityAxioms";
        } else {
            objArr[0] = DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B;
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeCheckerImpl";
        if (i == 1) {
            objArr[2] = "<init>";
        } else if (i == 2 || i == 3) {
            objArr[2] = "isSubtypeOf";
        } else if (i == 4 || i == 5) {
            objArr[2] = "equalTypes";
        } else {
            objArr[2] = "withAxioms";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public static c withAxioms(c.a aVar) {
        if (aVar == null) {
            e(0);
        }
        return new KotlinTypeCheckerImpl(new TypeCheckingProcedure(new a(aVar)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.c
    public boolean b(u uVar, u uVar2) {
        if (uVar == null) {
            e(4);
        }
        if (uVar2 == null) {
            e(5);
        }
        return this.c.d(uVar, uVar2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.c
    public boolean d(u uVar, u uVar2) {
        if (uVar == null) {
            e(2);
        }
        if (uVar2 == null) {
            e(3);
        }
        return this.c.h(uVar, uVar2);
    }
}
