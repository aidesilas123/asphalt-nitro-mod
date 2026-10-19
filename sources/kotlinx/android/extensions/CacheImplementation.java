package kotlinx.android.extensions;

import kotlin.jvm.internal.n;

/* JADX INFO: compiled from: CacheImplementation.kt */
/* JADX INFO: loaded from: classes5.dex */
public enum CacheImplementation {
    SPARSE_ARRAY,
    HASH_MAP,
    NO_CACHE;


    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final CacheImplementation f9980e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f9981f;

    /* JADX INFO: compiled from: CacheImplementation.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }
    }

    static {
        CacheImplementation cacheImplementation = HASH_MAP;
        f9981f = new a(null);
        f9980e = cacheImplementation;
    }
}
