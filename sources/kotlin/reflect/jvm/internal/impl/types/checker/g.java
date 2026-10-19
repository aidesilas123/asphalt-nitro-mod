package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.constants.p;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancementKt;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.g0;
import kotlin.reflect.jvm.internal.impl.types.m0;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.t;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: compiled from: NewKotlinTypeChecker.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class g implements f {
    private final OverridingUtil c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d f9858d;

    public g(d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        this.f9858d = kotlinTypeRefiner;
        OverridingUtil overridingUtilCreateWithTypeRefiner = OverridingUtil.createWithTypeRefiner(c());
        Intrinsics.checkExpressionValueIsNotNull(overridingUtilCreateWithTypeRefiner, "OverridingUtil.createWit…efiner(kotlinTypeRefiner)");
        this.c = overridingUtilCreateWithTypeRefiner;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.f
    public OverridingUtil a() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.c
    public boolean b(u a, u b) {
        Intrinsics.checkParameterIsNotNull(a, "a");
        Intrinsics.checkParameterIsNotNull(b, "b");
        return e(new a(false, false, false, c(), 6, null), a.K0(), b.K0());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.f
    public d c() {
        return this.f9858d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.c
    public boolean d(u subtype, u supertype) {
        Intrinsics.checkParameterIsNotNull(subtype, "subtype");
        Intrinsics.checkParameterIsNotNull(supertype, "supertype");
        return f(new a(true, false, false, c(), 6, null), subtype.K0(), supertype.K0());
    }

    public final boolean e(a equalTypes, m0 a, m0 b) {
        Intrinsics.checkParameterIsNotNull(equalTypes, "$this$equalTypes");
        Intrinsics.checkParameterIsNotNull(a, "a");
        Intrinsics.checkParameterIsNotNull(b, "b");
        return kotlin.reflect.jvm.internal.impl.types.f.b.g(equalTypes, a, b);
    }

    public final boolean f(a isSubtypeOf, m0 subType, m0 superType) {
        Intrinsics.checkParameterIsNotNull(isSubtypeOf, "$this$isSubtypeOf");
        Intrinsics.checkParameterIsNotNull(subType, "subType");
        Intrinsics.checkParameterIsNotNull(superType, "superType");
        return kotlin.reflect.jvm.internal.impl.types.f.b.l(isSubtypeOf, subType, superType);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [kotlin.reflect.jvm.internal.impl.types.m0] */
    /* JADX WARN: Type inference failed for: r1v2, types: [kotlin.reflect.jvm.internal.impl.types.t] */
    /* JADX WARN: Type inference failed for: r1v3, types: [kotlin.reflect.jvm.internal.impl.types.t] */
    /* JADX WARN: Type inference failed for: r1v4 */
    public final y g(y type) {
        u type2;
        Intrinsics.checkParameterIsNotNull(type, "type");
        f0 f0VarH0 = type.H0();
        boolean z = false;
        if (f0VarH0 instanceof kotlin.reflect.jvm.internal.impl.resolve.calls.inference.c) {
            kotlin.reflect.jvm.internal.impl.resolve.calls.inference.c cVar = (kotlin.reflect.jvm.internal.impl.resolve.calls.inference.c) f0VarH0;
            g0 g0VarB = cVar.b();
            if (!(g0VarB.c() == Variance.IN_VARIANCE)) {
                g0VarB = null;
            }
            if (g0VarB != null && (type2 = g0VarB.getType()) != null) {
                tVar = type2.K0();
            }
            ?? r10 = tVar;
            if (cVar.f() == null) {
                g0 g0VarB2 = cVar.b();
                Collection<u> collectionH = cVar.h();
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(collectionH, 10));
                Iterator it = collectionH.iterator();
                while (it.hasNext()) {
                    arrayList.add(((u) it.next()).K0());
                }
                cVar.i(new NewCapturedTypeConstructor(g0VarB2, arrayList, null, 4, null));
            }
            CaptureStatus captureStatus = CaptureStatus.FOR_SUBTYPING;
            NewCapturedTypeConstructor newCapturedTypeConstructorF = cVar.f();
            if (newCapturedTypeConstructorF == null) {
                Intrinsics.throwNpe();
            }
            return new e(captureStatus, newCapturedTypeConstructorF, r10, type.getAnnotations(), type.I0());
        }
        if (f0VarH0 instanceof p) {
            Collection<u> collectionH2 = ((p) f0VarH0).h();
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(collectionH2, 10));
            Iterator it2 = collectionH2.iterator();
            while (it2.hasNext()) {
                arrayList2.add(TypeUtils.makeNullableAsSpecified((u) it2.next(), type.I0()));
            }
            return KotlinTypeFactory.simpleTypeWithNonTrivialMemberScope(type.getAnnotations(), new t(arrayList2), CollectionsKt__CollectionsKt.emptyList(), false, type.m());
        }
        if (!(f0VarH0 instanceof t) || !type.I0()) {
            return type;
        }
        ?? r1 = (t) f0VarH0;
        Collection<u> collectionH3 = r1.h();
        ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(collectionH3, 10));
        Iterator it3 = collectionH3.iterator();
        while (it3.hasNext()) {
            arrayList3.add(TypeUtilsKt.makeNullable((u) it3.next()));
            z = true;
        }
        tVar = z ? new t(arrayList3) : null;
        if (tVar != null) {
            r1 = tVar;
        }
        return r1.f();
    }

    public m0 h(m0 type) {
        m0 m0VarFlexibleType;
        Intrinsics.checkParameterIsNotNull(type, "type");
        if (type instanceof y) {
            m0VarFlexibleType = g((y) type);
        } else {
            if (!(type instanceof kotlin.reflect.jvm.internal.impl.types.p)) {
                throw new NoWhenBranchMatchedException();
            }
            kotlin.reflect.jvm.internal.impl.types.p pVar = (kotlin.reflect.jvm.internal.impl.types.p) type;
            y yVarG = g(pVar.P0());
            y yVarG2 = g(pVar.Q0());
            m0VarFlexibleType = (yVarG == pVar.P0() && yVarG2 == pVar.Q0()) ? type : KotlinTypeFactory.flexibleType(yVarG, yVarG2);
        }
        return TypeWithEnhancementKt.inheritEnhancement(m0VarFlexibleType, type);
    }
}
