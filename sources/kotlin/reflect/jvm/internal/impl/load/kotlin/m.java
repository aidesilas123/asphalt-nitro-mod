package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.e0;

/* JADX INFO: compiled from: KotlinJvmBinarySourceElement.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class m implements kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.c {
    private final k b;
    private final kotlin.reflect.jvm.internal.impl.serialization.deserialization.o<kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f9404d;

    public m(k binaryClass, kotlin.reflect.jvm.internal.impl.serialization.deserialization.o<kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d> oVar, boolean z) {
        Intrinsics.checkParameterIsNotNull(binaryClass, "binaryClass");
        this.b = binaryClass;
        this.c = oVar;
        this.f9404d = z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.c
    public String a() {
        return "Class '" + this.b.a().b().b() + '\'';
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d0
    public e0 b() {
        e0 e0Var = e0.a;
        Intrinsics.checkExpressionValueIsNotNull(e0Var, "SourceFile.NO_SOURCE_FILE");
        return e0Var;
    }

    public final k d() {
        return this.b;
    }

    public String toString() {
        return m.class.getSimpleName() + ": " + this.b;
    }
}
