package kotlin.reflect.full;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty1;
import kotlin.reflect.KProperty2;
import kotlin.reflect.jvm.internal.KPropertyImpl;

/* JADX INFO: compiled from: KProperties.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class KProperties {
    public static final Object getExtensionDelegate(KProperty1<?, ?> getExtensionDelegate) {
        Intrinsics.checkParameterIsNotNull(getExtensionDelegate, "$this$getExtensionDelegate");
        return getExtensionDelegate.b(KPropertyImpl.f9002f.a());
    }

    public static final <D> Object getExtensionDelegate(KProperty2<D, ?, ?> getExtensionDelegate, D d2) {
        Intrinsics.checkParameterIsNotNull(getExtensionDelegate, "$this$getExtensionDelegate");
        return getExtensionDelegate.t(d2, KPropertyImpl.f9002f.a());
    }
}
