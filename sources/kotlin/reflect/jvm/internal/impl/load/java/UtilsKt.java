package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.utils.NumbersKt;
import kotlin.text.StringsKt__StringNumberConversionsJVMKt;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlin.text.StringsKt___StringsKt;

/* JADX INFO: compiled from: utils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class UtilsKt {
    public static final k lexicalCastFrom(u lexicalCastFrom, String value) {
        Intrinsics.checkParameterIsNotNull(lexicalCastFrom, "$this$lexicalCastFrom");
        Intrinsics.checkParameterIsNotNull(value, "value");
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarQ = lexicalCastFrom.H0().q();
        if (fVarQ instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarQ;
            if (dVar.getKind() == ClassKind.ENUM_CLASS) {
                MemberScope memberScopeO = dVar.O();
                Name nameIdentifier = Name.identifier(value);
                Intrinsics.checkExpressionValueIsNotNull(nameIdentifier, "Name.identifier(value)");
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = memberScopeO.c(nameIdentifier, NoLookupLocation.FROM_BACKEND);
                if (!(fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
                    return null;
                }
                kotlin.reflect.jvm.internal.impl.descriptors.d dVar2 = (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC;
                if (dVar2.getKind() == ClassKind.ENUM_ENTRY) {
                    return new d(dVar2);
                }
                return null;
            }
        }
        u uVarMakeNotNullable = TypeUtilsKt.makeNotNullable(lexicalCastFrom);
        kotlin.reflect.jvm.internal.impl.utils.b bVarExtractRadix = NumbersKt.extractRadix(value);
        String strA = bVarExtractRadix.a();
        int iB = bVarExtractRadix.b();
        Object objValueOf = KotlinBuiltIns.isBoolean(uVarMakeNotNullable) ? Boolean.valueOf(Boolean.parseBoolean(value)) : KotlinBuiltIns.isChar(uVarMakeNotNullable) ? StringsKt___StringsKt.singleOrNull(value) : KotlinBuiltIns.isByte(uVarMakeNotNullable) ? StringsKt__StringNumberConversionsKt.toByteOrNull(strA, iB) : KotlinBuiltIns.isShort(uVarMakeNotNullable) ? StringsKt__StringNumberConversionsKt.toShortOrNull(strA, iB) : KotlinBuiltIns.isInt(uVarMakeNotNullable) ? StringsKt__StringNumberConversionsKt.toIntOrNull(strA, iB) : KotlinBuiltIns.isLong(uVarMakeNotNullable) ? StringsKt__StringNumberConversionsKt.toLongOrNull(strA, iB) : KotlinBuiltIns.isFloat(uVarMakeNotNullable) ? StringsKt__StringNumberConversionsJVMKt.toFloatOrNull(value) : KotlinBuiltIns.isDouble(uVarMakeNotNullable) ? StringsKt__StringNumberConversionsJVMKt.toDoubleOrNull(value) : KotlinBuiltIns.isString(uVarMakeNotNullable) ? null : null;
        if (objValueOf != null) {
            return new b(objValueOf);
        }
        return null;
    }
}
