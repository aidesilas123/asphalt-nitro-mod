package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SupertypeLoopChecker.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface g0 {

    /* JADX INFO: compiled from: SupertypeLoopChecker.kt */
    public static final class a implements g0 {
        public static final a a = new a();

        private a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.reflect.jvm.internal.impl.descriptors.g0
        public Collection<kotlin.reflect.jvm.internal.impl.types.u> a(kotlin.reflect.jvm.internal.impl.types.f0 currentTypeConstructor, Collection<? extends kotlin.reflect.jvm.internal.impl.types.u> superTypes, Function1<? super kotlin.reflect.jvm.internal.impl.types.f0, ? extends Iterable<? extends kotlin.reflect.jvm.internal.impl.types.u>> neighbors, Function1<? super kotlin.reflect.jvm.internal.impl.types.u, kotlin.v> reportLoop) {
            Intrinsics.checkParameterIsNotNull(currentTypeConstructor, "currentTypeConstructor");
            Intrinsics.checkParameterIsNotNull(superTypes, "superTypes");
            Intrinsics.checkParameterIsNotNull(neighbors, "neighbors");
            Intrinsics.checkParameterIsNotNull(reportLoop, "reportLoop");
            return superTypes;
        }
    }

    Collection<kotlin.reflect.jvm.internal.impl.types.u> a(kotlin.reflect.jvm.internal.impl.types.f0 f0Var, Collection<? extends kotlin.reflect.jvm.internal.impl.types.u> collection, Function1<? super kotlin.reflect.jvm.internal.impl.types.f0, ? extends Iterable<? extends kotlin.reflect.jvm.internal.impl.types.u>> function1, Function1<? super kotlin.reflect.jvm.internal.impl.types.u, kotlin.v> function12);
}
