package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;

/* JADX INFO: compiled from: FunctionDescriptor.java */
/* JADX INFO: loaded from: classes5.dex */
public interface o extends CallableMemberDescriptor {

    /* JADX INFO: compiled from: FunctionDescriptor.java */
    public interface a<D extends o> {
        a<D> a();

        a<D> b(List<ValueParameterDescriptor> list);

        D build();

        a<D> c(m0 m0Var);

        a<D> d(b0 b0Var);

        a<D> e();

        a<D> f(b0 b0Var);

        a<D> g(kotlin.reflect.jvm.internal.impl.types.j0 j0Var);

        a<D> h();

        a<D> i(Name name);

        a<D> j(Modality modality);

        a<D> k();

        a<D> l(kotlin.reflect.jvm.internal.impl.types.u uVar);

        a<D> m(CallableMemberDescriptor callableMemberDescriptor);

        a<D> n(boolean z);

        a<D> o(List<i0> list);

        a<D> p(i iVar);

        a<D> q(CallableMemberDescriptor.Kind kind);

        a<D> r(Annotations annotations);

        a<D> s();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.i
    o a();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.j, kotlin.reflect.jvm.internal.impl.descriptors.i
    i b();

    o c(TypeSubstitutor typeSubstitutor);

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.a
    Collection<? extends o> d();

    boolean isInfix();

    boolean isInline();

    boolean isOperator();

    boolean isSuspend();

    o n0();

    a<? extends o> r();

    boolean w0();

    boolean y0();

    boolean z();
}
