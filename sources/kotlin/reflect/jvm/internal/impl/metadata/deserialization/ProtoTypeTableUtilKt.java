package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;

/* JADX INFO: compiled from: protoTypeTableUtil.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ProtoTypeTableUtilKt {
    public static final ProtoBuf$Type abbreviatedType(ProtoBuf$Type abbreviatedType, e typeTable) {
        Intrinsics.checkParameterIsNotNull(abbreviatedType, "$this$abbreviatedType");
        Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
        if (abbreviatedType.d0()) {
            return abbreviatedType.M();
        }
        if (abbreviatedType.e0()) {
            return typeTable.a(abbreviatedType.N());
        }
        return null;
    }

    public static final ProtoBuf$Type expandedType(ProtoBuf$TypeAlias expandedType, e typeTable) {
        Intrinsics.checkParameterIsNotNull(expandedType, "$this$expandedType");
        Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
        if (expandedType.X()) {
            ProtoBuf$Type expandedType2 = expandedType.N();
            Intrinsics.checkExpressionValueIsNotNull(expandedType2, "expandedType");
            return expandedType2;
        }
        if (expandedType.Y()) {
            return typeTable.a(expandedType.O());
        }
        throw new IllegalStateException("No expandedType in ProtoBuf.TypeAlias".toString());
    }

    public static final ProtoBuf$Type flexibleUpperBound(ProtoBuf$Type flexibleUpperBound, e typeTable) {
        Intrinsics.checkParameterIsNotNull(flexibleUpperBound, "$this$flexibleUpperBound");
        Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
        if (flexibleUpperBound.i0()) {
            return flexibleUpperBound.V();
        }
        if (flexibleUpperBound.j0()) {
            return typeTable.a(flexibleUpperBound.W());
        }
        return null;
    }

    public static final boolean hasReceiver(ProtoBuf$Function hasReceiver) {
        Intrinsics.checkParameterIsNotNull(hasReceiver, "$this$hasReceiver");
        return hasReceiver.h0() || hasReceiver.i0();
    }

    public static final boolean hasReceiver(ProtoBuf$Property hasReceiver) {
        Intrinsics.checkParameterIsNotNull(hasReceiver, "$this$hasReceiver");
        return hasReceiver.e0() || hasReceiver.f0();
    }

    public static final ProtoBuf$Type outerType(ProtoBuf$Type outerType, e typeTable) {
        Intrinsics.checkParameterIsNotNull(outerType, "$this$outerType");
        Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
        if (outerType.l0()) {
            return outerType.Y();
        }
        if (outerType.m0()) {
            return typeTable.a(outerType.Z());
        }
        return null;
    }

    public static final ProtoBuf$Type receiverType(ProtoBuf$Function receiverType, e typeTable) {
        Intrinsics.checkParameterIsNotNull(receiverType, "$this$receiverType");
        Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
        if (receiverType.h0()) {
            return receiverType.R();
        }
        if (receiverType.i0()) {
            return typeTable.a(receiverType.S());
        }
        return null;
    }

    public static final ProtoBuf$Type receiverType(ProtoBuf$Property receiverType, e typeTable) {
        Intrinsics.checkParameterIsNotNull(receiverType, "$this$receiverType");
        Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
        if (receiverType.e0()) {
            return receiverType.Q();
        }
        if (receiverType.f0()) {
            return typeTable.a(receiverType.R());
        }
        return null;
    }

    public static final ProtoBuf$Type returnType(ProtoBuf$Function returnType, e typeTable) {
        Intrinsics.checkParameterIsNotNull(returnType, "$this$returnType");
        Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
        if (returnType.j0()) {
            ProtoBuf$Type returnType2 = returnType.T();
            Intrinsics.checkExpressionValueIsNotNull(returnType2, "returnType");
            return returnType2;
        }
        if (returnType.k0()) {
            return typeTable.a(returnType.U());
        }
        throw new IllegalStateException("No returnType in ProtoBuf.Function".toString());
    }

    public static final ProtoBuf$Type returnType(ProtoBuf$Property returnType, e typeTable) {
        Intrinsics.checkParameterIsNotNull(returnType, "$this$returnType");
        Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
        if (returnType.g0()) {
            ProtoBuf$Type returnType2 = returnType.S();
            Intrinsics.checkExpressionValueIsNotNull(returnType2, "returnType");
            return returnType2;
        }
        if (returnType.h0()) {
            return typeTable.a(returnType.T());
        }
        throw new IllegalStateException("No returnType in ProtoBuf.Property".toString());
    }

    public static final List<ProtoBuf$Type> supertypes(ProtoBuf$Class supertypes, e typeTable) {
        Intrinsics.checkParameterIsNotNull(supertypes, "$this$supertypes");
        Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
        List<ProtoBuf$Type> listT0 = supertypes.t0();
        if (!(!listT0.isEmpty())) {
            listT0 = null;
        }
        if (listT0 == null) {
            List<Integer> supertypeIdList = supertypes.s0();
            Intrinsics.checkExpressionValueIsNotNull(supertypeIdList, "supertypeIdList");
            listT0 = new ArrayList<>(CollectionsKt__IterablesKt.collectionSizeOrDefault(supertypeIdList, 10));
            for (Integer it : supertypeIdList) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                listT0.add(typeTable.a(it.intValue()));
            }
        }
        return listT0;
    }

    public static final ProtoBuf$Type type(ProtoBuf$Type.Argument type, e typeTable) {
        Intrinsics.checkParameterIsNotNull(type, "$this$type");
        Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
        if (type.v()) {
            return type.s();
        }
        if (type.w()) {
            return typeTable.a(type.t());
        }
        return null;
    }

    public static final ProtoBuf$Type type(ProtoBuf$ValueParameter type, e typeTable) {
        Intrinsics.checkParameterIsNotNull(type, "$this$type");
        Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
        if (type.M()) {
            ProtoBuf$Type type2 = type.G();
            Intrinsics.checkExpressionValueIsNotNull(type2, "type");
            return type2;
        }
        if (type.N()) {
            return typeTable.a(type.H());
        }
        throw new IllegalStateException("No type in ProtoBuf.ValueParameter".toString());
    }

    public static final ProtoBuf$Type underlyingType(ProtoBuf$TypeAlias underlyingType, e typeTable) {
        Intrinsics.checkParameterIsNotNull(underlyingType, "$this$underlyingType");
        Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
        if (underlyingType.b0()) {
            ProtoBuf$Type underlyingType2 = underlyingType.U();
            Intrinsics.checkExpressionValueIsNotNull(underlyingType2, "underlyingType");
            return underlyingType2;
        }
        if (underlyingType.c0()) {
            return typeTable.a(underlyingType.V());
        }
        throw new IllegalStateException("No underlyingType in ProtoBuf.TypeAlias".toString());
    }

    public static final List<ProtoBuf$Type> upperBounds(ProtoBuf$TypeParameter upperBounds, e typeTable) {
        Intrinsics.checkParameterIsNotNull(upperBounds, "$this$upperBounds");
        Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
        List<ProtoBuf$Type> listM = upperBounds.M();
        if (!(!listM.isEmpty())) {
            listM = null;
        }
        if (listM == null) {
            List<Integer> upperBoundIdList = upperBounds.L();
            Intrinsics.checkExpressionValueIsNotNull(upperBoundIdList, "upperBoundIdList");
            listM = new ArrayList<>(CollectionsKt__IterablesKt.collectionSizeOrDefault(upperBoundIdList, 10));
            for (Integer it : upperBoundIdList) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                listM.add(typeTable.a(it.intValue()));
            }
        }
        return listM;
    }

    public static final ProtoBuf$Type varargElementType(ProtoBuf$ValueParameter varargElementType, e typeTable) {
        Intrinsics.checkParameterIsNotNull(varargElementType, "$this$varargElementType");
        Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
        if (varargElementType.O()) {
            return varargElementType.I();
        }
        if (varargElementType.P()) {
            return typeTable.a(varargElementType.J());
        }
        return null;
    }
}
