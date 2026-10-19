package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: compiled from: IntegerValueTypeConstructor.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class p implements f0 {
    private final ArrayList<kotlin.reflect.jvm.internal.impl.types.u> a;
    private final long b;
    private final ModuleDescriptor c;

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public f0 a(kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    /* JADX INFO: renamed from: c */
    public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.f q() {
        return (kotlin.reflect.jvm.internal.impl.descriptors.f) e();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public boolean d() {
        return false;
    }

    public Void e() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public List<i0> getParameters() {
        return CollectionsKt__CollectionsKt.emptyList();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public Collection<kotlin.reflect.jvm.internal.impl.types.u> h() {
        return this.a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public KotlinBuiltIns k() {
        return this.c.k();
    }

    public String toString() {
        return "IntegerValueType(" + this.b + ')';
    }
}
