package kotlin.reflect.jvm.internal.impl.load.java.descriptors;

import com.facebook.share.internal.ShareConstants;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: loaded from: classes5.dex */
public class JavaMethodDescriptor extends SimpleFunctionDescriptorImpl implements b {
    public static final a.InterfaceC0516a<ValueParameterDescriptor> D = new a();
    private ParameterNamesStatus E;

    private enum ParameterNamesStatus {
        NON_STABLE_DECLARED(false, false),
        STABLE_DECLARED(true, false),
        NON_STABLE_SYNTHESIZED(false, true),
        STABLE_SYNTHESIZED(true, true);


        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f9210f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final boolean f9211g;

        ParameterNamesStatus(boolean z, boolean z2) {
            this.f9210f = z;
            this.f9211g = z2;
        }

        private static /* synthetic */ void a(int i) {
            throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor$ParameterNamesStatus", "get"));
        }

        public static ParameterNamesStatus get(boolean z, boolean z2) {
            ParameterNamesStatus parameterNamesStatus = z ? z2 ? STABLE_SYNTHESIZED : STABLE_DECLARED : z2 ? NON_STABLE_SYNTHESIZED : NON_STABLE_DECLARED;
            if (parameterNamesStatus == null) {
                a(0);
            }
            return parameterNamesStatus;
        }
    }

    static class a implements a.InterfaceC0516a<ValueParameterDescriptor> {
        a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected JavaMethodDescriptor(i iVar, c0 c0Var, Annotations annotations, Name name, CallableMemberDescriptor.Kind kind, d0 d0Var) {
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
        this.E = null;
    }

    public static JavaMethodDescriptor createJavaMethod(i iVar, Annotations annotations, Name name, d0 d0Var) {
        if (iVar == null) {
            u(5);
        }
        if (annotations == null) {
            u(6);
        }
        if (name == null) {
            u(7);
        }
        if (d0Var == null) {
            u(8);
        }
        return new JavaMethodDescriptor(iVar, null, annotations, name, CallableMemberDescriptor.Kind.DECLARATION, d0Var);
    }

    private static /* synthetic */ void u(int i) {
        String str = (i == 12 || i == 17 || i == 20) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 12 || i == 17 || i == 20) ? 2 : 3];
        switch (i) {
            case 1:
            case 6:
            case 15:
                objArr[0] = "annotations";
                break;
            case 2:
            case 7:
                objArr[0] = "name";
                break;
            case 3:
            case 14:
                objArr[0] = "kind";
                break;
            case 4:
            case 8:
            case 16:
                objArr[0] = ShareConstants.FEED_SOURCE_PARAM;
                break;
            case 5:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 9:
                objArr[0] = "typeParameters";
                break;
            case 10:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 11:
                objArr[0] = "visibility";
                break;
            case 12:
            case 17:
            case 20:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor";
                break;
            case 13:
                objArr[0] = "newOwner";
                break;
            case 18:
                objArr[0] = "enhancedValueParametersData";
                break;
            case 19:
                objArr[0] = "enhancedReturnType";
                break;
        }
        if (i == 12) {
            objArr[1] = MobileAdsBridgeBase.initializeMethodName;
        } else if (i == 17) {
            objArr[1] = "createSubstitutedCopy";
        } else if (i != 20) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor";
        } else {
            objArr[1] = "enhance";
        }
        switch (i) {
            case 5:
            case 6:
            case 7:
            case 8:
                objArr[2] = "createJavaMethod";
                break;
            case 9:
            case 10:
            case 11:
                objArr[2] = MobileAdsBridgeBase.initializeMethodName;
                break;
            case 12:
            case 17:
            case 20:
                break;
            case 13:
            case 14:
            case 15:
            case 16:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 18:
            case 19:
                objArr[2] = "enhance";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 12 && i != 17 && i != 20) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.a
    public boolean Y() {
        return this.E.f9211g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl
    public SimpleFunctionDescriptorImpl b1(b0 b0Var, b0 b0Var2, List<? extends i0> list, List<ValueParameterDescriptor> list2, u uVar, Modality modality, m0 m0Var, Map<? extends a.InterfaceC0516a<?>, ?> map) {
        if (list == null) {
            u(9);
        }
        if (list2 == null) {
            u(10);
        }
        if (m0Var == null) {
            u(11);
        }
        SimpleFunctionDescriptorImpl simpleFunctionDescriptorImplB1 = super.b1(b0Var, b0Var2, list, list2, uVar, modality, m0Var, map);
        T0(kotlin.reflect.jvm.internal.impl.util.h.b.a(simpleFunctionDescriptorImplB1).a());
        if (simpleFunctionDescriptorImplB1 == null) {
            u(12);
        }
        return simpleFunctionDescriptorImplB1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    /* JADX INFO: renamed from: c1, reason: merged with bridge method [inline-methods] */
    public JavaMethodDescriptor k0(i iVar, o oVar, CallableMemberDescriptor.Kind kind, Name name, Annotations annotations, d0 d0Var) {
        if (iVar == null) {
            u(13);
        }
        if (kind == null) {
            u(14);
        }
        if (annotations == null) {
            u(15);
        }
        if (d0Var == null) {
            u(16);
        }
        c0 c0Var = (c0) oVar;
        if (name == null) {
            name = getName();
        }
        JavaMethodDescriptor javaMethodDescriptor = new JavaMethodDescriptor(iVar, c0Var, annotations, name, kind, d0Var);
        javaMethodDescriptor.f1(e1(), Y());
        return javaMethodDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.descriptors.b
    /* JADX INFO: renamed from: d1, reason: merged with bridge method [inline-methods] */
    public JavaMethodDescriptor T(u uVar, List<h> list, u uVar2, Pair<a.InterfaceC0516a<?>, ?> pair) {
        if (list == null) {
            u(18);
        }
        if (uVar2 == null) {
            u(19);
        }
        JavaMethodDescriptor javaMethodDescriptor = (JavaMethodDescriptor) r().b(UtilKt.copyValueParameters(list, g(), this)).l(uVar2).f(uVar == null ? null : DescriptorFactory.createExtensionReceiverParameterForCallable(this, uVar, Annotations.e0.b())).a().k().build();
        if (pair != null) {
            javaMethodDescriptor.I0(pair.f(), pair.g());
        }
        if (javaMethodDescriptor == null) {
            u(20);
        }
        return javaMethodDescriptor;
    }

    public boolean e1() {
        return this.E.f9210f;
    }

    public void f1(boolean z, boolean z2) {
        this.E = ParameterNamesStatus.get(z, z2);
    }
}
