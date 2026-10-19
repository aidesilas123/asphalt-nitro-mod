package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.facebook.share.internal.ShareConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;

/* JADX INFO: compiled from: PropertyAccessorDescriptorImpl.java */
/* JADX INFO: loaded from: classes5.dex */
public abstract class u extends i implements kotlin.reflect.jvm.internal.impl.descriptors.x {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f9158e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f9159f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Modality f9160g;
    private final kotlin.reflect.jvm.internal.impl.descriptors.y h;
    private final boolean i;
    private final CallableMemberDescriptor.Kind j;
    private m0 k;
    private kotlin.reflect.jvm.internal.impl.descriptors.o l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(Modality modality, m0 m0Var, kotlin.reflect.jvm.internal.impl.descriptors.y yVar, Annotations annotations, Name name, boolean z, boolean z2, boolean z3, CallableMemberDescriptor.Kind kind, d0 d0Var) {
        super(yVar.b(), annotations, name, d0Var);
        if (modality == null) {
            u(0);
        }
        if (m0Var == null) {
            u(1);
        }
        if (yVar == null) {
            u(2);
        }
        if (annotations == null) {
            u(3);
        }
        if (name == null) {
            u(4);
        }
        if (d0Var == null) {
            u(5);
        }
        this.l = null;
        this.f9160g = modality;
        this.k = m0Var;
        this.h = yVar;
        this.f9158e = z;
        this.f9159f = z2;
        this.i = z3;
        this.j = kind;
    }

    private static /* synthetic */ void u(int i) {
        String str;
        int i2;
        switch (i) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 7:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                i2 = 2;
                break;
            case 7:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "visibility";
                break;
            case 2:
                objArr[0] = "correspondingProperty";
                break;
            case 3:
                objArr[0] = "annotations";
                break;
            case 4:
                objArr[0] = "name";
                break;
            case 5:
                objArr[0] = ShareConstants.FEED_SOURCE_PARAM;
                break;
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl";
                break;
            case 7:
                objArr[0] = "substitutor";
                break;
            case 14:
                objArr[0] = "overriddenDescriptors";
                break;
            default:
                objArr[0] = "modality";
                break;
        }
        switch (i) {
            case 6:
                objArr[1] = "getKind";
                break;
            case 7:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl";
                break;
            case 8:
                objArr[1] = "getTypeParameters";
                break;
            case 9:
                objArr[1] = "getModality";
                break;
            case 10:
                objArr[1] = "getVisibility";
                break;
            case 11:
                objArr[1] = "getCorrespondingVariable";
                break;
            case 12:
                objArr[1] = "getCorrespondingProperty";
                break;
            case 13:
                objArr[1] = "getOverriddenDescriptors";
                break;
        }
        switch (i) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                break;
            case 7:
                objArr[2] = "substitute";
                break;
            case 14:
                objArr[2] = "setOverriddenDescriptors";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                throw new IllegalStateException(str2);
            case 7:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    public void B0(kotlin.reflect.jvm.internal.impl.descriptors.o oVar) {
        this.l = oVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public boolean C() {
        return this.f9158e;
    }

    public void F0(m0 m0Var) {
        this.k = m0Var;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public b0 H() {
        return P().H();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public b0 K() {
        return P().K();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public kotlin.reflect.jvm.internal.impl.descriptors.y P() {
        kotlin.reflect.jvm.internal.impl.descriptors.y yVar = this.h;
        if (yVar == null) {
            u(12);
        }
        return yVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
    public boolean R() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public boolean Y() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.descriptors.x A0(kotlin.reflect.jvm.internal.impl.descriptors.i iVar, Modality modality, m0 m0Var, CallableMemberDescriptor.Kind kind, boolean z) {
        throw new UnsupportedOperationException("Accessors must be copied by the corresponding property");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f0
    public kotlin.reflect.jvm.internal.impl.descriptors.o c(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            u(7);
        }
        throw new UnsupportedOperationException();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
    public boolean c0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.i, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.i
    /* JADX INFO: renamed from: e0, reason: merged with bridge method [inline-methods] */
    public abstract kotlin.reflect.jvm.internal.impl.descriptors.x a();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public CallableMemberDescriptor.Kind getKind() {
        CallableMemberDescriptor.Kind kind = this.j;
        if (kind == null) {
            u(6);
        }
        return kind;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public List<i0> getTypeParameters() {
        List<i0> listEmptyList = Collections.emptyList();
        if (listEmptyList == null) {
            u(8);
        }
        return listEmptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.m, kotlin.reflect.jvm.internal.impl.descriptors.q
    public m0 getVisibility() {
        m0 m0Var = this.k;
        if (m0Var == null) {
            u(10);
        }
        return m0Var;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
    public boolean isExternal() {
        return this.f9159f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o
    public boolean isInfix() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o
    public boolean isInline() {
        return this.i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o
    public boolean isOperator() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o
    public boolean isSuspend() {
        return false;
    }

    protected Collection<kotlin.reflect.jvm.internal.impl.descriptors.x> k0(boolean z) {
        ArrayList arrayList = new ArrayList(0);
        for (kotlin.reflect.jvm.internal.impl.descriptors.y yVar : P().d()) {
            kotlin.reflect.jvm.internal.impl.descriptors.m getter = z ? yVar.getGetter() : yVar.getSetter();
            if (getter != null) {
                arrayList.add(getter);
            }
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o
    public kotlin.reflect.jvm.internal.impl.descriptors.o n0() {
        return this.l;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
    public Modality p() {
        Modality modality = this.f9160g;
        if (modality == null) {
            u(9);
        }
        return modality;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public <V> V p0(a.InterfaceC0516a<V> interfaceC0516a) {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o
    public boolean w0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public void x0(Collection<? extends CallableMemberDescriptor> collection) {
        if (collection == null) {
            u(14);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o
    public boolean y0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o
    public boolean z() {
        return false;
    }

    public void z0(boolean z) {
        this.f9158e = z;
    }
}
