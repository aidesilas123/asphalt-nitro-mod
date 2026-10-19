package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import com.applovin.sdk.AppLovinEventTypes;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.j;
import kotlin.reflect.jvm.internal.impl.resolve.constants.u;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: compiled from: annotationUtil.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class AnnotationUtilKt {
    private static final Name a;
    private static final Name b;
    private static final Name c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Name f9107d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Name f9108e;

    /* JADX INFO: compiled from: annotationUtil.kt */
    static final class a extends Lambda implements Function1<ModuleDescriptor, y> {
        final /* synthetic */ KotlinBuiltIns a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(KotlinBuiltIns kotlinBuiltIns) {
            super(1);
            this.a = kotlinBuiltIns;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final y invoke(ModuleDescriptor module) {
            Intrinsics.checkParameterIsNotNull(module, "module");
            y yVarM = module.k().m(Variance.INVARIANT, this.a.T());
            Intrinsics.checkExpressionValueIsNotNull(yVarM, "module.builtIns.getArray…ce.INVARIANT, stringType)");
            return yVarM;
        }
    }

    static {
        Name nameIdentifier = Name.identifier("message");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier, "Name.identifier(\"message\")");
        a = nameIdentifier;
        Name nameIdentifier2 = Name.identifier("replaceWith");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier2, "Name.identifier(\"replaceWith\")");
        b = nameIdentifier2;
        Name nameIdentifier3 = Name.identifier(AppLovinEventTypes.USER_COMPLETED_LEVEL);
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier3, "Name.identifier(\"level\")");
        c = nameIdentifier3;
        Name nameIdentifier4 = Name.identifier("expression");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier4, "Name.identifier(\"expression\")");
        f9107d = nameIdentifier4;
        Name nameIdentifier5 = Name.identifier("imports");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier5, "Name.identifier(\"imports\")");
        f9108e = nameIdentifier5;
    }

    public static final AnnotationDescriptor createDeprecatedAnnotation(KotlinBuiltIns createDeprecatedAnnotation, String message, String replaceWith, String level) {
        Intrinsics.checkParameterIsNotNull(createDeprecatedAnnotation, "$this$createDeprecatedAnnotation");
        Intrinsics.checkParameterIsNotNull(message, "message");
        Intrinsics.checkParameterIsNotNull(replaceWith, "replaceWith");
        Intrinsics.checkParameterIsNotNull(level, "level");
        KotlinBuiltIns.e eVar = KotlinBuiltIns.h;
        FqName fqName = eVar.z;
        Intrinsics.checkExpressionValueIsNotNull(fqName, "KotlinBuiltIns.FQ_NAMES.replaceWith");
        BuiltInAnnotationDescriptor builtInAnnotationDescriptor = new BuiltInAnnotationDescriptor(createDeprecatedAnnotation, fqName, MapsKt__MapsKt.mapOf(TuplesKt.to(f9107d, new u(replaceWith)), TuplesKt.to(f9108e, new kotlin.reflect.jvm.internal.impl.resolve.constants.b(CollectionsKt__CollectionsKt.emptyList(), new a(createDeprecatedAnnotation)))));
        FqName fqName2 = eVar.x;
        Intrinsics.checkExpressionValueIsNotNull(fqName2, "KotlinBuiltIns.FQ_NAMES.deprecated");
        Name name = c;
        ClassId classId = ClassId.topLevel(eVar.y);
        Intrinsics.checkExpressionValueIsNotNull(classId, "ClassId.topLevel(KotlinB…Q_NAMES.deprecationLevel)");
        Name nameIdentifier = Name.identifier(level);
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier, "Name.identifier(level)");
        return new BuiltInAnnotationDescriptor(createDeprecatedAnnotation, fqName2, MapsKt__MapsKt.mapOf(TuplesKt.to(a, new u(message)), TuplesKt.to(b, new kotlin.reflect.jvm.internal.impl.resolve.constants.a(builtInAnnotationDescriptor)), TuplesKt.to(name, new j(classId, nameIdentifier))));
    }

    public static /* synthetic */ AnnotationDescriptor createDeprecatedAnnotation$default(KotlinBuiltIns kotlinBuiltIns, String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "";
        }
        if ((i & 4) != 0) {
            str3 = "WARNING";
        }
        return createDeprecatedAnnotation(kotlinBuiltIns, str, str2, str3);
    }
}
