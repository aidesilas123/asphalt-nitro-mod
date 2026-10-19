package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.SubstitutingScope;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.DescriptorSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.j0;

/* JADX INFO: compiled from: LazySubstitutingClassDescriptor.java */
/* JADX INFO: loaded from: classes5.dex */
public class o extends p {
    private final p b;
    private final TypeSubstitutor c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TypeSubstitutor f9153d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<i0> f9154e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<i0> f9155f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private f0 f9156g;

    /* JADX INFO: compiled from: LazySubstitutingClassDescriptor.java */
    class a implements Function1<i0, Boolean> {
        a() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean invoke(i0 i0Var) {
            return Boolean.valueOf(!i0Var.M());
        }
    }

    public o(p pVar, TypeSubstitutor typeSubstitutor) {
        this.b = pVar;
        this.c = typeSubstitutor;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static /* synthetic */ void b0(int r15) {
        /*
            Method dump skipped, instruction units count: 310
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.impl.o.b0(int):void");
    }

    private TypeSubstitutor e0() {
        if (this.f9153d == null) {
            if (this.c.f()) {
                this.f9153d = this.c;
            } else {
                List<i0> parameters = this.b.i().getParameters();
                this.f9154e = new ArrayList(parameters.size());
                this.f9153d = DescriptorSubstitutor.substituteTypeParameters(parameters, this.c.e(), this, this.f9154e);
                this.f9155f = CollectionsKt___CollectionsKt.filter(this.f9154e, new a());
            }
        }
        return this.f9153d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public kotlin.reflect.jvm.internal.impl.descriptors.c A() {
        return this.b.A();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean C0() {
        return this.b.C0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public b0 E0() {
        throw new UnsupportedOperationException();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public MemberScope O() {
        MemberScope memberScopeO = this.b.O();
        if (memberScopeO == null) {
            b0(27);
        }
        return memberScopeO;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public MemberScope Q() {
        MemberScope memberScopeZ = Z(DescriptorUtilsKt.getKotlinTypeRefiner(DescriptorUtils.getContainingModule(this.b)));
        if (memberScopeZ == null) {
            b0(12);
        }
        return memberScopeZ;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
    public boolean R() {
        return this.b.R();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean U() {
        return this.b.U();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.p
    public MemberScope Z(kotlin.reflect.jvm.internal.impl.types.checker.d dVar) {
        if (dVar == null) {
            b0(13);
        }
        MemberScope memberScopeZ = this.b.Z(dVar);
        if (!this.c.f()) {
            return new SubstitutingScope(memberScopeZ, e0());
        }
        if (memberScopeZ == null) {
            b0(14);
        }
        return memberScopeZ;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i
    public kotlin.reflect.jvm.internal.impl.descriptors.d a() {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarA = this.b.a();
        if (dVarA == null) {
            b0(20);
        }
        return dVarA;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.j, kotlin.reflect.jvm.internal.impl.descriptors.i
    public kotlin.reflect.jvm.internal.impl.descriptors.i b() {
        kotlin.reflect.jvm.internal.impl.descriptors.i iVarB = this.b.b();
        if (iVarB == null) {
            b0(21);
        }
        return iVarB;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
    public boolean c0() {
        return this.b.c0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> f() {
        Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> collectionF = this.b.f();
        ArrayList arrayList = new ArrayList(collectionF.size());
        for (kotlin.reflect.jvm.internal.impl.descriptors.c cVar : collectionF) {
            arrayList.add(((kotlin.reflect.jvm.internal.impl.descriptors.c) cVar.r().m(cVar.a()).j(cVar.p()).c(cVar.getVisibility()).q(cVar.getKind()).n(false).build()).c(e0()));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public MemberScope f0() {
        MemberScope memberScopeF0 = this.b.f0();
        if (memberScopeF0 == null) {
            b0(15);
        }
        return memberScopeF0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public kotlin.reflect.jvm.internal.impl.descriptors.d g0() {
        return this.b.g0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public Annotations getAnnotations() {
        Annotations annotations = this.b.getAnnotations();
        if (annotations == null) {
            b0(18);
        }
        return annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public ClassKind getKind() {
        ClassKind kind = this.b.getKind();
        if (kind == null) {
            b0(24);
        }
        return kind;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.r
    public Name getName() {
        Name name = this.b.getName();
        if (name == null) {
            b0(19);
        }
        return name;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.l
    public d0 getSource() {
        d0 d0Var = d0.a;
        if (d0Var == null) {
            b0(28);
        }
        return d0Var;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.m, kotlin.reflect.jvm.internal.impl.descriptors.q
    public m0 getVisibility() {
        m0 visibility = this.b.getVisibility();
        if (visibility == null) {
            b0(26);
        }
        return visibility;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f
    public f0 i() {
        f0 f0VarI = this.b.i();
        if (this.c.f()) {
            if (f0VarI == null) {
                b0(0);
            }
            return f0VarI;
        }
        if (this.f9156g == null) {
            TypeSubstitutor typeSubstitutorE0 = e0();
            Collection<kotlin.reflect.jvm.internal.impl.types.u> collectionH = f0VarI.h();
            ArrayList arrayList = new ArrayList(collectionH.size());
            Iterator<kotlin.reflect.jvm.internal.impl.types.u> it = collectionH.iterator();
            while (it.hasNext()) {
                arrayList.add(typeSubstitutorE0.i(it.next(), Variance.INVARIANT));
            }
            this.f9156g = new kotlin.reflect.jvm.internal.impl.types.h(this, this.f9154e, arrayList, LockBasedStorageManager.b);
        }
        f0 f0Var = this.f9156g;
        if (f0Var == null) {
            b0(1);
        }
        return f0Var;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
    public boolean isExternal() {
        return this.b.isExternal();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isInline() {
        return this.b.isInline();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f0
    /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.descriptors.d c(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            b0(22);
        }
        return typeSubstitutor.f() ? this : new o(this, TypeSubstitutor.createChainedSubstitutor(typeSubstitutor.e(), e0().e()));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public MemberScope l0(j0 j0Var) {
        if (j0Var == null) {
            b0(10);
        }
        MemberScope memberScopeU = u(j0Var, DescriptorUtilsKt.getKotlinTypeRefiner(DescriptorUtils.getContainingModule(this)));
        if (memberScopeU == null) {
            b0(11);
        }
        return memberScopeU;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.f
    public kotlin.reflect.jvm.internal.impl.types.y n() {
        kotlin.reflect.jvm.internal.impl.types.y yVarSimpleTypeWithNonTrivialMemberScope = KotlinTypeFactory.simpleTypeWithNonTrivialMemberScope(getAnnotations(), i(), TypeUtils.getDefaultTypeProjections(i().getParameters()), false, Q());
        if (yVarSimpleTypeWithNonTrivialMemberScope == null) {
            b0(16);
        }
        return yVarSimpleTypeWithNonTrivialMemberScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.g
    public List<i0> o() {
        e0();
        List<i0> list = this.f9155f;
        if (list == null) {
            b0(29);
        }
        return list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.q
    public Modality p() {
        Modality modalityP = this.b.p();
        if (modalityP == null) {
            b0(25);
        }
        return modalityP;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.p
    public MemberScope u(j0 j0Var, kotlin.reflect.jvm.internal.impl.types.checker.d dVar) {
        if (j0Var == null) {
            b0(5);
        }
        if (dVar == null) {
            b0(6);
        }
        MemberScope memberScopeU = this.b.u(j0Var, dVar);
        if (!this.c.f()) {
            return new SubstitutingScope(memberScopeU, e0());
        }
        if (memberScopeU == null) {
            b0(7);
        }
        return memberScopeU;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> v() {
        Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> collectionV = this.b.v();
        if (collectionV == null) {
            b0(30);
        }
        return collectionV;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i
    public <R, D> R w(kotlin.reflect.jvm.internal.impl.descriptors.k<R, D> kVar, D d2) {
        return kVar.a(this, d2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    public boolean x() {
        return this.b.x();
    }
}
