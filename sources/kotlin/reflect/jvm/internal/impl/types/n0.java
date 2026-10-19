package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.TypeCastException;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: compiled from: KotlinType.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class n0 extends u {
    public n0() {
        super(null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    public List<g0> G0() {
        return L0().G0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    public f0 H0() {
        return L0().H0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    public boolean I0() {
        return L0().I0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    public final m0 K0() {
        u uVarL0 = L0();
        while (uVarL0 instanceof n0) {
            uVarL0 = ((n0) uVarL0).L0();
        }
        if (uVarL0 != null) {
            return (m0) uVarL0;
        }
        throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.types.UnwrappedType");
    }

    protected abstract u L0();

    public boolean M0() {
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public Annotations getAnnotations() {
        return L0().getAnnotations();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    public MemberScope m() {
        return L0().m();
    }

    public String toString() {
        return M0() ? L0().toString() : "<Not computed yet>";
    }
}
