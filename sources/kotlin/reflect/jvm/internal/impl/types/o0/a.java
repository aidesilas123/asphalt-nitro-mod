package kotlin.reflect.jvm.internal.impl.types.o0;

import com.facebook.share.internal.ShareConstants;
import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.j0;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: ErrorSimpleFunctionDescriptorImpl.java */
/* JADX INFO: loaded from: classes5.dex */
public class a extends SimpleFunctionDescriptorImpl {
    private final ErrorUtils.d D;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.types.o0.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ErrorSimpleFunctionDescriptorImpl.java */
    class C0553a implements o.a<c0> {
        C0553a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0030  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x004e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private static /* synthetic */ void t(int r24) {
            /*
                Method dump skipped, instruction units count: 566
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.o0.a.C0553a.t(int):void");
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        public o.a<c0> a() {
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        public o.a<c0> b(List<ValueParameterDescriptor> list) {
            if (list == null) {
                t(11);
            }
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        public o.a<c0> c(m0 m0Var) {
            if (m0Var == null) {
                t(4);
            }
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        public o.a<c0> d(b0 b0Var) {
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        public o.a<c0> e() {
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        public o.a<c0> f(b0 b0Var) {
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        public o.a<c0> g(j0 j0Var) {
            if (j0Var == null) {
                t(13);
            }
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        public o.a<c0> h() {
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        public o.a<c0> i(Name name) {
            if (name == null) {
                t(9);
            }
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        public o.a<c0> j(Modality modality) {
            if (modality == null) {
                t(2);
            }
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        public o.a<c0> k() {
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        public o.a<c0> l(u uVar) {
            if (uVar == null) {
                t(19);
            }
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        public o.a<c0> m(CallableMemberDescriptor callableMemberDescriptor) {
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        public o.a<c0> n(boolean z) {
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        public o.a<c0> o(List<i0> list) {
            if (list == null) {
                t(17);
            }
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        public o.a<c0> p(i iVar) {
            if (iVar == null) {
                t(0);
            }
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        public o.a<c0> q(CallableMemberDescriptor.Kind kind) {
            if (kind == null) {
                t(6);
            }
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        public o.a<c0> r(Annotations annotations) {
            if (annotations == null) {
                t(29);
            }
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        public o.a<c0> s() {
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
        public c0 build() {
            return a.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(d dVar, ErrorUtils.d dVar2) {
        super(dVar, null, Annotations.e0.b(), Name.special("<ERROR FUNCTION>"), CallableMemberDescriptor.Kind.DECLARATION, d0.a);
        if (dVar == null) {
            u(0);
        }
        if (dVar2 == null) {
            u(1);
        }
        this.D = dVar2;
    }

    private static /* synthetic */ void u(int i) {
        String str = (i == 6 || i == 7) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 6 || i == 7) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = "ownerScope";
                break;
            case 2:
                objArr[0] = "newOwner";
                break;
            case 3:
                objArr[0] = "kind";
                break;
            case 4:
                objArr[0] = "annotations";
                break;
            case 5:
                objArr[0] = ShareConstants.FEED_SOURCE_PARAM;
                break;
            case 6:
            case 7:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/error/ErrorSimpleFunctionDescriptorImpl";
                break;
            case 8:
                objArr[0] = "overriddenDescriptors";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        if (i == 6) {
            objArr[1] = "createSubstitutedCopy";
        } else if (i != 7) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/error/ErrorSimpleFunctionDescriptorImpl";
        } else {
            objArr[1] = "copy";
        }
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 6:
            case 7:
                break;
            case 8:
                objArr[2] = "setOverriddenDescriptors";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 6 && i != 7) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    /* JADX INFO: renamed from: Y0 */
    public c0 A0(i iVar, Modality modality, m0 m0Var, CallableMemberDescriptor.Kind kind, boolean z) {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.o
    public boolean isSuspend() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    protected FunctionDescriptorImpl k0(i iVar, o oVar, CallableMemberDescriptor.Kind kind, Name name, Annotations annotations, d0 d0Var) {
        if (iVar == null) {
            u(2);
        }
        if (kind == null) {
            u(3);
        }
        if (annotations == null) {
            u(4);
        }
        if (d0Var == null) {
            u(5);
        }
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.a
    public <V> V p0(a.InterfaceC0516a<V> interfaceC0516a) {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.o
    public o.a<? extends c0> r() {
        return new C0553a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public void x0(Collection<? extends CallableMemberDescriptor> collection) {
        if (collection == null) {
            u(8);
        }
    }
}
