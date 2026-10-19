package kotlin.reflect.jvm.internal.impl.resolve.scopes.g;

import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: TransientReceiver.java */
/* JADX INFO: loaded from: classes5.dex */
public class g extends a {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public g(u uVar) {
        this(uVar, null);
        if (uVar == null) {
            b(0);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private g(u uVar, d dVar) {
        super(uVar, dVar);
        if (uVar == null) {
            b(1);
        }
    }

    private static /* synthetic */ void b(int i) {
        Object[] objArr = new Object[3];
        if (i != 2) {
            objArr[0] = "type";
        } else {
            objArr[0] = "newType";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/TransientReceiver";
        if (i != 2) {
            objArr[2] = "<init>";
        } else {
            objArr[2] = "replaceType";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public String toString() {
        return "{Transient} : " + getType();
    }
}
