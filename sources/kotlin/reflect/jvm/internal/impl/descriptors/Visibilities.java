package kotlin.reflect.jvm.internal.impl.descriptors;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.common.internal.ImagesContract;
import com.json.z5;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.ServiceLoader;
import java.util.Set;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.types.DynamicTypesKt;
import kotlin.reflect.jvm.internal.impl.util.f;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;

/* JADX INFO: loaded from: classes5.dex */
public class Visibilities {
    public static final m0 a;
    public static final m0 b;
    public static final m0 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final m0 f9099d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final m0 f9100e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final m0 f9101f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final m0 f9102g;
    public static final m0 h;
    public static final m0 i;
    public static final Set<m0> j;
    private static final Map<m0, Integer> k;
    public static final m0 l;
    private static final kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d m;
    public static final kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d n;

    @Deprecated
    public static final kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d o;
    private static final kotlin.reflect.jvm.internal.impl.util.f p;

    static class a implements kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d
        public kotlin.reflect.jvm.internal.impl.types.u getType() {
            throw new IllegalStateException("This method should not be called");
        }
    }

    static class b implements kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d {
        b() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d
        public kotlin.reflect.jvm.internal.impl.types.u getType() {
            throw new IllegalStateException("This method should not be called");
        }
    }

    static class c implements kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d {
        c() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d
        public kotlin.reflect.jvm.internal.impl.types.u getType() {
            throw new IllegalStateException("This method should not be called");
        }
    }

    static class d extends m0 {
        d(String str, boolean z) {
            super(str, z);
        }

        private static /* synthetic */ void f(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "what";
            } else if (i != 2) {
                objArr[0] = "descriptor";
            } else {
                objArr[0] = TypedValues.TransitionType.S_FROM;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/Visibilities$1";
            if (i == 1 || i == 2) {
                objArr[2] = z5.k;
            } else {
                objArr[2] = "hasContainingSourceFile";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        private boolean g(kotlin.reflect.jvm.internal.impl.descriptors.i iVar) {
            if (iVar == null) {
                f(0);
            }
            return DescriptorUtils.getContainingSourceFile(iVar) != e0.a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m0
        public boolean d(kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d dVar, m mVar, kotlin.reflect.jvm.internal.impl.descriptors.i iVar) {
            if (mVar == 0) {
                f(1);
            }
            if (iVar == null) {
                f(2);
            }
            if (DescriptorUtils.isTopLevelDeclaration(mVar) && g(iVar)) {
                return Visibilities.inSameFile(mVar, iVar);
            }
            if (mVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.h) {
                kotlin.reflect.jvm.internal.impl.descriptors.g gVarB = ((kotlin.reflect.jvm.internal.impl.descriptors.h) mVar).b();
                if (DescriptorUtils.isSealedClass(gVarB) && DescriptorUtils.isTopLevelDeclaration(gVarB) && (iVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.h) && DescriptorUtils.isTopLevelDeclaration(iVar.b()) && Visibilities.inSameFile(mVar, iVar)) {
                    return true;
                }
            }
            while (mVar != 0) {
                mVar = mVar.b();
                if (((mVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) && !DescriptorUtils.isCompanionObject(mVar)) || (mVar instanceof s)) {
                    break;
                }
            }
            if (mVar == 0) {
                return false;
            }
            while (iVar != null) {
                if (mVar == iVar) {
                    return true;
                }
                if (iVar instanceof s) {
                    return (mVar instanceof s) && ((s) mVar).e().equals(((s) iVar).e()) && DescriptorUtils.areInSameModule(iVar, mVar);
                }
                iVar = iVar.b();
            }
            return false;
        }
    }

    static class e extends m0 {
        e(String str, boolean z) {
            super(str, z);
        }

        private static /* synthetic */ void f(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = TypedValues.TransitionType.S_FROM;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/Visibilities$2";
            objArr[2] = z5.k;
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m0
        public String b() {
            return "private/*private to this*/";
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m0
        public boolean d(kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d dVar, m mVar, kotlin.reflect.jvm.internal.impl.descriptors.i iVar) {
            kotlin.reflect.jvm.internal.impl.descriptors.i parentOfType;
            if (mVar == null) {
                f(0);
            }
            if (iVar == null) {
                f(1);
            }
            if (Visibilities.a.d(dVar, mVar, iVar)) {
                if (dVar == Visibilities.n) {
                    return true;
                }
                if (dVar != Visibilities.m && (parentOfType = DescriptorUtils.getParentOfType(mVar, kotlin.reflect.jvm.internal.impl.descriptors.d.class)) != null && (dVar instanceof kotlin.reflect.jvm.internal.impl.resolve.scopes.g.f)) {
                    return ((kotlin.reflect.jvm.internal.impl.resolve.scopes.g.f) dVar).q().a().equals(parentOfType.a());
                }
            }
            return false;
        }
    }

    static class f extends m0 {
        f(String str, boolean z) {
            super(str, z);
        }

        private static /* synthetic */ void f(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = TypedValues.TransitionType.S_FROM;
            } else if (i == 2) {
                objArr[0] = "whatDeclaration";
            } else if (i != 3) {
                objArr[0] = "what";
            } else {
                objArr[0] = "fromClass";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/Visibilities$3";
            if (i == 2 || i == 3) {
                objArr[2] = "doesReceiverFitForProtectedVisibility";
            } else {
                objArr[2] = z5.k;
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        private boolean g(kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d dVar, m mVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar2) {
            if (mVar == null) {
                f(2);
            }
            if (dVar2 == null) {
                f(3);
            }
            if (dVar == Visibilities.o) {
                return false;
            }
            if (!(mVar instanceof CallableMemberDescriptor) || (mVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.h) || dVar == Visibilities.n) {
                return true;
            }
            if (dVar == Visibilities.m || dVar == null) {
                return false;
            }
            kotlin.reflect.jvm.internal.impl.types.u uVarA = dVar instanceof kotlin.reflect.jvm.internal.impl.resolve.scopes.g.e ? ((kotlin.reflect.jvm.internal.impl.resolve.scopes.g.e) dVar).a() : dVar.getType();
            return DescriptorUtils.isSubtypeOfClass(uVarA, dVar2) || DynamicTypesKt.isDynamic(uVarA);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m0
        public boolean d(kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d dVar, m mVar, kotlin.reflect.jvm.internal.impl.descriptors.i iVar) {
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar2;
            if (mVar == null) {
                f(0);
            }
            if (iVar == null) {
                f(1);
            }
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar3 = (kotlin.reflect.jvm.internal.impl.descriptors.d) DescriptorUtils.getParentOfType(mVar, kotlin.reflect.jvm.internal.impl.descriptors.d.class);
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar4 = (kotlin.reflect.jvm.internal.impl.descriptors.d) DescriptorUtils.getParentOfType(iVar, kotlin.reflect.jvm.internal.impl.descriptors.d.class, false);
            if (dVar4 == null) {
                return false;
            }
            if (dVar3 != null && DescriptorUtils.isCompanionObject(dVar3) && (dVar2 = (kotlin.reflect.jvm.internal.impl.descriptors.d) DescriptorUtils.getParentOfType(dVar3, kotlin.reflect.jvm.internal.impl.descriptors.d.class)) != null && DescriptorUtils.isSubclass(dVar4, dVar2)) {
                return true;
            }
            m mVarUnwrapFakeOverrideToAnyDeclaration = DescriptorUtils.unwrapFakeOverrideToAnyDeclaration(mVar);
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar5 = (kotlin.reflect.jvm.internal.impl.descriptors.d) DescriptorUtils.getParentOfType(mVarUnwrapFakeOverrideToAnyDeclaration, kotlin.reflect.jvm.internal.impl.descriptors.d.class);
            if (dVar5 == null) {
                return false;
            }
            if (DescriptorUtils.isSubclass(dVar4, dVar5) && g(dVar, mVarUnwrapFakeOverrideToAnyDeclaration, dVar4)) {
                return true;
            }
            return d(dVar, mVar, dVar4.b());
        }
    }

    static class g extends m0 {
        g(String str, boolean z) {
            super(str, z);
        }

        private static /* synthetic */ void f(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = TypedValues.TransitionType.S_FROM;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/Visibilities$4";
            objArr[2] = z5.k;
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m0
        public boolean d(kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d dVar, m mVar, kotlin.reflect.jvm.internal.impl.descriptors.i iVar) {
            if (mVar == null) {
                f(0);
            }
            if (iVar == null) {
                f(1);
            }
            if (DescriptorUtils.getContainingModule(iVar).G(DescriptorUtils.getContainingModule(mVar))) {
                return Visibilities.p.a(mVar, iVar);
            }
            return false;
        }
    }

    static class h extends m0 {
        h(String str, boolean z) {
            super(str, z);
        }

        private static /* synthetic */ void f(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = TypedValues.TransitionType.S_FROM;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/Visibilities$5";
            objArr[2] = z5.k;
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m0
        public boolean d(kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d dVar, m mVar, kotlin.reflect.jvm.internal.impl.descriptors.i iVar) {
            if (mVar == null) {
                f(0);
            }
            if (iVar == null) {
                f(1);
            }
            return true;
        }
    }

    static class i extends m0 {
        i(String str, boolean z) {
            super(str, z);
        }

        private static /* synthetic */ void f(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = TypedValues.TransitionType.S_FROM;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/Visibilities$6";
            objArr[2] = z5.k;
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m0
        public boolean d(kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d dVar, m mVar, kotlin.reflect.jvm.internal.impl.descriptors.i iVar) {
            if (mVar == null) {
                f(0);
            }
            if (iVar == null) {
                f(1);
            }
            throw new IllegalStateException("This method shouldn't be invoked for LOCAL visibility");
        }
    }

    static class j extends m0 {
        j(String str, boolean z) {
            super(str, z);
        }

        private static /* synthetic */ void f(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = TypedValues.TransitionType.S_FROM;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/Visibilities$7";
            objArr[2] = z5.k;
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m0
        public boolean d(kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d dVar, m mVar, kotlin.reflect.jvm.internal.impl.descriptors.i iVar) {
            if (mVar == null) {
                f(0);
            }
            if (iVar == null) {
                f(1);
            }
            throw new IllegalStateException("Visibility is unknown yet");
        }
    }

    static class k extends m0 {
        k(String str, boolean z) {
            super(str, z);
        }

        private static /* synthetic */ void f(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = TypedValues.TransitionType.S_FROM;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/Visibilities$8";
            objArr[2] = z5.k;
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m0
        public boolean d(kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d dVar, m mVar, kotlin.reflect.jvm.internal.impl.descriptors.i iVar) {
            if (mVar == null) {
                f(0);
            }
            if (iVar == null) {
                f(1);
            }
            return false;
        }
    }

    static class l extends m0 {
        l(String str, boolean z) {
            super(str, z);
        }

        private static /* synthetic */ void f(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = TypedValues.TransitionType.S_FROM;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/Visibilities$9";
            objArr[2] = z5.k;
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m0
        public boolean d(kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d dVar, m mVar, kotlin.reflect.jvm.internal.impl.descriptors.i iVar) {
            if (mVar == null) {
                f(0);
            }
            if (iVar == null) {
                f(1);
            }
            return false;
        }
    }

    static {
        d dVar = new d("private", false);
        a = dVar;
        e eVar = new e("private_to_this", false);
        b = eVar;
        f fVar = new f("protected", true);
        c = fVar;
        g gVar = new g("internal", false);
        f9099d = gVar;
        h hVar = new h("public", true);
        f9100e = hVar;
        i iVar = new i(ImagesContract.LOCAL, false);
        f9101f = iVar;
        f9102g = new j("inherited", false);
        h = new k("invisible_fake", false);
        i = new l("unknown", false);
        j = Collections.unmodifiableSet(SetsKt__SetsKt.setOf((Object[]) new m0[]{dVar, eVar, gVar, iVar}));
        HashMap mapNewHashMapWithExpectedSize = CollectionsKt.newHashMapWithExpectedSize(4);
        mapNewHashMapWithExpectedSize.put(eVar, 0);
        mapNewHashMapWithExpectedSize.put(dVar, 0);
        mapNewHashMapWithExpectedSize.put(gVar, 1);
        mapNewHashMapWithExpectedSize.put(fVar, 1);
        mapNewHashMapWithExpectedSize.put(hVar, 2);
        k = Collections.unmodifiableMap(mapNewHashMapWithExpectedSize);
        l = hVar;
        m = new a();
        n = new b();
        o = new c();
        Iterator it = ServiceLoader.load(kotlin.reflect.jvm.internal.impl.util.f.class, kotlin.reflect.jvm.internal.impl.util.f.class.getClassLoader()).iterator();
        p = it.hasNext() ? (kotlin.reflect.jvm.internal.impl.util.f) it.next() : f.a.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static /* synthetic */ void a(int r4) {
        /*
            r0 = 3
            java.lang.Object[] r1 = new java.lang.Object[r0]
            r2 = 1
            r3 = 0
            if (r4 == r2) goto L26
            if (r4 == r0) goto L26
            r0 = 5
            if (r4 == r0) goto L26
            r0 = 7
            if (r4 == r0) goto L26
            switch(r4) {
                case 9: goto L26;
                case 10: goto L21;
                case 11: goto L1c;
                case 12: goto L21;
                case 13: goto L1c;
                case 14: goto L17;
                default: goto L12;
            }
        L12:
            java.lang.String r0 = "what"
            r1[r3] = r0
            goto L2a
        L17:
            java.lang.String r0 = "visibility"
            r1[r3] = r0
            goto L2a
        L1c:
            java.lang.String r0 = "second"
            r1[r3] = r0
            goto L2a
        L21:
            java.lang.String r0 = "first"
            r1[r3] = r0
            goto L2a
        L26:
            java.lang.String r0 = "from"
            r1[r3] = r0
        L2a:
            java.lang.String r0 = "kotlin/reflect/jvm/internal/impl/descriptors/Visibilities"
            r1[r2] = r0
            r0 = 2
            switch(r4) {
                case 2: goto L55;
                case 3: goto L55;
                case 4: goto L50;
                case 5: goto L50;
                case 6: goto L4b;
                case 7: goto L4b;
                case 8: goto L46;
                case 9: goto L46;
                case 10: goto L41;
                case 11: goto L41;
                case 12: goto L3c;
                case 13: goto L3c;
                case 14: goto L37;
                default: goto L32;
            }
        L32:
            java.lang.String r4 = "isVisible"
            r1[r0] = r4
            goto L59
        L37:
            java.lang.String r4 = "isPrivate"
            r1[r0] = r4
            goto L59
        L3c:
            java.lang.String r4 = "compare"
            r1[r0] = r4
            goto L59
        L41:
            java.lang.String r4 = "compareLocal"
            r1[r0] = r4
            goto L59
        L46:
            java.lang.String r4 = "findInvisibleMember"
            r1[r0] = r4
            goto L59
        L4b:
            java.lang.String r4 = "inSameFile"
            r1[r0] = r4
            goto L59
        L50:
            java.lang.String r4 = "isVisibleWithAnyReceiver"
            r1[r0] = r4
            goto L59
        L55:
            java.lang.String r4 = "isVisibleIgnoringReceiver"
            r1[r0] = r4
        L59:
            java.lang.String r4 = "Argument for @NotNull parameter '%s' of %s.%s must not be null"
            java.lang.String r4 = java.lang.String.format(r4, r1)
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r0.<init>(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.Visibilities.a(int):void");
    }

    public static Integer compare(m0 m0Var, m0 m0Var2) {
        if (m0Var == null) {
            a(12);
        }
        if (m0Var2 == null) {
            a(13);
        }
        Integer numA = m0Var.a(m0Var2);
        if (numA != null) {
            return numA;
        }
        Integer numA2 = m0Var2.a(m0Var);
        if (numA2 != null) {
            return Integer.valueOf(-numA2.intValue());
        }
        return null;
    }

    static Integer d(m0 m0Var, m0 m0Var2) {
        if (m0Var == null) {
            a(10);
        }
        if (m0Var2 == null) {
            a(11);
        }
        if (m0Var == m0Var2) {
            return 0;
        }
        Map<m0, Integer> map = k;
        Integer num = map.get(m0Var);
        Integer num2 = map.get(m0Var2);
        if (num == null || num2 == null || num.equals(num2)) {
            return null;
        }
        return Integer.valueOf(num.intValue() - num2.intValue());
    }

    public static m findInvisibleMember(kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d dVar, m mVar, kotlin.reflect.jvm.internal.impl.descriptors.i iVar) {
        m mVarFindInvisibleMember;
        if (mVar == null) {
            a(8);
        }
        if (iVar == null) {
            a(9);
        }
        for (m mVar2 = (m) mVar.a(); mVar2 != null && mVar2.getVisibility() != f9101f; mVar2 = (m) DescriptorUtils.getParentOfType(mVar2, m.class)) {
            if (!mVar2.getVisibility().d(dVar, mVar2, iVar)) {
                return mVar2;
            }
        }
        if (!(mVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.impl.y) || (mVarFindInvisibleMember = findInvisibleMember(dVar, ((kotlin.reflect.jvm.internal.impl.descriptors.impl.y) mVar).N(), iVar)) == null) {
            return null;
        }
        return mVarFindInvisibleMember;
    }

    public static boolean inSameFile(kotlin.reflect.jvm.internal.impl.descriptors.i iVar, kotlin.reflect.jvm.internal.impl.descriptors.i iVar2) {
        if (iVar == null) {
            a(6);
        }
        if (iVar2 == null) {
            a(7);
        }
        e0 containingSourceFile = DescriptorUtils.getContainingSourceFile(iVar2);
        if (containingSourceFile != e0.a) {
            return containingSourceFile.equals(DescriptorUtils.getContainingSourceFile(iVar));
        }
        return false;
    }

    public static boolean isPrivate(m0 m0Var) {
        if (m0Var == null) {
            a(14);
        }
        return m0Var == a || m0Var == b;
    }

    public static boolean isVisibleIgnoringReceiver(m mVar, kotlin.reflect.jvm.internal.impl.descriptors.i iVar) {
        if (mVar == null) {
            a(2);
        }
        if (iVar == null) {
            a(3);
        }
        return findInvisibleMember(n, mVar, iVar) == null;
    }
}
