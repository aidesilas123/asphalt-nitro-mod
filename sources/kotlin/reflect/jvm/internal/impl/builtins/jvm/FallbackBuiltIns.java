package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import kotlin.jvm.internal.n;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.c;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;

/* JADX INFO: compiled from: JvmBuiltInsSettings.kt */
/* JADX INFO: loaded from: classes5.dex */
final class FallbackBuiltIns extends KotlinBuiltIns {
    public static final a p = new a(null);
    private static final KotlinBuiltIns o = new FallbackBuiltIns();

    /* JADX INFO: compiled from: JvmBuiltInsSettings.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final KotlinBuiltIns a() {
            return FallbackBuiltIns.o;
        }
    }

    private FallbackBuiltIns() {
        super(new LockBasedStorageManager("FallbackBuiltIns"));
        g(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns
    /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] */
    public c.a M() {
        return c.a.a;
    }
}
