package kotlin.reflect.jvm.internal.impl.types;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;

/* JADX INFO: compiled from: TypeConstructor.java */
/* JADX INFO: loaded from: classes5.dex */
public interface f0 extends kotlin.reflect.jvm.internal.impl.types.model.j {
    f0 a(kotlin.reflect.jvm.internal.impl.types.checker.d dVar);

    kotlin.reflect.jvm.internal.impl.descriptors.f c();

    boolean d();

    List<kotlin.reflect.jvm.internal.impl.descriptors.i0> getParameters();

    Collection<u> h();

    KotlinBuiltIns k();
}
