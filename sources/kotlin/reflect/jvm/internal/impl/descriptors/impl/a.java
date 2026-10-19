package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.h0;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.SubstitutingScope;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.j0;

/* JADX INFO: compiled from: AbstractClassDescriptor.java */
/* JADX INFO: loaded from: classes5.dex */
public abstract class a extends p {
    private final Name b;
    protected final kotlin.reflect.jvm.internal.impl.storage.e<kotlin.reflect.jvm.internal.impl.types.y> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.e<MemberScope> f9134d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.e<b0> f9135e;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AbstractClassDescriptor.java */
    class C0520a implements Function0<kotlin.reflect.jvm.internal.impl.types.y> {

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.a$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AbstractClassDescriptor.java */
        class C0521a implements Function1<kotlin.reflect.jvm.internal.impl.types.checker.d, kotlin.reflect.jvm.internal.impl.types.y> {
            C0521a() {
            }

            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public kotlin.reflect.jvm.internal.impl.types.y invoke(kotlin.reflect.jvm.internal.impl.types.checker.d dVar) {
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarE = dVar.e(a.this);
                return fVarE == null ? a.this.c.invoke() : fVarE instanceof h0 ? KotlinTypeFactory.computeExpandedType((h0) fVarE, TypeUtils.getDefaultTypeProjections(fVarE.i().getParameters())) : fVarE instanceof p ? TypeUtils.makeUnsubstitutedType(fVarE.i().a(dVar), ((p) fVarE).Z(dVar), this) : fVarE.n();
            }
        }

        C0520a() {
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public kotlin.reflect.jvm.internal.impl.types.y invoke() {
            a aVar = a.this;
            return TypeUtils.makeUnsubstitutedType(aVar, aVar.Q(), new C0521a());
        }
    }

    /* JADX INFO: compiled from: AbstractClassDescriptor.java */
    class b implements Function0<MemberScope> {
        b() {
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberScope invoke() {
            return new kotlin.reflect.jvm.internal.impl.resolve.scopes.d(a.this.Q());
        }
    }

    /* JADX INFO: compiled from: AbstractClassDescriptor.java */
    class c implements Function0<b0> {
        c() {
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public b0 invoke() {
            return new m(a.this);
        }
    }

    public a(kotlin.reflect.jvm.internal.impl.storage.h hVar, Name name) {
        if (hVar == null) {
            b0(0);
        }
        if (name == null) {
            b0(1);
        }
        this.b = name;
        this.c = hVar.c(new C0520a());
        this.f9134d = hVar.c(new b());
        this.f9135e = hVar.c(new c());
    }

    private static /* synthetic */ void b0(int i) {
        String str = (i == 2 || i == 3 || i == 4 || i == 5 || i == 8 || i == 11 || i == 13 || i == 15 || i == 16 || i == 18 || i == 19) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 2 || i == 3 || i == 4 || i == 5 || i == 8 || i == 11 || i == 13 || i == 15 || i == 16 || i == 18 || i == 19) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = "name";
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 8:
            case 11:
            case 13:
            case 15:
            case 16:
            case 18:
            case 19:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor";
                break;
            case 6:
            case 12:
                objArr[0] = "typeArguments";
                break;
            case 7:
            case 10:
                objArr[0] = "kotlinTypeRefiner";
                break;
            case 9:
            case 14:
                objArr[0] = "typeSubstitution";
                break;
            case 17:
                objArr[0] = "substitutor";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        if (i == 2) {
            objArr[1] = "getName";
        } else if (i == 3) {
            objArr[1] = "getOriginal";
        } else if (i == 4) {
            objArr[1] = "getUnsubstitutedInnerClassesScope";
        } else if (i == 5) {
            objArr[1] = "getThisAsReceiverParameter";
        } else if (i == 8 || i == 11 || i == 13 || i == 15) {
            objArr[1] = "getMemberScope";
        } else if (i == 16) {
            objArr[1] = "getUnsubstitutedMemberScope";
        } else if (i == 18) {
            objArr[1] = "substitute";
        } else if (i != 19) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor";
        } else {
            objArr[1] = "getDefaultType";
        }
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 8:
            case 11:
            case 13:
            case 15:
            case 16:
            case 18:
            case 19:
                break;
            case 6:
            case 7:
            case 9:
            case 10:
            case 12:
            case 14:
                objArr[2] = "getMemberScope";
                break;
            case 17:
                objArr[2] = "substitute";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 2 && i != 3 && i != 4 && i != 5 && i != 8 && i != 11 && i != 13 && i != 15 && i != 16 && i != 18 && i != 19) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public b0 E0() {
        b0 b0VarInvoke = this.f9135e.invoke();
        if (b0VarInvoke == null) {
            b0(5);
        }
        return b0VarInvoke;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public MemberScope O() {
        MemberScope memberScopeInvoke = this.f9134d.invoke();
        if (memberScopeInvoke == null) {
            b0(4);
        }
        return memberScopeInvoke;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public MemberScope Q() {
        MemberScope memberScopeZ = Z(DescriptorUtilsKt.getKotlinTypeRefiner(DescriptorUtils.getContainingModule(this)));
        if (memberScopeZ == null) {
            b0(16);
        }
        return memberScopeZ;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i
    public kotlin.reflect.jvm.internal.impl.descriptors.d a() {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f0
    /* JADX INFO: renamed from: e0 */
    public kotlin.reflect.jvm.internal.impl.descriptors.d c(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            b0(17);
        }
        return typeSubstitutor.f() ? this : new o(this, typeSubstitutor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.r
    public Name getName() {
        Name name = this.b;
        if (name == null) {
            b0(2);
        }
        return name;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public MemberScope l0(j0 j0Var) {
        if (j0Var == null) {
            b0(14);
        }
        MemberScope memberScopeU = u(j0Var, DescriptorUtilsKt.getKotlinTypeRefiner(DescriptorUtils.getContainingModule(this)));
        if (memberScopeU == null) {
            b0(15);
        }
        return memberScopeU;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.f
    public kotlin.reflect.jvm.internal.impl.types.y n() {
        kotlin.reflect.jvm.internal.impl.types.y yVarInvoke = this.c.invoke();
        if (yVarInvoke == null) {
            b0(19);
        }
        return yVarInvoke;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.p
    public MemberScope u(j0 j0Var, kotlin.reflect.jvm.internal.impl.types.checker.d dVar) {
        if (j0Var == null) {
            b0(9);
        }
        if (dVar == null) {
            b0(10);
        }
        if (!j0Var.f()) {
            return new SubstitutingScope(Z(dVar), TypeSubstitutor.create(j0Var));
        }
        MemberScope memberScopeZ = Z(dVar);
        if (memberScopeZ == null) {
            b0(11);
        }
        return memberScopeZ;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i
    public <R, D> R w(kotlin.reflect.jvm.internal.impl.descriptors.k<R, D> kVar, D d2) {
        return kVar.a(this, d2);
    }
}
