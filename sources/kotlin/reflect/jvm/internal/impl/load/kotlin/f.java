package kotlin.reflect.jvm.internal.impl.load.kotlin;

import com.json.o2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.e0;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoBufUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: JvmPackagePartSource.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class f implements kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.c {
    private final String b;
    private final JvmClassName c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final JvmClassName f9388d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.serialization.deserialization.o<kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d> f9389e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f9390f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final k f9391g;

    /* JADX WARN: Illegal instructions before constructor call */
    public f(k kotlinClass, ProtoBuf$Package packageProto, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver, kotlin.reflect.jvm.internal.impl.serialization.deserialization.o<kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d> oVar, boolean z) {
        Intrinsics.checkParameterIsNotNull(kotlinClass, "kotlinClass");
        Intrinsics.checkParameterIsNotNull(packageProto, "packageProto");
        Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
        JvmClassName jvmClassNameByClassId = JvmClassName.byClassId(kotlinClass.a());
        Intrinsics.checkExpressionValueIsNotNull(jvmClassNameByClassId, "JvmClassName.byClassId(kotlinClass.classId)");
        String strE = kotlinClass.c().e();
        JvmClassName jvmClassNameByInternalName = null;
        if (strE != null) {
            if (strE.length() > 0) {
                jvmClassNameByInternalName = JvmClassName.byInternalName(strE);
            }
        }
        this(jvmClassNameByClassId, jvmClassNameByInternalName, packageProto, nameResolver, oVar, z, kotlinClass);
    }

    public f(JvmClassName className, JvmClassName jvmClassName, ProtoBuf$Package packageProto, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver, kotlin.reflect.jvm.internal.impl.serialization.deserialization.o<kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d> oVar, boolean z, k kVar) {
        String string;
        Intrinsics.checkParameterIsNotNull(className, "className");
        Intrinsics.checkParameterIsNotNull(packageProto, "packageProto");
        Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
        this.c = className;
        this.f9388d = jvmClassName;
        this.f9389e = oVar;
        this.f9390f = z;
        this.f9391g = kVar;
        GeneratedMessageLite.f<ProtoBuf$Package, Integer> fVar = JvmProtoBuf.l;
        Intrinsics.checkExpressionValueIsNotNull(fVar, "JvmProtoBuf.packageModuleName");
        Integer num = (Integer) ProtoBufUtilKt.getExtensionOrNull(packageProto, fVar);
        this.b = (num == null || (string = nameResolver.getString(num.intValue())) == null) ? o2.h.Z : string;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.c
    public String a() {
        return "Class '" + d().b().b() + '\'';
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d0
    public e0 b() {
        e0 e0Var = e0.a;
        Intrinsics.checkExpressionValueIsNotNull(e0Var, "SourceFile.NO_SOURCE_FILE");
        return e0Var;
    }

    public final ClassId d() {
        return new ClassId(this.c.d(), g());
    }

    public final JvmClassName e() {
        return this.f9388d;
    }

    public final k f() {
        return this.f9391g;
    }

    public final Name g() {
        String strC = this.c.c();
        Intrinsics.checkExpressionValueIsNotNull(strC, "className.internalName");
        Name nameIdentifier = Name.identifier(StringsKt__StringsKt.substringAfterLast$default(strC, '/', (String) null, 2, (Object) null));
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier, "Name.identifier(classNam….substringAfterLast('/'))");
        return nameIdentifier;
    }

    public String toString() {
        return f.class.getSimpleName() + ": " + this.c;
    }
}
