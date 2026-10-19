package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.facebook.share.internal.ShareConstants;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.g0;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: loaded from: classes5.dex */
public class TypeParameterDescriptorImpl extends e {
    private final Function1<kotlin.reflect.jvm.internal.impl.types.u, Void> k;
    private final List<kotlin.reflect.jvm.internal.impl.types.u> l;
    private boolean m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private TypeParameterDescriptorImpl(kotlin.reflect.jvm.internal.impl.descriptors.i iVar, Annotations annotations, boolean z, Variance variance, Name name, int i, d0 d0Var, Function1<kotlin.reflect.jvm.internal.impl.types.u, Void> function1, g0 g0Var, kotlin.reflect.jvm.internal.impl.storage.h hVar) {
        super(hVar, iVar, annotations, name, variance, z, i, d0Var, g0Var);
        if (iVar == null) {
            u(19);
        }
        if (annotations == null) {
            u(20);
        }
        if (variance == null) {
            u(21);
        }
        if (name == null) {
            u(22);
        }
        if (d0Var == null) {
            u(23);
        }
        if (g0Var == null) {
            u(24);
        }
        if (hVar == null) {
            u(25);
        }
        this.l = new ArrayList(1);
        this.m = false;
        this.k = function1;
    }

    private void B0() {
        if (this.m) {
            throw new IllegalStateException("Type parameter descriptor is already initialized: " + G0());
        }
    }

    private void F0(kotlin.reflect.jvm.internal.impl.types.u uVar) {
        if (KotlinTypeKt.isError(uVar)) {
            return;
        }
        this.l.add(uVar);
    }

    private String G0() {
        return getName() + " declared in " + DescriptorUtils.getFqName(b());
    }

    public static TypeParameterDescriptorImpl createForFurtherModification(kotlin.reflect.jvm.internal.impl.descriptors.i iVar, Annotations annotations, boolean z, Variance variance, Name name, int i, d0 d0Var, Function1<kotlin.reflect.jvm.internal.impl.types.u, Void> function1, g0 g0Var, kotlin.reflect.jvm.internal.impl.storage.h hVar) {
        if (iVar == null) {
            u(12);
        }
        if (annotations == null) {
            u(13);
        }
        if (variance == null) {
            u(14);
        }
        if (name == null) {
            u(15);
        }
        if (d0Var == null) {
            u(16);
        }
        if (g0Var == null) {
            u(17);
        }
        if (hVar == null) {
            u(18);
        }
        return new TypeParameterDescriptorImpl(iVar, annotations, z, variance, name, i, d0Var, function1, g0Var, hVar);
    }

    public static TypeParameterDescriptorImpl createForFurtherModification(kotlin.reflect.jvm.internal.impl.descriptors.i iVar, Annotations annotations, boolean z, Variance variance, Name name, int i, d0 d0Var, kotlin.reflect.jvm.internal.impl.storage.h hVar) {
        if (iVar == null) {
            u(6);
        }
        if (annotations == null) {
            u(7);
        }
        if (variance == null) {
            u(8);
        }
        if (name == null) {
            u(9);
        }
        if (d0Var == null) {
            u(10);
        }
        if (hVar == null) {
            u(11);
        }
        return createForFurtherModification(iVar, annotations, z, variance, name, i, d0Var, null, g0.a.a, hVar);
    }

    public static i0 createWithDefaultBound(kotlin.reflect.jvm.internal.impl.descriptors.i iVar, Annotations annotations, boolean z, Variance variance, Name name, int i, kotlin.reflect.jvm.internal.impl.storage.h hVar) {
        if (iVar == null) {
            u(0);
        }
        if (annotations == null) {
            u(1);
        }
        if (variance == null) {
            u(2);
        }
        if (name == null) {
            u(3);
        }
        if (hVar == null) {
            u(4);
        }
        TypeParameterDescriptorImpl typeParameterDescriptorImplCreateForFurtherModification = createForFurtherModification(iVar, annotations, z, variance, name, i, d0.a, hVar);
        typeParameterDescriptorImplCreateForFurtherModification.k0(DescriptorUtilsKt.getBuiltIns(iVar).y());
        typeParameterDescriptorImplCreateForFurtherModification.H0();
        return typeParameterDescriptorImplCreateForFurtherModification;
    }

    private static /* synthetic */ void u(int i) {
        String str = (i == 5 || i == 28) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 5 || i == 28) ? 2 : 3];
        switch (i) {
            case 1:
            case 7:
            case 13:
            case 20:
                objArr[0] = "annotations";
                break;
            case 2:
            case 8:
            case 14:
            case 21:
                objArr[0] = "variance";
                break;
            case 3:
            case 9:
            case 15:
            case 22:
                objArr[0] = "name";
                break;
            case 4:
            case 11:
            case 18:
            case 25:
                objArr[0] = "storageManager";
                break;
            case 5:
            case 28:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl";
                break;
            case 6:
            case 12:
            case 19:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 10:
            case 16:
            case 23:
                objArr[0] = ShareConstants.FEED_SOURCE_PARAM;
                break;
            case 17:
                objArr[0] = "supertypeLoopsResolver";
                break;
            case 24:
                objArr[0] = "supertypeLoopsChecker";
                break;
            case 26:
                objArr[0] = "bound";
                break;
            case 27:
                objArr[0] = "type";
                break;
        }
        if (i == 5) {
            objArr[1] = "createWithDefaultBound";
        } else if (i != 28) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl";
        } else {
            objArr[1] = "resolveUpperBounds";
        }
        switch (i) {
            case 5:
            case 28:
                break;
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                objArr[2] = "createForFurtherModification";
                break;
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
                objArr[2] = "<init>";
                break;
            case 26:
                objArr[2] = "addUpperBound";
                break;
            case 27:
                objArr[2] = "reportSupertypeLoopError";
                break;
            default:
                objArr[2] = "createWithDefaultBound";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 5 && i != 28) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    private void z0() {
        if (this.m) {
            return;
        }
        throw new IllegalStateException("Type parameter descriptor is not initialized: " + G0());
    }

    public void H0() {
        B0();
        this.m = true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.e
    protected void b0(kotlin.reflect.jvm.internal.impl.types.u uVar) {
        if (uVar == null) {
            u(27);
        }
        Function1<kotlin.reflect.jvm.internal.impl.types.u, Void> function1 = this.k;
        if (function1 == null) {
            return;
        }
        function1.invoke(uVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.e
    protected List<kotlin.reflect.jvm.internal.impl.types.u> e0() {
        z0();
        List<kotlin.reflect.jvm.internal.impl.types.u> list = this.l;
        if (list == null) {
            u(28);
        }
        return list;
    }

    public void k0(kotlin.reflect.jvm.internal.impl.types.u uVar) {
        if (uVar == null) {
            u(26);
        }
        B0();
        F0(uVar);
    }
}
