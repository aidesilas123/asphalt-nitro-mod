package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.TypeCastException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.x;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.load.kotlin.SignatureBuildingComponents;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.checker.TypeCheckingProcedure;

/* JADX INFO: compiled from: specialBuiltinMembers.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class SpecialBuiltinMembers {

    /* JADX INFO: compiled from: specialBuiltinMembers.kt */
    static final class a extends Lambda implements Function1<CallableMemberDescriptor, Boolean> {
        public static final a a = new a();

        a() {
            super(1);
        }

        public final boolean a(CallableMemberDescriptor it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return kotlin.reflect.jvm.internal.impl.load.java.a.f9194e.d(DescriptorUtilsKt.getPropertyIfAccessor(it));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(CallableMemberDescriptor callableMemberDescriptor) {
            return Boolean.valueOf(a(callableMemberDescriptor));
        }
    }

    /* JADX INFO: compiled from: specialBuiltinMembers.kt */
    static final class b extends Lambda implements Function1<CallableMemberDescriptor, Boolean> {
        public static final b a = new b();

        b() {
            super(1);
        }

        public final boolean a(CallableMemberDescriptor it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return BuiltinMethodsWithDifferentJvmName.f9178f.e((c0) it);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(CallableMemberDescriptor callableMemberDescriptor) {
            return Boolean.valueOf(a(callableMemberDescriptor));
        }
    }

    /* JADX INFO: compiled from: specialBuiltinMembers.kt */
    static final class c extends Lambda implements Function1<CallableMemberDescriptor, Boolean> {
        public static final c a = new c();

        c() {
            super(1);
        }

        public final boolean a(CallableMemberDescriptor it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return KotlinBuiltIns.isBuiltIn(it) && BuiltinMethodsWithSpecialGenericSignature.getSpecialSignatureInfo(it) != null;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(CallableMemberDescriptor callableMemberDescriptor) {
            return Boolean.valueOf(a(callableMemberDescriptor));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FqName a(FqName fqName, String str) {
        FqName fqNameC = fqName.c(Name.identifier(str));
        Intrinsics.checkExpressionValueIsNotNull(fqNameC, "child(Name.identifier(name))");
        return fqNameC;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FqName b(FqNameUnsafe fqNameUnsafe, String str) {
        FqName fqNameL = fqNameUnsafe.c(Name.identifier(str)).l();
        Intrinsics.checkExpressionValueIsNotNull(fqNameL, "child(Name.identifier(name)).toSafe()");
        return fqNameL;
    }

    private static final CallableMemberDescriptor c(CallableMemberDescriptor callableMemberDescriptor) {
        if (KotlinBuiltIns.isBuiltIn(callableMemberDescriptor)) {
            return getOverriddenBuiltinWithDifferentJvmName(callableMemberDescriptor);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final o d(String str, String str2, String str3, String str4) {
        Name nameIdentifier = Name.identifier(str2);
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier, "Name.identifier(name)");
        return new o(nameIdentifier, SignatureBuildingComponents.a.j(str, str2 + '(' + str3 + ')' + str4));
    }

    public static final boolean doesOverrideBuiltinWithDifferentJvmName(CallableMemberDescriptor doesOverrideBuiltinWithDifferentJvmName) {
        Intrinsics.checkParameterIsNotNull(doesOverrideBuiltinWithDifferentJvmName, "$this$doesOverrideBuiltinWithDifferentJvmName");
        return getOverriddenBuiltinWithDifferentJvmName(doesOverrideBuiltinWithDifferentJvmName) != null;
    }

    public static final String getJvmMethodNameIfSpecial(CallableMemberDescriptor callableMemberDescriptor) {
        CallableMemberDescriptor propertyIfAccessor;
        Name nameB;
        Intrinsics.checkParameterIsNotNull(callableMemberDescriptor, "callableMemberDescriptor");
        CallableMemberDescriptor callableMemberDescriptorC = c(callableMemberDescriptor);
        if (callableMemberDescriptorC == null || (propertyIfAccessor = DescriptorUtilsKt.getPropertyIfAccessor(callableMemberDescriptorC)) == null) {
            return null;
        }
        if (propertyIfAccessor instanceof y) {
            return kotlin.reflect.jvm.internal.impl.load.java.a.f9194e.a(propertyIfAccessor);
        }
        if (!(propertyIfAccessor instanceof c0) || (nameB = BuiltinMethodsWithDifferentJvmName.f9178f.b((c0) propertyIfAccessor)) == null) {
            return null;
        }
        return nameB.e();
    }

    public static final <T extends CallableMemberDescriptor> T getOverriddenBuiltinWithDifferentJvmName(T getOverriddenBuiltinWithDifferentJvmName) {
        Intrinsics.checkParameterIsNotNull(getOverriddenBuiltinWithDifferentJvmName, "$this$getOverriddenBuiltinWithDifferentJvmName");
        if (!BuiltinMethodsWithDifferentJvmName.f9178f.c().contains(getOverriddenBuiltinWithDifferentJvmName.getName()) && !kotlin.reflect.jvm.internal.impl.load.java.a.f9194e.c().contains(DescriptorUtilsKt.getPropertyIfAccessor(getOverriddenBuiltinWithDifferentJvmName).getName())) {
            return null;
        }
        if ((getOverriddenBuiltinWithDifferentJvmName instanceof y) || (getOverriddenBuiltinWithDifferentJvmName instanceof x)) {
            return (T) DescriptorUtilsKt.firstOverridden$default(getOverriddenBuiltinWithDifferentJvmName, false, a.a, 1, null);
        }
        if (getOverriddenBuiltinWithDifferentJvmName instanceof c0) {
            return (T) DescriptorUtilsKt.firstOverridden$default(getOverriddenBuiltinWithDifferentJvmName, false, b.a, 1, null);
        }
        return null;
    }

    public static final <T extends CallableMemberDescriptor> T getOverriddenSpecialBuiltin(T getOverriddenSpecialBuiltin) {
        Intrinsics.checkParameterIsNotNull(getOverriddenSpecialBuiltin, "$this$getOverriddenSpecialBuiltin");
        T t = (T) getOverriddenBuiltinWithDifferentJvmName(getOverriddenSpecialBuiltin);
        if (t != null) {
            return t;
        }
        BuiltinMethodsWithSpecialGenericSignature builtinMethodsWithSpecialGenericSignature = BuiltinMethodsWithSpecialGenericSignature.h;
        Name name = getOverriddenSpecialBuiltin.getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "name");
        if (builtinMethodsWithSpecialGenericSignature.b(name)) {
            return (T) DescriptorUtilsKt.firstOverridden$default(getOverriddenSpecialBuiltin, false, c.a, 1, null);
        }
        return null;
    }

    public static final boolean hasRealKotlinSuperClassWithOverrideOf(kotlin.reflect.jvm.internal.impl.descriptors.d hasRealKotlinSuperClassWithOverrideOf, kotlin.reflect.jvm.internal.impl.descriptors.a specialCallableDescriptor) {
        Intrinsics.checkParameterIsNotNull(hasRealKotlinSuperClassWithOverrideOf, "$this$hasRealKotlinSuperClassWithOverrideOf");
        Intrinsics.checkParameterIsNotNull(specialCallableDescriptor, "specialCallableDescriptor");
        kotlin.reflect.jvm.internal.impl.descriptors.i iVarB = specialCallableDescriptor.b();
        if (iVarB == null) {
            throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
        }
        kotlin.reflect.jvm.internal.impl.types.y yVarN = ((kotlin.reflect.jvm.internal.impl.descriptors.d) iVarB).n();
        Intrinsics.checkExpressionValueIsNotNull(yVarN, "(specialCallableDescript…ssDescriptor).defaultType");
        kotlin.reflect.jvm.internal.impl.descriptors.d superClassDescriptor = DescriptorUtils.getSuperClassDescriptor(hasRealKotlinSuperClassWithOverrideOf);
        while (true) {
            if (superClassDescriptor == null) {
                return false;
            }
            if (!(superClassDescriptor instanceof kotlin.reflect.jvm.internal.impl.load.java.descriptors.c)) {
                if (TypeCheckingProcedure.findCorrespondingSupertype(superClassDescriptor.n(), yVarN) != null) {
                    return !KotlinBuiltIns.isBuiltIn(superClassDescriptor);
                }
            }
            superClassDescriptor = DescriptorUtils.getSuperClassDescriptor(superClassDescriptor);
        }
    }

    public static final boolean isFromJava(CallableMemberDescriptor isFromJava) {
        Intrinsics.checkParameterIsNotNull(isFromJava, "$this$isFromJava");
        return DescriptorUtilsKt.getPropertyIfAccessor(isFromJava).b() instanceof kotlin.reflect.jvm.internal.impl.load.java.descriptors.c;
    }

    public static final boolean isFromJavaOrBuiltins(CallableMemberDescriptor isFromJavaOrBuiltins) {
        Intrinsics.checkParameterIsNotNull(isFromJavaOrBuiltins, "$this$isFromJavaOrBuiltins");
        return isFromJava(isFromJavaOrBuiltins) || KotlinBuiltIns.isBuiltIn(isFromJavaOrBuiltins);
    }
}
