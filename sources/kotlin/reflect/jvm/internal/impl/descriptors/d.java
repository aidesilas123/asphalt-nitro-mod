package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: compiled from: ClassDescriptor.java */
/* JADX INFO: loaded from: classes5.dex */
public interface d extends e, g {
    c A();

    boolean C0();

    b0 E0();

    MemberScope O();

    MemberScope Q();

    boolean U();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i
    d a();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.j, kotlin.reflect.jvm.internal.impl.descriptors.i
    i b();

    Collection<c> f();

    MemberScope f0();

    d g0();

    ClassKind getKind();

    m0 getVisibility();

    boolean isInline();

    MemberScope l0(kotlin.reflect.jvm.internal.impl.types.j0 j0Var);

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f
    kotlin.reflect.jvm.internal.impl.types.y n();

    List<i0> o();

    Modality p();

    Collection<d> v();
}
