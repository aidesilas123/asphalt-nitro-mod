package kotlin.reflect.jvm.internal.impl.descriptors;

/* JADX INFO: compiled from: SourceElement.java */
/* JADX INFO: loaded from: classes5.dex */
public interface d0 {
    public static final d0 a = new a();

    /* JADX INFO: compiled from: SourceElement.java */
    static class a implements d0 {
        a() {
        }

        private static /* synthetic */ void d(int i) {
            throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", "kotlin/reflect/jvm/internal/impl/descriptors/SourceElement$1", "getContainingFile"));
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d0
        public e0 b() {
            e0 e0Var = e0.a;
            if (e0Var == null) {
                d(0);
            }
            return e0Var;
        }

        public String toString() {
            return "NO_SOURCE";
        }
    }

    e0 b();
}
