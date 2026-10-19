package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Visibility.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class m0 {
    private final String a;
    private final boolean b;

    protected m0(String name, boolean z) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        this.a = name;
        this.b = z;
    }

    protected Integer a(m0 visibility) {
        Intrinsics.checkParameterIsNotNull(visibility, "visibility");
        return Visibilities.d(this, visibility);
    }

    public String b() {
        return this.a;
    }

    public final boolean c() {
        return this.b;
    }

    public abstract boolean d(kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d dVar, m mVar, i iVar);

    public m0 e() {
        return this;
    }

    public final String toString() {
        return b();
    }
}
