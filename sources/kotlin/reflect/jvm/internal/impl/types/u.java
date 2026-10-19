package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: compiled from: KotlinType.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class u implements kotlin.reflect.jvm.internal.impl.descriptors.annotations.a, kotlin.reflect.jvm.internal.impl.types.model.f {
    private int a;

    private u() {
    }

    public /* synthetic */ u(kotlin.jvm.internal.n nVar) {
        this();
    }

    private final int F0() {
        return KotlinTypeKt.isError(this) ? super.hashCode() : (((H0().hashCode() * 31) + G0().hashCode()) * 31) + (I0() ? 1 : 0);
    }

    public abstract List<g0> G0();

    public abstract f0 H0();

    public abstract boolean I0();

    public abstract u J0(kotlin.reflect.jvm.internal.impl.types.checker.d dVar);

    public abstract m0 K0();

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return I0() == uVar.I0() && kotlin.reflect.jvm.internal.impl.types.checker.k.a.a(K0(), uVar.K0());
    }

    public final int hashCode() {
        int i = this.a;
        if (i != 0) {
            return i;
        }
        int iF0 = F0();
        this.a = iF0;
        return iF0;
    }

    public abstract MemberScope m();
}
