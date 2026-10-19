package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.h0;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeAliasConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: compiled from: AbstractTypeAliasDescriptor.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class d extends i implements h0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<? extends i0> f9138e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final c f9139f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final m0 f9140g;

    /* JADX INFO: compiled from: AbstractTypeAliasDescriptor.kt */
    static final class a extends Lambda implements Function1<kotlin.reflect.jvm.internal.impl.types.checker.d, kotlin.reflect.jvm.internal.impl.types.y> {
        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final kotlin.reflect.jvm.internal.impl.types.y invoke(kotlin.reflect.jvm.internal.impl.types.checker.d dVar) {
            kotlin.reflect.jvm.internal.impl.descriptors.f fVarE = dVar.e(d.this);
            if (fVarE != null) {
                return fVarE.n();
            }
            return null;
        }
    }

    /* JADX INFO: compiled from: AbstractTypeAliasDescriptor.kt */
    static final class b extends Lambda implements Function1<kotlin.reflect.jvm.internal.impl.types.m0, Boolean> {
        b() {
            super(1);
        }

        public final boolean a(kotlin.reflect.jvm.internal.impl.types.m0 type) {
            Intrinsics.checkExpressionValueIsNotNull(type, "type");
            if (KotlinTypeKt.isError(type)) {
                return false;
            }
            kotlin.reflect.jvm.internal.impl.descriptors.f fVarQ = type.H0().q();
            return (fVarQ instanceof i0) && (Intrinsics.areEqual(((i0) fVarQ).b(), d.this) ^ true);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(kotlin.reflect.jvm.internal.impl.types.m0 m0Var) {
            return Boolean.valueOf(a(m0Var));
        }
    }

    /* JADX INFO: compiled from: AbstractTypeAliasDescriptor.kt */
    public static final class c implements f0 {
        c() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public f0 a(kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
            Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public boolean d() {
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public h0 q() {
            return d.this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public List<i0> getParameters() {
            return d.this.z0();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public Collection<kotlin.reflect.jvm.internal.impl.types.u> h() {
            Collection<kotlin.reflect.jvm.internal.impl.types.u> collectionH = q().o0().H0().h();
            Intrinsics.checkExpressionValueIsNotNull(collectionH, "declarationDescriptor.un…pe.constructor.supertypes");
            return collectionH;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public KotlinBuiltIns k() {
            return DescriptorUtilsKt.getBuiltIns(q());
        }

        public String toString() {
            return "[typealias " + q().getName().e() + ']';
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(kotlin.reflect.jvm.internal.impl.descriptors.i containingDeclaration, Annotations annotations, Name name, d0 sourceElement, m0 visibilityImpl) {
        super(containingDeclaration, annotations, name, sourceElement);
        Intrinsics.checkParameterIsNotNull(containingDeclaration, "containingDeclaration");
        Intrinsics.checkParameterIsNotNull(annotations, "annotations");
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(sourceElement, "sourceElement");
        Intrinsics.checkParameterIsNotNull(visibilityImpl, "visibilityImpl");
        this.f9140g = visibilityImpl;
        this.f9139f = new c();
    }

    public final void B0(List<? extends i0> declaredTypeParameters) {
        Intrinsics.checkParameterIsNotNull(declaredTypeParameters, "declaredTypeParameters");
        this.f9138e = declaredTypeParameters;
    }

    protected abstract kotlin.reflect.jvm.internal.impl.storage.h I();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
    public boolean R() {
        return false;
    }

    protected final kotlin.reflect.jvm.internal.impl.types.y b0() {
        MemberScope memberScopeQ;
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarQ = q();
        if (dVarQ == null || (memberScopeQ = dVarQ.Q()) == null) {
            memberScopeQ = MemberScope.b.b;
        }
        kotlin.reflect.jvm.internal.impl.types.y yVarMakeUnsubstitutedType = TypeUtils.makeUnsubstitutedType(this, memberScopeQ, new a());
        Intrinsics.checkExpressionValueIsNotNull(yVarMakeUnsubstitutedType, "TypeUtils.makeUnsubstitu…s)?.defaultType\n        }");
        return yVarMakeUnsubstitutedType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
    public boolean c0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.i, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.i
    /* JADX INFO: renamed from: e0, reason: merged with bridge method [inline-methods] */
    public h0 a() {
        kotlin.reflect.jvm.internal.impl.descriptors.l lVarA = super.a();
        if (lVarA != null) {
            return (h0) lVarA;
        }
        throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeAliasDescriptor");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.m, kotlin.reflect.jvm.internal.impl.descriptors.q
    public m0 getVisibility() {
        return this.f9140g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f
    public f0 i() {
        return this.f9139f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
    public boolean isExternal() {
        return false;
    }

    public final Collection<y> k0() {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarQ = q();
        if (dVarQ == null) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> collectionF = dVarQ.f();
        Intrinsics.checkExpressionValueIsNotNull(collectionF, "classDescriptor.constructors");
        ArrayList arrayList = new ArrayList();
        for (kotlin.reflect.jvm.internal.impl.descriptors.c it : collectionF) {
            TypeAliasConstructorDescriptorImpl.Companion companion = TypeAliasConstructorDescriptorImpl.E;
            kotlin.reflect.jvm.internal.impl.storage.h hVarI = I();
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            y yVarA = companion.a(hVarI, this, it);
            if (yVarA != null) {
                arrayList.add(yVarA);
            }
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    public List<i0> o() {
        List list = this.f9138e;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("declaredTypeParametersImpl");
        }
        return list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl
    public String toString() {
        return "typealias " + getName().e();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i
    public <R, D> R w(kotlin.reflect.jvm.internal.impl.descriptors.k<R, D> visitor, D d2) {
        Intrinsics.checkParameterIsNotNull(visitor, "visitor");
        return visitor.d(this, d2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    public boolean x() {
        return TypeUtils.contains(o0(), new b());
    }

    protected abstract List<i0> z0();
}
