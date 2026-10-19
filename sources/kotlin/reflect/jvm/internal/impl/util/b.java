package kotlin.reflect.jvm.internal.impl.util;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: compiled from: modifierChecks.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class b {
    private final boolean a;

    /* JADX INFO: compiled from: modifierChecks.kt */
    public static final class a extends b {
        public static final a b = new a();

        private a() {
            super(false, null);
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.util.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: modifierChecks.kt */
    public static final class C0554b extends b {
        private final String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0554b(String error) {
            super(false, null);
            Intrinsics.checkParameterIsNotNull(error, "error");
            this.b = error;
        }
    }

    /* JADX INFO: compiled from: modifierChecks.kt */
    public static final class c extends b {
        public static final c b = new c();

        private c() {
            super(true, null);
        }
    }

    private b(boolean z) {
        this.a = z;
    }

    public /* synthetic */ b(boolean z, n nVar) {
        this(z);
    }

    public final boolean a() {
        return this.a;
    }
}
