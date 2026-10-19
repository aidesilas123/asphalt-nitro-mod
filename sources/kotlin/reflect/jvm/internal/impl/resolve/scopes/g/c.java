package kotlin.reflect.jvm.internal.impl.resolve.scopes.g;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: compiled from: ImplicitClassReceiver.kt */
/* JADX INFO: loaded from: classes5.dex */
public class c implements d, f {
    private final c a;
    private final kotlin.reflect.jvm.internal.impl.descriptors.d b;
    private final kotlin.reflect.jvm.internal.impl.descriptors.d c;

    public c(kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor, c cVar) {
        Intrinsics.checkParameterIsNotNull(classDescriptor, "classDescriptor");
        this.c = classDescriptor;
        this.a = cVar == null ? this : cVar;
        this.b = classDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public y getType() {
        y yVarN = this.c.n();
        Intrinsics.checkExpressionValueIsNotNull(yVarN, "classDescriptor.defaultType");
        return yVarN;
    }

    public boolean equals(Object obj) {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = this.c;
        if (!(obj instanceof c)) {
            obj = null;
        }
        c cVar = (c) obj;
        return Intrinsics.areEqual(dVar, cVar != null ? cVar.c : null);
    }

    public int hashCode() {
        return this.c.hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.g.f
    public final kotlin.reflect.jvm.internal.impl.descriptors.d q() {
        return this.c;
    }

    public String toString() {
        return "Class{" + getType() + '}';
    }
}
