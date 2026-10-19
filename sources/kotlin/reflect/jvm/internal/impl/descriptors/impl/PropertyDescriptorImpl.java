package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.DescriptorSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.j0;
import kotlin.reflect.jvm.internal.impl.utils.SmartSet;

/* JADX INFO: loaded from: classes5.dex */
public class PropertyDescriptorImpl extends a0 implements kotlin.reflect.jvm.internal.impl.descriptors.y {
    private final Modality h;
    private m0 i;
    private Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.y> j;
    private final kotlin.reflect.jvm.internal.impl.descriptors.y k;
    private final CallableMemberDescriptor.Kind l;
    private final boolean m;
    private final boolean n;
    private final boolean o;
    private final boolean p;
    private final boolean q;
    private final boolean r;
    private b0 s;
    private b0 t;
    private List<i0> u;
    private v v;
    private kotlin.reflect.jvm.internal.impl.descriptors.a0 w;
    private boolean x;
    private kotlin.reflect.jvm.internal.impl.descriptors.n y;
    private kotlin.reflect.jvm.internal.impl.descriptors.n z;

    public class a {
        private kotlin.reflect.jvm.internal.impl.descriptors.i a;
        private Modality b;
        private m0 c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private CallableMemberDescriptor.Kind f9130f;
        private b0 i;
        private Name k;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private kotlin.reflect.jvm.internal.impl.descriptors.y f9128d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f9129e = false;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private j0 f9131g = j0.a;
        private boolean h = true;
        private List<i0> j = null;

        public a() {
            this.a = PropertyDescriptorImpl.this.b();
            this.b = PropertyDescriptorImpl.this.p();
            this.c = PropertyDescriptorImpl.this.getVisibility();
            this.f9130f = PropertyDescriptorImpl.this.getKind();
            this.i = PropertyDescriptorImpl.this.s;
            this.k = PropertyDescriptorImpl.this.getName();
        }

        private static /* synthetic */ void a(int i) {
            String str = (i == 1 || i == 2 || i == 3 || i == 5 || i == 7 || i == 9 || i == 17 || i == 11 || i == 12 || i == 14 || i == 15) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 1 || i == 2 || i == 3 || i == 5 || i == 7 || i == 9 || i == 17 || i == 11 || i == 12 || i == 14 || i == 15) ? 2 : 3];
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 5:
                case 7:
                case 9:
                case 11:
                case 12:
                case 14:
                case 15:
                case 17:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration";
                    break;
                case 4:
                    objArr[0] = "modality";
                    break;
                case 6:
                    objArr[0] = "visibility";
                    break;
                case 8:
                    objArr[0] = "kind";
                    break;
                case 10:
                    objArr[0] = "typeParameters";
                    break;
                case 13:
                    objArr[0] = "substitution";
                    break;
                case 16:
                    objArr[0] = "name";
                    break;
                default:
                    objArr[0] = "owner";
                    break;
            }
            if (i == 1) {
                objArr[1] = "setOwner";
            } else if (i == 2) {
                objArr[1] = "setOriginal";
            } else if (i == 3) {
                objArr[1] = "setPreserveSourceElement";
            } else if (i == 5) {
                objArr[1] = "setModality";
            } else if (i == 7) {
                objArr[1] = "setVisibility";
            } else if (i == 9) {
                objArr[1] = "setKind";
            } else if (i == 17) {
                objArr[1] = "setName";
            } else if (i == 11) {
                objArr[1] = "setTypeParameters";
            } else if (i == 12) {
                objArr[1] = "setDispatchReceiverParameter";
            } else if (i == 14) {
                objArr[1] = "setSubstitution";
            } else if (i != 15) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration";
            } else {
                objArr[1] = "setCopyOverrides";
            }
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 5:
                case 7:
                case 9:
                case 11:
                case 12:
                case 14:
                case 15:
                case 17:
                    break;
                case 4:
                    objArr[2] = "setModality";
                    break;
                case 6:
                    objArr[2] = "setVisibility";
                    break;
                case 8:
                    objArr[2] = "setKind";
                    break;
                case 10:
                    objArr[2] = "setTypeParameters";
                    break;
                case 13:
                    objArr[2] = "setSubstitution";
                    break;
                case 16:
                    objArr[2] = "setName";
                    break;
                default:
                    objArr[2] = "setOwner";
                    break;
            }
            String str2 = String.format(str, objArr);
            if (i != 1 && i != 2 && i != 3 && i != 5 && i != 7 && i != 9 && i != 17 && i != 11 && i != 12 && i != 14 && i != 15) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        public kotlin.reflect.jvm.internal.impl.descriptors.y m() {
            return PropertyDescriptorImpl.this.F0(this);
        }

        kotlin.reflect.jvm.internal.impl.descriptors.z n() {
            kotlin.reflect.jvm.internal.impl.descriptors.y yVar = this.f9128d;
            if (yVar == null) {
                return null;
            }
            return yVar.getGetter();
        }

        kotlin.reflect.jvm.internal.impl.descriptors.a0 o() {
            kotlin.reflect.jvm.internal.impl.descriptors.y yVar = this.f9128d;
            if (yVar == null) {
                return null;
            }
            return yVar.getSetter();
        }

        public a p(boolean z) {
            this.h = z;
            return this;
        }

        public a q(CallableMemberDescriptor.Kind kind) {
            if (kind == null) {
                a(8);
            }
            this.f9130f = kind;
            return this;
        }

        public a r(Modality modality) {
            if (modality == null) {
                a(4);
            }
            this.b = modality;
            return this;
        }

        public a s(CallableMemberDescriptor callableMemberDescriptor) {
            this.f9128d = (kotlin.reflect.jvm.internal.impl.descriptors.y) callableMemberDescriptor;
            return this;
        }

        public a t(kotlin.reflect.jvm.internal.impl.descriptors.i iVar) {
            if (iVar == null) {
                a(0);
            }
            this.a = iVar;
            return this;
        }

        public a u(j0 j0Var) {
            if (j0Var == null) {
                a(13);
            }
            this.f9131g = j0Var;
            return this;
        }

        public a v(m0 m0Var) {
            if (m0Var == null) {
                a(6);
            }
            this.c = m0Var;
            return this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected PropertyDescriptorImpl(kotlin.reflect.jvm.internal.impl.descriptors.i iVar, kotlin.reflect.jvm.internal.impl.descriptors.y yVar, Annotations annotations, Modality modality, m0 m0Var, boolean z, Name name, CallableMemberDescriptor.Kind kind, d0 d0Var, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        super(iVar, annotations, name, null, z, d0Var);
        if (iVar == null) {
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
        if (name == null) {
            u(4);
        }
        if (kind == null) {
            u(5);
        }
        if (d0Var == null) {
            u(6);
        }
        this.j = null;
        this.h = modality;
        this.i = m0Var;
        this.k = yVar == null ? this : yVar;
        this.l = kind;
        this.m = z2;
        this.n = z3;
        this.o = z4;
        this.p = z5;
        this.q = z6;
        this.r = z7;
    }

    private d0 H0(boolean z, kotlin.reflect.jvm.internal.impl.descriptors.y yVar) {
        d0 source;
        if (z) {
            if (yVar == null) {
                yVar = a();
            }
            source = yVar.getSource();
        } else {
            source = d0.a;
        }
        if (source == null) {
            u(23);
        }
        return source;
    }

    private static kotlin.reflect.jvm.internal.impl.descriptors.o I0(TypeSubstitutor typeSubstitutor, kotlin.reflect.jvm.internal.impl.descriptors.x xVar) {
        if (typeSubstitutor == null) {
            u(25);
        }
        if (xVar == null) {
            u(26);
        }
        if (xVar.n0() != null) {
            return xVar.n0().c(typeSubstitutor);
        }
        return null;
    }

    private static m0 N0(m0 m0Var, CallableMemberDescriptor.Kind kind) {
        return (kind == CallableMemberDescriptor.Kind.FAKE_OVERRIDE && Visibilities.isPrivate(m0Var.e())) ? Visibilities.h : m0Var;
    }

    public static PropertyDescriptorImpl create(kotlin.reflect.jvm.internal.impl.descriptors.i iVar, Annotations annotations, Modality modality, m0 m0Var, boolean z, Name name, CallableMemberDescriptor.Kind kind, d0 d0Var, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        if (iVar == null) {
            u(7);
        }
        if (annotations == null) {
            u(8);
        }
        if (modality == null) {
            u(9);
        }
        if (m0Var == null) {
            u(10);
        }
        if (name == null) {
            u(11);
        }
        if (kind == null) {
            u(12);
        }
        if (d0Var == null) {
            u(13);
        }
        return new PropertyDescriptorImpl(iVar, null, annotations, modality, m0Var, z, name, kind, d0Var, z2, z3, z4, z5, z6, z7);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static /* synthetic */ void u(int r11) {
        /*
            Method dump skipped, instruction units count: 488
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl.u(int):void");
    }

    protected PropertyDescriptorImpl B0(kotlin.reflect.jvm.internal.impl.descriptors.i iVar, Modality modality, m0 m0Var, kotlin.reflect.jvm.internal.impl.descriptors.y yVar, CallableMemberDescriptor.Kind kind, Name name, d0 d0Var) {
        if (iVar == null) {
            u(27);
        }
        if (modality == null) {
            u(28);
        }
        if (m0Var == null) {
            u(29);
        }
        if (kind == null) {
            u(30);
        }
        if (name == null) {
            u(31);
        }
        if (d0Var == null) {
            u(32);
        }
        return new PropertyDescriptorImpl(iVar, yVar, getAnnotations(), modality, m0Var, J(), name, kind, d0Var, s0(), isConst(), c0(), R(), isExternal(), y());
    }

    protected kotlin.reflect.jvm.internal.impl.descriptors.y F0(a aVar) {
        b0 b0VarC;
        w wVar;
        kotlin.reflect.jvm.internal.impl.storage.f<kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> fVar;
        if (aVar == null) {
            u(24);
        }
        PropertyDescriptorImpl propertyDescriptorImplB0 = B0(aVar.a, aVar.b, aVar.c, aVar.f9128d, aVar.f9130f, aVar.k, H0(aVar.f9129e, aVar.f9128d));
        List<i0> typeParameters = aVar.j == null ? getTypeParameters() : aVar.j;
        ArrayList arrayList = new ArrayList(typeParameters.size());
        TypeSubstitutor typeSubstitutorSubstituteTypeParameters = DescriptorSubstitutor.substituteTypeParameters(typeParameters, aVar.f9131g, propertyDescriptorImplB0, arrayList);
        kotlin.reflect.jvm.internal.impl.types.u type = getType();
        Variance variance = Variance.OUT_VARIANCE;
        kotlin.reflect.jvm.internal.impl.types.u uVarI = typeSubstitutorSubstituteTypeParameters.i(type, variance);
        if (uVarI == null) {
            return null;
        }
        b0 b0Var = aVar.i;
        if (b0Var != null) {
            b0VarC = b0Var.c(typeSubstitutorSubstituteTypeParameters);
            if (b0VarC == null) {
                return null;
            }
        } else {
            b0VarC = null;
        }
        b0 b0Var2 = this.t;
        if (b0Var2 != null) {
            kotlin.reflect.jvm.internal.impl.types.u uVarI2 = typeSubstitutorSubstituteTypeParameters.i(b0Var2.getType(), Variance.IN_VARIANCE);
            if (uVarI2 == null) {
                return null;
            }
            wVar = new w(propertyDescriptorImplB0, new kotlin.reflect.jvm.internal.impl.resolve.scopes.g.b(propertyDescriptorImplB0, uVarI2, this.t.getValue()), this.t.getAnnotations());
        } else {
            wVar = null;
        }
        propertyDescriptorImplB0.P0(uVarI, arrayList, b0VarC, wVar);
        v vVar = this.v == null ? null : new v(propertyDescriptorImplB0, this.v.getAnnotations(), aVar.b, N0(this.v.getVisibility(), aVar.f9130f), this.v.C(), this.v.isExternal(), this.v.isInline(), aVar.f9130f, aVar.n(), d0.a);
        if (vVar != null) {
            kotlin.reflect.jvm.internal.impl.types.u returnType = this.v.getReturnType();
            vVar.B0(I0(typeSubstitutorSubstituteTypeParameters, this.v));
            vVar.H0(returnType != null ? typeSubstitutorSubstituteTypeParameters.i(returnType, variance) : null);
        }
        PropertySetterDescriptorImpl propertySetterDescriptorImpl = this.w == null ? null : new PropertySetterDescriptorImpl(propertyDescriptorImplB0, this.w.getAnnotations(), aVar.b, N0(this.w.getVisibility(), aVar.f9130f), this.w.C(), this.w.isExternal(), this.w.isInline(), aVar.f9130f, aVar.o(), d0.a);
        if (propertySetterDescriptorImpl != null) {
            List<ValueParameterDescriptor> substitutedValueParameters = FunctionDescriptorImpl.getSubstitutedValueParameters(propertySetterDescriptorImpl, this.w.g(), typeSubstitutorSubstituteTypeParameters, false, false, null);
            if (substitutedValueParameters == null) {
                propertyDescriptorImplB0.O0(true);
                substitutedValueParameters = Collections.singletonList(PropertySetterDescriptorImpl.createSetterParameter(propertySetterDescriptorImpl, DescriptorUtilsKt.getBuiltIns(aVar.a).H(), this.w.g().get(0).getAnnotations()));
            }
            if (substitutedValueParameters.size() != 1) {
                throw new IllegalStateException();
            }
            propertySetterDescriptorImpl.B0(I0(typeSubstitutorSubstituteTypeParameters, this.w));
            propertySetterDescriptorImpl.H0(substitutedValueParameters.get(0));
        }
        kotlin.reflect.jvm.internal.impl.descriptors.n nVar = this.y;
        l lVar = nVar == null ? null : new l(nVar.getAnnotations(), propertyDescriptorImplB0);
        kotlin.reflect.jvm.internal.impl.descriptors.n nVar2 = this.z;
        propertyDescriptorImplB0.K0(vVar, propertySetterDescriptorImpl, lVar, nVar2 != null ? new l(nVar2.getAnnotations(), propertyDescriptorImplB0) : null);
        if (aVar.h) {
            SmartSet smartSetCreate = SmartSet.create();
            Iterator<? extends kotlin.reflect.jvm.internal.impl.descriptors.y> it = d().iterator();
            while (it.hasNext()) {
                smartSetCreate.add(it.next().c(typeSubstitutorSubstituteTypeParameters));
            }
            propertyDescriptorImplB0.x0(smartSetCreate);
        }
        if (isConst() && (fVar = this.f9137g) != null) {
            propertyDescriptorImplB0.e0(fVar);
        }
        return propertyDescriptorImplB0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.y
    /* JADX INFO: renamed from: G0, reason: merged with bridge method [inline-methods] */
    public v getGetter() {
        return this.v;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.z, kotlin.reflect.jvm.internal.impl.descriptors.a
    public b0 H() {
        return this.s;
    }

    public void J0(v vVar, kotlin.reflect.jvm.internal.impl.descriptors.a0 a0Var) {
        K0(vVar, a0Var, null, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.z, kotlin.reflect.jvm.internal.impl.descriptors.a
    public b0 K() {
        return this.t;
    }

    public void K0(v vVar, kotlin.reflect.jvm.internal.impl.descriptors.a0 a0Var, kotlin.reflect.jvm.internal.impl.descriptors.n nVar, kotlin.reflect.jvm.internal.impl.descriptors.n nVar2) {
        this.v = vVar;
        this.w = a0Var;
        this.y = nVar;
        this.z = nVar2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.y
    public kotlin.reflect.jvm.internal.impl.descriptors.n L() {
        return this.z;
    }

    public boolean L0() {
        return this.x;
    }

    public a M0() {
        return new a();
    }

    public void O0(boolean z) {
        this.x = z;
    }

    public void P0(kotlin.reflect.jvm.internal.impl.types.u uVar, List<? extends i0> list, b0 b0Var, b0 b0Var2) {
        if (uVar == null) {
            u(14);
        }
        if (list == null) {
            u(15);
        }
        b0(uVar);
        this.u = new ArrayList(list);
        this.t = b0Var2;
        this.s = b0Var;
    }

    public void Q0(m0 m0Var) {
        if (m0Var == null) {
            u(16);
        }
        this.i = m0Var;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
    public boolean R() {
        return this.p;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.i, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.i
    public kotlin.reflect.jvm.internal.impl.descriptors.y a() {
        kotlin.reflect.jvm.internal.impl.descriptors.y yVar = this.k;
        kotlin.reflect.jvm.internal.impl.descriptors.y yVarA = yVar == this ? this : yVar.a();
        if (yVarA == null) {
            u(33);
        }
        return yVarA;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f0
    public kotlin.reflect.jvm.internal.impl.descriptors.y c(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            u(22);
        }
        return typeSubstitutor.f() ? this : M0().u(typeSubstitutor.e()).s(a()).m();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
    public boolean c0() {
        return this.o;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.y> d() {
        Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.y> collectionEmptyList = this.j;
        if (collectionEmptyList == null) {
            collectionEmptyList = Collections.emptyList();
        }
        if (collectionEmptyList == null) {
            u(36);
        }
        return collectionEmptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public CallableMemberDescriptor.Kind getKind() {
        CallableMemberDescriptor.Kind kind = this.l;
        if (kind == null) {
            u(34);
        }
        return kind;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.z, kotlin.reflect.jvm.internal.impl.descriptors.a
    public kotlin.reflect.jvm.internal.impl.types.u getReturnType() {
        kotlin.reflect.jvm.internal.impl.types.u type = getType();
        if (type == null) {
            u(18);
        }
        return type;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.y
    public kotlin.reflect.jvm.internal.impl.descriptors.a0 getSetter() {
        return this.w;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.z, kotlin.reflect.jvm.internal.impl.descriptors.a
    public List<i0> getTypeParameters() {
        List<i0> list = this.u;
        if (list == null) {
            u(17);
        }
        return list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.m, kotlin.reflect.jvm.internal.impl.descriptors.q
    public m0 getVisibility() {
        m0 m0Var = this.i;
        if (m0Var == null) {
            u(20);
        }
        return m0Var;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k0
    public boolean isConst() {
        return this.n;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
    public boolean isExternal() {
        return this.q;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
    public Modality p() {
        Modality modality = this.h;
        if (modality == null) {
            u(19);
        }
        return modality;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.y
    public kotlin.reflect.jvm.internal.impl.descriptors.n r0() {
        return this.y;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.y
    public List<kotlin.reflect.jvm.internal.impl.descriptors.x> s() {
        ArrayList arrayList = new ArrayList(2);
        v vVar = this.v;
        if (vVar != null) {
            arrayList.add(vVar);
        }
        kotlin.reflect.jvm.internal.impl.descriptors.a0 a0Var = this.w;
        if (a0Var != null) {
            arrayList.add(a0Var);
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k0
    public boolean s0() {
        return this.m;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i
    public <R, D> R w(kotlin.reflect.jvm.internal.impl.descriptors.k<R, D> kVar, D d2) {
        return kVar.c(this, d2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public void x0(Collection<? extends CallableMemberDescriptor> collection) {
        if (collection == 0) {
            u(35);
        }
        this.j = collection;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.l0
    public boolean y() {
        return this.r;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    /* JADX INFO: renamed from: z0, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.descriptors.y A0(kotlin.reflect.jvm.internal.impl.descriptors.i iVar, Modality modality, m0 m0Var, CallableMemberDescriptor.Kind kind, boolean z) {
        kotlin.reflect.jvm.internal.impl.descriptors.y yVarM = M0().t(iVar).s(null).r(modality).v(m0Var).q(kind).p(z).m();
        if (yVarM == null) {
            u(37);
        }
        return yVarM;
    }
}
