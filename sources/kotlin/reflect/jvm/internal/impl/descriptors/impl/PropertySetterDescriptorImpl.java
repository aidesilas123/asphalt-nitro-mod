package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

/* JADX INFO: loaded from: classes5.dex */
public class PropertySetterDescriptorImpl extends u implements kotlin.reflect.jvm.internal.impl.descriptors.a0 {
    private ValueParameterDescriptor m;
    private final kotlin.reflect.jvm.internal.impl.descriptors.a0 n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public PropertySetterDescriptorImpl(kotlin.reflect.jvm.internal.impl.descriptors.y yVar, Annotations annotations, Modality modality, m0 m0Var, boolean z, boolean z2, boolean z3, CallableMemberDescriptor.Kind kind, kotlin.reflect.jvm.internal.impl.descriptors.a0 a0Var, d0 d0Var) {
        kotlin.reflect.jvm.internal.impl.descriptors.a0 a0Var2;
        PropertySetterDescriptorImpl propertySetterDescriptorImpl;
        super(modality, m0Var, yVar, annotations, Name.special("<set-" + yVar.getName() + ">"), z, z2, z3, kind, d0Var);
        if (yVar == null) {
            u(0);
        }
        if (annotations == null) {
            u(1);
        }
        if (modality == null) {
            u(2);
        }
        if (m0Var == null) {
            u(3);
        }
        if (kind == null) {
            u(4);
        }
        if (d0Var == null) {
            u(5);
        }
        if (a0Var != null) {
            propertySetterDescriptorImpl = this;
            a0Var2 = a0Var;
        } else {
            a0Var2 = this;
            propertySetterDescriptorImpl = a0Var2;
        }
        propertySetterDescriptorImpl.n = a0Var2;
    }

    public static ValueParameterDescriptorImpl createSetterParameter(kotlin.reflect.jvm.internal.impl.descriptors.a0 a0Var, kotlin.reflect.jvm.internal.impl.types.u uVar, Annotations annotations) {
        if (a0Var == null) {
            u(7);
        }
        if (uVar == null) {
            u(8);
        }
        if (annotations == null) {
            u(9);
        }
        return new ValueParameterDescriptorImpl(a0Var, null, 0, annotations, Name.special("<set-?>"), uVar, false, false, false, null, d0.a);
    }

    private static /* synthetic */ void u(int i) {
        String str;
        int i2;
        switch (i) {
            case 10:
            case 11:
            case 12:
            case 13:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 10:
            case 11:
            case 12:
            case 13:
                i2 = 2;
                break;
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
            case 9:
                objArr[0] = "annotations";
                break;
            case 2:
                objArr[0] = "modality";
                break;
            case 3:
                objArr[0] = "visibility";
                break;
            case 4:
                objArr[0] = "kind";
                break;
            case 5:
                objArr[0] = ShareConstants.FEED_SOURCE_PARAM;
                break;
            case 6:
                objArr[0] = MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD;
                break;
            case 7:
                objArr[0] = "setterDescriptor";
                break;
            case 8:
                objArr[0] = "type";
                break;
            case 10:
            case 11:
            case 12:
            case 13:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl";
                break;
            default:
                objArr[0] = "correspondingProperty";
                break;
        }
        switch (i) {
            case 10:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 11:
                objArr[1] = "getValueParameters";
                break;
            case 12:
                objArr[1] = "getReturnType";
                break;
            case 13:
                objArr[1] = "getOriginal";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl";
                break;
        }
        switch (i) {
            case 6:
                objArr[2] = MobileAdsBridgeBase.initializeMethodName;
                break;
            case 7:
            case 8:
            case 9:
                objArr[2] = "createSetterParameter";
                break;
            case 10:
            case 11:
            case 12:
            case 13:
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 10:
            case 11:
            case 12:
            case 13:
                throw new IllegalStateException(str2);
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.u
    /* JADX INFO: renamed from: G0, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.descriptors.a0 a() {
        kotlin.reflect.jvm.internal.impl.descriptors.a0 a0Var = this.n;
        if (a0Var == null) {
            u(13);
        }
        return a0Var;
    }

    public void H0(ValueParameterDescriptor valueParameterDescriptor) {
        if (valueParameterDescriptor == null) {
            u(6);
        }
        this.m = valueParameterDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.a
    public Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.a0> d() {
        Collection<kotlin.reflect.jvm.internal.impl.descriptors.x> collectionK0 = super.k0(false);
        if (collectionK0 == null) {
            u(10);
        }
        return collectionK0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public List<ValueParameterDescriptor> g() {
        ValueParameterDescriptor valueParameterDescriptor = this.m;
        if (valueParameterDescriptor == null) {
            throw new IllegalStateException();
        }
        List<ValueParameterDescriptor> listSingletonList = Collections.singletonList(valueParameterDescriptor);
        if (listSingletonList == null) {
            u(11);
        }
        return listSingletonList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public kotlin.reflect.jvm.internal.impl.types.u getReturnType() {
        kotlin.reflect.jvm.internal.impl.types.y yVarW = DescriptorUtilsKt.getBuiltIns(this).W();
        if (yVarW == null) {
            u(12);
        }
        return yVarW;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i
    public <R, D> R w(kotlin.reflect.jvm.internal.impl.descriptors.k<R, D> kVar, D d2) {
        return kVar.e(this, d2);
    }
}
