package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.facebook.share.internal.ShareConstants;
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

/* JADX INFO: compiled from: PropertyGetterDescriptorImpl.java */
/* JADX INFO: loaded from: classes5.dex */
public class v extends u implements kotlin.reflect.jvm.internal.impl.descriptors.z {
    private kotlin.reflect.jvm.internal.impl.types.u m;
    private final kotlin.reflect.jvm.internal.impl.descriptors.z n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public v(kotlin.reflect.jvm.internal.impl.descriptors.y yVar, Annotations annotations, Modality modality, m0 m0Var, boolean z, boolean z2, boolean z3, CallableMemberDescriptor.Kind kind, kotlin.reflect.jvm.internal.impl.descriptors.z zVar, d0 d0Var) {
        kotlin.reflect.jvm.internal.impl.descriptors.z zVar2;
        v vVar;
        super(modality, m0Var, yVar, annotations, Name.special("<get-" + yVar.getName() + ">"), z, z2, z3, kind, d0Var);
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
        if (zVar != null) {
            vVar = this;
            zVar2 = zVar;
        } else {
            zVar2 = this;
            vVar = zVar2;
        }
        vVar.n = zVar2;
    }

    private static /* synthetic */ void u(int i) {
        String str = (i == 6 || i == 7 || i == 8) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 6 || i == 7 || i == 8) ? 2 : 3];
        switch (i) {
            case 1:
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
            case 7:
            case 8:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl";
                break;
            default:
                objArr[0] = "correspondingProperty";
                break;
        }
        if (i == 6) {
            objArr[1] = "getOverriddenDescriptors";
        } else if (i == 7) {
            objArr[1] = "getValueParameters";
        } else if (i != 8) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl";
        } else {
            objArr[1] = "getOriginal";
        }
        if (i != 6 && i != 7 && i != 8) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (i != 6 && i != 7 && i != 8) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.u
    /* JADX INFO: renamed from: G0, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.descriptors.z a() {
        kotlin.reflect.jvm.internal.impl.descriptors.z zVar = this.n;
        if (zVar == null) {
            u(8);
        }
        return zVar;
    }

    public void H0(kotlin.reflect.jvm.internal.impl.types.u uVar) {
        if (uVar == null) {
            uVar = P().getType();
        }
        this.m = uVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.a
    public Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.z> d() {
        Collection<kotlin.reflect.jvm.internal.impl.descriptors.x> collectionK0 = super.k0(true);
        if (collectionK0 == null) {
            u(6);
        }
        return collectionK0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public List<ValueParameterDescriptor> g() {
        List<ValueParameterDescriptor> listEmptyList = Collections.emptyList();
        if (listEmptyList == null) {
            u(7);
        }
        return listEmptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public kotlin.reflect.jvm.internal.impl.types.u getReturnType() {
        return this.m;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i
    public <R, D> R w(kotlin.reflect.jvm.internal.impl.descriptors.k<R, D> kVar, D d2) {
        return kVar.g(this, d2);
    }
}
