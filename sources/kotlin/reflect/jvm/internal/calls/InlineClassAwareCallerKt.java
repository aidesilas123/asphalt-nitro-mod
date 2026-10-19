package kotlin.reflect.jvm.internal.calls;

import java.lang.reflect.Method;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.UtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.k0;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.o;

/* JADX INFO: compiled from: InlineClassAwareCaller.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class InlineClassAwareCallerKt {
    private static final u a(CallableMemberDescriptor callableMemberDescriptor) {
        b0 b0VarK = callableMemberDescriptor.K();
        b0 b0VarH = callableMemberDescriptor.H();
        if (b0VarK != null) {
            return b0VarK.getType();
        }
        if (b0VarH == null) {
            return null;
        }
        if (callableMemberDescriptor instanceof h) {
            return b0VarH.getType();
        }
        i iVarB = callableMemberDescriptor.b();
        if (!(iVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
            iVarB = null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) iVarB;
        if (dVar != null) {
            return dVar.n();
        }
        return null;
    }

    private static final boolean b(CallableMemberDescriptor callableMemberDescriptor) {
        u uVarA = a(callableMemberDescriptor);
        return uVarA != null && InlineClassesUtilsKt.isInlineClassType(uVarA);
    }

    public static final Object coerceToExpectedReceiverType(Object obj, CallableMemberDescriptor descriptor) {
        u uVarA;
        Class<?> inlineClass;
        Method unboxMethod;
        Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
        return (((descriptor instanceof y) && InlineClassesUtilsKt.isUnderlyingPropertyOfInlineClass((k0) descriptor)) || (uVarA = a(descriptor)) == null || (inlineClass = toInlineClass(uVarA)) == null || (unboxMethod = getUnboxMethod(inlineClass, descriptor)) == null) ? obj : unboxMethod.invoke(obj, new Object[0]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <M extends java.lang.reflect.Member> kotlin.reflect.jvm.internal.calls.Caller<M> createInlineClassAwareCallerIfNeeded(kotlin.reflect.jvm.internal.calls.Caller<? extends M> r5, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor r6, boolean r7) {
        /*
            java.lang.String r0 = "$this$createInlineClassAwareCallerIfNeeded"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r5, r0)
            java.lang.String r0 = "descriptor"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r6, r0)
            boolean r0 = kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt.isGetterOfUnderlyingPropertyOfInlineClass(r6)
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L64
            java.util.List r0 = r6.g()
            java.lang.String r3 = "descriptor.valueParameters"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r3)
            boolean r3 = r0 instanceof java.util.Collection
            if (r3 == 0) goto L27
            boolean r3 = r0.isEmpty()
            if (r3 == 0) goto L27
        L25:
            r0 = 0
            goto L4c
        L27:
            java.util.Iterator r0 = r0.iterator()
        L2b:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L25
            java.lang.Object r3 = r0.next()
            kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor r3 = (kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor) r3
            java.lang.String r4 = "it"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r4)
            kotlin.reflect.jvm.internal.impl.types.u r3 = r3.getType()
            java.lang.String r4 = "it.type"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r4)
            boolean r3 = kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt.isInlineClassType(r3)
            if (r3 == 0) goto L2b
            r0 = 1
        L4c:
            if (r0 != 0) goto L64
            kotlin.reflect.jvm.internal.impl.types.u r0 = r6.getReturnType()
            if (r0 == 0) goto L5a
            boolean r0 = kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt.isInlineClassType(r0)
            if (r0 == r2) goto L64
        L5a:
            boolean r0 = r5 instanceof kotlin.reflect.jvm.internal.calls.a
            if (r0 != 0) goto L65
            boolean r0 = b(r6)
            if (r0 == 0) goto L65
        L64:
            r1 = 1
        L65:
            if (r1 == 0) goto L6d
            kotlin.reflect.jvm.internal.calls.c r0 = new kotlin.reflect.jvm.internal.calls.c
            r0.<init>(r6, r5, r7)
            r5 = r0
        L6d:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.calls.InlineClassAwareCallerKt.createInlineClassAwareCallerIfNeeded(kotlin.reflect.jvm.internal.calls.Caller, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, boolean):kotlin.reflect.jvm.internal.calls.Caller");
    }

    public static /* synthetic */ Caller createInlineClassAwareCallerIfNeeded$default(Caller caller, CallableMemberDescriptor callableMemberDescriptor, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return createInlineClassAwareCallerIfNeeded(caller, callableMemberDescriptor, z);
    }

    public static final Method getBoxMethod(Class<?> getBoxMethod, CallableMemberDescriptor descriptor) {
        Intrinsics.checkParameterIsNotNull(getBoxMethod, "$this$getBoxMethod");
        Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
        try {
            Method declaredMethod = getBoxMethod.getDeclaredMethod("box-impl", getUnboxMethod(getBoxMethod, descriptor).getReturnType());
            Intrinsics.checkExpressionValueIsNotNull(declaredMethod, "getDeclaredMethod(\"box\" …d(descriptor).returnType)");
            return declaredMethod;
        } catch (NoSuchMethodException unused) {
            throw new o("No box method found in inline class: " + getBoxMethod + " (calling " + descriptor + ')');
        }
    }

    public static final Method getUnboxMethod(Class<?> getUnboxMethod, CallableMemberDescriptor descriptor) {
        Intrinsics.checkParameterIsNotNull(getUnboxMethod, "$this$getUnboxMethod");
        Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
        try {
            Method declaredMethod = getUnboxMethod.getDeclaredMethod("unbox-impl", new Class[0]);
            Intrinsics.checkExpressionValueIsNotNull(declaredMethod, "getDeclaredMethod(\"unbox…FOR_INLINE_CLASS_MEMBERS)");
            return declaredMethod;
        } catch (NoSuchMethodException unused) {
            throw new o("No unbox method found in inline class: " + getUnboxMethod + " (calling " + descriptor + ')');
        }
    }

    public static final Class<?> toInlineClass(i iVar) {
        if (iVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) iVar;
            if (dVar.isInline()) {
                Class<?> javaClass = UtilKt.toJavaClass(dVar);
                if (javaClass != null) {
                    return javaClass;
                }
                throw new o("Class object for the class " + dVar.getName() + " cannot be found (classId=" + DescriptorUtilsKt.getClassId((f) iVar) + ')');
            }
        }
        return null;
    }

    public static final Class<?> toInlineClass(u toInlineClass) {
        Intrinsics.checkParameterIsNotNull(toInlineClass, "$this$toInlineClass");
        return toInlineClass(toInlineClass.H0().q());
    }
}
