package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.facebook.share.internal.ShareConstants;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: loaded from: classes5.dex */
public class SimpleFunctionDescriptorImpl extends FunctionDescriptorImpl implements c0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected SimpleFunctionDescriptorImpl(kotlin.reflect.jvm.internal.impl.descriptors.i iVar, c0 c0Var, Annotations annotations, Name name, CallableMemberDescriptor.Kind kind, d0 d0Var) {
        super(iVar, c0Var, annotations, name, kind, d0Var);
        if (iVar == null) {
            u(0);
        }
        if (annotations == null) {
            u(1);
        }
        if (name == null) {
            u(2);
        }
        if (kind == null) {
            u(3);
        }
        if (d0Var == null) {
            u(4);
        }
    }

    public static SimpleFunctionDescriptorImpl create(kotlin.reflect.jvm.internal.impl.descriptors.i iVar, Annotations annotations, Name name, CallableMemberDescriptor.Kind kind, d0 d0Var) {
        if (iVar == null) {
            u(5);
        }
        if (annotations == null) {
            u(6);
        }
        if (name == null) {
            u(7);
        }
        if (kind == null) {
            u(8);
        }
        if (d0Var == null) {
            u(9);
        }
        return new SimpleFunctionDescriptorImpl(iVar, null, annotations, name, kind, d0Var);
    }

    private static /* synthetic */ void u(int i) {
        String str = (i == 13 || i == 17 || i == 18 || i == 23 || i == 24) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 13 || i == 17 || i == 18 || i == 23 || i == 24) ? 2 : 3];
        switch (i) {
            case 1:
            case 6:
            case 21:
                objArr[0] = "annotations";
                break;
            case 2:
            case 7:
                objArr[0] = "name";
                break;
            case 3:
            case 8:
            case 20:
                objArr[0] = "kind";
                break;
            case 4:
            case 9:
            case 22:
                objArr[0] = ShareConstants.FEED_SOURCE_PARAM;
                break;
            case 5:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 10:
            case 14:
                objArr[0] = "typeParameters";
                break;
            case 11:
            case 15:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 12:
            case 16:
                objArr[0] = "visibility";
                break;
            case 13:
            case 17:
            case 18:
            case 23:
            case 24:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl";
                break;
            case 19:
                objArr[0] = "newOwner";
                break;
        }
        if (i == 13 || i == 17) {
            objArr[1] = MobileAdsBridgeBase.initializeMethodName;
        } else if (i == 18) {
            objArr[1] = "getOriginal";
        } else if (i == 23) {
            objArr[1] = "copy";
        } else if (i != 24) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl";
        } else {
            objArr[1] = "newCopyBuilder";
        }
        switch (i) {
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                objArr[2] = "create";
                break;
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
            case 16:
                objArr[2] = MobileAdsBridgeBase.initializeMethodName;
                break;
            case 13:
            case 17:
            case 18:
            case 23:
            case 24:
                break;
            case 19:
            case 20:
            case 21:
            case 22:
                objArr[2] = "createSubstitutedCopy";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 13 && i != 17 && i != 18 && i != 23 && i != 24) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    /* JADX INFO: renamed from: Y0, reason: merged with bridge method [inline-methods] */
    public c0 A0(kotlin.reflect.jvm.internal.impl.descriptors.i iVar, Modality modality, m0 m0Var, CallableMemberDescriptor.Kind kind, boolean z) {
        c0 c0Var = (c0) super.A0(iVar, modality, m0Var, kind, z);
        if (c0Var == null) {
            u(23);
        }
        return c0Var;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.i, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.i
    /* JADX INFO: renamed from: Z0, reason: merged with bridge method [inline-methods] */
    public c0 a() {
        c0 c0Var = (c0) super.a();
        if (c0Var == null) {
            u(18);
        }
        return c0Var;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    /* JADX INFO: renamed from: a1, reason: merged with bridge method [inline-methods] */
    public SimpleFunctionDescriptorImpl F0(b0 b0Var, b0 b0Var2, List<? extends i0> list, List<ValueParameterDescriptor> list2, kotlin.reflect.jvm.internal.impl.types.u uVar, Modality modality, m0 m0Var) {
        if (list == null) {
            u(10);
        }
        if (list2 == null) {
            u(11);
        }
        if (m0Var == null) {
            u(12);
        }
        SimpleFunctionDescriptorImpl simpleFunctionDescriptorImplB1 = b1(b0Var, b0Var2, list, list2, uVar, modality, m0Var, null);
        if (simpleFunctionDescriptorImplB1 == null) {
            u(13);
        }
        return simpleFunctionDescriptorImplB1;
    }

    public SimpleFunctionDescriptorImpl b1(b0 b0Var, b0 b0Var2, List<? extends i0> list, List<ValueParameterDescriptor> list2, kotlin.reflect.jvm.internal.impl.types.u uVar, Modality modality, m0 m0Var, Map<? extends a.InterfaceC0516a<?>, ?> map) {
        if (list == null) {
            u(14);
        }
        if (list2 == null) {
            u(15);
        }
        if (m0Var == null) {
            u(16);
        }
        super.F0(b0Var, b0Var2, list, list2, uVar, modality, m0Var);
        if (map != null && !map.isEmpty()) {
            this.C = new LinkedHashMap(map);
        }
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    protected FunctionDescriptorImpl k0(kotlin.reflect.jvm.internal.impl.descriptors.i iVar, kotlin.reflect.jvm.internal.impl.descriptors.o oVar, CallableMemberDescriptor.Kind kind, Name name, Annotations annotations, d0 d0Var) {
        if (iVar == null) {
            u(19);
        }
        if (kind == null) {
            u(20);
        }
        if (annotations == null) {
            u(21);
        }
        if (d0Var == null) {
            u(22);
        }
        c0 c0Var = (c0) oVar;
        if (name == null) {
            name = getName();
        }
        return new SimpleFunctionDescriptorImpl(iVar, c0Var, annotations, name, kind, d0Var);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.o
    public o.a<? extends c0> r() {
        o.a aVarR = super.r();
        if (aVarR == null) {
            u(24);
        }
        return aVarR;
    }
}
