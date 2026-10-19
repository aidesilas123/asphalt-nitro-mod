package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.Modifier;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;

/* JADX INFO: compiled from: ReflectJavaModifierListOwner.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface ReflectJavaModifierListOwner extends kotlin.reflect.jvm.internal.impl.load.java.structure.p {

    /* JADX INFO: compiled from: ReflectJavaModifierListOwner.kt */
    public static final class DefaultImpls {
        public static m0 getVisibility(ReflectJavaModifierListOwner reflectJavaModifierListOwner) {
            int modifiers = reflectJavaModifierListOwner.getModifiers();
            if (Modifier.isPublic(modifiers)) {
                m0 m0Var = Visibilities.f9100e;
                Intrinsics.checkExpressionValueIsNotNull(m0Var, "Visibilities.PUBLIC");
                return m0Var;
            }
            if (Modifier.isPrivate(modifiers)) {
                m0 m0Var2 = Visibilities.a;
                Intrinsics.checkExpressionValueIsNotNull(m0Var2, "Visibilities.PRIVATE");
                return m0Var2;
            }
            if (Modifier.isProtected(modifiers)) {
                m0 m0Var3 = Modifier.isStatic(modifiers) ? kotlin.reflect.jvm.internal.impl.load.java.m.b : kotlin.reflect.jvm.internal.impl.load.java.m.c;
                Intrinsics.checkExpressionValueIsNotNull(m0Var3, "if (Modifier.isStatic(mo…ies.PROTECTED_AND_PACKAGE");
                return m0Var3;
            }
            m0 m0Var4 = kotlin.reflect.jvm.internal.impl.load.java.m.a;
            Intrinsics.checkExpressionValueIsNotNull(m0Var4, "JavaVisibilities.PACKAGE_VISIBILITY");
            return m0Var4;
        }

        public static boolean isAbstract(ReflectJavaModifierListOwner reflectJavaModifierListOwner) {
            return Modifier.isAbstract(reflectJavaModifierListOwner.getModifiers());
        }

        public static boolean isFinal(ReflectJavaModifierListOwner reflectJavaModifierListOwner) {
            return Modifier.isFinal(reflectJavaModifierListOwner.getModifiers());
        }

        public static boolean isStatic(ReflectJavaModifierListOwner reflectJavaModifierListOwner) {
            return Modifier.isStatic(reflectJavaModifierListOwner.getModifiers());
        }
    }

    int getModifiers();
}
