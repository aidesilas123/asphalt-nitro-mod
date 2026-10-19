package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: compiled from: DeserializedDescriptorResolver.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class DeserializedDescriptorResolver {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public kotlin.reflect.jvm.internal.impl.serialization.deserialization.j f9387g;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f9386f = new a(null);
    private static final Set<KotlinClassHeader.Kind> a = SetsKt__SetsJVMKt.setOf(KotlinClassHeader.Kind.CLASS);
    private static final Set<KotlinClassHeader.Kind> b = SetsKt__SetsKt.setOf((Object[]) new KotlinClassHeader.Kind[]{KotlinClassHeader.Kind.FILE_FACADE, KotlinClassHeader.Kind.MULTIFILE_CLASS_PART});
    private static final kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d c = new kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d(1, 1, 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d f9384d = new kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d(1, 1, 11);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d f9385e = new kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d(1, 1, 13);

    /* JADX INFO: compiled from: DeserializedDescriptorResolver.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d a() {
            return DeserializedDescriptorResolver.f9385e;
        }
    }

    /* JADX INFO: compiled from: DeserializedDescriptorResolver.kt */
    static final class b extends Lambda implements Function0<List<? extends Name>> {
        public static final b a = new b();

        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<Name> invoke() {
            return CollectionsKt__CollectionsKt.emptyList();
        }
    }

    private final kotlin.reflect.jvm.internal.impl.serialization.deserialization.o<kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d> c(k kVar) {
        if (d() || kVar.c().d().g()) {
            return null;
        }
        return new kotlin.reflect.jvm.internal.impl.serialization.deserialization.o<>(kVar.c().d(), kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d.f9669g, kVar.getLocation(), kVar.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean d() {
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.j jVar = this.f9387g;
        if (jVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("components");
        }
        return jVar.g().b();
    }

    private final boolean e(k kVar) {
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.j jVar = this.f9387g;
        if (jVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("components");
        }
        return !jVar.g().b() && kVar.c().h() && Intrinsics.areEqual(kVar.c().d(), f9384d);
    }

    private final boolean f(k kVar) {
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.j jVar = this.f9387g;
        if (jVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("components");
        }
        return (jVar.g().c() && (kVar.c().h() || Intrinsics.areEqual(kVar.c().d(), c))) || e(kVar);
    }

    private final String[] h(k kVar, Set<? extends KotlinClassHeader.Kind> set) {
        KotlinClassHeader kotlinClassHeaderC = kVar.c();
        String[] strArrA = kotlinClassHeaderC.a();
        if (strArrA == null) {
            strArrA = kotlinClassHeaderC.b();
        }
        if (strArrA == null || !set.contains(kotlinClassHeaderC.c())) {
            return null;
        }
        return strArrA;
    }

    public final MemberScope a(s descriptor, k kotlinClass) {
        String[] strArrG;
        Pair<kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.e, ProtoBuf$Package> packageDataFrom;
        Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
        Intrinsics.checkParameterIsNotNull(kotlinClass, "kotlinClass");
        String[] strArrH = h(kotlinClass, b);
        if (strArrH == null || (strArrG = kotlinClass.c().g()) == null) {
            return null;
        }
        try {
            try {
                packageDataFrom = JvmProtoBufUtil.readPackageDataFrom(strArrH, strArrG);
            } catch (kotlin.reflect.jvm.internal.impl.protobuf.d e2) {
                throw new IllegalStateException("Could not read data from " + kotlinClass.getLocation(), e2);
            }
        } catch (Throwable th) {
            if (d() || kotlinClass.c().d().g()) {
                throw th;
            }
            packageDataFrom = null;
        }
        if (packageDataFrom == null) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.e eVarC = packageDataFrom.c();
        ProtoBuf$Package protoBuf$PackageD = packageDataFrom.d();
        f fVar = new f(kotlinClass, protoBuf$PackageD, eVarC, c(kotlinClass), f(kotlinClass));
        kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d dVarD = kotlinClass.c().d();
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.j jVar = this.f9387g;
        if (jVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("components");
        }
        return new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.d(descriptor, protoBuf$PackageD, eVarC, dVarD, fVar, jVar, b.a);
    }

    public final kotlin.reflect.jvm.internal.impl.serialization.deserialization.j b() {
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.j jVar = this.f9387g;
        if (jVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("components");
        }
        return jVar;
    }

    public final kotlin.reflect.jvm.internal.impl.serialization.deserialization.g g(k kotlinClass) {
        String[] strArrG;
        Pair<kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.e, ProtoBuf$Class> classDataFrom;
        Intrinsics.checkParameterIsNotNull(kotlinClass, "kotlinClass");
        String[] strArrH = h(kotlinClass, a);
        if (strArrH == null || (strArrG = kotlinClass.c().g()) == null) {
            return null;
        }
        try {
            try {
                classDataFrom = JvmProtoBufUtil.readClassDataFrom(strArrH, strArrG);
            } catch (kotlin.reflect.jvm.internal.impl.protobuf.d e2) {
                throw new IllegalStateException("Could not read data from " + kotlinClass.getLocation(), e2);
            }
        } catch (Throwable th) {
            if (d() || kotlinClass.c().d().g()) {
                throw th;
            }
            classDataFrom = null;
        }
        if (classDataFrom != null) {
            return new kotlin.reflect.jvm.internal.impl.serialization.deserialization.g(classDataFrom.c(), classDataFrom.d(), kotlinClass.c().d(), new m(kotlinClass, c(kotlinClass), f(kotlinClass)));
        }
        return null;
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.d i(k kotlinClass) {
        Intrinsics.checkParameterIsNotNull(kotlinClass, "kotlinClass");
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.g gVarG = g(kotlinClass);
        if (gVarG == null) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.j jVar = this.f9387g;
        if (jVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("components");
        }
        return jVar.f().b(kotlinClass.a(), gVarG);
    }

    public final void j(kotlin.reflect.jvm.internal.impl.load.kotlin.b components) {
        Intrinsics.checkParameterIsNotNull(components, "components");
        this.f9387g = components.a();
    }
}
