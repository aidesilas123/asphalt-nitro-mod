package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext;

/* JADX INFO: compiled from: AbstractTypeChecker.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class c {
    public static final c a = new c();

    private c() {
    }

    private final boolean c(AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.g gVar, kotlin.reflect.jvm.internal.impl.types.model.j jVar) {
        if (abstractTypeCheckerContext.t0(gVar)) {
            return true;
        }
        if (abstractTypeCheckerContext.n(gVar)) {
            return false;
        }
        if (abstractTypeCheckerContext.u0() && abstractTypeCheckerContext.u(gVar)) {
            return true;
        }
        return abstractTypeCheckerContext.A(abstractTypeCheckerContext.b(gVar), jVar);
    }

    private final boolean e(AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.g gVar, kotlin.reflect.jvm.internal.impl.types.model.g gVar2) {
        if (f.a) {
            if (!abstractTypeCheckerContext.k(gVar) && !abstractTypeCheckerContext.P(abstractTypeCheckerContext.b(gVar))) {
                abstractTypeCheckerContext.n0(gVar);
            }
            if (!abstractTypeCheckerContext.k(gVar2)) {
                abstractTypeCheckerContext.n0(gVar2);
            }
        }
        if (abstractTypeCheckerContext.n(gVar2) || abstractTypeCheckerContext.p0(gVar) || a(abstractTypeCheckerContext, gVar, AbstractTypeCheckerContext.a.b.a)) {
            return true;
        }
        if (abstractTypeCheckerContext.p0(gVar2) || a(abstractTypeCheckerContext, gVar2, AbstractTypeCheckerContext.a.d.a) || abstractTypeCheckerContext.o0(gVar)) {
            return false;
        }
        return b(abstractTypeCheckerContext, gVar, abstractTypeCheckerContext.b(gVar2));
    }

    public final boolean a(AbstractTypeCheckerContext hasNotNullSupertype, kotlin.reflect.jvm.internal.impl.types.model.g type, AbstractTypeCheckerContext.a supertypesPolicy) {
        Intrinsics.checkParameterIsNotNull(hasNotNullSupertype, "$this$hasNotNullSupertype");
        Intrinsics.checkParameterIsNotNull(type, "type");
        Intrinsics.checkParameterIsNotNull(supertypesPolicy, "supertypesPolicy");
        if (!((hasNotNullSupertype.o0(type) && !hasNotNullSupertype.n(type)) || hasNotNullSupertype.p0(type))) {
            hasNotNullSupertype.m0();
            ArrayDeque<kotlin.reflect.jvm.internal.impl.types.model.g> arrayDequeJ0 = hasNotNullSupertype.j0();
            if (arrayDequeJ0 == null) {
                Intrinsics.throwNpe();
            }
            Set<kotlin.reflect.jvm.internal.impl.types.model.g> setK0 = hasNotNullSupertype.k0();
            if (setK0 == null) {
                Intrinsics.throwNpe();
            }
            arrayDequeJ0.push(type);
            while (!arrayDequeJ0.isEmpty()) {
                if (setK0.size() > 1000) {
                    throw new IllegalStateException(("Too many supertypes for type: " + type + ". Supertypes = " + CollectionsKt___CollectionsKt.joinToString$default(setK0, null, null, null, 0, null, null, 63, null)).toString());
                }
                kotlin.reflect.jvm.internal.impl.types.model.g current = arrayDequeJ0.pop();
                Intrinsics.checkExpressionValueIsNotNull(current, "current");
                if (setK0.add(current)) {
                    AbstractTypeCheckerContext.a aVar = hasNotNullSupertype.n(current) ? AbstractTypeCheckerContext.a.c.a : supertypesPolicy;
                    if (!(!Intrinsics.areEqual(aVar, AbstractTypeCheckerContext.a.c.a))) {
                        aVar = null;
                    }
                    if (aVar != null) {
                        Iterator<kotlin.reflect.jvm.internal.impl.types.model.f> it = hasNotNullSupertype.F(hasNotNullSupertype.b(current)).iterator();
                        while (it.hasNext()) {
                            kotlin.reflect.jvm.internal.impl.types.model.g gVarA = aVar.a(hasNotNullSupertype, it.next());
                            if ((hasNotNullSupertype.o0(gVarA) && !hasNotNullSupertype.n(gVarA)) || hasNotNullSupertype.p0(gVarA)) {
                                hasNotNullSupertype.f0();
                            } else {
                                arrayDequeJ0.add(gVarA);
                            }
                        }
                    } else {
                        continue;
                    }
                }
            }
            hasNotNullSupertype.f0();
            return false;
        }
        return true;
    }

    public final boolean b(AbstractTypeCheckerContext hasPathByNotMarkedNullableNodes, kotlin.reflect.jvm.internal.impl.types.model.g start, kotlin.reflect.jvm.internal.impl.types.model.j end) {
        Intrinsics.checkParameterIsNotNull(hasPathByNotMarkedNullableNodes, "$this$hasPathByNotMarkedNullableNodes");
        Intrinsics.checkParameterIsNotNull(start, "start");
        Intrinsics.checkParameterIsNotNull(end, "end");
        if (a.c(hasPathByNotMarkedNullableNodes, start, end)) {
            return true;
        }
        hasPathByNotMarkedNullableNodes.m0();
        ArrayDeque<kotlin.reflect.jvm.internal.impl.types.model.g> arrayDequeJ0 = hasPathByNotMarkedNullableNodes.j0();
        if (arrayDequeJ0 == null) {
            Intrinsics.throwNpe();
        }
        Set<kotlin.reflect.jvm.internal.impl.types.model.g> setK0 = hasPathByNotMarkedNullableNodes.k0();
        if (setK0 == null) {
            Intrinsics.throwNpe();
        }
        arrayDequeJ0.push(start);
        while (!arrayDequeJ0.isEmpty()) {
            if (setK0.size() > 1000) {
                throw new IllegalStateException(("Too many supertypes for type: " + start + ". Supertypes = " + CollectionsKt___CollectionsKt.joinToString$default(setK0, null, null, null, 0, null, null, 63, null)).toString());
            }
            kotlin.reflect.jvm.internal.impl.types.model.g current = arrayDequeJ0.pop();
            Intrinsics.checkExpressionValueIsNotNull(current, "current");
            if (setK0.add(current)) {
                AbstractTypeCheckerContext.a aVar = hasPathByNotMarkedNullableNodes.n(current) ? AbstractTypeCheckerContext.a.c.a : AbstractTypeCheckerContext.a.b.a;
                if (!(!Intrinsics.areEqual(aVar, AbstractTypeCheckerContext.a.c.a))) {
                    aVar = null;
                }
                if (aVar != null) {
                    Iterator<kotlin.reflect.jvm.internal.impl.types.model.f> it = hasPathByNotMarkedNullableNodes.F(hasPathByNotMarkedNullableNodes.b(current)).iterator();
                    while (it.hasNext()) {
                        kotlin.reflect.jvm.internal.impl.types.model.g gVarA = aVar.a(hasPathByNotMarkedNullableNodes, it.next());
                        if (a.c(hasPathByNotMarkedNullableNodes, gVarA, end)) {
                            hasPathByNotMarkedNullableNodes.f0();
                            return true;
                        }
                        arrayDequeJ0.add(gVarA);
                    }
                } else {
                    continue;
                }
            }
        }
        hasPathByNotMarkedNullableNodes.f0();
        return false;
    }

    public final boolean d(AbstractTypeCheckerContext context, kotlin.reflect.jvm.internal.impl.types.model.g subType, kotlin.reflect.jvm.internal.impl.types.model.g superType) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(subType, "subType");
        Intrinsics.checkParameterIsNotNull(superType, "superType");
        return e(context, subType, superType);
    }
}
