package kotlin.reflect.jvm.internal.impl.descriptors;

/* JADX INFO: compiled from: Modality.kt */
/* JADX INFO: loaded from: classes5.dex */
public enum Modality {
    FINAL,
    SEALED,
    OPEN,
    ABSTRACT;


    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f9094f = new a(null);

    /* JADX INFO: compiled from: Modality.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final Modality a(boolean z, boolean z2) {
            return z ? Modality.ABSTRACT : z2 ? Modality.OPEN : Modality.FINAL;
        }
    }
}
