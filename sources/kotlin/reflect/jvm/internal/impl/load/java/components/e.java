package kotlin.reflect.jvm.internal.impl.load.java.components;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.load.java.structure.m;

/* JADX INFO: compiled from: JavaPropertyInitializerEvaluator.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface e {

    /* JADX INFO: compiled from: JavaPropertyInitializerEvaluator.kt */
    public static final class a implements e {
        public static final a a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.components.e
        public kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> a(m field, y descriptor) {
            Intrinsics.checkParameterIsNotNull(field, "field");
            Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
            return null;
        }
    }

    kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> a(m mVar, y yVar);
}
