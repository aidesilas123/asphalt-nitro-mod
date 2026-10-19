package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.facebook.share.internal.ShareConstants;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.k0;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: compiled from: VariableDescriptorImpl.java */
/* JADX INFO: loaded from: classes5.dex */
public abstract class z extends i implements k0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected kotlin.reflect.jvm.internal.impl.types.u f9163e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(kotlin.reflect.jvm.internal.impl.descriptors.i iVar, Annotations annotations, Name name, kotlin.reflect.jvm.internal.impl.types.u uVar, d0 d0Var) {
        super(iVar, annotations, name, d0Var);
        if (iVar == null) {
            u(0);
        }
        if (annotations == null) {
            u(1);
        }
        if (name == null) {
            u(2);
        }
        if (d0Var == null) {
            u(3);
        }
        this.f9163e = uVar;
    }

    private static /* synthetic */ void u(int i) {
        String str;
        int i2;
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                i2 = 2;
                break;
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "annotations";
                break;
            case 2:
                objArr[0] = "name";
                break;
            case 3:
                objArr[0] = ShareConstants.FEED_SOURCE_PARAM;
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i) {
            case 4:
                objArr[1] = "getType";
                break;
            case 5:
                objArr[1] = "getOriginal";
                break;
            case 6:
                objArr[1] = "getValueParameters";
                break;
            case 7:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 8:
                objArr[1] = "getTypeParameters";
                break;
            case 9:
                objArr[1] = "getReturnType";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl";
                break;
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                throw new IllegalStateException(str2);
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    public b0 H() {
        return null;
    }

    public b0 K() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public boolean Y() {
        return false;
    }

    public void b0(kotlin.reflect.jvm.internal.impl.types.u uVar) {
        this.f9163e = uVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public List<ValueParameterDescriptor> g() {
        List<ValueParameterDescriptor> listEmptyList = Collections.emptyList();
        if (listEmptyList == null) {
            u(6);
        }
        return listEmptyList;
    }

    public kotlin.reflect.jvm.internal.impl.types.u getReturnType() {
        kotlin.reflect.jvm.internal.impl.types.u type = getType();
        if (type == null) {
            u(9);
        }
        return type;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.j0
    public kotlin.reflect.jvm.internal.impl.types.u getType() {
        kotlin.reflect.jvm.internal.impl.types.u uVar = this.f9163e;
        if (uVar == null) {
            u(4);
        }
        return uVar;
    }

    public List<i0> getTypeParameters() {
        List<i0> listEmptyList = Collections.emptyList();
        if (listEmptyList == null) {
            u(8);
        }
        return listEmptyList;
    }
}
