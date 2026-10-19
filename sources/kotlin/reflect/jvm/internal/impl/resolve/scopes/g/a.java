package kotlin.reflect.jvm.internal.impl.resolve.scopes.g;

import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: AbstractReceiverValue.java */
/* JADX INFO: loaded from: classes5.dex */
public abstract class a implements d {
    protected final u a;
    private final d b;

    public a(u uVar, d dVar) {
        if (uVar == null) {
            b(0);
        }
        this.a = uVar;
        this.b = dVar == null ? this : dVar;
    }

    private static /* synthetic */ void b(int i) {
        String str = (i == 1 || i == 2) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 1 || i == 2) ? 2 : 3];
        if (i == 1 || i == 2) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/AbstractReceiverValue";
        } else {
            objArr[0] = "receiverType";
        }
        if (i == 1) {
            objArr[1] = "getType";
        } else if (i != 2) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/AbstractReceiverValue";
        } else {
            objArr[1] = "getOriginal";
        }
        if (i != 1 && i != 2) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (i != 1 && i != 2) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d
    public u getType() {
        u uVar = this.a;
        if (uVar == null) {
            b(1);
        }
        return uVar;
    }
}
