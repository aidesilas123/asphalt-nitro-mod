package kotlin.reflect.jvm.internal.impl.renderer;

import kotlin.jvm.internal.n;

/* JADX INFO: compiled from: DescriptorRenderer.kt */
/* JADX INFO: loaded from: classes5.dex */
public enum AnnotationArgumentsRenderingPolicy {
    NO_ARGUMENTS(false, false, 3, null),
    UNLESS_EMPTY(true, false, 2, null),
    ALWAYS_PARENTHESIZED(true, true);


    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f9723e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f9724f;

    AnnotationArgumentsRenderingPolicy(boolean z, boolean z2) {
        this.f9723e = z;
        this.f9724f = z2;
    }

    /* synthetic */ AnnotationArgumentsRenderingPolicy(boolean z, boolean z2, int i, n nVar) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2);
    }

    public final boolean e() {
        return this.f9723e;
    }

    public final boolean f() {
        return this.f9724f;
    }
}
