package kotlin.jvm.internal;

import kotlin.reflect.KClass;
import kotlin.reflect.KDeclarationContainer;

/* JADX INFO: compiled from: MutablePropertyReference0Impl.java */
/* JADX INFO: loaded from: classes5.dex */
public class v extends u {
    public v(Class cls, String str, String str2, int i) {
        super(l.NO_RECEIVER, cls, str, str2, i);
    }

    public v(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }

    public v(KDeclarationContainer kDeclarationContainer, String str, String str2) {
        super(l.NO_RECEIVER, ((ClassBasedDeclarationContainer) kDeclarationContainer).a(), str, str2, !(kDeclarationContainer instanceof KClass) ? 1 : 0);
    }

    public Object get() {
        throw null;
    }

    public void set(Object obj) {
        throw null;
    }
}
