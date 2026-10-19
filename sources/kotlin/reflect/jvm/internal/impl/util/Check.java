package kotlin.reflect.jvm.internal.impl.util;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.o;

/* JADX INFO: compiled from: modifierChecks.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface Check {

    /* JADX INFO: compiled from: modifierChecks.kt */
    public static final class DefaultImpls {
        public static String invoke(Check check, o functionDescriptor) {
            Intrinsics.checkParameterIsNotNull(functionDescriptor, "functionDescriptor");
            if (check.b(functionDescriptor)) {
                return null;
            }
            return check.getDescription();
        }
    }

    String a(o oVar);

    boolean b(o oVar);

    String getDescription();
}
