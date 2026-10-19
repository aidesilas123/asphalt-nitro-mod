package kotlin.jvm.internal;

import kotlin.reflect.KClass;
import kotlin.reflect.KDeclarationContainer;

/* JADX INFO: compiled from: FunctionReferenceImpl.java */
/* JADX INFO: loaded from: classes5.dex */
public class r extends q {
    public r(int i, Class cls, String str, String str2, int i2) {
        super(i, l.NO_RECEIVER, cls, str, str2, i2);
    }

    public r(int i, Object obj, Class cls, String str, String str2, int i2) {
        super(i, obj, cls, str, str2, i2);
    }

    public r(int i, KDeclarationContainer kDeclarationContainer, String str, String str2) {
        super(i, l.NO_RECEIVER, ((ClassBasedDeclarationContainer) kDeclarationContainer).a(), str, str2, !(kDeclarationContainer instanceof KClass) ? 1 : 0);
    }
}
