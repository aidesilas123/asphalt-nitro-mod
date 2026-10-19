package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.Collection;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SpecialTypes.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class SpecialTypesKt {
    private static final t a(t tVar) {
        Collection<u> collectionH = tVar.h();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(collectionH, 10));
        boolean z = false;
        for (u uVarMakeDefinitelyNotNullOrNotNull : collectionH) {
            if (TypeUtils.isNullableType(uVarMakeDefinitelyNotNullOrNotNull)) {
                z = true;
                uVarMakeDefinitelyNotNullOrNotNull = makeDefinitelyNotNullOrNotNull(uVarMakeDefinitelyNotNullOrNotNull.K0());
            }
            arrayList.add(uVarMakeDefinitelyNotNullOrNotNull);
        }
        if (z) {
            return new t(arrayList);
        }
        return null;
    }

    private static final y b(u uVar) {
        t tVarA;
        f0 f0VarH0 = uVar.H0();
        if (!(f0VarH0 instanceof t)) {
            f0VarH0 = null;
        }
        t tVar = (t) f0VarH0;
        if (tVar == null || (tVarA = a(tVar)) == null) {
            return null;
        }
        return tVarA.f();
    }

    public static final a getAbbreviatedType(u getAbbreviatedType) {
        Intrinsics.checkParameterIsNotNull(getAbbreviatedType, "$this$getAbbreviatedType");
        m0 m0VarK0 = getAbbreviatedType.K0();
        if (!(m0VarK0 instanceof a)) {
            m0VarK0 = null;
        }
        return (a) m0VarK0;
    }

    public static final y getAbbreviation(u getAbbreviation) {
        Intrinsics.checkParameterIsNotNull(getAbbreviation, "$this$getAbbreviation");
        a abbreviatedType = getAbbreviatedType(getAbbreviation);
        if (abbreviatedType != null) {
            return abbreviatedType.T0();
        }
        return null;
    }

    public static final boolean isDefinitelyNotNullType(u isDefinitelyNotNullType) {
        Intrinsics.checkParameterIsNotNull(isDefinitelyNotNullType, "$this$isDefinitelyNotNullType");
        return isDefinitelyNotNullType.K0() instanceof j;
    }

    public static final m0 makeDefinitelyNotNullOrNotNull(m0 makeDefinitelyNotNullOrNotNull) {
        Intrinsics.checkParameterIsNotNull(makeDefinitelyNotNullOrNotNull, "$this$makeDefinitelyNotNullOrNotNull");
        m0 m0VarA = j.b.a(makeDefinitelyNotNullOrNotNull);
        if (m0VarA == null) {
            m0VarA = b(makeDefinitelyNotNullOrNotNull);
        }
        return m0VarA != null ? m0VarA : makeDefinitelyNotNullOrNotNull.L0(false);
    }

    public static final y makeSimpleTypeDefinitelyNotNullOrNotNull(y makeSimpleTypeDefinitelyNotNullOrNotNull) {
        Intrinsics.checkParameterIsNotNull(makeSimpleTypeDefinitelyNotNullOrNotNull, "$this$makeSimpleTypeDefinitelyNotNullOrNotNull");
        y yVarA = j.b.a(makeSimpleTypeDefinitelyNotNullOrNotNull);
        if (yVarA == null) {
            yVarA = b(makeSimpleTypeDefinitelyNotNullOrNotNull);
        }
        return yVarA != null ? yVarA : makeSimpleTypeDefinitelyNotNullOrNotNull.L0(false);
    }

    public static final y withAbbreviation(y withAbbreviation, y abbreviatedType) {
        Intrinsics.checkParameterIsNotNull(withAbbreviation, "$this$withAbbreviation");
        Intrinsics.checkParameterIsNotNull(abbreviatedType, "abbreviatedType");
        return KotlinTypeKt.isError(withAbbreviation) ? withAbbreviation : new a(withAbbreviation, abbreviatedType);
    }
}
