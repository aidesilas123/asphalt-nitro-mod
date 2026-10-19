package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: compiled from: typeEnhancement.kt */
/* JADX INFO: loaded from: classes5.dex */
final class g extends f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final y f9373d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(y type, int i, boolean z) {
        super(type, i, z);
        Intrinsics.checkParameterIsNotNull(type, "type");
        this.f9373d = type;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.f
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public y b() {
        return this.f9373d;
    }
}
