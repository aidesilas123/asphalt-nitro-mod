package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: compiled from: KotlinType.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class p extends m0 implements c0, kotlin.reflect.jvm.internal.impl.types.model.e {
    private final y b;
    private final y c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(y lowerBound, y upperBound) {
        super(null);
        Intrinsics.checkParameterIsNotNull(lowerBound, "lowerBound");
        Intrinsics.checkParameterIsNotNull(upperBound, "upperBound");
        this.b = lowerBound;
        this.c = upperBound;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.c0
    public u B0() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    public List<g0> G0() {
        return O0().G0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    public f0 H0() {
        return O0().H0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    public boolean I0() {
        return O0().I0();
    }

    public abstract y O0();

    public final y P0() {
        return this.b;
    }

    public final y Q0() {
        return this.c;
    }

    public abstract String R0(DescriptorRenderer descriptorRenderer, DescriptorRendererOptions descriptorRendererOptions);

    @Override // kotlin.reflect.jvm.internal.impl.types.c0
    public u e0() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public Annotations getAnnotations() {
        return O0().getAnnotations();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.c0
    public boolean k0(u type) {
        Intrinsics.checkParameterIsNotNull(type, "type");
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    public MemberScope m() {
        return O0().m();
    }

    public String toString() {
        return DescriptorRenderer.i.u(this);
    }
}
