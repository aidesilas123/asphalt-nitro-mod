package kotlin.reflect.jvm.internal.impl.load.kotlin;

import com.json.o2;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.kotlin.g;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: methodSignatureMapping.kt */
/* JADX INFO: loaded from: classes5.dex */
final class i implements h<g> {
    public static final i a = new i();

    private i() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.h
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public g b(g possiblyPrimitiveType) {
        Intrinsics.checkParameterIsNotNull(possiblyPrimitiveType, "possiblyPrimitiveType");
        if (!(possiblyPrimitiveType instanceof g.c)) {
            return possiblyPrimitiveType;
        }
        g.c cVar = (g.c) possiblyPrimitiveType;
        if (cVar.a() == null) {
            return possiblyPrimitiveType;
        }
        JvmClassName jvmClassNameByFqNameWithoutInnerClasses = JvmClassName.byFqNameWithoutInnerClasses(cVar.a().h());
        Intrinsics.checkExpressionValueIsNotNull(jvmClassNameByFqNameWithoutInnerClasses, "JvmClassName.byFqNameWit…mitiveType.wrapperFqName)");
        String strC = jvmClassNameByFqNameWithoutInnerClasses.c();
        Intrinsics.checkExpressionValueIsNotNull(strC, "JvmClassName.byFqNameWit…apperFqName).internalName");
        return d(strC);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.h
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public g a(String representation) {
        JvmPrimitiveType jvmPrimitiveType;
        Intrinsics.checkParameterIsNotNull(representation, "representation");
        representation.length();
        char cCharAt = representation.charAt(0);
        JvmPrimitiveType[] jvmPrimitiveTypeArrValues = JvmPrimitiveType.values();
        int length = jvmPrimitiveTypeArrValues.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                jvmPrimitiveType = null;
                break;
            }
            jvmPrimitiveType = jvmPrimitiveTypeArrValues[i];
            if (jvmPrimitiveType.e().charAt(0) == cCharAt) {
                break;
            }
            i++;
        }
        if (jvmPrimitiveType != null) {
            return new g.c(jvmPrimitiveType);
        }
        if (cCharAt == 'V') {
            return new g.c(null);
        }
        if (cCharAt == '[') {
            String strSubstring = representation.substring(1);
            Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.String).substring(startIndex)");
            return new g.a(a(strSubstring));
        }
        if (cCharAt == 'L') {
            StringsKt__StringsKt.endsWith$default((CharSequence) representation, ';', false, 2, (Object) null);
        }
        String strSubstring2 = representation.substring(1, representation.length() - 1);
        Intrinsics.checkExpressionValueIsNotNull(strSubstring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return new g.b(strSubstring2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.h
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public g.b d(String internalName) {
        Intrinsics.checkParameterIsNotNull(internalName, "internalName");
        return new g.b(internalName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.h
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public g e() {
        return d("java/lang/Class");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.h
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public String c(g type) {
        String strE;
        Intrinsics.checkParameterIsNotNull(type, "type");
        if (type instanceof g.a) {
            return o2.i.f6490d + c(((g.a) type).a());
        }
        if (type instanceof g.c) {
            JvmPrimitiveType jvmPrimitiveTypeA = ((g.c) type).a();
            return (jvmPrimitiveTypeA == null || (strE = jvmPrimitiveTypeA.e()) == null) ? "V" : strE;
        }
        if (!(type instanceof g.b)) {
            throw new NoWhenBranchMatchedException();
        }
        return "L" + ((g.b) type).a() + ";";
    }
}
