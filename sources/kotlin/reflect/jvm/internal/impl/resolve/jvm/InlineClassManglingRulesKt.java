package kotlin.reflect.jvm.internal.impl.resolve.jvm;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.c;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: inlineClassManglingRules.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class InlineClassManglingRulesKt {
    private static final boolean a(d dVar) {
        return Intrinsics.areEqual(DescriptorUtilsKt.getFqNameSafe(dVar), DescriptorUtils.h);
    }

    private static final boolean b(u uVar) {
        f fVarQ = uVar.H0().q();
        if (!(fVarQ instanceof i0)) {
            fVarQ = null;
        }
        i0 i0Var = (i0) fVarQ;
        if (i0Var != null) {
            return c(TypeUtilsKt.getRepresentativeUpperBound(i0Var));
        }
        return false;
    }

    private static final boolean c(u uVar) {
        return isInlineClassThatRequiresMangling(uVar) || b(uVar);
    }

    public static final boolean isInlineClassThatRequiresMangling(i isInlineClassThatRequiresMangling) {
        Intrinsics.checkParameterIsNotNull(isInlineClassThatRequiresMangling, "$this$isInlineClassThatRequiresMangling");
        return InlineClassesUtilsKt.isInlineClass(isInlineClassThatRequiresMangling) && !a((d) isInlineClassThatRequiresMangling);
    }

    public static final boolean isInlineClassThatRequiresMangling(u isInlineClassThatRequiresMangling) {
        Intrinsics.checkParameterIsNotNull(isInlineClassThatRequiresMangling, "$this$isInlineClassThatRequiresMangling");
        f fVarQ = isInlineClassThatRequiresMangling.H0().q();
        return fVarQ != null && isInlineClassThatRequiresMangling(fVarQ);
    }

    public static final boolean shouldHideConstructorDueToInlineClassTypeValueParameters(CallableMemberDescriptor descriptor) {
        Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
        if (!(descriptor instanceof c)) {
            descriptor = null;
        }
        c cVar = (c) descriptor;
        if (cVar == null || Visibilities.isPrivate(cVar.getVisibility())) {
            return false;
        }
        d dVarW = cVar.W();
        Intrinsics.checkExpressionValueIsNotNull(dVarW, "constructorDescriptor.constructedClass");
        if (dVarW.isInline() || DescriptorUtils.isSealedClass(cVar.W())) {
            return false;
        }
        List<ValueParameterDescriptor> listG = cVar.g();
        Intrinsics.checkExpressionValueIsNotNull(listG, "constructorDescriptor.valueParameters");
        if ((listG instanceof Collection) && listG.isEmpty()) {
            return false;
        }
        for (ValueParameterDescriptor it : listG) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            u type = it.getType();
            Intrinsics.checkExpressionValueIsNotNull(type, "it.type");
            if (c(type)) {
                return true;
            }
        }
        return false;
    }
}
