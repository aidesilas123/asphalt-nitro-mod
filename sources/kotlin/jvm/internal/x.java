package kotlin.jvm.internal;

import kotlin.reflect.KClass;
import kotlin.reflect.KDeclarationContainer;

/* JADX INFO: compiled from: MutablePropertyReference1Impl.java */
/* JADX INFO: loaded from: classes5.dex */
public class x extends w {
    public x(Class cls, String str, String str2, int i) {
        super(l.NO_RECEIVER, cls, str, str2, i);
    }

    public x(KDeclarationContainer kDeclarationContainer, String str, String str2) {
        super(l.NO_RECEIVER, ((ClassBasedDeclarationContainer) kDeclarationContainer).a(), str, str2, !(kDeclarationContainer instanceof KClass) ? 1 : 0);
    }

    @Override // kotlin.reflect.KProperty1
    public Object get(Object obj) {
        return getGetter().call(obj);
    }
}
