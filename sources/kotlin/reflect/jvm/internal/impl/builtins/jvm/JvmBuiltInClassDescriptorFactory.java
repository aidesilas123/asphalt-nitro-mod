package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.collections.p;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.e0;
import kotlin.jvm.internal.n;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.g;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.storage.e;
import kotlin.reflect.jvm.internal.impl.storage.h;

/* JADX INFO: compiled from: JvmBuiltInClassDescriptorFactory.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class JvmBuiltInClassDescriptorFactory implements kotlin.reflect.jvm.internal.impl.descriptors.deserialization.b {
    private static final Name c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ClassId f9074d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final e f9076f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ModuleDescriptor f9077g;
    private final Function1<ModuleDescriptor, i> h;
    static final /* synthetic */ KProperty[] a = {Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(JvmBuiltInClassDescriptorFactory.class), "cloneable", "getCloneable()Lorg/jetbrains/kotlin/descriptors/impl/ClassDescriptorImpl;"))};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b f9075e = new b(null);
    private static final FqName b = KotlinBuiltIns.b;

    /* JADX INFO: compiled from: JvmBuiltInClassDescriptorFactory.kt */
    static final class a extends Lambda implements Function1<ModuleDescriptor, kotlin.reflect.jvm.internal.impl.builtins.b> {
        public static final a a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final kotlin.reflect.jvm.internal.impl.builtins.b invoke(ModuleDescriptor module) {
            Intrinsics.checkParameterIsNotNull(module, "module");
            FqName KOTLIN_FQ_NAME = JvmBuiltInClassDescriptorFactory.b;
            Intrinsics.checkExpressionValueIsNotNull(KOTLIN_FQ_NAME, "KOTLIN_FQ_NAME");
            List<s> listA0 = module.d0(KOTLIN_FQ_NAME).a0();
            ArrayList arrayList = new ArrayList();
            for (Object obj : listA0) {
                if (obj instanceof kotlin.reflect.jvm.internal.impl.builtins.b) {
                    arrayList.add(obj);
                }
            }
            return (kotlin.reflect.jvm.internal.impl.builtins.b) p.first((List) arrayList);
        }
    }

    /* JADX INFO: compiled from: JvmBuiltInClassDescriptorFactory.kt */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(n nVar) {
            this();
        }

        public final ClassId a() {
            return JvmBuiltInClassDescriptorFactory.f9074d;
        }
    }

    /* JADX INFO: compiled from: JvmBuiltInClassDescriptorFactory.kt */
    static final class c extends Lambda implements Function0<g> {
        final /* synthetic */ h b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(h hVar) {
            super(0);
            this.b = hVar;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final g invoke() {
            g gVar = new g((i) JvmBuiltInClassDescriptorFactory.this.h.invoke(JvmBuiltInClassDescriptorFactory.this.f9077g), JvmBuiltInClassDescriptorFactory.c, Modality.ABSTRACT, ClassKind.INTERFACE, CollectionsKt__CollectionsJVMKt.listOf(JvmBuiltInClassDescriptorFactory.this.f9077g.k().j()), d0.a, false, this.b);
            gVar.k0(new CloneableClassScope(this.b, gVar), SetsKt__SetsKt.emptySet(), null);
            return gVar;
        }
    }

    static {
        KotlinBuiltIns.e eVar = KotlinBuiltIns.h;
        Name nameI = eVar.c.i();
        Intrinsics.checkExpressionValueIsNotNull(nameI, "KotlinBuiltIns.FQ_NAMES.cloneable.shortName()");
        c = nameI;
        ClassId classId = ClassId.topLevel(eVar.c.l());
        Intrinsics.checkExpressionValueIsNotNull(classId, "ClassId.topLevel(KotlinB…NAMES.cloneable.toSafe())");
        f9074d = classId;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public JvmBuiltInClassDescriptorFactory(h storageManager, ModuleDescriptor moduleDescriptor, Function1<? super ModuleDescriptor, ? extends i> computeContainingDeclaration) {
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        Intrinsics.checkParameterIsNotNull(moduleDescriptor, "moduleDescriptor");
        Intrinsics.checkParameterIsNotNull(computeContainingDeclaration, "computeContainingDeclaration");
        this.f9077g = moduleDescriptor;
        this.h = computeContainingDeclaration;
        this.f9076f = storageManager.c(new c(storageManager));
    }

    public /* synthetic */ JvmBuiltInClassDescriptorFactory(h hVar, ModuleDescriptor moduleDescriptor, Function1 function1, int i, n nVar) {
        this(hVar, moduleDescriptor, (i & 4) != 0 ? a.a : function1);
    }

    private final g d() {
        return (g) StorageKt.getValue(this.f9076f, this, (KProperty<?>) a[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.b
    public Collection<d> a(FqName packageFqName) {
        Intrinsics.checkParameterIsNotNull(packageFqName, "packageFqName");
        return Intrinsics.areEqual(packageFqName, b) ? SetsKt__SetsJVMKt.setOf(d()) : SetsKt__SetsKt.emptySet();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.b
    public boolean b(FqName packageFqName, Name name) {
        Intrinsics.checkParameterIsNotNull(packageFqName, "packageFqName");
        Intrinsics.checkParameterIsNotNull(name, "name");
        return Intrinsics.areEqual(name, c) && Intrinsics.areEqual(packageFqName, b);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.b
    public d c(ClassId classId) {
        Intrinsics.checkParameterIsNotNull(classId, "classId");
        if (Intrinsics.areEqual(classId, f9074d)) {
            return d();
        }
        return null;
    }
}
