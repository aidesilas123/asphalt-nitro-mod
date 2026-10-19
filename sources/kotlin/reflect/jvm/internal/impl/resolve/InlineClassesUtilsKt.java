package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.p;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.k0;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: inlineClassesUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class InlineClassesUtilsKt {
    public static final boolean isGetterOfUnderlyingPropertyOfInlineClass(kotlin.reflect.jvm.internal.impl.descriptors.a isGetterOfUnderlyingPropertyOfInlineClass) {
        Intrinsics.checkParameterIsNotNull(isGetterOfUnderlyingPropertyOfInlineClass, "$this$isGetterOfUnderlyingPropertyOfInlineClass");
        if (isGetterOfUnderlyingPropertyOfInlineClass instanceof z) {
            y correspondingProperty = ((z) isGetterOfUnderlyingPropertyOfInlineClass).P();
            Intrinsics.checkExpressionValueIsNotNull(correspondingProperty, "correspondingProperty");
            if (isUnderlyingPropertyOfInlineClass(correspondingProperty)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean isInlineClass(i isInlineClass) {
        Intrinsics.checkParameterIsNotNull(isInlineClass, "$this$isInlineClass");
        return (isInlineClass instanceof d) && ((d) isInlineClass).isInline();
    }

    public static final boolean isInlineClassType(u isInlineClassType) {
        Intrinsics.checkParameterIsNotNull(isInlineClassType, "$this$isInlineClassType");
        f fVarQ = isInlineClassType.H0().q();
        if (fVarQ != null) {
            return isInlineClass(fVarQ);
        }
        return false;
    }

    public static final boolean isUnderlyingPropertyOfInlineClass(k0 isUnderlyingPropertyOfInlineClass) {
        Intrinsics.checkParameterIsNotNull(isUnderlyingPropertyOfInlineClass, "$this$isUnderlyingPropertyOfInlineClass");
        i iVarB = isUnderlyingPropertyOfInlineClass.b();
        Intrinsics.checkExpressionValueIsNotNull(iVarB, "this.containingDeclaration");
        if (!isInlineClass(iVarB)) {
            return false;
        }
        if (iVarB == null) {
            throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
        }
        ValueParameterDescriptor valueParameterDescriptorUnderlyingRepresentation = underlyingRepresentation((d) iVarB);
        return Intrinsics.areEqual(valueParameterDescriptorUnderlyingRepresentation != null ? valueParameterDescriptorUnderlyingRepresentation.getName() : null, isUnderlyingPropertyOfInlineClass.getName());
    }

    public static final u substitutedUnderlyingType(u substitutedUnderlyingType) {
        Intrinsics.checkParameterIsNotNull(substitutedUnderlyingType, "$this$substitutedUnderlyingType");
        ValueParameterDescriptor valueParameterDescriptorUnsubstitutedUnderlyingParameter = unsubstitutedUnderlyingParameter(substitutedUnderlyingType);
        if (valueParameterDescriptorUnsubstitutedUnderlyingParameter == null) {
            return null;
        }
        MemberScope memberScopeM = substitutedUnderlyingType.m();
        Name name = valueParameterDescriptorUnsubstitutedUnderlyingParameter.getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "parameter.name");
        y yVar = (y) p.singleOrNull(memberScopeM.e(name, NoLookupLocation.FOR_ALREADY_TRACKED));
        if (yVar != null) {
            return yVar.getType();
        }
        return null;
    }

    public static final ValueParameterDescriptor underlyingRepresentation(d underlyingRepresentation) {
        kotlin.reflect.jvm.internal.impl.descriptors.c cVarA;
        List<ValueParameterDescriptor> listG;
        Intrinsics.checkParameterIsNotNull(underlyingRepresentation, "$this$underlyingRepresentation");
        if (!underlyingRepresentation.isInline() || (cVarA = underlyingRepresentation.A()) == null || (listG = cVarA.g()) == null) {
            return null;
        }
        return (ValueParameterDescriptor) p.singleOrNull((List) listG);
    }

    public static final ValueParameterDescriptor unsubstitutedUnderlyingParameter(u unsubstitutedUnderlyingParameter) {
        Intrinsics.checkParameterIsNotNull(unsubstitutedUnderlyingParameter, "$this$unsubstitutedUnderlyingParameter");
        f fVarQ = unsubstitutedUnderlyingParameter.H0().q();
        if (!(fVarQ instanceof d)) {
            fVarQ = null;
        }
        d dVar = (d) fVarQ;
        if (dVar != null) {
            return underlyingRepresentation(dVar);
        }
        return null;
    }
}
