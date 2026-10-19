package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: compiled from: AbstractReceiverParameterDescriptor.java */
/* JADX INFO: loaded from: classes5.dex */
public abstract class c extends DeclarationDescriptorImpl implements b0 {
    private static final Name c = Name.special("<this>");

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(Annotations annotations) {
        super(annotations, c);
        if (annotations == null) {
            u(0);
        }
    }

    private static /* synthetic */ void u(int i) {
        String str;
        int i2;
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                i2 = 2;
                break;
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "substitutor";
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor";
                break;
            default:
                objArr[0] = "annotations";
                break;
        }
        switch (i) {
            case 2:
                objArr[1] = "getTypeParameters";
                break;
            case 3:
                objArr[1] = "getType";
                break;
            case 4:
                objArr[1] = "getValueParameters";
                break;
            case 5:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 6:
                objArr[1] = "getVisibility";
                break;
            case 7:
                objArr[1] = "getOriginal";
                break;
            case 8:
                objArr[1] = "getSource";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor";
                break;
        }
        switch (i) {
            case 1:
                objArr[2] = "substitute";
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                throw new IllegalStateException(str2);
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public b0 H() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public b0 K() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public boolean Y() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.i
    /* JADX INFO: renamed from: Z, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.descriptors.v a() {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f0
    public b0 c(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            u(1);
        }
        if (typeSubstitutor.f()) {
            return this;
        }
        kotlin.reflect.jvm.internal.impl.types.u uVarI = b() instanceof kotlin.reflect.jvm.internal.impl.descriptors.d ? typeSubstitutor.i(getType(), Variance.OUT_VARIANCE) : typeSubstitutor.i(getType(), Variance.INVARIANT);
        if (uVarI == null) {
            return null;
        }
        return uVarI == getType() ? this : new w(b(), new kotlin.reflect.jvm.internal.impl.resolve.scopes.g.g(uVarI), getAnnotations());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.a> d() {
        Set setEmptySet = Collections.emptySet();
        if (setEmptySet == null) {
            u(5);
        }
        return setEmptySet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public List<ValueParameterDescriptor> g() {
        List<ValueParameterDescriptor> listEmptyList = Collections.emptyList();
        if (listEmptyList == null) {
            u(4);
        }
        return listEmptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public kotlin.reflect.jvm.internal.impl.types.u getReturnType() {
        return getType();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.l
    public d0 getSource() {
        d0 d0Var = d0.a;
        if (d0Var == null) {
            u(8);
        }
        return d0Var;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.j0
    public kotlin.reflect.jvm.internal.impl.types.u getType() {
        kotlin.reflect.jvm.internal.impl.types.u type = getValue().getType();
        if (type == null) {
            u(3);
        }
        return type;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public List<i0> getTypeParameters() {
        List<i0> listEmptyList = Collections.emptyList();
        if (listEmptyList == null) {
            u(2);
        }
        return listEmptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.m, kotlin.reflect.jvm.internal.impl.descriptors.q
    public m0 getVisibility() {
        m0 m0Var = Visibilities.f9101f;
        if (m0Var == null) {
            u(6);
        }
        return m0Var;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i
    public <R, D> R w(kotlin.reflect.jvm.internal.impl.descriptors.k<R, D> kVar, D d2) {
        return kVar.l(this, d2);
    }
}
