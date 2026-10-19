package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Collection;
import kotlin.collections.p;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.q;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.types.checker.c;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: compiled from: DescriptorEquivalenceForOverrides.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class DescriptorEquivalenceForOverrides {
    public static final DescriptorEquivalenceForOverrides a = new DescriptorEquivalenceForOverrides();

    /* JADX INFO: compiled from: DescriptorEquivalenceForOverrides.kt */
    static final class a extends Lambda implements Function2<i, i, Boolean> {
        public static final a a = new a();

        a() {
            super(2);
        }

        public final boolean a(i iVar, i iVar2) {
            return false;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Boolean invoke(i iVar, i iVar2) {
            return Boolean.valueOf(a(iVar, iVar2));
        }
    }

    /* JADX INFO: compiled from: DescriptorEquivalenceForOverrides.kt */
    static final class b implements c.a {
        final /* synthetic */ boolean a;
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.a b;
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.a c;

        /* JADX INFO: compiled from: DescriptorEquivalenceForOverrides.kt */
        static final class a extends Lambda implements Function2<i, i, Boolean> {
            a() {
                super(2);
            }

            public final boolean a(i iVar, i iVar2) {
                return Intrinsics.areEqual(iVar, b.this.b) && Intrinsics.areEqual(iVar2, b.this.c);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Boolean invoke(i iVar, i iVar2) {
                return Boolean.valueOf(a(iVar, iVar2));
            }
        }

        b(boolean z, kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2) {
            this.a = z;
            this.b = aVar;
            this.c = aVar2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.c.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final boolean a(f0 c1, f0 c2) {
            Intrinsics.checkParameterIsNotNull(c1, "c1");
            Intrinsics.checkParameterIsNotNull(c2, "c2");
            if (Intrinsics.areEqual(c1, c2)) {
                return true;
            }
            f fVarC = c1.q();
            f fVarC2 = c2.q();
            if ((fVarC instanceof i0) && (fVarC2 instanceof i0)) {
                return DescriptorEquivalenceForOverrides.a.d((i0) fVarC, (i0) fVarC2, this.a, new a());
            }
            return false;
        }
    }

    /* JADX INFO: compiled from: DescriptorEquivalenceForOverrides.kt */
    static final class c extends Lambda implements Function2<i, i, Boolean> {
        public static final c a = new c();

        c() {
            super(2);
        }

        public final boolean a(i iVar, i iVar2) {
            return false;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Boolean invoke(i iVar, i iVar2) {
            return Boolean.valueOf(a(iVar, iVar2));
        }
    }

    private DescriptorEquivalenceForOverrides() {
    }

    public static /* synthetic */ boolean areCallableDescriptorsEquivalent$default(DescriptorEquivalenceForOverrides descriptorEquivalenceForOverrides, kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2, boolean z, boolean z2, int i, Object obj) {
        if ((i & 8) != 0) {
            z2 = false;
        }
        return descriptorEquivalenceForOverrides.a(aVar, aVar2, z, z2);
    }

    private final boolean b(d dVar, d dVar2) {
        return Intrinsics.areEqual(dVar.i(), dVar2.i());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean d(i0 i0Var, i0 i0Var2, boolean z, Function2<? super i, ? super i, Boolean> function2) {
        if (Intrinsics.areEqual(i0Var, i0Var2)) {
            return true;
        }
        return !Intrinsics.areEqual(i0Var.b(), i0Var2.b()) && f(i0Var, i0Var2, function2, z) && i0Var.h() == i0Var2.h();
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ boolean e(DescriptorEquivalenceForOverrides descriptorEquivalenceForOverrides, i0 i0Var, i0 i0Var2, boolean z, Function2 function2, int i, Object obj) {
        if ((i & 8) != 0) {
            function2 = c.a;
        }
        return descriptorEquivalenceForOverrides.d(i0Var, i0Var2, z, function2);
    }

    private final boolean f(i iVar, i iVar2, Function2<? super i, ? super i, Boolean> function2, boolean z) {
        i iVarB = iVar.b();
        i iVarB2 = iVar2.b();
        return ((iVarB instanceof CallableMemberDescriptor) || (iVarB2 instanceof CallableMemberDescriptor)) ? function2.invoke(iVarB, iVarB2).booleanValue() : c(iVarB, iVarB2, z);
    }

    private final d0 g(kotlin.reflect.jvm.internal.impl.descriptors.a aVar) {
        while (aVar instanceof CallableMemberDescriptor) {
            CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) aVar;
            if (callableMemberDescriptor.getKind() != CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
                break;
            }
            Collection<? extends CallableMemberDescriptor> overriddenDescriptors = callableMemberDescriptor.d();
            Intrinsics.checkExpressionValueIsNotNull(overriddenDescriptors, "overriddenDescriptors");
            aVar = (CallableMemberDescriptor) p.singleOrNull(overriddenDescriptors);
            if (aVar == null) {
                return null;
            }
        }
        return aVar.getSource();
    }

    public final boolean a(kotlin.reflect.jvm.internal.impl.descriptors.a a2, kotlin.reflect.jvm.internal.impl.descriptors.a b2, boolean z, boolean z2) {
        Intrinsics.checkParameterIsNotNull(a2, "a");
        Intrinsics.checkParameterIsNotNull(b2, "b");
        if (Intrinsics.areEqual(a2, b2)) {
            return true;
        }
        if (!Intrinsics.areEqual(a2.getName(), b2.getName())) {
            return false;
        }
        if (Intrinsics.areEqual(a2.b(), b2.b())) {
            if (!z || (!Intrinsics.areEqual(g(a2), g(b2)))) {
                return false;
            }
            if ((a2 instanceof q) && (b2 instanceof q) && ((q) a2).c0() != ((q) b2).c0()) {
                return false;
            }
        }
        if (DescriptorUtils.isLocal(a2) || DescriptorUtils.isLocal(b2) || !f(a2, b2, a.a, z)) {
            return false;
        }
        OverridingUtil overridingUtilCreateWithEqualityAxioms = OverridingUtil.createWithEqualityAxioms(new b(z, a2, b2));
        Intrinsics.checkExpressionValueIsNotNull(overridingUtilCreateWithEqualityAxioms, "OverridingUtil.createWit…= a && y == b }\n        }");
        OverridingUtil.OverrideCompatibilityInfo overrideCompatibilityInfoV = overridingUtilCreateWithEqualityAxioms.v(a2, b2, null, !z2);
        Intrinsics.checkExpressionValueIsNotNull(overrideCompatibilityInfoV, "overridingUtil.isOverrid… null, !ignoreReturnType)");
        OverridingUtil.OverrideCompatibilityInfo.Result resultB = overrideCompatibilityInfoV.b();
        OverridingUtil.OverrideCompatibilityInfo.Result result = OverridingUtil.OverrideCompatibilityInfo.Result.OVERRIDABLE;
        if (resultB == result) {
            OverridingUtil.OverrideCompatibilityInfo overrideCompatibilityInfoV2 = overridingUtilCreateWithEqualityAxioms.v(b2, a2, null, !z2);
            Intrinsics.checkExpressionValueIsNotNull(overrideCompatibilityInfoV2, "overridingUtil.isOverrid… null, !ignoreReturnType)");
            if (overrideCompatibilityInfoV2.b() == result) {
                return true;
            }
        }
        return false;
    }

    public final boolean c(i iVar, i iVar2, boolean z) {
        return ((iVar instanceof d) && (iVar2 instanceof d)) ? b((d) iVar, (d) iVar2) : ((iVar instanceof i0) && (iVar2 instanceof i0)) ? e(this, (i0) iVar, (i0) iVar2, z, null, 8, null) : ((iVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.a) && (iVar2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.a)) ? areCallableDescriptorsEquivalent$default(this, (kotlin.reflect.jvm.internal.impl.descriptors.a) iVar, (kotlin.reflect.jvm.internal.impl.descriptors.a) iVar2, z, false, 8, null) : ((iVar instanceof s) && (iVar2 instanceof s)) ? Intrinsics.areEqual(((s) iVar).e(), ((s) iVar2).e()) : Intrinsics.areEqual(iVar, iVar2);
    }
}
