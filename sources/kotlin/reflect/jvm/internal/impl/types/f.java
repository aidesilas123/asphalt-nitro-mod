package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariance;
import kotlin.reflect.jvm.internal.impl.utils.SmartList;

/* JADX INFO: compiled from: AbstractTypeChecker.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class f {
    public static boolean a;
    public static final f b = new f();

    /* JADX INFO: compiled from: AbstractTypeChecker.kt */
    static final class a extends Lambda implements Function3<kotlin.reflect.jvm.internal.impl.types.model.g, kotlin.reflect.jvm.internal.impl.types.model.g, Boolean, Boolean> {
        final /* synthetic */ AbstractTypeCheckerContext a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(AbstractTypeCheckerContext abstractTypeCheckerContext) {
            super(3);
            this.a = abstractTypeCheckerContext;
        }

        public final boolean a(kotlin.reflect.jvm.internal.impl.types.model.g integerLiteralType, kotlin.reflect.jvm.internal.impl.types.model.g type, boolean z) {
            Intrinsics.checkParameterIsNotNull(integerLiteralType, "integerLiteralType");
            Intrinsics.checkParameterIsNotNull(type, "type");
            Collection<kotlin.reflect.jvm.internal.impl.types.model.f> collectionG = this.a.G(integerLiteralType);
            if (!(collectionG instanceof Collection) || !collectionG.isEmpty()) {
                for (kotlin.reflect.jvm.internal.impl.types.model.f fVar : collectionG) {
                    if (Intrinsics.areEqual(this.a.H(fVar), this.a.b(type)) || (z && f.b.l(this.a, type, fVar))) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Boolean invoke(kotlin.reflect.jvm.internal.impl.types.model.g gVar, kotlin.reflect.jvm.internal.impl.types.model.g gVar2, Boolean bool) {
            return Boolean.valueOf(a(gVar, gVar2, bool.booleanValue()));
        }
    }

    private f() {
    }

    private final Boolean a(AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.g gVar, kotlin.reflect.jvm.internal.impl.types.model.g gVar2) {
        if (!abstractTypeCheckerContext.s0(gVar) && !abstractTypeCheckerContext.s0(gVar2)) {
            return null;
        }
        a aVar = new a(abstractTypeCheckerContext);
        if (abstractTypeCheckerContext.s0(gVar) && abstractTypeCheckerContext.s0(gVar2)) {
            return Boolean.TRUE;
        }
        if (abstractTypeCheckerContext.s0(gVar)) {
            if (aVar.a(gVar, gVar2, false)) {
                return Boolean.TRUE;
            }
        } else if (abstractTypeCheckerContext.s0(gVar2) && aVar.a(gVar2, gVar, true)) {
            return Boolean.TRUE;
        }
        return null;
    }

    private final Boolean b(AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.g gVar, kotlin.reflect.jvm.internal.impl.types.model.g gVar2) {
        boolean z = false;
        if (abstractTypeCheckerContext.o(gVar) || abstractTypeCheckerContext.o(gVar2)) {
            return abstractTypeCheckerContext.r0() ? Boolean.TRUE : (!abstractTypeCheckerContext.n(gVar) || abstractTypeCheckerContext.n(gVar2)) ? Boolean.valueOf(d.a.b(abstractTypeCheckerContext, abstractTypeCheckerContext.O(gVar, false), abstractTypeCheckerContext.O(gVar2, false))) : Boolean.FALSE;
        }
        if (abstractTypeCheckerContext.u(gVar) || abstractTypeCheckerContext.u(gVar2)) {
            return Boolean.valueOf(abstractTypeCheckerContext.u0());
        }
        kotlin.reflect.jvm.internal.impl.types.model.b bVarS = abstractTypeCheckerContext.S(gVar2);
        kotlin.reflect.jvm.internal.impl.types.model.f fVarM = bVarS != null ? abstractTypeCheckerContext.M(bVarS) : null;
        if (bVarS != null && fVarM != null) {
            int i = e.b[abstractTypeCheckerContext.i0(gVar, bVarS).ordinal()];
            if (i == 1) {
                return Boolean.valueOf(l(abstractTypeCheckerContext, gVar, fVarM));
            }
            if (i == 2 && l(abstractTypeCheckerContext, gVar, fVarM)) {
                return Boolean.TRUE;
            }
        }
        kotlin.reflect.jvm.internal.impl.types.model.j jVarB = abstractTypeCheckerContext.b(gVar2);
        if (!abstractTypeCheckerContext.P(jVarB)) {
            return null;
        }
        abstractTypeCheckerContext.n(gVar2);
        Collection<kotlin.reflect.jvm.internal.impl.types.model.f> collectionF = abstractTypeCheckerContext.F(jVarB);
        if ((collectionF instanceof Collection) && collectionF.isEmpty()) {
            z = true;
        } else {
            Iterator<T> it = collectionF.iterator();
            while (it.hasNext()) {
                if (!b.l(abstractTypeCheckerContext, gVar, (kotlin.reflect.jvm.internal.impl.types.model.f) it.next())) {
                    break;
                }
            }
            z = true;
        }
        return Boolean.valueOf(z);
    }

    private final List<kotlin.reflect.jvm.internal.impl.types.model.g> c(AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.g gVar, kotlin.reflect.jvm.internal.impl.types.model.j jVar) {
        AbstractTypeCheckerContext.a aVarX0;
        List<kotlin.reflect.jvm.internal.impl.types.model.g> listG0 = abstractTypeCheckerContext.g0(gVar, jVar);
        if (listG0 != null) {
            return listG0;
        }
        if (!abstractTypeCheckerContext.N(jVar) && abstractTypeCheckerContext.o0(gVar)) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        if (abstractTypeCheckerContext.Z(jVar)) {
            if (!abstractTypeCheckerContext.e0(abstractTypeCheckerContext.b(gVar), jVar)) {
                return CollectionsKt__CollectionsKt.emptyList();
            }
            kotlin.reflect.jvm.internal.impl.types.model.g gVarX = abstractTypeCheckerContext.X(gVar, CaptureStatus.FOR_SUBTYPING);
            if (gVarX != null) {
                gVar = gVarX;
            }
            return CollectionsKt__CollectionsJVMKt.listOf(gVar);
        }
        SmartList smartList = new SmartList();
        abstractTypeCheckerContext.m0();
        ArrayDeque<kotlin.reflect.jvm.internal.impl.types.model.g> arrayDequeJ0 = abstractTypeCheckerContext.j0();
        if (arrayDequeJ0 == null) {
            Intrinsics.throwNpe();
        }
        Set<kotlin.reflect.jvm.internal.impl.types.model.g> setK0 = abstractTypeCheckerContext.k0();
        if (setK0 == null) {
            Intrinsics.throwNpe();
        }
        arrayDequeJ0.push(gVar);
        while (!arrayDequeJ0.isEmpty()) {
            if (setK0.size() > 1000) {
                throw new IllegalStateException(("Too many supertypes for type: " + gVar + ". Supertypes = " + CollectionsKt___CollectionsKt.joinToString$default(setK0, null, null, null, 0, null, null, 63, null)).toString());
            }
            kotlin.reflect.jvm.internal.impl.types.model.g current = arrayDequeJ0.pop();
            Intrinsics.checkExpressionValueIsNotNull(current, "current");
            if (setK0.add(current)) {
                kotlin.reflect.jvm.internal.impl.types.model.g gVarX2 = abstractTypeCheckerContext.X(current, CaptureStatus.FOR_SUBTYPING);
                if (gVarX2 == null) {
                    gVarX2 = current;
                }
                if (abstractTypeCheckerContext.e0(abstractTypeCheckerContext.b(gVarX2), jVar)) {
                    smartList.add(gVarX2);
                    aVarX0 = AbstractTypeCheckerContext.a.c.a;
                } else {
                    aVarX0 = abstractTypeCheckerContext.d(gVarX2) == 0 ? AbstractTypeCheckerContext.a.b.a : abstractTypeCheckerContext.x0(gVarX2);
                }
                if (!(!Intrinsics.areEqual(aVarX0, AbstractTypeCheckerContext.a.c.a))) {
                    aVarX0 = null;
                }
                if (aVarX0 != null) {
                    Iterator<kotlin.reflect.jvm.internal.impl.types.model.f> it = abstractTypeCheckerContext.F(abstractTypeCheckerContext.b(current)).iterator();
                    while (it.hasNext()) {
                        arrayDequeJ0.add(aVarX0.a(abstractTypeCheckerContext, it.next()));
                    }
                }
            }
        }
        abstractTypeCheckerContext.f0();
        return smartList;
    }

    private final List<kotlin.reflect.jvm.internal.impl.types.model.g> d(AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.g gVar, kotlin.reflect.jvm.internal.impl.types.model.j jVar) {
        return n(abstractTypeCheckerContext, c(abstractTypeCheckerContext, gVar, jVar));
    }

    private final boolean e(AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.f fVar, kotlin.reflect.jvm.internal.impl.types.model.f fVar2) {
        Boolean boolB = b(abstractTypeCheckerContext, abstractTypeCheckerContext.T(fVar), abstractTypeCheckerContext.m(fVar2));
        if (boolB == null) {
            Boolean boolD0 = abstractTypeCheckerContext.d0(fVar, fVar2);
            return boolD0 != null ? boolD0.booleanValue() : m(abstractTypeCheckerContext, abstractTypeCheckerContext.T(fVar), abstractTypeCheckerContext.m(fVar2));
        }
        boolean zBooleanValue = boolB.booleanValue();
        abstractTypeCheckerContext.d0(fVar, fVar2);
        return zBooleanValue;
    }

    private final boolean i(AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        kotlin.reflect.jvm.internal.impl.types.model.j jVarB = abstractTypeCheckerContext.b(gVar);
        if (abstractTypeCheckerContext.N(jVarB)) {
            return abstractTypeCheckerContext.E(jVarB);
        }
        if (abstractTypeCheckerContext.E(abstractTypeCheckerContext.b(gVar))) {
            return true;
        }
        abstractTypeCheckerContext.m0();
        ArrayDeque<kotlin.reflect.jvm.internal.impl.types.model.g> arrayDequeJ0 = abstractTypeCheckerContext.j0();
        if (arrayDequeJ0 == null) {
            Intrinsics.throwNpe();
        }
        Set<kotlin.reflect.jvm.internal.impl.types.model.g> setK0 = abstractTypeCheckerContext.k0();
        if (setK0 == null) {
            Intrinsics.throwNpe();
        }
        arrayDequeJ0.push(gVar);
        while (!arrayDequeJ0.isEmpty()) {
            if (setK0.size() > 1000) {
                throw new IllegalStateException(("Too many supertypes for type: " + gVar + ". Supertypes = " + CollectionsKt___CollectionsKt.joinToString$default(setK0, null, null, null, 0, null, null, 63, null)).toString());
            }
            kotlin.reflect.jvm.internal.impl.types.model.g current = arrayDequeJ0.pop();
            Intrinsics.checkExpressionValueIsNotNull(current, "current");
            if (setK0.add(current)) {
                AbstractTypeCheckerContext.a aVar = abstractTypeCheckerContext.o0(current) ? AbstractTypeCheckerContext.a.c.a : AbstractTypeCheckerContext.a.b.a;
                if (!(!Intrinsics.areEqual(aVar, AbstractTypeCheckerContext.a.c.a))) {
                    aVar = null;
                }
                if (aVar != null) {
                    Iterator<kotlin.reflect.jvm.internal.impl.types.model.f> it = abstractTypeCheckerContext.F(abstractTypeCheckerContext.b(current)).iterator();
                    while (it.hasNext()) {
                        kotlin.reflect.jvm.internal.impl.types.model.g gVarA = aVar.a(abstractTypeCheckerContext, it.next());
                        if (abstractTypeCheckerContext.E(abstractTypeCheckerContext.b(gVarA))) {
                            abstractTypeCheckerContext.f0();
                            return true;
                        }
                        arrayDequeJ0.add(gVarA);
                    }
                } else {
                    continue;
                }
            }
        }
        abstractTypeCheckerContext.f0();
        return false;
    }

    private final boolean j(AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.f fVar) {
        return abstractTypeCheckerContext.I(abstractTypeCheckerContext.H(fVar)) && !abstractTypeCheckerContext.q0(fVar) && !abstractTypeCheckerContext.p0(fVar) && Intrinsics.areEqual(abstractTypeCheckerContext.b(abstractTypeCheckerContext.T(fVar)), abstractTypeCheckerContext.b(abstractTypeCheckerContext.m(fVar)));
    }

    private final boolean m(AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.g gVar, kotlin.reflect.jvm.internal.impl.types.model.g gVar2) {
        kotlin.reflect.jvm.internal.impl.types.model.f fVarA0;
        if (a) {
            if (!abstractTypeCheckerContext.k(gVar) && !abstractTypeCheckerContext.P(abstractTypeCheckerContext.b(gVar))) {
                abstractTypeCheckerContext.n0(gVar);
            }
            if (!abstractTypeCheckerContext.k(gVar2)) {
                abstractTypeCheckerContext.n0(gVar2);
            }
        }
        if (!c.a.d(abstractTypeCheckerContext, gVar, gVar2)) {
            return false;
        }
        Boolean boolA = a(abstractTypeCheckerContext, abstractTypeCheckerContext.T(gVar), abstractTypeCheckerContext.m(gVar2));
        if (boolA != null) {
            boolean zBooleanValue = boolA.booleanValue();
            abstractTypeCheckerContext.d0(gVar, gVar2);
            return zBooleanValue;
        }
        kotlin.reflect.jvm.internal.impl.types.model.j jVarB = abstractTypeCheckerContext.b(gVar2);
        if ((abstractTypeCheckerContext.A(abstractTypeCheckerContext.b(gVar), jVarB) && abstractTypeCheckerContext.B(jVarB) == 0) || abstractTypeCheckerContext.t(abstractTypeCheckerContext.b(gVar2))) {
            return true;
        }
        List<kotlin.reflect.jvm.internal.impl.types.model.g> listH = h(abstractTypeCheckerContext, gVar, jVarB);
        int size = listH.size();
        if (size == 0) {
            return i(abstractTypeCheckerContext, gVar);
        }
        if (size == 1) {
            return k(abstractTypeCheckerContext, abstractTypeCheckerContext.e((kotlin.reflect.jvm.internal.impl.types.model.g) kotlin.collections.p.first((List) listH)), gVar2);
        }
        kotlin.reflect.jvm.internal.impl.types.model.a aVar = new kotlin.reflect.jvm.internal.impl.types.model.a(abstractTypeCheckerContext.B(jVarB));
        int iB = abstractTypeCheckerContext.B(jVarB);
        boolean z = false;
        for (int i = 0; i < iB; i++) {
            z = z || abstractTypeCheckerContext.j(abstractTypeCheckerContext.g(jVarB, i)) != TypeVariance.OUT;
            if (!z) {
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listH, 10));
                for (kotlin.reflect.jvm.internal.impl.types.model.g gVar3 : listH) {
                    kotlin.reflect.jvm.internal.impl.types.model.i iVarH0 = abstractTypeCheckerContext.h0(gVar3, i);
                    if (iVarH0 != null) {
                        if (!(abstractTypeCheckerContext.U(iVarH0) == TypeVariance.INV)) {
                            iVarH0 = null;
                        }
                        if (iVarH0 != null && (fVarA0 = abstractTypeCheckerContext.a0(iVarH0)) != null) {
                            arrayList.add(fVarA0);
                        }
                    }
                    throw new IllegalStateException(("Incorrect type: " + gVar3 + ", subType: " + gVar + ", superType: " + gVar2).toString());
                }
                aVar.add(abstractTypeCheckerContext.q(abstractTypeCheckerContext.L(arrayList)));
            }
        }
        if (!z && k(abstractTypeCheckerContext, aVar, gVar2)) {
            return true;
        }
        if (!listH.isEmpty()) {
            Iterator<T> it = listH.iterator();
            while (it.hasNext()) {
                if (b.k(abstractTypeCheckerContext, abstractTypeCheckerContext.e((kotlin.reflect.jvm.internal.impl.types.model.g) it.next()), gVar2)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final List<kotlin.reflect.jvm.internal.impl.types.model.g> n(AbstractTypeCheckerContext abstractTypeCheckerContext, List<? extends kotlin.reflect.jvm.internal.impl.types.model.g> list) {
        if (list.size() < 2) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (true) {
            boolean z = true;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            kotlin.reflect.jvm.internal.impl.types.model.h hVarE = abstractTypeCheckerContext.e((kotlin.reflect.jvm.internal.impl.types.model.g) next);
            int iL = abstractTypeCheckerContext.l(hVarE);
            int i = 0;
            while (true) {
                if (i >= iL) {
                    break;
                }
                if (!(abstractTypeCheckerContext.K(abstractTypeCheckerContext.a0(abstractTypeCheckerContext.f(hVarE, i))) == null)) {
                    z = false;
                    break;
                }
                i++;
            }
            if (z) {
                arrayList.add(next);
            }
        }
        return arrayList.isEmpty() ^ true ? arrayList : list;
    }

    public final TypeVariance f(TypeVariance declared, TypeVariance useSite) {
        Intrinsics.checkParameterIsNotNull(declared, "declared");
        Intrinsics.checkParameterIsNotNull(useSite, "useSite");
        TypeVariance typeVariance = TypeVariance.INV;
        if (declared == typeVariance) {
            return useSite;
        }
        if (useSite == typeVariance || declared == useSite) {
            return declared;
        }
        return null;
    }

    public final boolean g(AbstractTypeCheckerContext context, kotlin.reflect.jvm.internal.impl.types.model.f a2, kotlin.reflect.jvm.internal.impl.types.model.f b2) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(a2, "a");
        Intrinsics.checkParameterIsNotNull(b2, "b");
        if (a2 == b2) {
            return true;
        }
        f fVar = b;
        if (fVar.j(context, a2) && fVar.j(context, b2)) {
            kotlin.reflect.jvm.internal.impl.types.model.f fVarW0 = context.w0(a2);
            kotlin.reflect.jvm.internal.impl.types.model.f fVarW02 = context.w0(b2);
            kotlin.reflect.jvm.internal.impl.types.model.g gVarT = context.T(fVarW0);
            if (!context.e0(context.H(fVarW0), context.H(fVarW02))) {
                return false;
            }
            if (context.d(gVarT) == 0) {
                return context.l0(fVarW0) || context.l0(fVarW02) || context.n(gVarT) == context.n(context.T(fVarW02));
            }
        }
        return fVar.l(context, a2, b2) && fVar.l(context, b2, a2);
    }

    public final List<kotlin.reflect.jvm.internal.impl.types.model.g> h(AbstractTypeCheckerContext findCorrespondingSupertypes, kotlin.reflect.jvm.internal.impl.types.model.g subType, kotlin.reflect.jvm.internal.impl.types.model.j superConstructor) {
        AbstractTypeCheckerContext.a aVar;
        Intrinsics.checkParameterIsNotNull(findCorrespondingSupertypes, "$this$findCorrespondingSupertypes");
        Intrinsics.checkParameterIsNotNull(subType, "subType");
        Intrinsics.checkParameterIsNotNull(superConstructor, "superConstructor");
        if (findCorrespondingSupertypes.o0(subType)) {
            return d(findCorrespondingSupertypes, subType, superConstructor);
        }
        if (!findCorrespondingSupertypes.N(superConstructor) && !findCorrespondingSupertypes.w(superConstructor)) {
            return c(findCorrespondingSupertypes, subType, superConstructor);
        }
        SmartList<kotlin.reflect.jvm.internal.impl.types.model.g> smartList = new SmartList();
        findCorrespondingSupertypes.m0();
        ArrayDeque<kotlin.reflect.jvm.internal.impl.types.model.g> arrayDequeJ0 = findCorrespondingSupertypes.j0();
        if (arrayDequeJ0 == null) {
            Intrinsics.throwNpe();
        }
        Set<kotlin.reflect.jvm.internal.impl.types.model.g> setK0 = findCorrespondingSupertypes.k0();
        if (setK0 == null) {
            Intrinsics.throwNpe();
        }
        arrayDequeJ0.push(subType);
        while (!arrayDequeJ0.isEmpty()) {
            if (setK0.size() > 1000) {
                throw new IllegalStateException(("Too many supertypes for type: " + subType + ". Supertypes = " + CollectionsKt___CollectionsKt.joinToString$default(setK0, null, null, null, 0, null, null, 63, null)).toString());
            }
            kotlin.reflect.jvm.internal.impl.types.model.g current = arrayDequeJ0.pop();
            Intrinsics.checkExpressionValueIsNotNull(current, "current");
            if (setK0.add(current)) {
                if (findCorrespondingSupertypes.o0(current)) {
                    smartList.add(current);
                    aVar = AbstractTypeCheckerContext.a.c.a;
                } else {
                    aVar = AbstractTypeCheckerContext.a.b.a;
                }
                if (!(!Intrinsics.areEqual(aVar, AbstractTypeCheckerContext.a.c.a))) {
                    aVar = null;
                }
                if (aVar != null) {
                    Iterator<kotlin.reflect.jvm.internal.impl.types.model.f> it = findCorrespondingSupertypes.F(findCorrespondingSupertypes.b(current)).iterator();
                    while (it.hasNext()) {
                        arrayDequeJ0.add(aVar.a(findCorrespondingSupertypes, it.next()));
                    }
                }
            }
        }
        findCorrespondingSupertypes.f0();
        ArrayList arrayList = new ArrayList();
        for (kotlin.reflect.jvm.internal.impl.types.model.g it2 : smartList) {
            f fVar = b;
            Intrinsics.checkExpressionValueIsNotNull(it2, "it");
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, fVar.d(findCorrespondingSupertypes, it2, superConstructor));
        }
        return arrayList;
    }

    public final boolean k(AbstractTypeCheckerContext isSubtypeForSameConstructor, kotlin.reflect.jvm.internal.impl.types.model.h capturedSubArguments, kotlin.reflect.jvm.internal.impl.types.model.g superType) {
        boolean zG;
        Intrinsics.checkParameterIsNotNull(isSubtypeForSameConstructor, "$this$isSubtypeForSameConstructor");
        Intrinsics.checkParameterIsNotNull(capturedSubArguments, "capturedSubArguments");
        Intrinsics.checkParameterIsNotNull(superType, "superType");
        kotlin.reflect.jvm.internal.impl.types.model.j jVarB = isSubtypeForSameConstructor.b(superType);
        int iB = isSubtypeForSameConstructor.B(jVarB);
        for (int i = 0; i < iB; i++) {
            kotlin.reflect.jvm.internal.impl.types.model.i iVarR = isSubtypeForSameConstructor.r(superType, i);
            if (!isSubtypeForSameConstructor.i(iVarR)) {
                kotlin.reflect.jvm.internal.impl.types.model.f fVarA0 = isSubtypeForSameConstructor.a0(iVarR);
                kotlin.reflect.jvm.internal.impl.types.model.i iVarF = isSubtypeForSameConstructor.f(capturedSubArguments, i);
                isSubtypeForSameConstructor.U(iVarF);
                TypeVariance typeVariance = TypeVariance.INV;
                kotlin.reflect.jvm.internal.impl.types.model.f fVarA02 = isSubtypeForSameConstructor.a0(iVarF);
                TypeVariance typeVarianceF = f(isSubtypeForSameConstructor.j(isSubtypeForSameConstructor.g(jVarB, i)), isSubtypeForSameConstructor.U(iVarR));
                if (typeVarianceF == null) {
                    return isSubtypeForSameConstructor.r0();
                }
                if (isSubtypeForSameConstructor.a > 100) {
                    throw new IllegalStateException(("Arguments depth is too high. Some related argument: " + fVarA02).toString());
                }
                isSubtypeForSameConstructor.a++;
                int i2 = e.a[typeVarianceF.ordinal()];
                if (i2 == 1) {
                    zG = b.g(isSubtypeForSameConstructor, fVarA02, fVarA0);
                } else if (i2 == 2) {
                    zG = b.l(isSubtypeForSameConstructor, fVarA02, fVarA0);
                } else {
                    if (i2 != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    zG = b.l(isSubtypeForSameConstructor, fVarA0, fVarA02);
                }
                isSubtypeForSameConstructor.a--;
                if (!zG) {
                    return false;
                }
            }
        }
        return true;
    }

    public final boolean l(AbstractTypeCheckerContext context, kotlin.reflect.jvm.internal.impl.types.model.f subType, kotlin.reflect.jvm.internal.impl.types.model.f superType) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(subType, "subType");
        Intrinsics.checkParameterIsNotNull(superType, "superType");
        if (subType == superType) {
            return true;
        }
        return b.e(context, context.v0(context.w0(subType)), context.v0(context.w0(superType)));
    }
}
