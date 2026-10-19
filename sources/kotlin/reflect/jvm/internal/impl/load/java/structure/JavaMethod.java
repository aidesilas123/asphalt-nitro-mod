package kotlin.reflect.jvm.internal.impl.load.java.structure;

import java.util.List;

/* JADX INFO: compiled from: javaElements.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface JavaMethod extends o, v {

    /* JADX INFO: compiled from: javaElements.kt */
    public static final class DefaultImpls {
        public static boolean getHasAnnotationParameterDefaultValue(JavaMethod javaMethod) {
            return javaMethod.n() != null;
        }
    }

    boolean G();

    List<w> g();

    t getReturnType();

    a n();
}
