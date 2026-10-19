package kotlin.reflect.jvm.internal.impl.resolve;

import com.facebook.share.internal.ShareConstants;
import java.util.Collections;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertySetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.v;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.w;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: loaded from: classes5.dex */
public class DescriptorFactory {

    private static class a extends ClassConstructorDescriptorImpl {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, d0 d0Var) {
            super(dVar, null, Annotations.e0.b(), true, CallableMemberDescriptor.Kind.DECLARATION, d0Var);
            if (dVar == null) {
                u(0);
            }
            if (d0Var == null) {
                u(1);
            }
            c1(Collections.emptyList(), DescriptorUtils.getDefaultConstructorVisibility(dVar));
        }

        private static /* synthetic */ void u(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "containingClass";
            } else {
                objArr[0] = ShareConstants.FEED_SOURCE_PARAM;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory$DefaultClassConstructorDescriptor";
            objArr[2] = "<init>";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }
    }

    private static /* synthetic */ void a(int i) {
        String str = (i == 12 || i == 23 || i == 25) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 12 || i == 23 || i == 25) ? 2 : 3];
        switch (i) {
            case 1:
            case 4:
            case 8:
            case 14:
            case 16:
            case 18:
            case 30:
                objArr[0] = "annotations";
                break;
            case 2:
            case 5:
            case 9:
                objArr[0] = "parameterAnnotations";
                break;
            case 3:
            case 7:
            case 13:
            case 15:
            case 17:
            default:
                objArr[0] = "propertyDescriptor";
                break;
            case 6:
            case 11:
            case 19:
                objArr[0] = "sourceElement";
                break;
            case 10:
                objArr[0] = "visibility";
                break;
            case 12:
            case 23:
            case 25:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory";
                break;
            case 20:
                objArr[0] = "containingClass";
                break;
            case 21:
                objArr[0] = ShareConstants.FEED_SOURCE_PARAM;
                break;
            case 22:
            case 24:
                objArr[0] = "enumClass";
                break;
            case 26:
            case 27:
            case 28:
                objArr[0] = "descriptor";
                break;
            case 29:
                objArr[0] = "owner";
                break;
        }
        if (i == 12) {
            objArr[1] = "createSetter";
        } else if (i == 23) {
            objArr[1] = "createEnumValuesMethod";
        } else if (i != 25) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory";
        } else {
            objArr[1] = "createEnumValueOfMethod";
        }
        switch (i) {
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                objArr[2] = "createSetter";
                break;
            case 12:
            case 23:
            case 25:
                break;
            case 13:
            case 14:
                objArr[2] = "createDefaultGetter";
                break;
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                objArr[2] = "createGetter";
                break;
            case 20:
            case 21:
                objArr[2] = "createPrimaryConstructorForObject";
                break;
            case 22:
                objArr[2] = "createEnumValuesMethod";
                break;
            case 24:
                objArr[2] = "createEnumValueOfMethod";
                break;
            case 26:
                objArr[2] = "isEnumValuesMethod";
                break;
            case 27:
                objArr[2] = "isEnumValueOfMethod";
                break;
            case 28:
                objArr[2] = "isEnumSpecialMethod";
                break;
            case 29:
            case 30:
                objArr[2] = "createExtensionReceiverParameterForCallable";
                break;
            default:
                objArr[2] = "createDefaultSetter";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 12 && i != 23 && i != 25) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    private static boolean b(o oVar) {
        if (oVar == null) {
            a(28);
        }
        return oVar.getKind() == CallableMemberDescriptor.Kind.SYNTHESIZED && DescriptorUtils.isEnumClass(oVar.b());
    }

    public static v createDefaultGetter(y yVar, Annotations annotations) {
        if (yVar == null) {
            a(13);
        }
        if (annotations == null) {
            a(14);
        }
        return createGetter(yVar, annotations, true, false, false);
    }

    public static PropertySetterDescriptorImpl createDefaultSetter(y yVar, Annotations annotations, Annotations annotations2) {
        if (yVar == null) {
            a(0);
        }
        if (annotations == null) {
            a(1);
        }
        if (annotations2 == null) {
            a(2);
        }
        return createSetter(yVar, annotations, annotations2, true, false, false, yVar.getSource());
    }

    public static c0 createEnumValueOfMethod(d dVar) {
        if (dVar == null) {
            a(24);
        }
        Annotations.a aVar = Annotations.e0;
        SimpleFunctionDescriptorImpl simpleFunctionDescriptorImplCreate = SimpleFunctionDescriptorImpl.create(dVar, aVar.b(), DescriptorUtils.b, CallableMemberDescriptor.Kind.SYNTHESIZED, dVar.getSource());
        SimpleFunctionDescriptorImpl simpleFunctionDescriptorImplA1 = simpleFunctionDescriptorImplCreate.F0(null, null, Collections.emptyList(), Collections.singletonList(new ValueParameterDescriptorImpl(simpleFunctionDescriptorImplCreate, null, 0, aVar.b(), Name.identifier("value"), DescriptorUtilsKt.getBuiltIns(dVar).T(), false, false, false, null, dVar.getSource())), dVar.n(), Modality.FINAL, Visibilities.f9100e);
        if (simpleFunctionDescriptorImplA1 == null) {
            a(25);
        }
        return simpleFunctionDescriptorImplA1;
    }

    public static c0 createEnumValuesMethod(d dVar) {
        if (dVar == null) {
            a(22);
        }
        SimpleFunctionDescriptorImpl simpleFunctionDescriptorImplA1 = SimpleFunctionDescriptorImpl.create(dVar, Annotations.e0.b(), DescriptorUtils.a, CallableMemberDescriptor.Kind.SYNTHESIZED, dVar.getSource()).F0(null, null, Collections.emptyList(), Collections.emptyList(), DescriptorUtilsKt.getBuiltIns(dVar).m(Variance.INVARIANT, dVar.n()), Modality.FINAL, Visibilities.f9100e);
        if (simpleFunctionDescriptorImplA1 == null) {
            a(23);
        }
        return simpleFunctionDescriptorImplA1;
    }

    public static b0 createExtensionReceiverParameterForCallable(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, u uVar, Annotations annotations) {
        if (aVar == null) {
            a(29);
        }
        if (annotations == null) {
            a(30);
        }
        if (uVar == null) {
            return null;
        }
        return new w(aVar, new kotlin.reflect.jvm.internal.impl.resolve.scopes.g.b(aVar, uVar, null), annotations);
    }

    public static v createGetter(y yVar, Annotations annotations, boolean z, boolean z2, boolean z3) {
        if (yVar == null) {
            a(15);
        }
        if (annotations == null) {
            a(16);
        }
        return createGetter(yVar, annotations, z, z2, z3, yVar.getSource());
    }

    public static v createGetter(y yVar, Annotations annotations, boolean z, boolean z2, boolean z3, d0 d0Var) {
        if (yVar == null) {
            a(17);
        }
        if (annotations == null) {
            a(18);
        }
        if (d0Var == null) {
            a(19);
        }
        return new v(yVar, annotations, yVar.p(), yVar.getVisibility(), z, z2, z3, CallableMemberDescriptor.Kind.DECLARATION, null, d0Var);
    }

    public static ClassConstructorDescriptorImpl createPrimaryConstructorForObject(d dVar, d0 d0Var) {
        if (dVar == null) {
            a(20);
        }
        if (d0Var == null) {
            a(21);
        }
        return new a(dVar, d0Var);
    }

    public static PropertySetterDescriptorImpl createSetter(y yVar, Annotations annotations, Annotations annotations2, boolean z, boolean z2, boolean z3, d0 d0Var) {
        if (yVar == null) {
            a(3);
        }
        if (annotations == null) {
            a(4);
        }
        if (annotations2 == null) {
            a(5);
        }
        if (d0Var == null) {
            a(6);
        }
        return createSetter(yVar, annotations, annotations2, z, z2, z3, yVar.getVisibility(), d0Var);
    }

    public static PropertySetterDescriptorImpl createSetter(y yVar, Annotations annotations, Annotations annotations2, boolean z, boolean z2, boolean z3, m0 m0Var, d0 d0Var) {
        if (yVar == null) {
            a(7);
        }
        if (annotations == null) {
            a(8);
        }
        if (annotations2 == null) {
            a(9);
        }
        if (m0Var == null) {
            a(10);
        }
        if (d0Var == null) {
            a(11);
        }
        PropertySetterDescriptorImpl propertySetterDescriptorImpl = new PropertySetterDescriptorImpl(yVar, annotations, yVar.p(), m0Var, z, z2, z3, CallableMemberDescriptor.Kind.DECLARATION, null, d0Var);
        propertySetterDescriptorImpl.H0(PropertySetterDescriptorImpl.createSetterParameter(propertySetterDescriptorImpl, yVar.getType(), annotations2));
        return propertySetterDescriptorImpl;
    }

    public static boolean isEnumValueOfMethod(o oVar) {
        if (oVar == null) {
            a(27);
        }
        return oVar.getName().equals(DescriptorUtils.b) && b(oVar);
    }

    public static boolean isEnumValuesMethod(o oVar) {
        if (oVar == null) {
            a(26);
        }
        return oVar.getName().equals(DescriptorUtils.a) && b(oVar);
    }
}
