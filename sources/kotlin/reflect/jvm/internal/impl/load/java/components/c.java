package kotlin.reflect.jvm.internal.impl.load.java.components;

import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.KotlinRetention;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.KotlinTarget;
import kotlin.reflect.jvm.internal.impl.load.java.structure.l;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: compiled from: JavaAnnotationMapper.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class c {
    public static final c c = new c();
    private static final Map<String, EnumSet<KotlinTarget>> a = MapsKt__MapsKt.mapOf(TuplesKt.to("PACKAGE", EnumSet.noneOf(KotlinTarget.class)), TuplesKt.to("TYPE", EnumSet.of(KotlinTarget.a, KotlinTarget.n)), TuplesKt.to("ANNOTATION_TYPE", EnumSet.of(KotlinTarget.b)), TuplesKt.to("TYPE_PARAMETER", EnumSet.of(KotlinTarget.c)), TuplesKt.to("FIELD", EnumSet.of(KotlinTarget.f9112e)), TuplesKt.to("LOCAL_VARIABLE", EnumSet.of(KotlinTarget.f9113f)), TuplesKt.to("PARAMETER", EnumSet.of(KotlinTarget.f9114g)), TuplesKt.to("CONSTRUCTOR", EnumSet.of(KotlinTarget.h)), TuplesKt.to("METHOD", EnumSet.of(KotlinTarget.i, KotlinTarget.j, KotlinTarget.k)), TuplesKt.to("TYPE_USE", EnumSet.of(KotlinTarget.l)));
    private static final Map<String, KotlinRetention> b = MapsKt__MapsKt.mapOf(TuplesKt.to("RUNTIME", KotlinRetention.RUNTIME), TuplesKt.to("CLASS", KotlinRetention.BINARY), TuplesKt.to("SOURCE", KotlinRetention.SOURCE));

    /* JADX INFO: compiled from: JavaAnnotationMapper.kt */
    static final class a extends Lambda implements Function1<ModuleDescriptor, u> {
        public static final a a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final u invoke(ModuleDescriptor module) {
            u type;
            Intrinsics.checkParameterIsNotNull(module, "module");
            ValueParameterDescriptor annotationParameterByName = DescriptorResolverUtils.getAnnotationParameterByName(b.k.d(), module.k().o(KotlinBuiltIns.h.D));
            if (annotationParameterByName != null && (type = annotationParameterByName.getType()) != null) {
                return type;
            }
            y yVarCreateErrorType = ErrorUtils.createErrorType("Error: AnnotationTarget[]");
            Intrinsics.checkExpressionValueIsNotNull(yVarCreateErrorType, "ErrorUtils.createErrorTy…ror: AnnotationTarget[]\")");
            return yVarCreateErrorType;
        }
    }

    private c() {
    }

    public final kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> a(kotlin.reflect.jvm.internal.impl.load.java.structure.a aVar) {
        if (!(aVar instanceof l)) {
            aVar = null;
        }
        l lVar = (l) aVar;
        if (lVar == null) {
            return null;
        }
        Map<String, KotlinRetention> map = b;
        Name nameE = lVar.e();
        KotlinRetention kotlinRetention = map.get(nameE != null ? nameE.e() : null);
        if (kotlinRetention == null) {
            return null;
        }
        ClassId classId = ClassId.topLevel(KotlinBuiltIns.h.F);
        Intrinsics.checkExpressionValueIsNotNull(classId, "ClassId.topLevel(KotlinB…AMES.annotationRetention)");
        Name nameIdentifier = Name.identifier(kotlinRetention.name());
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier, "Name.identifier(retention.name)");
        return new kotlin.reflect.jvm.internal.impl.resolve.constants.j(classId, nameIdentifier);
    }

    public final Set<KotlinTarget> b(String str) {
        EnumSet<KotlinTarget> enumSet = a.get(str);
        return enumSet != null ? enumSet : SetsKt__SetsKt.emptySet();
    }

    public final kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> c(List<? extends kotlin.reflect.jvm.internal.impl.load.java.structure.a> arguments) {
        Intrinsics.checkParameterIsNotNull(arguments, "arguments");
        ArrayList<l> arrayList = new ArrayList();
        for (Object obj : arguments) {
            if (obj instanceof l) {
                arrayList.add(obj);
            }
        }
        ArrayList<KotlinTarget> arrayList2 = new ArrayList();
        for (l lVar : arrayList) {
            c cVar = c;
            Name nameE = lVar.e();
            CollectionsKt__MutableCollectionsKt.addAll(arrayList2, cVar.b(nameE != null ? nameE.e() : null));
        }
        ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10));
        for (KotlinTarget kotlinTarget : arrayList2) {
            ClassId classId = ClassId.topLevel(KotlinBuiltIns.h.E);
            Intrinsics.checkExpressionValueIsNotNull(classId, "ClassId.topLevel(KotlinB…Q_NAMES.annotationTarget)");
            Name nameIdentifier = Name.identifier(kotlinTarget.name());
            Intrinsics.checkExpressionValueIsNotNull(nameIdentifier, "Name.identifier(kotlinTarget.name)");
            arrayList3.add(new kotlin.reflect.jvm.internal.impl.resolve.constants.j(classId, nameIdentifier));
        }
        return new kotlin.reflect.jvm.internal.impl.resolve.constants.b(arrayList3, a.a);
    }
}
