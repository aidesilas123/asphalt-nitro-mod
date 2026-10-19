package kotlin.reflect.jvm;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KCallable;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.KCallableImpl;
import kotlin.reflect.jvm.internal.UtilKt;
import kotlin.reflect.jvm.internal.calls.Caller;

/* JADX INFO: compiled from: KCallablesJvm.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class KCallablesJvm {
    public static final boolean isAccessible(KCallable<?> isAccessible) {
        Caller<?> callerY;
        Intrinsics.checkParameterIsNotNull(isAccessible, "$this$isAccessible");
        if (isAccessible instanceof KMutableProperty) {
            KProperty kProperty = (KProperty) isAccessible;
            Field javaField = ReflectJvmMapping.getJavaField(kProperty);
            if (!(javaField != null ? javaField.isAccessible() : true)) {
                return false;
            }
            Method javaGetter = ReflectJvmMapping.getJavaGetter(kProperty);
            if (!(javaGetter != null ? javaGetter.isAccessible() : true)) {
                return false;
            }
            Method javaSetter = ReflectJvmMapping.getJavaSetter((KMutableProperty) isAccessible);
            if (!(javaSetter != null ? javaSetter.isAccessible() : true)) {
                return false;
            }
        } else if (isAccessible instanceof KProperty) {
            KProperty kProperty2 = (KProperty) isAccessible;
            Field javaField2 = ReflectJvmMapping.getJavaField(kProperty2);
            if (!(javaField2 != null ? javaField2.isAccessible() : true)) {
                return false;
            }
            Method javaGetter2 = ReflectJvmMapping.getJavaGetter(kProperty2);
            if (!(javaGetter2 != null ? javaGetter2.isAccessible() : true)) {
                return false;
            }
        } else if (isAccessible instanceof KProperty.b) {
            Field javaField3 = ReflectJvmMapping.getJavaField(((KProperty.b) isAccessible).a());
            if (!(javaField3 != null ? javaField3.isAccessible() : true)) {
                return false;
            }
            Method javaMethod = ReflectJvmMapping.getJavaMethod((KFunction) isAccessible);
            if (!(javaMethod != null ? javaMethod.isAccessible() : true)) {
                return false;
            }
        } else if (isAccessible instanceof KMutableProperty.a) {
            Field javaField4 = ReflectJvmMapping.getJavaField(((KMutableProperty.a) isAccessible).a());
            if (!(javaField4 != null ? javaField4.isAccessible() : true)) {
                return false;
            }
            Method javaMethod2 = ReflectJvmMapping.getJavaMethod((KFunction) isAccessible);
            if (!(javaMethod2 != null ? javaMethod2.isAccessible() : true)) {
                return false;
            }
        } else {
            if (!(isAccessible instanceof KFunction)) {
                throw new UnsupportedOperationException("Unknown callable: " + isAccessible + " (" + isAccessible.getClass() + ')');
            }
            KFunction kFunction = (KFunction) isAccessible;
            Method javaMethod3 = ReflectJvmMapping.getJavaMethod(kFunction);
            if (!(javaMethod3 != null ? javaMethod3.isAccessible() : true)) {
                return false;
            }
            KCallableImpl<?> kCallableImplAsKCallableImpl = UtilKt.asKCallableImpl(isAccessible);
            Member memberB = (kCallableImplAsKCallableImpl == null || (callerY = kCallableImplAsKCallableImpl.y()) == null) ? null : callerY.b();
            AccessibleObject accessibleObject = (AccessibleObject) (memberB instanceof AccessibleObject ? memberB : null);
            if (!(accessibleObject != null ? accessibleObject.isAccessible() : true)) {
                return false;
            }
            Constructor javaConstructor = ReflectJvmMapping.getJavaConstructor(kFunction);
            if (!(javaConstructor != null ? javaConstructor.isAccessible() : true)) {
                return false;
            }
        }
        return true;
    }

    public static final void setAccessible(KCallable<?> isAccessible, boolean z) {
        Caller<?> callerY;
        Intrinsics.checkParameterIsNotNull(isAccessible, "$this$isAccessible");
        if (isAccessible instanceof KMutableProperty) {
            KProperty kProperty = (KProperty) isAccessible;
            Field javaField = ReflectJvmMapping.getJavaField(kProperty);
            if (javaField != null) {
                javaField.setAccessible(z);
            }
            Method javaGetter = ReflectJvmMapping.getJavaGetter(kProperty);
            if (javaGetter != null) {
                javaGetter.setAccessible(z);
            }
            Method javaSetter = ReflectJvmMapping.getJavaSetter((KMutableProperty) isAccessible);
            if (javaSetter != null) {
                javaSetter.setAccessible(z);
                return;
            }
            return;
        }
        if (isAccessible instanceof KProperty) {
            KProperty kProperty2 = (KProperty) isAccessible;
            Field javaField2 = ReflectJvmMapping.getJavaField(kProperty2);
            if (javaField2 != null) {
                javaField2.setAccessible(z);
            }
            Method javaGetter2 = ReflectJvmMapping.getJavaGetter(kProperty2);
            if (javaGetter2 != null) {
                javaGetter2.setAccessible(z);
                return;
            }
            return;
        }
        if (isAccessible instanceof KProperty.b) {
            Field javaField3 = ReflectJvmMapping.getJavaField(((KProperty.b) isAccessible).a());
            if (javaField3 != null) {
                javaField3.setAccessible(z);
            }
            Method javaMethod = ReflectJvmMapping.getJavaMethod((KFunction) isAccessible);
            if (javaMethod != null) {
                javaMethod.setAccessible(z);
                return;
            }
            return;
        }
        if (isAccessible instanceof KMutableProperty.a) {
            Field javaField4 = ReflectJvmMapping.getJavaField(((KMutableProperty.a) isAccessible).a());
            if (javaField4 != null) {
                javaField4.setAccessible(z);
            }
            Method javaMethod2 = ReflectJvmMapping.getJavaMethod((KFunction) isAccessible);
            if (javaMethod2 != null) {
                javaMethod2.setAccessible(z);
                return;
            }
            return;
        }
        if (!(isAccessible instanceof KFunction)) {
            throw new UnsupportedOperationException("Unknown callable: " + isAccessible + " (" + isAccessible.getClass() + ')');
        }
        KFunction kFunction = (KFunction) isAccessible;
        Method javaMethod3 = ReflectJvmMapping.getJavaMethod(kFunction);
        if (javaMethod3 != null) {
            javaMethod3.setAccessible(z);
        }
        KCallableImpl<?> kCallableImplAsKCallableImpl = UtilKt.asKCallableImpl(isAccessible);
        Member memberB = (kCallableImplAsKCallableImpl == null || (callerY = kCallableImplAsKCallableImpl.y()) == null) ? null : callerY.b();
        AccessibleObject accessibleObject = (AccessibleObject) (memberB instanceof AccessibleObject ? memberB : null);
        if (accessibleObject != null) {
            accessibleObject.setAccessible(true);
        }
        Constructor javaConstructor = ReflectJvmMapping.getJavaConstructor(kFunction);
        if (javaConstructor != null) {
            javaConstructor.setAccessible(z);
        }
    }
}
