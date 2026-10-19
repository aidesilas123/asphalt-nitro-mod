package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: compiled from: typeParameterUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
final class b implements i0 {
    private final i0 a;
    private final i b;
    private final int c;

    public b(i0 originalDescriptor, i declarationDescriptor, int i) {
        Intrinsics.checkParameterIsNotNull(originalDescriptor, "originalDescriptor");
        Intrinsics.checkParameterIsNotNull(declarationDescriptor, "declarationDescriptor");
        this.a = originalDescriptor;
        this.b = declarationDescriptor;
        this.c = i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i0
    public kotlin.reflect.jvm.internal.impl.storage.h I() {
        return this.a.I();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i0
    public boolean M() {
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i
    public i0 a() {
        i0 i0VarA = this.a.a();
        Intrinsics.checkExpressionValueIsNotNull(i0VarA, "originalDescriptor.original");
        return i0VarA;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.j, kotlin.reflect.jvm.internal.impl.descriptors.i
    public i b() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public Annotations getAnnotations() {
        return this.a.getAnnotations();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.r
    public Name getName() {
        return this.a.getName();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.l
    public d0 getSource() {
        return this.a.getSource();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i0
    public List<kotlin.reflect.jvm.internal.impl.types.u> getUpperBounds() {
        return this.a.getUpperBounds();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i0
    public int h() {
        return this.c + this.a.h();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i0, kotlin.reflect.jvm.internal.impl.descriptors.f
    public kotlin.reflect.jvm.internal.impl.types.f0 i() {
        return this.a.i();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i0
    public Variance j() {
        return this.a.j();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f
    public kotlin.reflect.jvm.internal.impl.types.y n() {
        return this.a.n();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i0
    public boolean t() {
        return this.a.t();
    }

    public String toString() {
        return this.a + "[inner-copy]";
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i
    public <R, D> R w(k<R, D> kVar, D d2) {
        return (R) this.a.w(kVar, d2);
    }
}
