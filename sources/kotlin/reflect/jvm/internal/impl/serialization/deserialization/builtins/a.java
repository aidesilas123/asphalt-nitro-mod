package kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.metadata.builtins.BuiltInsProtoBuf;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: BuiltInSerializerProtocol.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class a extends kotlin.reflect.jvm.internal.t.a.a {
    public static final a n = new a();

    /* JADX WARN: Illegal instructions before constructor call */
    private a() {
        ExtensionRegistryLite extensionRegistryLiteNewInstance = ExtensionRegistryLite.newInstance();
        BuiltInsProtoBuf.registerAllExtensions(extensionRegistryLiteNewInstance);
        Intrinsics.checkExpressionValueIsNotNull(extensionRegistryLiteNewInstance, "ExtensionRegistryLite.ne…f::registerAllExtensions)");
        GeneratedMessageLite.f<ProtoBuf$Package, Integer> fVar = BuiltInsProtoBuf.a;
        Intrinsics.checkExpressionValueIsNotNull(fVar, "BuiltInsProtoBuf.packageFqName");
        GeneratedMessageLite.f<ProtoBuf$Constructor, List<ProtoBuf$Annotation>> fVar2 = BuiltInsProtoBuf.c;
        Intrinsics.checkExpressionValueIsNotNull(fVar2, "BuiltInsProtoBuf.constructorAnnotation");
        GeneratedMessageLite.f<ProtoBuf$Class, List<ProtoBuf$Annotation>> fVar3 = BuiltInsProtoBuf.b;
        Intrinsics.checkExpressionValueIsNotNull(fVar3, "BuiltInsProtoBuf.classAnnotation");
        GeneratedMessageLite.f<ProtoBuf$Function, List<ProtoBuf$Annotation>> fVar4 = BuiltInsProtoBuf.f9614d;
        Intrinsics.checkExpressionValueIsNotNull(fVar4, "BuiltInsProtoBuf.functionAnnotation");
        GeneratedMessageLite.f<ProtoBuf$Property, List<ProtoBuf$Annotation>> fVar5 = BuiltInsProtoBuf.f9615e;
        Intrinsics.checkExpressionValueIsNotNull(fVar5, "BuiltInsProtoBuf.propertyAnnotation");
        GeneratedMessageLite.f<ProtoBuf$Property, List<ProtoBuf$Annotation>> fVar6 = BuiltInsProtoBuf.f9616f;
        Intrinsics.checkExpressionValueIsNotNull(fVar6, "BuiltInsProtoBuf.propertyGetterAnnotation");
        GeneratedMessageLite.f<ProtoBuf$Property, List<ProtoBuf$Annotation>> fVar7 = BuiltInsProtoBuf.f9617g;
        Intrinsics.checkExpressionValueIsNotNull(fVar7, "BuiltInsProtoBuf.propertySetterAnnotation");
        GeneratedMessageLite.f<ProtoBuf$EnumEntry, List<ProtoBuf$Annotation>> fVar8 = BuiltInsProtoBuf.i;
        Intrinsics.checkExpressionValueIsNotNull(fVar8, "BuiltInsProtoBuf.enumEntryAnnotation");
        GeneratedMessageLite.f<ProtoBuf$Property, ProtoBuf$Annotation.Argument.Value> fVar9 = BuiltInsProtoBuf.h;
        Intrinsics.checkExpressionValueIsNotNull(fVar9, "BuiltInsProtoBuf.compileTimeValue");
        GeneratedMessageLite.f<ProtoBuf$ValueParameter, List<ProtoBuf$Annotation>> fVar10 = BuiltInsProtoBuf.j;
        Intrinsics.checkExpressionValueIsNotNull(fVar10, "BuiltInsProtoBuf.parameterAnnotation");
        GeneratedMessageLite.f<ProtoBuf$Type, List<ProtoBuf$Annotation>> fVar11 = BuiltInsProtoBuf.k;
        Intrinsics.checkExpressionValueIsNotNull(fVar11, "BuiltInsProtoBuf.typeAnnotation");
        GeneratedMessageLite.f<ProtoBuf$TypeParameter, List<ProtoBuf$Annotation>> fVar12 = BuiltInsProtoBuf.l;
        Intrinsics.checkExpressionValueIsNotNull(fVar12, "BuiltInsProtoBuf.typeParameterAnnotation");
        super(extensionRegistryLiteNewInstance, fVar, fVar2, fVar3, fVar4, fVar5, fVar6, fVar7, fVar8, fVar9, fVar10, fVar11, fVar12);
    }

    private final String o(FqName fqName) {
        if (fqName.d()) {
            return "default-package";
        }
        String strE = fqName.g().e();
        Intrinsics.checkExpressionValueIsNotNull(strE, "fqName.shortName().asString()");
        return strE;
    }

    public final String m(FqName fqName) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        return o(fqName) + ".kotlin_builtins";
    }

    public final String n(FqName fqName) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        StringBuilder sb = new StringBuilder();
        String strB = fqName.b();
        Intrinsics.checkExpressionValueIsNotNull(strB, "fqName.asString()");
        sb.append(StringsKt__StringsJVMKt.replace$default(strB, '.', '/', false, 4, (Object) null));
        sb.append("/");
        sb.append(m(fqName));
        return sb.toString();
    }
}
