package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;

/* JADX INFO: compiled from: DisjointKeysUnionTypeSubstitution.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class DisjointKeysUnionTypeSubstitution extends j0 {
    public static final a c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j0 f9827d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final j0 f9828e;

    /* JADX INFO: compiled from: DisjointKeysUnionTypeSubstitution.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final j0 a(j0 first, j0 second) {
            Intrinsics.checkParameterIsNotNull(first, "first");
            Intrinsics.checkParameterIsNotNull(second, "second");
            return first.f() ? second : second.f() ? first : new DisjointKeysUnionTypeSubstitution(first, second, null);
        }
    }

    private DisjointKeysUnionTypeSubstitution(j0 j0Var, j0 j0Var2) {
        this.f9827d = j0Var;
        this.f9828e = j0Var2;
    }

    public /* synthetic */ DisjointKeysUnionTypeSubstitution(j0 j0Var, j0 j0Var2, kotlin.jvm.internal.n nVar) {
        this(j0Var, j0Var2);
    }

    public static final j0 create(j0 j0Var, j0 j0Var2) {
        return c.a(j0Var, j0Var2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.j0
    public boolean a() {
        return this.f9827d.a() || this.f9828e.a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.j0
    public boolean b() {
        return this.f9827d.b() || this.f9828e.b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.j0
    public Annotations d(Annotations annotations) {
        Intrinsics.checkParameterIsNotNull(annotations, "annotations");
        return this.f9828e.d(this.f9827d.d(annotations));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.j0
    public g0 e(u key) {
        Intrinsics.checkParameterIsNotNull(key, "key");
        g0 g0VarE = this.f9827d.e(key);
        return g0VarE != null ? g0VarE : this.f9828e.e(key);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.j0
    public boolean f() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.j0
    public u g(u topLevelType, Variance position) {
        Intrinsics.checkParameterIsNotNull(topLevelType, "topLevelType");
        Intrinsics.checkParameterIsNotNull(position, "position");
        return this.f9828e.g(this.f9827d.g(topLevelType, position), position);
    }
}
