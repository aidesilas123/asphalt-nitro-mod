package kotlin.reflect.jvm.internal.impl.types;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.utils.SmartList;

/* JADX INFO: compiled from: AbstractClassTypeConstructor.java */
/* JADX INFO: loaded from: classes5.dex */
public abstract class b extends AbstractTypeConstructor implements f0 {
    private int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(kotlin.reflect.jvm.internal.impl.storage.h hVar) {
        super(hVar);
        if (hVar == null) {
            o(0);
        }
        this.b = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static /* synthetic */ void o(int r9) {
        /*
            r0 = 4
            r1 = 3
            r2 = 1
            if (r9 == r2) goto Lc
            if (r9 == r1) goto Lc
            if (r9 == r0) goto Lc
            java.lang.String r3 = "Argument for @NotNull parameter '%s' of %s.%s must not be null"
            goto Le
        Lc:
            java.lang.String r3 = "@NotNull method %s.%s must not return null"
        Le:
            r4 = 2
            if (r9 == r2) goto L17
            if (r9 == r1) goto L17
            if (r9 == r0) goto L17
            r5 = 3
            goto L18
        L17:
            r5 = 2
        L18:
            java.lang.Object[] r5 = new java.lang.Object[r5]
            java.lang.String r6 = "kotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor"
            r7 = 0
            if (r9 == r2) goto L2f
            if (r9 == r4) goto L2a
            if (r9 == r1) goto L2f
            if (r9 == r0) goto L2f
            java.lang.String r8 = "storageManager"
            r5[r7] = r8
            goto L31
        L2a:
            java.lang.String r8 = "descriptor"
            r5[r7] = r8
            goto L31
        L2f:
            r5[r7] = r6
        L31:
            if (r9 == r2) goto L3f
            if (r9 == r1) goto L3a
            if (r9 == r0) goto L3a
            r5[r2] = r6
            goto L43
        L3a:
            java.lang.String r6 = "getAdditionalNeighboursInSupertypeGraph"
            r5[r2] = r6
            goto L43
        L3f:
            java.lang.String r6 = "getBuiltIns"
            r5[r2] = r6
        L43:
            if (r9 == r2) goto L54
            if (r9 == r4) goto L50
            if (r9 == r1) goto L54
            if (r9 == r0) goto L54
            java.lang.String r6 = "<init>"
            r5[r4] = r6
            goto L54
        L50:
            java.lang.String r6 = "hasMeaningfulFqName"
            r5[r4] = r6
        L54:
            java.lang.String r3 = java.lang.String.format(r3, r5)
            if (r9 == r2) goto L64
            if (r9 == r1) goto L64
            if (r9 == r0) goto L64
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            r9.<init>(r3)
            goto L69
        L64:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            r9.<init>(r3)
        L69:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.b.o(int):void");
    }

    private static boolean p(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar2) {
        if (!dVar.getName().equals(dVar2.getName())) {
            return false;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.i iVarB = dVar.b();
        for (kotlin.reflect.jvm.internal.impl.descriptors.i iVarB2 = dVar2.b(); iVarB != null && iVarB2 != null; iVarB2 = iVarB2.b()) {
            if (iVarB instanceof ModuleDescriptor) {
                return iVarB2 instanceof ModuleDescriptor;
            }
            if (iVarB2 instanceof ModuleDescriptor) {
                return false;
            }
            if (iVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.s) {
                return (iVarB2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.s) && ((kotlin.reflect.jvm.internal.impl.descriptors.s) iVarB).e().equals(((kotlin.reflect.jvm.internal.impl.descriptors.s) iVarB2).e());
            }
            if ((iVarB2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.s) || !iVarB.getName().equals(iVarB2.getName())) {
                return false;
            }
            iVarB = iVarB.b();
        }
        return true;
    }

    private static boolean r(kotlin.reflect.jvm.internal.impl.descriptors.f fVar) {
        if (fVar == null) {
            o(2);
        }
        return (ErrorUtils.isError(fVar) || DescriptorUtils.isLocal(fVar)) ? false : true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f0) || obj.hashCode() != hashCode()) {
            return false;
        }
        f0 f0Var = (f0) obj;
        if (f0Var.getParameters().size() != getParameters().size()) {
            return false;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarQ = q();
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = f0Var.q();
        if (r(dVarQ) && ((fVarC == null || r(fVarC)) && (fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.d))) {
            return p(dVarQ, (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC);
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
    protected u g() {
        if (KotlinBuiltIns.isSpecialClassWithNoSupertypes(q())) {
            return null;
        }
        return k().j();
    }

    public final int hashCode() {
        int i = this.b;
        if (i != 0) {
            return i;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarQ = q();
        int iHashCode = r(dVarQ) ? DescriptorUtils.getFqName(dVarQ).hashCode() : System.identityHashCode(this);
        this.b = iHashCode;
        return iHashCode;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
    protected Collection<u> i(boolean z) {
        kotlin.reflect.jvm.internal.impl.descriptors.i iVarB = q().b();
        if (!(iVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
            List listEmptyList = Collections.emptyList();
            if (listEmptyList == null) {
                o(3);
            }
            return listEmptyList;
        }
        SmartList smartList = new SmartList();
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) iVarB;
        smartList.add(dVar.n());
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarG0 = dVar.g0();
        if (z && dVarG0 != null) {
            smartList.add(dVarG0.n());
        }
        return smartList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public KotlinBuiltIns k() {
        KotlinBuiltIns builtIns = DescriptorUtilsKt.getBuiltIns(q());
        if (builtIns == null) {
            o(1);
        }
        return builtIns;
    }

    public abstract kotlin.reflect.jvm.internal.impl.descriptors.d q();
}
