package kotlin.reflect.jvm.internal.impl.util;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.util.b;

/* JADX INFO: compiled from: modifierChecks.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class a {
    public final b a(o functionDescriptor) {
        Intrinsics.checkParameterIsNotNull(functionDescriptor, "functionDescriptor");
        for (c cVar : b()) {
            if (cVar.b(functionDescriptor)) {
                return cVar.a(functionDescriptor);
            }
        }
        return b.a.b;
    }

    public abstract List<c> b();
}
