package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: compiled from: NameResolverUtil.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class NameResolverUtilKt {
    public static final ClassId getClassId(kotlin.reflect.jvm.internal.impl.metadata.deserialization.b getClassId, int i) {
        Intrinsics.checkParameterIsNotNull(getClassId, "$this$getClassId");
        ClassId classIdFromString = ClassId.fromString(getClassId.b(i), getClassId.a(i));
        Intrinsics.checkExpressionValueIsNotNull(classIdFromString, "ClassId.fromString(getQu… isLocalClassName(index))");
        return classIdFromString;
    }

    public static final Name getName(kotlin.reflect.jvm.internal.impl.metadata.deserialization.b getName, int i) {
        Intrinsics.checkParameterIsNotNull(getName, "$this$getName");
        Name nameGuessByFirstCharacter = Name.guessByFirstCharacter(getName.getString(i));
        Intrinsics.checkExpressionValueIsNotNull(nameGuessByFirstCharacter, "Name.guessByFirstCharacter(getString(index))");
        return nameGuessByFirstCharacter;
    }
}
