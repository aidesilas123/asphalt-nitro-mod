package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.IntIterator;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: compiled from: NotFoundClasses.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class NotFoundClasses {
    private final kotlin.reflect.jvm.internal.impl.storage.b<FqName, s> a;
    private final kotlin.reflect.jvm.internal.impl.storage.b<a, kotlin.reflect.jvm.internal.impl.descriptors.d> b;
    private final kotlin.reflect.jvm.internal.impl.storage.h c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ModuleDescriptor f9095d;

    /* JADX INFO: compiled from: NotFoundClasses.kt */
    private static final class a {
        private final ClassId a;
        private final List<Integer> b;

        public a(ClassId classId, List<Integer> typeParametersCount) {
            Intrinsics.checkParameterIsNotNull(classId, "classId");
            Intrinsics.checkParameterIsNotNull(typeParametersCount, "typeParametersCount");
            this.a = classId;
            this.b = typeParametersCount;
        }

        public final ClassId a() {
            return this.a;
        }

        public final List<Integer> b() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.areEqual(this.a, aVar.a) && Intrinsics.areEqual(this.b, aVar.b);
        }

        public int hashCode() {
            ClassId classId = this.a;
            int iHashCode = (classId != null ? classId.hashCode() : 0) * 31;
            List<Integer> list = this.b;
            return iHashCode + (list != null ? list.hashCode() : 0);
        }

        public String toString() {
            return "ClassRequest(classId=" + this.a + ", typeParametersCount=" + this.b + ")";
        }
    }

    /* JADX INFO: compiled from: NotFoundClasses.kt */
    public static final class b extends kotlin.reflect.jvm.internal.impl.descriptors.impl.f {
        private final List<i0> i;
        private final kotlin.reflect.jvm.internal.impl.types.h j;
        private final boolean k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(kotlin.reflect.jvm.internal.impl.storage.h storageManager, i container, Name name, boolean z, int i) {
            super(storageManager, container, name, d0.a, false);
            Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
            Intrinsics.checkParameterIsNotNull(container, "container");
            Intrinsics.checkParameterIsNotNull(name, "name");
            this.k = z;
            IntRange intRangeUntil = RangesKt___RangesKt.until(0, i);
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(intRangeUntil, 10));
            Iterator<Integer> it = intRangeUntil.iterator();
            while (it.hasNext()) {
                int iNextInt = ((IntIterator) it).nextInt();
                Annotations annotationsB = Annotations.e0.b();
                Variance variance = Variance.INVARIANT;
                StringBuilder sb = new StringBuilder();
                sb.append('T');
                sb.append(iNextInt);
                arrayList.add(TypeParameterDescriptorImpl.createWithDefaultBound(this, annotationsB, false, variance, Name.identifier(sb.toString()), iNextInt, storageManager));
            }
            this.i = arrayList;
            this.j = new kotlin.reflect.jvm.internal.impl.types.h(this, arrayList, SetsKt__SetsJVMKt.setOf(DescriptorUtilsKt.getModule(this).k().j()), storageManager);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        public kotlin.reflect.jvm.internal.impl.descriptors.c A() {
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.p
        /* JADX INFO: renamed from: B0, reason: merged with bridge method [inline-methods] */
        public MemberScope.b Z(kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
            Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
            return MemberScope.b.b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        public boolean C0() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
        public boolean R() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        public boolean U() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
        public boolean c0() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        public Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> f() {
            return SetsKt__SetsKt.emptySet();
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        public kotlin.reflect.jvm.internal.impl.descriptors.d g0() {
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
        public Annotations getAnnotations() {
            return Annotations.e0.b();
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        public ClassKind getKind() {
            return ClassKind.CLASS;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.m, kotlin.reflect.jvm.internal.impl.descriptors.q
        public m0 getVisibility() {
            m0 m0Var = Visibilities.f9100e;
            Intrinsics.checkExpressionValueIsNotNull(m0Var, "Visibilities.PUBLIC");
            return m0Var;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.f, kotlin.reflect.jvm.internal.impl.descriptors.q
        public boolean isExternal() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        public boolean isInline() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
        public MemberScope.b f0() {
            return MemberScope.b.b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.g
        public List<i0> o() {
            return this.i;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.q
        public Modality p() {
            return Modality.FINAL;
        }

        public String toString() {
            return "class " + getName() + " (not found)";
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        public Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> v() {
            return CollectionsKt__CollectionsKt.emptyList();
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
        public boolean x() {
            return this.k;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.f
        /* JADX INFO: renamed from: z0, reason: merged with bridge method [inline-methods] */
        public kotlin.reflect.jvm.internal.impl.types.h i() {
            return this.j;
        }
    }

    /* JADX INFO: compiled from: NotFoundClasses.kt */
    static final class c extends Lambda implements Function1<a, b> {
        c() {
            super(1);
        }

        /* JADX WARN: Removed duplicated region for block: B:9:0x002c  */
        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses.b invoke(kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses.a r9) {
            /*
                r8 = this;
                java.lang.String r0 = "<name for destructuring parameter 0>"
                kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r9, r0)
                kotlin.reflect.jvm.internal.impl.name.ClassId r0 = r9.a()
                java.util.List r9 = r9.b()
                boolean r1 = r0.i()
                if (r1 != 0) goto L6c
                kotlin.reflect.jvm.internal.impl.name.ClassId r1 = r0.e()
                if (r1 == 0) goto L2c
                kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses r2 = kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses.this
                java.lang.String r3 = "outerClassId"
                kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r3)
                r3 = 1
                java.util.List r3 = kotlin.collections.p.drop(r9, r3)
                kotlin.reflect.jvm.internal.impl.descriptors.d r1 = r2.a(r1, r3)
                if (r1 == 0) goto L2c
                goto L41
            L2c:
                kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses r1 = kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses.this
                kotlin.reflect.jvm.internal.impl.storage.b r1 = kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses.access$getPackageFragments$p(r1)
                kotlin.reflect.jvm.internal.impl.name.FqName r2 = r0.f()
                java.lang.String r3 = "classId.packageFqName"
                kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r2, r3)
                java.lang.Object r1 = r1.invoke(r2)
                kotlin.reflect.jvm.internal.impl.descriptors.e r1 = (kotlin.reflect.jvm.internal.impl.descriptors.e) r1
            L41:
                r4 = r1
                boolean r6 = r0.j()
                kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses$b r1 = new kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses$b
                kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses r2 = kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses.this
                kotlin.reflect.jvm.internal.impl.storage.h r3 = kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses.access$getStorageManager$p(r2)
                kotlin.reflect.jvm.internal.impl.name.Name r5 = r0.h()
                java.lang.String r0 = "classId.shortClassName"
                kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r5, r0)
                java.lang.Object r9 = kotlin.collections.p.firstOrNull(r9)
                java.lang.Integer r9 = (java.lang.Integer) r9
                if (r9 == 0) goto L65
                int r9 = r9.intValue()
                r7 = r9
                goto L67
            L65:
                r9 = 0
                r7 = 0
            L67:
                r2 = r1
                r2.<init>(r3, r4, r5, r6, r7)
                return r1
            L6c:
                java.lang.UnsupportedOperationException r9 = new java.lang.UnsupportedOperationException
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "Unresolved local class: "
                r1.append(r2)
                r1.append(r0)
                java.lang.String r0 = r1.toString()
                r9.<init>(r0)
                throw r9
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses.c.invoke(kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses$a):kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses$b");
        }
    }

    /* JADX INFO: compiled from: NotFoundClasses.kt */
    static final class d extends Lambda implements Function1<FqName, kotlin.reflect.jvm.internal.impl.descriptors.impl.k> {
        d() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final kotlin.reflect.jvm.internal.impl.descriptors.impl.k invoke(FqName fqName) {
            Intrinsics.checkParameterIsNotNull(fqName, "fqName");
            return new kotlin.reflect.jvm.internal.impl.descriptors.impl.k(NotFoundClasses.this.f9095d, fqName);
        }
    }

    public NotFoundClasses(kotlin.reflect.jvm.internal.impl.storage.h storageManager, ModuleDescriptor module) {
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        Intrinsics.checkParameterIsNotNull(module, "module");
        this.c = storageManager;
        this.f9095d = module;
        this.a = storageManager.h(new d());
        this.b = storageManager.h(new c());
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.d a(ClassId classId, List<Integer> typeParametersCount) {
        Intrinsics.checkParameterIsNotNull(classId, "classId");
        Intrinsics.checkParameterIsNotNull(typeParametersCount, "typeParametersCount");
        return this.b.invoke(new a(classId, typeParametersCount));
    }
}
