package kotlin.reflect.jvm.internal.impl.load.java.structure;

import java.util.Collection;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: compiled from: javaElements.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface c extends k {
    JavaAnnotation b(FqName fqName);

    Collection<JavaAnnotation> getAnnotations();

    boolean x();
}
