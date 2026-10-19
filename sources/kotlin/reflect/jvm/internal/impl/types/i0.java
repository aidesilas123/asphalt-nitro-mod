package kotlin.reflect.jvm.internal.impl.types;

/* JADX INFO: compiled from: TypeProjectionImpl.java */
/* JADX INFO: loaded from: classes5.dex */
public class i0 extends h0 {
    private final Variance a;
    private final u b;

    public i0(Variance variance, u uVar) {
        if (variance == null) {
            d(0);
        }
        if (uVar == null) {
            d(1);
        }
        this.a = variance;
        this.b = uVar;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public i0(u uVar) {
        this(Variance.INVARIANT, uVar);
        if (uVar == null) {
            d(2);
        }
    }

    private static /* synthetic */ void d(int i) {
        String str = (i == 3 || i == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 3 || i == 4) ? 2 : 3];
        if (i == 1 || i == 2) {
            objArr[0] = "type";
        } else if (i == 3 || i == 4) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl";
        } else if (i != 5) {
            objArr[0] = "projection";
        } else {
            objArr[0] = "kotlinTypeRefiner";
        }
        if (i == 3) {
            objArr[1] = "getProjectionKind";
        } else if (i != 4) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl";
        } else {
            objArr[1] = "getType";
        }
        if (i != 3 && i != 4) {
            if (i != 5) {
                objArr[2] = "<init>";
            } else {
                objArr[2] = "refine";
            }
        }
        String str2 = String.format(str, objArr);
        if (i != 3 && i != 4) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.g0
    public g0 a(kotlin.reflect.jvm.internal.impl.types.checker.d dVar) {
        if (dVar == null) {
            d(5);
        }
        return new i0(this.a, dVar.g(this.b));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.g0
    public boolean b() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.g0
    public Variance c() {
        Variance variance = this.a;
        if (variance == null) {
            d(3);
        }
        return variance;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.g0
    public u getType() {
        u uVar = this.b;
        if (uVar == null) {
            d(4);
        }
        return uVar;
    }
}
