package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.e0;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.t;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotationsKt;
import kotlin.reflect.jvm.internal.impl.load.java.structure.f;
import kotlin.reflect.jvm.internal.impl.load.java.structure.r;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinClassFinderKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.load.kotlin.k;
import kotlin.reflect.jvm.internal.impl.load.kotlin.l;
import kotlin.reflect.jvm.internal.impl.load.kotlin.o;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;

/* JADX INFO: compiled from: LazyJavaPackageFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class LazyJavaPackageFragment extends t {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final /* synthetic */ KProperty[] f9230f = {Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(LazyJavaPackageFragment.class), "binaryClasses", "getBinaryClasses$descriptors_jvm()Ljava/util/Map;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(LazyJavaPackageFragment.class), "partToFacade", "getPartToFacade()Ljava/util/HashMap;"))};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.load.java.lazy.d f9231g;
    private final kotlin.reflect.jvm.internal.impl.storage.e h;
    private final JvmPackageScope i;
    private final kotlin.reflect.jvm.internal.impl.storage.e<List<FqName>> j;
    private final Annotations k;
    private final kotlin.reflect.jvm.internal.impl.storage.e l;
    private final r m;

    /* JADX INFO: compiled from: LazyJavaPackageFragment.kt */
    static final class a extends Lambda implements Function0<Map<String, ? extends k>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Map<String, k> invoke() {
            o oVarM = LazyJavaPackageFragment.this.f9231g.a().m();
            String strB = LazyJavaPackageFragment.this.e().b();
            Intrinsics.checkExpressionValueIsNotNull(strB, "fqName.asString()");
            List<String> listA = oVarM.a(strB);
            ArrayList arrayList = new ArrayList();
            for (String str : listA) {
                JvmClassName jvmClassNameByInternalName = JvmClassName.byInternalName(str);
                Intrinsics.checkExpressionValueIsNotNull(jvmClassNameByInternalName, "JvmClassName.byInternalName(partName)");
                ClassId classId = ClassId.topLevel(jvmClassNameByInternalName.b());
                Intrinsics.checkExpressionValueIsNotNull(classId, "ClassId.topLevel(JvmClas…velClassMaybeWithDollars)");
                k kVarFindKotlinClass = KotlinClassFinderKt.findKotlinClass(LazyJavaPackageFragment.this.f9231g.a().h(), classId);
                Pair pair = kVarFindKotlinClass != null ? TuplesKt.to(str, kVarFindKotlinClass) : null;
                if (pair != null) {
                    arrayList.add(pair);
                }
            }
            return MapsKt__MapsKt.toMap(arrayList);
        }
    }

    /* JADX INFO: compiled from: LazyJavaPackageFragment.kt */
    static final class b extends Lambda implements Function0<HashMap<JvmClassName, JvmClassName>> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final HashMap<JvmClassName, JvmClassName> invoke() {
            HashMap<JvmClassName, JvmClassName> map = new HashMap<>();
            for (Map.Entry<String, k> entry : LazyJavaPackageFragment.this.e0().entrySet()) {
                String key = entry.getKey();
                k value = entry.getValue();
                JvmClassName jvmClassNameByInternalName = JvmClassName.byInternalName(key);
                Intrinsics.checkExpressionValueIsNotNull(jvmClassNameByInternalName, "JvmClassName.byInternalName(partInternalName)");
                KotlinClassHeader kotlinClassHeaderC = value.c();
                int i = kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b.a[kotlinClassHeaderC.c().ordinal()];
                if (i == 1) {
                    String strE = kotlinClassHeaderC.e();
                    if (strE != null) {
                        JvmClassName jvmClassNameByInternalName2 = JvmClassName.byInternalName(strE);
                        Intrinsics.checkExpressionValueIsNotNull(jvmClassNameByInternalName2, "JvmClassName.byInternalN…: continue@kotlinClasses)");
                        map.put(jvmClassNameByInternalName, jvmClassNameByInternalName2);
                    }
                } else if (i == 2) {
                    map.put(jvmClassNameByInternalName, jvmClassNameByInternalName);
                }
            }
            return map;
        }
    }

    /* JADX INFO: compiled from: LazyJavaPackageFragment.kt */
    static final class c extends Lambda implements Function0<List<? extends FqName>> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<FqName> invoke() {
            Collection<r> collectionQ = LazyJavaPackageFragment.this.m.q();
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(collectionQ, 10));
            Iterator<T> it = collectionQ.iterator();
            while (it.hasNext()) {
                arrayList.add(((r) it.next()).e());
            }
            return arrayList;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaPackageFragment(kotlin.reflect.jvm.internal.impl.load.java.lazy.d outerContext, r jPackage) {
        super(outerContext.d(), jPackage.e());
        Intrinsics.checkParameterIsNotNull(outerContext, "outerContext");
        Intrinsics.checkParameterIsNotNull(jPackage, "jPackage");
        this.m = jPackage;
        kotlin.reflect.jvm.internal.impl.load.java.lazy.d dVarChildForClassOrPackage$default = ContextKt.childForClassOrPackage$default(outerContext, this, null, 0, 6, null);
        this.f9231g = dVarChildForClassOrPackage$default;
        this.h = dVarChildForClassOrPackage$default.e().c(new a());
        this.i = new JvmPackageScope(dVarChildForClassOrPackage$default, jPackage, this);
        this.j = dVarChildForClassOrPackage$default.e().b(new c(), CollectionsKt__CollectionsKt.emptyList());
        this.k = dVarChildForClassOrPackage$default.a().a().b() ? Annotations.e0.b() : LazyJavaAnnotationsKt.resolveAnnotations(dVarChildForClassOrPackage$default, jPackage);
        this.l = dVarChildForClassOrPackage$default.e().c(new b());
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.d b0(f jClass) {
        Intrinsics.checkParameterIsNotNull(jClass, "jClass");
        return this.i.g().F(jClass);
    }

    public final Map<String, k> e0() {
        return (Map) StorageKt.getValue(this.h, this, (KProperty<?>) f9230f[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.b, kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public Annotations getAnnotations() {
        return this.k;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.t, kotlin.reflect.jvm.internal.impl.descriptors.impl.i, kotlin.reflect.jvm.internal.impl.descriptors.l
    public d0 getSource() {
        return new l(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
    /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
    public JvmPackageScope m() {
        return this.i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.t, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl
    public String toString() {
        return "Lazy Java package fragment: " + e();
    }

    public final List<FqName> z0() {
        return this.j.invoke();
    }
}
