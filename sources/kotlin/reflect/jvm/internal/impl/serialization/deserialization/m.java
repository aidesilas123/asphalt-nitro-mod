package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;

/* JADX INFO: compiled from: ErrorReporter.java */
/* JADX INFO: loaded from: classes5.dex */
public interface m {
    public static final m a = new a();

    /* JADX INFO: compiled from: ErrorReporter.java */
    static class a implements m {
        a() {
        }

        private static /* synthetic */ void c(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "descriptor";
            } else {
                objArr[0] = "unresolvedSuperClasses";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter$1";
            if (i != 2) {
                objArr[2] = "reportIncompleteHierarchy";
            } else {
                objArr[2] = "reportCannotInferVisibility";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.m
        public void a(CallableMemberDescriptor callableMemberDescriptor) {
            if (callableMemberDescriptor == null) {
                c(2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.m
        public void b(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, List<String> list) {
            if (dVar == null) {
                c(0);
            }
            if (list == null) {
                c(1);
            }
        }
    }

    void a(CallableMemberDescriptor callableMemberDescriptor);

    void b(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, List<String> list);
}
