package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructorKt;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.g0;
import kotlin.reflect.jvm.internal.impl.types.typesApproximation.CapturedTypeApproximationKt;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.text.StringsKt__StringBuilderJVMKt;

/* JADX INFO: compiled from: utils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class UtilsKt {

    /* JADX INFO: compiled from: utils.kt */
    static final class a extends Lambda implements Function1<String, StringBuilder> {
        final /* synthetic */ StringBuilder a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(StringBuilder sb) {
            super(1);
            this.a = sb;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final StringBuilder invoke(String unaryPlus) {
            Intrinsics.checkParameterIsNotNull(unaryPlus, "$this$unaryPlus");
            StringBuilder sb = this.a;
            sb.append(unaryPlus);
            Intrinsics.checkExpressionValueIsNotNull(sb, "append(value)");
            return StringsKt__StringBuilderJVMKt.appendln(sb);
        }
    }

    private static final u a(u uVar) {
        return CapturedTypeApproximationKt.approximateCapturedTypes(uVar).d();
    }

    private static final String b(f0 f0Var) {
        StringBuilder sb = new StringBuilder();
        a aVar = new a(sb);
        aVar.invoke("type: " + f0Var);
        aVar.invoke("hashCode: " + f0Var.hashCode());
        aVar.invoke("javaClass: " + f0Var.getClass().getCanonicalName());
        for (kotlin.reflect.jvm.internal.impl.descriptors.i iVarC = f0Var.q(); iVarC != null; iVarC = iVarC.b()) {
            aVar.invoke("fqName: " + DescriptorRenderer.f9727f.p(iVarC));
            aVar.invoke("javaClass: " + iVarC.getClass().getCanonicalName());
        }
        String string = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public static final u findCorrespondingSupertype(u subtype, u supertype, n typeCheckingProcedureCallbacks) {
        boolean z;
        Intrinsics.checkParameterIsNotNull(subtype, "subtype");
        Intrinsics.checkParameterIsNotNull(supertype, "supertype");
        Intrinsics.checkParameterIsNotNull(typeCheckingProcedureCallbacks, "typeCheckingProcedureCallbacks");
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(new l(subtype, null));
        f0 f0VarH0 = supertype.H0();
        while (!arrayDeque.isEmpty()) {
            l lVar = (l) arrayDeque.poll();
            u uVarB = lVar.b();
            f0 f0VarH02 = uVarB.H0();
            if (typeCheckingProcedureCallbacks.c(f0VarH02, f0VarH0)) {
                boolean zI0 = uVarB.I0();
                for (l lVarA = lVar.a(); lVarA != null; lVarA = lVarA.a()) {
                    u uVarB2 = lVarA.b();
                    List<g0> listG0 = uVarB2.G0();
                    if ((listG0 instanceof Collection) && listG0.isEmpty()) {
                        z = false;
                    } else {
                        Iterator<T> it = listG0.iterator();
                        while (it.hasNext()) {
                            if (((g0) it.next()).c() != Variance.INVARIANT) {
                                z = true;
                                break;
                            }
                        }
                        z = false;
                    }
                    if (z) {
                        u uVarG = CapturedTypeConstructorKt.wrapWithCapturingSubstitution$default(TypeConstructorSubstitution.c.a(uVarB2), false, 1, null).c().g(uVarB, Variance.INVARIANT);
                        Intrinsics.checkExpressionValueIsNotNull(uVarG, "TypeConstructorSubstitut…uted, Variance.INVARIANT)");
                        uVarB = a(uVarG);
                    } else {
                        uVarB = TypeConstructorSubstitution.c.a(uVarB2).c().g(uVarB, Variance.INVARIANT);
                        Intrinsics.checkExpressionValueIsNotNull(uVarB, "TypeConstructorSubstitut…uted, Variance.INVARIANT)");
                    }
                    zI0 = zI0 || uVarB2.I0();
                }
                f0 f0VarH03 = uVarB.H0();
                if (typeCheckingProcedureCallbacks.c(f0VarH03, f0VarH0)) {
                    return TypeUtils.makeNullableAsSpecified(uVarB, zI0);
                }
                throw new AssertionError("Type constructors should be equals!\nsubstitutedSuperType: " + b(f0VarH03) + ", \n\nsupertype: " + b(f0VarH0) + " \n" + typeCheckingProcedureCallbacks.c(f0VarH03, f0VarH0));
            }
            for (u immediateSupertype : f0VarH02.h()) {
                Intrinsics.checkExpressionValueIsNotNull(immediateSupertype, "immediateSupertype");
                arrayDeque.add(new l(immediateSupertype, lVar));
            }
        }
        return null;
    }
}
