package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.facebook.share.internal.ShareConstants;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.g0;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.TypeIntersectionScope;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: compiled from: AbstractTypeParameterDescriptor.java */
/* JADX INFO: loaded from: classes5.dex */
public abstract class e extends i implements i0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Variance f9141e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f9142f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f9143g;
    private final kotlin.reflect.jvm.internal.impl.storage.e<f0> h;
    private final kotlin.reflect.jvm.internal.impl.storage.e<kotlin.reflect.jvm.internal.impl.types.y> i;
    private final kotlin.reflect.jvm.internal.impl.storage.h j;

    /* JADX INFO: compiled from: AbstractTypeParameterDescriptor.java */
    class a implements Function0<f0> {
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.storage.h a;
        final /* synthetic */ g0 b;

        a(kotlin.reflect.jvm.internal.impl.storage.h hVar, g0 g0Var) {
            this.a = hVar;
            this.b = g0Var;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public f0 invoke() {
            return new c(e.this, this.a, this.b);
        }
    }

    /* JADX INFO: compiled from: AbstractTypeParameterDescriptor.java */
    class b implements Function0<kotlin.reflect.jvm.internal.impl.types.y> {
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.storage.h a;
        final /* synthetic */ Name b;

        /* JADX INFO: compiled from: AbstractTypeParameterDescriptor.java */
        class a implements Function0<MemberScope> {
            a() {
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MemberScope invoke() {
                return TypeIntersectionScope.create("Scope for type parameter " + b.this.b.e(), e.this.getUpperBounds());
            }
        }

        b(kotlin.reflect.jvm.internal.impl.storage.h hVar, Name name) {
            this.a = hVar;
            this.b = name;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public kotlin.reflect.jvm.internal.impl.types.y invoke() {
            return KotlinTypeFactory.simpleTypeWithNonTrivialMemberScope(Annotations.e0.b(), e.this.i(), Collections.emptyList(), false, new kotlin.reflect.jvm.internal.impl.resolve.scopes.e(this.a.c(new a())));
        }
    }

    /* JADX INFO: compiled from: AbstractTypeParameterDescriptor.java */
    private class c extends AbstractTypeConstructor {
        private final g0 b;
        final /* synthetic */ e c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(e eVar, kotlin.reflect.jvm.internal.impl.storage.h hVar, g0 g0Var) {
            super(hVar);
            if (hVar == null) {
                o(0);
            }
            this.c = eVar;
            this.b = g0Var;
        }

        private static /* synthetic */ void o(int i) {
            String str = (i == 1 || i == 2 || i == 3 || i == 4 || i == 5) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 1 || i == 2 || i == 3 || i == 4 || i == 5) ? 2 : 3];
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor";
                    break;
                case 6:
                    objArr[0] = "type";
                    break;
                default:
                    objArr[0] = "storageManager";
                    break;
            }
            if (i == 1) {
                objArr[1] = "computeSupertypes";
            } else if (i == 2) {
                objArr[1] = "getParameters";
            } else if (i == 3) {
                objArr[1] = "getDeclarationDescriptor";
            } else if (i == 4) {
                objArr[1] = "getBuiltIns";
            } else if (i != 5) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor";
            } else {
                objArr[1] = "getSupertypeLoopChecker";
            }
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                    break;
                case 6:
                    objArr[2] = "reportSupertypeLoopError";
                    break;
                default:
                    objArr[2] = "<init>";
                    break;
            }
            String str2 = String.format(str, objArr);
            if (i != 1 && i != 2 && i != 3 && i != 4 && i != 5) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor, kotlin.reflect.jvm.internal.impl.types.f0
        /* JADX INFO: renamed from: c */
        public kotlin.reflect.jvm.internal.impl.descriptors.f q() {
            e eVar = this.c;
            if (eVar == null) {
                o(3);
            }
            return eVar;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public boolean d() {
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        protected Collection<kotlin.reflect.jvm.internal.impl.types.u> f() {
            List<kotlin.reflect.jvm.internal.impl.types.u> listE0 = this.c.e0();
            if (listE0 == null) {
                o(1);
            }
            return listE0;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        protected kotlin.reflect.jvm.internal.impl.types.u g() {
            return ErrorUtils.createErrorType("Cyclic upper bounds");
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public List<i0> getParameters() {
            List<i0> listEmptyList = Collections.emptyList();
            if (listEmptyList == null) {
                o(2);
            }
            return listEmptyList;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        protected g0 j() {
            g0 g0Var = this.b;
            if (g0Var == null) {
                o(5);
            }
            return g0Var;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public KotlinBuiltIns k() {
            KotlinBuiltIns builtIns = DescriptorUtilsKt.getBuiltIns(this.c);
            if (builtIns == null) {
                o(4);
            }
            return builtIns;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        protected void n(kotlin.reflect.jvm.internal.impl.types.u uVar) {
            if (uVar == null) {
                o(6);
            }
            this.c.b0(uVar);
        }

        public String toString() {
            return this.c.getName().toString();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected e(kotlin.reflect.jvm.internal.impl.storage.h hVar, kotlin.reflect.jvm.internal.impl.descriptors.i iVar, Annotations annotations, Name name, Variance variance, boolean z, int i, d0 d0Var, g0 g0Var) {
        super(iVar, annotations, name, d0Var);
        if (hVar == null) {
            u(0);
        }
        if (iVar == null) {
            u(1);
        }
        if (annotations == null) {
            u(2);
        }
        if (name == null) {
            u(3);
        }
        if (variance == null) {
            u(4);
        }
        if (d0Var == null) {
            u(5);
        }
        if (g0Var == null) {
            u(6);
        }
        this.f9141e = variance;
        this.f9142f = z;
        this.f9143g = i;
        this.h = hVar.c(new a(hVar, g0Var));
        this.i = hVar.c(new b(hVar, name));
        this.j = hVar;
    }

    private static /* synthetic */ void u(int i) {
        String str;
        int i2;
        switch (i) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                i2 = 2;
                break;
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "containingDeclaration";
                break;
            case 2:
                objArr[0] = "annotations";
                break;
            case 3:
                objArr[0] = "name";
                break;
            case 4:
                objArr[0] = "variance";
                break;
            case 5:
                objArr[0] = ShareConstants.FEED_SOURCE_PARAM;
                break;
            case 6:
                objArr[0] = "supertypeLoopChecker";
                break;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        switch (i) {
            case 7:
                objArr[1] = "getVariance";
                break;
            case 8:
                objArr[1] = "getUpperBounds";
                break;
            case 9:
                objArr[1] = "getTypeConstructor";
                break;
            case 10:
                objArr[1] = "getDefaultType";
                break;
            case 11:
                objArr[1] = "getOriginal";
                break;
            case 12:
                objArr[1] = "getStorageManager";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor";
                break;
        }
        switch (i) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                throw new IllegalStateException(str2);
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i0
    public kotlin.reflect.jvm.internal.impl.storage.h I() {
        kotlin.reflect.jvm.internal.impl.storage.h hVar = this.j;
        if (hVar == null) {
            u(12);
        }
        return hVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i0
    public boolean M() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.i, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.i
    public i0 a() {
        i0 i0Var = (i0) super.a();
        if (i0Var == null) {
            u(11);
        }
        return i0Var;
    }

    protected abstract void b0(kotlin.reflect.jvm.internal.impl.types.u uVar);

    protected abstract List<kotlin.reflect.jvm.internal.impl.types.u> e0();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i0
    public List<kotlin.reflect.jvm.internal.impl.types.u> getUpperBounds() {
        List<kotlin.reflect.jvm.internal.impl.types.u> listH = ((c) i()).h();
        if (listH == null) {
            u(8);
        }
        return listH;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i0
    public int h() {
        return this.f9143g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i0, kotlin.reflect.jvm.internal.impl.descriptors.f
    public final f0 i() {
        f0 f0VarInvoke = this.h.invoke();
        if (f0VarInvoke == null) {
            u(9);
        }
        return f0VarInvoke;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i0
    public Variance j() {
        Variance variance = this.f9141e;
        if (variance == null) {
            u(7);
        }
        return variance;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f
    public kotlin.reflect.jvm.internal.impl.types.y n() {
        kotlin.reflect.jvm.internal.impl.types.y yVarInvoke = this.i.invoke();
        if (yVarInvoke == null) {
            u(10);
        }
        return yVarInvoke;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i0
    public boolean t() {
        return this.f9142f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i
    public <R, D> R w(kotlin.reflect.jvm.internal.impl.descriptors.k<R, D> kVar, D d2) {
        return kVar.m(this, d2);
    }
}
