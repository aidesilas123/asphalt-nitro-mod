package kotlin.reflect.jvm.internal.impl.builtins;

import kotlin.jvm.internal.n;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;

/* JADX INFO: compiled from: DefaultBuiltIns.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class DefaultBuiltIns extends KotlinBuiltIns {
    private static final DefaultBuiltIns o;
    public static final a p;

    /* JADX INFO: compiled from: DefaultBuiltIns.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }
    }

    static {
        n nVar = null;
        p = new a(nVar);
        o = new DefaultBuiltIns(false, 1, nVar);
    }

    public DefaultBuiltIns() {
        this(false, 1, null);
    }

    public DefaultBuiltIns(boolean z) {
        super(new LockBasedStorageManager("DefaultBuiltIns"));
        if (z) {
            g(false);
        }
    }

    public /* synthetic */ DefaultBuiltIns(boolean z, int i, n nVar) {
        this((i & 1) != 0 ? true : z);
    }

    public static final DefaultBuiltIns getInstance() {
        return o;
    }
}
