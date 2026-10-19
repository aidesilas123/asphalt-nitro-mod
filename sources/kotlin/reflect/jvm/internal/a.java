package kotlin.reflect.jvm.internal;

import java.util.Collection;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KCallable;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: compiled from: EmptyContainerForLocal.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class a extends KDeclarationContainerImpl {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f9014d = new a();

    private a() {
    }

    private final Void L() {
        throw new o("Introspecting local functions, lambdas, anonymous functions and local variables is not yet fully supported in Kotlin reflection");
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.o> A(Name name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        L();
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public y B(int i) {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public Collection<y> E(Name name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        L();
        throw null;
    }

    @Override // kotlin.jvm.internal.ClassBasedDeclarationContainer
    public Class<?> a() {
        L();
        throw null;
    }

    @Override // kotlin.reflect.KDeclarationContainer
    public Collection<KCallable<?>> i() {
        L();
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.h> z() {
        L();
        throw null;
    }
}
