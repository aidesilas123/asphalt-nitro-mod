package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: JavaClassesTracker.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface j {

    /* JADX INFO: compiled from: JavaClassesTracker.kt */
    public static final class a implements j {
        public static final a a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.j
        public void a(kotlin.reflect.jvm.internal.impl.load.java.descriptors.c classDescriptor) {
            Intrinsics.checkParameterIsNotNull(classDescriptor, "classDescriptor");
        }
    }

    void a(kotlin.reflect.jvm.internal.impl.load.java.descriptors.c cVar);
}
