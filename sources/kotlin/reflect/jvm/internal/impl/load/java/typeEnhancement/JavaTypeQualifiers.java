package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.jvm.internal.n;

/* JADX INFO: compiled from: typeQualifiers.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class JavaTypeQualifiers {
    private final NullabilityQualifier c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final MutabilityQualifier f9249d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f9250e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f9251f;
    public static final a b = new a(null);
    private static final JavaTypeQualifiers a = new JavaTypeQualifiers(null, null, false, false, 8, null);

    /* JADX INFO: compiled from: typeQualifiers.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final JavaTypeQualifiers a() {
            return JavaTypeQualifiers.a;
        }
    }

    public JavaTypeQualifiers(NullabilityQualifier nullabilityQualifier, MutabilityQualifier mutabilityQualifier, boolean z, boolean z2) {
        this.c = nullabilityQualifier;
        this.f9249d = mutabilityQualifier;
        this.f9250e = z;
        this.f9251f = z2;
    }

    public /* synthetic */ JavaTypeQualifiers(NullabilityQualifier nullabilityQualifier, MutabilityQualifier mutabilityQualifier, boolean z, boolean z2, int i, n nVar) {
        this(nullabilityQualifier, mutabilityQualifier, z, (i & 8) != 0 ? false : z2);
    }

    public final MutabilityQualifier a() {
        return this.f9249d;
    }

    public final NullabilityQualifier b() {
        return this.c;
    }

    public final boolean c() {
        return this.f9250e;
    }

    public final boolean d() {
        return this.f9251f;
    }
}
