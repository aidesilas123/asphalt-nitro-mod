package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.k0;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;

/* JADX INFO: compiled from: ValueParameterDescriptorImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public class ValueParameterDescriptorImpl extends z implements ValueParameterDescriptor {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f9132f = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ValueParameterDescriptor f9133g;
    private final int h;
    private final boolean i;
    private final boolean j;
    private final boolean k;
    private final kotlin.reflect.jvm.internal.impl.types.u l;

    /* JADX INFO: compiled from: ValueParameterDescriptorImpl.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final ValueParameterDescriptorImpl a(kotlin.reflect.jvm.internal.impl.descriptors.a containingDeclaration, ValueParameterDescriptor valueParameterDescriptor, int i, Annotations annotations, Name name, kotlin.reflect.jvm.internal.impl.types.u outType, boolean z, boolean z2, boolean z3, kotlin.reflect.jvm.internal.impl.types.u uVar, d0 source, Function0<? extends List<? extends k0>> function0) {
            Intrinsics.checkParameterIsNotNull(containingDeclaration, "containingDeclaration");
            Intrinsics.checkParameterIsNotNull(annotations, "annotations");
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(outType, "outType");
            Intrinsics.checkParameterIsNotNull(source, "source");
            return function0 == null ? new ValueParameterDescriptorImpl(containingDeclaration, valueParameterDescriptor, i, annotations, name, outType, z, z2, z3, uVar, source) : new b(containingDeclaration, valueParameterDescriptor, i, annotations, name, outType, z, z2, z3, uVar, source, function0);
        }
    }

    /* JADX INFO: compiled from: ValueParameterDescriptorImpl.kt */
    public static final class b extends ValueParameterDescriptorImpl {
        private final Lazy m;

        /* JADX INFO: compiled from: ValueParameterDescriptorImpl.kt */
        static final class a extends Lambda implements Function0<List<? extends k0>> {
            a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final List<k0> invoke() {
                return b.this.z0();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(kotlin.reflect.jvm.internal.impl.descriptors.a containingDeclaration, ValueParameterDescriptor valueParameterDescriptor, int i, Annotations annotations, Name name, kotlin.reflect.jvm.internal.impl.types.u outType, boolean z, boolean z2, boolean z3, kotlin.reflect.jvm.internal.impl.types.u uVar, d0 source, Function0<? extends List<? extends k0>> destructuringVariables) {
            super(containingDeclaration, valueParameterDescriptor, i, annotations, name, outType, z, z2, z3, uVar, source);
            Intrinsics.checkParameterIsNotNull(containingDeclaration, "containingDeclaration");
            Intrinsics.checkParameterIsNotNull(annotations, "annotations");
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(outType, "outType");
            Intrinsics.checkParameterIsNotNull(source, "source");
            Intrinsics.checkParameterIsNotNull(destructuringVariables, "destructuringVariables");
            this.m = LazyKt__LazyJVMKt.lazy(destructuringVariables);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor
        public ValueParameterDescriptor S(kotlin.reflect.jvm.internal.impl.descriptors.a newOwner, Name newName, int i) {
            Intrinsics.checkParameterIsNotNull(newOwner, "newOwner");
            Intrinsics.checkParameterIsNotNull(newName, "newName");
            Annotations annotations = getAnnotations();
            Intrinsics.checkExpressionValueIsNotNull(annotations, "annotations");
            kotlin.reflect.jvm.internal.impl.types.u type = getType();
            Intrinsics.checkExpressionValueIsNotNull(type, "type");
            boolean zU0 = u0();
            boolean zM0 = m0();
            boolean zJ0 = j0();
            kotlin.reflect.jvm.internal.impl.types.u uVarQ0 = q0();
            d0 d0Var = d0.a;
            Intrinsics.checkExpressionValueIsNotNull(d0Var, "SourceElement.NO_SOURCE");
            return new b(newOwner, null, i, annotations, newName, type, zU0, zM0, zJ0, uVarQ0, d0Var, new a());
        }

        public final List<k0> z0() {
            return (List) this.m.getValue();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ValueParameterDescriptorImpl(kotlin.reflect.jvm.internal.impl.descriptors.a containingDeclaration, ValueParameterDescriptor valueParameterDescriptor, int i, Annotations annotations, Name name, kotlin.reflect.jvm.internal.impl.types.u outType, boolean z, boolean z2, boolean z3, kotlin.reflect.jvm.internal.impl.types.u uVar, d0 source) {
        super(containingDeclaration, annotations, name, outType, source);
        Intrinsics.checkParameterIsNotNull(containingDeclaration, "containingDeclaration");
        Intrinsics.checkParameterIsNotNull(annotations, "annotations");
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(outType, "outType");
        Intrinsics.checkParameterIsNotNull(source, "source");
        this.h = i;
        this.i = z;
        this.j = z2;
        this.k = z3;
        this.l = uVar;
        this.f9133g = valueParameterDescriptor != null ? valueParameterDescriptor : this;
    }

    public static final ValueParameterDescriptorImpl createWithDestructuringDeclarations(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, ValueParameterDescriptor valueParameterDescriptor, int i, Annotations annotations, Name name, kotlin.reflect.jvm.internal.impl.types.u uVar, boolean z, boolean z2, boolean z3, kotlin.reflect.jvm.internal.impl.types.u uVar2, d0 d0Var, Function0<? extends List<? extends k0>> function0) {
        return f9132f.a(aVar, valueParameterDescriptor, i, annotations, name, uVar, z, z2, z3, uVar2, d0Var, function0);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k0
    public boolean J() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor
    public ValueParameterDescriptor S(kotlin.reflect.jvm.internal.impl.descriptors.a newOwner, Name newName, int i) {
        Intrinsics.checkParameterIsNotNull(newOwner, "newOwner");
        Intrinsics.checkParameterIsNotNull(newName, "newName");
        Annotations annotations = getAnnotations();
        Intrinsics.checkExpressionValueIsNotNull(annotations, "annotations");
        kotlin.reflect.jvm.internal.impl.types.u type = getType();
        Intrinsics.checkExpressionValueIsNotNull(type, "type");
        boolean zU0 = u0();
        boolean zM0 = m0();
        boolean zJ0 = j0();
        kotlin.reflect.jvm.internal.impl.types.u uVarQ0 = q0();
        d0 d0Var = d0.a;
        Intrinsics.checkExpressionValueIsNotNull(d0Var, "SourceElement.NO_SOURCE");
        return new ValueParameterDescriptorImpl(newOwner, null, i, annotations, newName, type, zU0, zM0, zJ0, uVarQ0, d0Var);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.i, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.i
    public ValueParameterDescriptor a() {
        ValueParameterDescriptor valueParameterDescriptor = this.f9133g;
        return valueParameterDescriptor == this ? this : valueParameterDescriptor.a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.i, kotlin.reflect.jvm.internal.impl.descriptors.i
    public kotlin.reflect.jvm.internal.impl.descriptors.a b() {
        kotlin.reflect.jvm.internal.impl.descriptors.i iVarB = super.b();
        if (iVarB != null) {
            return (kotlin.reflect.jvm.internal.impl.descriptors.a) iVarB;
        }
        throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.CallableDescriptor");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public Collection<ValueParameterDescriptor> d() {
        Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.a> collectionD = b().d();
        Intrinsics.checkExpressionValueIsNotNull(collectionD, "containingDeclaration.overriddenDescriptors");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(collectionD, 10));
        for (kotlin.reflect.jvm.internal.impl.descriptors.a it : collectionD) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            arrayList.add(it.g().get(h()));
        }
        return arrayList;
    }

    public Void e0() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.m, kotlin.reflect.jvm.internal.impl.descriptors.q
    public m0 getVisibility() {
        m0 m0Var = Visibilities.f9101f;
        Intrinsics.checkExpressionValueIsNotNull(m0Var, "Visibilities.LOCAL");
        return m0Var;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor
    public int h() {
        return this.h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k0
    public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.resolve.constants.g i0() {
        return (kotlin.reflect.jvm.internal.impl.resolve.constants.g) e0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor
    public boolean j0() {
        return this.k;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f0
    /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
    public ValueParameterDescriptor c(TypeSubstitutor substitutor) {
        Intrinsics.checkParameterIsNotNull(substitutor, "substitutor");
        if (substitutor.f()) {
            return this;
        }
        throw new UnsupportedOperationException();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor
    public boolean m0() {
        return this.j;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor
    public kotlin.reflect.jvm.internal.impl.types.u q0() {
        return this.l;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor
    public boolean u0() {
        if (this.i) {
            kotlin.reflect.jvm.internal.impl.descriptors.a aVarB = b();
            if (aVarB == null) {
                throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.CallableMemberDescriptor");
            }
            CallableMemberDescriptor.Kind kind = ((CallableMemberDescriptor) aVarB).getKind();
            Intrinsics.checkExpressionValueIsNotNull(kind, "(containingDeclaration a…bleMemberDescriptor).kind");
            if (kind.e()) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i
    public <R, D> R w(kotlin.reflect.jvm.internal.impl.descriptors.k<R, D> visitor, D d2) {
        Intrinsics.checkParameterIsNotNull(visitor, "visitor");
        return visitor.f(this, d2);
    }
}
