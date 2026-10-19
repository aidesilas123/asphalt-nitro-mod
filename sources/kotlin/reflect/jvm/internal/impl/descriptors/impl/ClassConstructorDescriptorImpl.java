package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;

/* JADX INFO: loaded from: classes5.dex */
public class ClassConstructorDescriptorImpl extends FunctionDescriptorImpl implements kotlin.reflect.jvm.internal.impl.descriptors.c {
    private static final Name D = Name.special("<init>");
    protected final boolean E;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected ClassConstructorDescriptorImpl(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, kotlin.reflect.jvm.internal.impl.descriptors.h hVar, Annotations annotations, boolean z, CallableMemberDescriptor.Kind kind, d0 d0Var) {
        super(dVar, hVar, annotations, D, kind, d0Var);
        if (dVar == null) {
            u(0);
        }
        if (annotations == null) {
            u(1);
        }
        if (kind == null) {
            u(2);
        }
        if (d0Var == null) {
            u(3);
        }
        this.E = z;
    }

    public static ClassConstructorDescriptorImpl create(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, Annotations annotations, boolean z, d0 d0Var) {
        if (dVar == null) {
            u(4);
        }
        if (annotations == null) {
            u(5);
        }
        if (d0Var == null) {
            u(6);
        }
        return new ClassConstructorDescriptorImpl(dVar, null, annotations, z, CallableMemberDescriptor.Kind.DECLARATION, d0Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static /* synthetic */ void u(int r8) {
        /*
            Method dump skipped, instruction units count: 324
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl.u(int):void");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.h
    public boolean V() {
        return this.E;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.h
    public kotlin.reflect.jvm.internal.impl.descriptors.d W() {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarB = b();
        if (dVarB == null) {
            u(16);
        }
        return dVarB;
    }

    public b0 Y0() {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarB = b();
        if (!dVarB.x()) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.i iVarB = dVarB.b();
        if (iVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
            return ((kotlin.reflect.jvm.internal.impl.descriptors.d) iVarB).E0();
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    /* JADX INFO: renamed from: Z0, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.descriptors.c A0(kotlin.reflect.jvm.internal.impl.descriptors.i iVar, Modality modality, m0 m0Var, CallableMemberDescriptor.Kind kind, boolean z) {
        kotlin.reflect.jvm.internal.impl.descriptors.c cVar = (kotlin.reflect.jvm.internal.impl.descriptors.c) super.A0(iVar, modality, m0Var, kind, z);
        if (cVar == null) {
            u(25);
        }
        return cVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.i, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.i
    public kotlin.reflect.jvm.internal.impl.descriptors.c a() {
        kotlin.reflect.jvm.internal.impl.descriptors.c cVar = (kotlin.reflect.jvm.internal.impl.descriptors.c) super.a();
        if (cVar == null) {
            u(17);
        }
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    /* JADX INFO: renamed from: a1, reason: merged with bridge method [inline-methods] */
    public ClassConstructorDescriptorImpl k0(kotlin.reflect.jvm.internal.impl.descriptors.i iVar, kotlin.reflect.jvm.internal.impl.descriptors.o oVar, CallableMemberDescriptor.Kind kind, Name name, Annotations annotations, d0 d0Var) {
        if (iVar == null) {
            u(21);
        }
        if (kind == null) {
            u(22);
        }
        if (annotations == null) {
            u(23);
        }
        if (d0Var == null) {
            u(24);
        }
        CallableMemberDescriptor.Kind kind2 = CallableMemberDescriptor.Kind.DECLARATION;
        if (kind == kind2 || kind == CallableMemberDescriptor.Kind.SYNTHESIZED) {
            return new ClassConstructorDescriptorImpl((kotlin.reflect.jvm.internal.impl.descriptors.d) iVar, this, annotations, this.E, kind2, d0Var);
        }
        throw new IllegalStateException("Attempt at creating a constructor that is not a declaration: \ncopy from: " + this + "\nnewOwner: " + iVar + "\nkind: " + kind);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.i, kotlin.reflect.jvm.internal.impl.descriptors.i
    /* JADX INFO: renamed from: b1, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.descriptors.d b() {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) super.b();
        if (dVar == null) {
            u(15);
        }
        return dVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.f0
    public kotlin.reflect.jvm.internal.impl.descriptors.c c(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            u(18);
        }
        return (kotlin.reflect.jvm.internal.impl.descriptors.c) super.c(typeSubstitutor);
    }

    public ClassConstructorDescriptorImpl c1(List<ValueParameterDescriptor> list, m0 m0Var) {
        if (list == null) {
            u(13);
        }
        if (m0Var == null) {
            u(14);
        }
        d1(list, m0Var, b().o());
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.a
    public Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.o> d() {
        Set setEmptySet = Collections.emptySet();
        if (setEmptySet == null) {
            u(19);
        }
        return setEmptySet;
    }

    public ClassConstructorDescriptorImpl d1(List<ValueParameterDescriptor> list, m0 m0Var, List<i0> list2) {
        if (list == null) {
            u(10);
        }
        if (m0Var == null) {
            u(11);
        }
        if (list2 == null) {
            u(12);
        }
        super.F0(null, Y0(), list2, list, null, Modality.FINAL, m0Var);
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.i
    public <R, D> R w(kotlin.reflect.jvm.internal.impl.descriptors.k<R, D> kVar, D d2) {
        return kVar.j(this, d2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public void x0(Collection<? extends CallableMemberDescriptor> collection) {
        if (collection == null) {
            u(20);
        }
    }
}
