package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.facebook.share.internal.ShareConstants;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.k0;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.DescriptorSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.j0;
import kotlin.reflect.jvm.internal.impl.utils.SmartList;

/* JADX INFO: loaded from: classes5.dex */
public abstract class FunctionDescriptorImpl extends i implements kotlin.reflect.jvm.internal.impl.descriptors.o {
    private final CallableMemberDescriptor.Kind A;
    private kotlin.reflect.jvm.internal.impl.descriptors.o B;
    protected Map<a.InterfaceC0516a<?>, Object> C;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<i0> f9117e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<ValueParameterDescriptor> f9118f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private kotlin.reflect.jvm.internal.impl.types.u f9119g;
    private b0 h;
    private b0 i;
    private Modality j;
    private m0 k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    private boolean t;
    private boolean u;
    private boolean v;
    private boolean w;
    private Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.o> x;
    private volatile Function0<Collection<kotlin.reflect.jvm.internal.impl.descriptors.o>> y;
    private final kotlin.reflect.jvm.internal.impl.descriptors.o z;

    class a implements Function0<Collection<kotlin.reflect.jvm.internal.impl.descriptors.o>> {
        final /* synthetic */ TypeSubstitutor a;

        a(TypeSubstitutor typeSubstitutor) {
            this.a = typeSubstitutor;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Collection<kotlin.reflect.jvm.internal.impl.descriptors.o> invoke() {
            SmartList smartList = new SmartList();
            Iterator<? extends kotlin.reflect.jvm.internal.impl.descriptors.o> it = FunctionDescriptorImpl.this.d().iterator();
            while (it.hasNext()) {
                smartList.add(it.next().c(this.a));
            }
            return smartList;
        }
    }

    static class b implements Function0<List<k0>> {
        final /* synthetic */ List a;

        b(List list) {
            this.a = list;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<k0> invoke() {
            return this.a;
        }
    }

    public class c implements o.a<kotlin.reflect.jvm.internal.impl.descriptors.o> {
        protected j0 a;
        protected kotlin.reflect.jvm.internal.impl.descriptors.i b;
        protected Modality c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        protected m0 f9120d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        protected kotlin.reflect.jvm.internal.impl.descriptors.o f9121e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        protected CallableMemberDescriptor.Kind f9122f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        protected List<ValueParameterDescriptor> f9123g;
        protected b0 h;
        protected b0 i;
        protected kotlin.reflect.jvm.internal.impl.types.u j;
        protected Name k;
        protected boolean l;
        protected boolean m;
        protected boolean n;
        protected boolean o;
        private boolean p;
        private List<i0> q;
        private Annotations r;
        private boolean s;
        private Map<a.InterfaceC0516a<?>, Object> t;
        private Boolean u;
        protected boolean v;
        final /* synthetic */ FunctionDescriptorImpl w;

        public c(FunctionDescriptorImpl functionDescriptorImpl, j0 j0Var, kotlin.reflect.jvm.internal.impl.descriptors.i iVar, Modality modality, m0 m0Var, CallableMemberDescriptor.Kind kind, List<ValueParameterDescriptor> list, b0 b0Var, kotlin.reflect.jvm.internal.impl.types.u uVar, Name name) {
            if (j0Var == null) {
                t(0);
            }
            if (iVar == null) {
                t(1);
            }
            if (modality == null) {
                t(2);
            }
            if (m0Var == null) {
                t(3);
            }
            if (kind == null) {
                t(4);
            }
            if (list == null) {
                t(5);
            }
            if (uVar == null) {
                t(6);
            }
            this.w = functionDescriptorImpl;
            this.f9121e = null;
            this.i = functionDescriptorImpl.i;
            this.l = true;
            this.m = false;
            this.n = false;
            this.o = false;
            this.p = functionDescriptorImpl.w0();
            this.q = null;
            this.r = null;
            this.s = functionDescriptorImpl.y0();
            this.t = new LinkedHashMap();
            this.u = null;
            this.v = false;
            this.a = j0Var;
            this.b = iVar;
            this.c = modality;
            this.f9120d = m0Var;
            this.f9122f = kind;
            this.f9123g = list;
            this.h = b0Var;
            this.j = uVar;
            this.k = name;
        }

        private static /* synthetic */ void t(int i) {
            String str;
            int i2;
            switch (i) {
                case 8:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                case 19:
                case 21:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 33:
                case 35:
                case 37:
                case 38:
                case 39:
                    str = "@NotNull method %s.%s must not return null";
                    break;
                case 9:
                case 11:
                case 13:
                case 16:
                case 18:
                case 20:
                case 22:
                case 32:
                case 34:
                case 36:
                default:
                    str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                    break;
            }
            switch (i) {
                case 8:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                case 19:
                case 21:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 33:
                case 35:
                case 37:
                case 38:
                case 39:
                    i2 = 2;
                    break;
                case 9:
                case 11:
                case 13:
                case 16:
                case 18:
                case 20:
                case 22:
                case 32:
                case 34:
                case 36:
                default:
                    i2 = 3;
                    break;
            }
            Object[] objArr = new Object[i2];
            switch (i) {
                case 1:
                    objArr[0] = "newOwner";
                    break;
                case 2:
                    objArr[0] = "newModality";
                    break;
                case 3:
                    objArr[0] = "newVisibility";
                    break;
                case 4:
                case 13:
                    objArr[0] = "kind";
                    break;
                case 5:
                    objArr[0] = "newValueParameterDescriptors";
                    break;
                case 6:
                    objArr[0] = "newReturnType";
                    break;
                case 7:
                    objArr[0] = "owner";
                    break;
                case 8:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                case 19:
                case 21:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 33:
                case 35:
                case 37:
                case 38:
                case 39:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration";
                    break;
                case 9:
                    objArr[0] = "modality";
                    break;
                case 11:
                    objArr[0] = "visibility";
                    break;
                case 16:
                    objArr[0] = "name";
                    break;
                case 18:
                case 20:
                    objArr[0] = "parameters";
                    break;
                case 22:
                    objArr[0] = "type";
                    break;
                case 32:
                    objArr[0] = "additionalAnnotations";
                    break;
                case 34:
                default:
                    objArr[0] = "substitution";
                    break;
                case 36:
                    objArr[0] = "userDataKey";
                    break;
            }
            switch (i) {
                case 8:
                    objArr[1] = "setOwner";
                    break;
                case 9:
                case 11:
                case 13:
                case 16:
                case 18:
                case 20:
                case 22:
                case 32:
                case 34:
                case 36:
                default:
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration";
                    break;
                case 10:
                    objArr[1] = "setModality";
                    break;
                case 12:
                    objArr[1] = "setVisibility";
                    break;
                case 14:
                    objArr[1] = "setKind";
                    break;
                case 15:
                    objArr[1] = "setCopyOverrides";
                    break;
                case 17:
                    objArr[1] = "setName";
                    break;
                case 19:
                    objArr[1] = "setValueParameters";
                    break;
                case 21:
                    objArr[1] = "setTypeParameters";
                    break;
                case 23:
                    objArr[1] = "setReturnType";
                    break;
                case 24:
                    objArr[1] = "setExtensionReceiverParameter";
                    break;
                case 25:
                    objArr[1] = "setDispatchReceiverParameter";
                    break;
                case 26:
                    objArr[1] = "setOriginal";
                    break;
                case 27:
                    objArr[1] = "setSignatureChange";
                    break;
                case 28:
                    objArr[1] = "setPreserveSourceElement";
                    break;
                case 29:
                    objArr[1] = "setDropOriginalInContainingParts";
                    break;
                case 30:
                    objArr[1] = "setHiddenToOvercomeSignatureClash";
                    break;
                case 31:
                    objArr[1] = "setHiddenForResolutionEverywhereBesideSupercalls";
                    break;
                case 33:
                    objArr[1] = "setAdditionalAnnotations";
                    break;
                case 35:
                    objArr[1] = "setSubstitution";
                    break;
                case 37:
                    objArr[1] = "putUserData";
                    break;
                case 38:
                    objArr[1] = "getSubstitution";
                    break;
                case 39:
                    objArr[1] = "setJustForTypeSubstitution";
                    break;
            }
            switch (i) {
                case 7:
                    objArr[2] = "setOwner";
                    break;
                case 8:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                case 19:
                case 21:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 33:
                case 35:
                case 37:
                case 38:
                case 39:
                    break;
                case 9:
                    objArr[2] = "setModality";
                    break;
                case 11:
                    objArr[2] = "setVisibility";
                    break;
                case 13:
                    objArr[2] = "setKind";
                    break;
                case 16:
                    objArr[2] = "setName";
                    break;
                case 18:
                    objArr[2] = "setValueParameters";
                    break;
                case 20:
                    objArr[2] = "setTypeParameters";
                    break;
                case 22:
                    objArr[2] = "setReturnType";
                    break;
                case 32:
                    objArr[2] = "setAdditionalAnnotations";
                    break;
                case 34:
                    objArr[2] = "setSubstitution";
                    break;
                case 36:
                    objArr[2] = "putUserData";
                    break;
                default:
                    objArr[2] = "<init>";
                    break;
            }
            String str2 = String.format(str, objArr);
            switch (i) {
                case 8:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                case 19:
                case 21:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 33:
                case 35:
                case 37:
                case 38:
                case 39:
                    throw new IllegalStateException(str2);
                case 9:
                case 11:
                case 13:
                case 16:
                case 18:
                case 20:
                case 22:
                case 32:
                case 34:
                case 36:
                default:
                    throw new IllegalArgumentException(str2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
        public c r(Annotations annotations) {
            if (annotations == null) {
                t(32);
            }
            this.r = annotations;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
        public c n(boolean z) {
            this.l = z;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
        public c d(b0 b0Var) {
            this.i = b0Var;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
        public c a() {
            this.o = true;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
        public c f(b0 b0Var) {
            this.h = b0Var;
            return this;
        }

        public c F(boolean z) {
            this.u = Boolean.valueOf(z);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
        public c e() {
            this.s = true;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
        public c h() {
            this.p = true;
            return this;
        }

        public c I(boolean z) {
            this.v = z;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
        public c q(CallableMemberDescriptor.Kind kind) {
            if (kind == null) {
                t(13);
            }
            this.f9122f = kind;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
        public c j(Modality modality) {
            if (modality == null) {
                t(9);
            }
            this.c = modality;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
        public c i(Name name) {
            if (name == null) {
                t(16);
            }
            this.k = name;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
        public c m(CallableMemberDescriptor callableMemberDescriptor) {
            this.f9121e = (kotlin.reflect.jvm.internal.impl.descriptors.o) callableMemberDescriptor;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
        public c p(kotlin.reflect.jvm.internal.impl.descriptors.i iVar) {
            if (iVar == null) {
                t(7);
            }
            this.b = iVar;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
        public c k() {
            this.n = true;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
        public c l(kotlin.reflect.jvm.internal.impl.types.u uVar) {
            if (uVar == null) {
                t(22);
            }
            this.j = uVar;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
        public c s() {
            this.m = true;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
        public c g(j0 j0Var) {
            if (j0Var == null) {
                t(34);
            }
            this.a = j0Var;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
        public c o(List<i0> list) {
            if (list == null) {
                t(20);
            }
            this.q = list;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
        public c b(List<ValueParameterDescriptor> list) {
            if (list == null) {
                t(18);
            }
            this.f9123g = list;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
        public c c(m0 m0Var) {
            if (m0Var == null) {
                t(11);
            }
            this.f9120d = m0Var;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o.a
        public kotlin.reflect.jvm.internal.impl.descriptors.o build() {
            return this.w.z0(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected FunctionDescriptorImpl(kotlin.reflect.jvm.internal.impl.descriptors.i iVar, kotlin.reflect.jvm.internal.impl.descriptors.o oVar, Annotations annotations, Name name, CallableMemberDescriptor.Kind kind, d0 d0Var) {
        super(iVar, annotations, name, d0Var);
        if (iVar == null) {
            u(0);
        }
        if (annotations == null) {
            u(1);
        }
        if (name == null) {
            u(2);
        }
        if (kind == null) {
            u(3);
        }
        if (d0Var == null) {
            u(4);
        }
        this.k = Visibilities.i;
        this.l = false;
        this.m = false;
        this.n = false;
        this.o = false;
        this.p = false;
        this.q = false;
        this.r = false;
        this.s = false;
        this.t = false;
        this.u = false;
        this.v = true;
        this.w = false;
        this.x = null;
        this.y = null;
        this.B = null;
        this.C = null;
        this.z = oVar == null ? this : oVar;
        this.A = kind;
    }

    private d0 B0(boolean z, kotlin.reflect.jvm.internal.impl.descriptors.o oVar) {
        d0 source;
        if (z) {
            if (oVar == null) {
                oVar = a();
            }
            source = oVar.getSource();
        } else {
            source = d0.a;
        }
        if (source == null) {
            u(25);
        }
        return source;
    }

    private void H0() {
        Function0<Collection<kotlin.reflect.jvm.internal.impl.descriptors.o>> function0 = this.y;
        if (function0 != null) {
            this.x = function0.invoke();
            this.y = null;
        }
    }

    private void O0(boolean z) {
        this.t = z;
    }

    private void P0(boolean z) {
        this.s = z;
    }

    private void R0(kotlin.reflect.jvm.internal.impl.descriptors.o oVar) {
        this.B = oVar;
    }

    public static List<ValueParameterDescriptor> getSubstitutedValueParameters(kotlin.reflect.jvm.internal.impl.descriptors.o oVar, List<ValueParameterDescriptor> list, TypeSubstitutor typeSubstitutor) {
        if (list == null) {
            u(26);
        }
        if (typeSubstitutor == null) {
            u(27);
        }
        return getSubstitutedValueParameters(oVar, list, typeSubstitutor, false, false, null);
    }

    public static List<ValueParameterDescriptor> getSubstitutedValueParameters(kotlin.reflect.jvm.internal.impl.descriptors.o oVar, List<ValueParameterDescriptor> list, TypeSubstitutor typeSubstitutor, boolean z, boolean z2, boolean[] zArr) {
        if (list == null) {
            u(28);
        }
        if (typeSubstitutor == null) {
            u(29);
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (ValueParameterDescriptor valueParameterDescriptor : list) {
            kotlin.reflect.jvm.internal.impl.types.u type = valueParameterDescriptor.getType();
            Variance variance = Variance.IN_VARIANCE;
            kotlin.reflect.jvm.internal.impl.types.u uVarI = typeSubstitutor.i(type, variance);
            kotlin.reflect.jvm.internal.impl.types.u uVarQ0 = valueParameterDescriptor.q0();
            kotlin.reflect.jvm.internal.impl.types.u uVarI2 = uVarQ0 == null ? null : typeSubstitutor.i(uVarQ0, variance);
            if (uVarI == null) {
                return null;
            }
            if ((uVarI != valueParameterDescriptor.getType() || uVarQ0 != uVarI2) && zArr != null) {
                zArr[0] = true;
            }
            arrayList.add(ValueParameterDescriptorImpl.createWithDestructuringDeclarations(oVar, z ? null : valueParameterDescriptor, valueParameterDescriptor.h(), valueParameterDescriptor.getAnnotations(), valueParameterDescriptor.getName(), uVarI, valueParameterDescriptor.u0(), valueParameterDescriptor.m0(), valueParameterDescriptor.j0(), uVarI2, z2 ? valueParameterDescriptor.getSource() : d0.a, valueParameterDescriptor instanceof ValueParameterDescriptorImpl.b ? new b(((ValueParameterDescriptorImpl.b) valueParameterDescriptor).z0()) : null));
        }
        return arrayList;
    }

    private static /* synthetic */ void u(int i) {
        String str;
        int i2;
        switch (i) {
            case 8:
            case 12:
            case 13:
            case 14:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
            case 24:
            case 25:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 9:
            case 10:
            case 11:
            case 15:
            case 20:
            case 22:
            case 23:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 8:
            case 12:
            case 13:
            case 14:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
            case 24:
            case 25:
                i2 = 2;
                break;
            case 9:
            case 10:
            case 11:
            case 15:
            case 20:
            case 22:
            case 23:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "annotations";
                break;
            case 2:
                objArr[0] = "name";
                break;
            case 3:
                objArr[0] = "kind";
                break;
            case 4:
                objArr[0] = ShareConstants.FEED_SOURCE_PARAM;
                break;
            case 5:
                objArr[0] = "typeParameters";
                break;
            case 6:
            case 26:
            case 28:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 7:
            case 9:
                objArr[0] = "visibility";
                break;
            case 8:
            case 12:
            case 13:
            case 14:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
            case 24:
            case 25:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl";
                break;
            case 10:
                objArr[0] = "unsubstitutedReturnType";
                break;
            case 11:
                objArr[0] = "extensionReceiverParameter";
                break;
            case 15:
                objArr[0] = "overriddenDescriptors";
                break;
            case 20:
                objArr[0] = "originalSubstitutor";
                break;
            case 22:
            case 27:
            case 29:
                objArr[0] = "substitutor";
                break;
            case 23:
                objArr[0] = "configuration";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i) {
            case 8:
                objArr[1] = MobileAdsBridgeBase.initializeMethodName;
                break;
            case 9:
            case 10:
            case 11:
            case 15:
            case 20:
            case 22:
            case 23:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl";
                break;
            case 12:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 13:
                objArr[1] = "getModality";
                break;
            case 14:
                objArr[1] = "getVisibility";
                break;
            case 16:
                objArr[1] = "getTypeParameters";
                break;
            case 17:
                objArr[1] = "getValueParameters";
                break;
            case 18:
                objArr[1] = "getOriginal";
                break;
            case 19:
                objArr[1] = "getKind";
                break;
            case 21:
                objArr[1] = "newCopyBuilder";
                break;
            case 24:
                objArr[1] = "copy";
                break;
            case 25:
                objArr[1] = "getSourceToUseForCopy";
                break;
        }
        switch (i) {
            case 5:
            case 6:
            case 7:
                objArr[2] = MobileAdsBridgeBase.initializeMethodName;
                break;
            case 8:
            case 12:
            case 13:
            case 14:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
            case 24:
            case 25:
                break;
            case 9:
                objArr[2] = "setVisibility";
                break;
            case 10:
                objArr[2] = "setReturnType";
                break;
            case 11:
                objArr[2] = "setExtensionReceiverParameter";
                break;
            case 15:
                objArr[2] = "setOverriddenDescriptors";
                break;
            case 20:
                objArr[2] = "substitute";
                break;
            case 22:
                objArr[2] = "newCopyBuilder";
                break;
            case 23:
                objArr[2] = "doSubstitute";
                break;
            case 26:
            case 27:
            case 28:
            case 29:
                objArr[2] = "getSubstitutedValueParameters";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 8:
            case 12:
            case 13:
            case 14:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
            case 24:
            case 25:
                throw new IllegalStateException(str2);
            case 9:
            case 10:
            case 11:
            case 15:
            case 20:
            case 22:
            case 23:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    public FunctionDescriptorImpl F0(b0 b0Var, b0 b0Var2, List<? extends i0> list, List<ValueParameterDescriptor> list2, kotlin.reflect.jvm.internal.impl.types.u uVar, Modality modality, m0 m0Var) {
        if (list == null) {
            u(5);
        }
        if (list2 == null) {
            u(6);
        }
        if (m0Var == null) {
            u(7);
        }
        this.f9117e = CollectionsKt___CollectionsKt.toList(list);
        this.f9118f = CollectionsKt___CollectionsKt.toList(list2);
        this.f9119g = uVar;
        this.j = modality;
        this.k = m0Var;
        this.h = b0Var;
        this.i = b0Var2;
        for (int i = 0; i < list.size(); i++) {
            i0 i0Var = list.get(i);
            if (i0Var.h() != i) {
                throw new IllegalStateException(i0Var + " index is " + i0Var.h() + " but position is " + i);
            }
        }
        for (int i2 = 0; i2 < list2.size(); i2++) {
            ValueParameterDescriptor valueParameterDescriptor = list2.get(i2);
            if (valueParameterDescriptor.h() != i2 + 0) {
                throw new IllegalStateException(valueParameterDescriptor + "index is " + valueParameterDescriptor.h() + " but position is " + i2);
            }
        }
        return this;
    }

    protected c G0(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            u(22);
        }
        return new c(this, typeSubstitutor.e(), b(), p(), getVisibility(), getKind(), g(), K(), getReturnType(), null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public b0 H() {
        return this.i;
    }

    public <V> void I0(a.InterfaceC0516a<V> interfaceC0516a, Object obj) {
        if (this.C == null) {
            this.C = new LinkedHashMap();
        }
        this.C.put(interfaceC0516a, obj);
    }

    public void J0(boolean z) {
        this.r = z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public b0 K() {
        return this.h;
    }

    public void K0(boolean z) {
        this.q = z;
    }

    public void L0(boolean z) {
        this.n = z;
    }

    public void M0(boolean z) {
        this.v = z;
    }

    public void N0(boolean z) {
        this.w = z;
    }

    public void Q0(boolean z) {
        this.m = z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
    public boolean R() {
        return this.r;
    }

    public void S0(boolean z) {
        this.o = z;
    }

    public void T0(boolean z) {
        this.l = z;
    }

    public void U0(kotlin.reflect.jvm.internal.impl.types.u uVar) {
        if (uVar == null) {
            u(10);
        }
        this.f9119g = uVar;
    }

    public void V0(boolean z) {
        this.u = z;
    }

    public void W0(boolean z) {
        this.p = z;
    }

    public void X0(m0 m0Var) {
        if (m0Var == null) {
            u(9);
        }
        this.k = m0Var;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public boolean Y() {
        return this.w;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.i, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.i
    public kotlin.reflect.jvm.internal.impl.descriptors.o a() {
        kotlin.reflect.jvm.internal.impl.descriptors.o oVar = this.z;
        kotlin.reflect.jvm.internal.impl.descriptors.o oVarA = oVar == this ? this : oVar.a();
        if (oVarA == null) {
            u(18);
        }
        return oVarA;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.f0
    public kotlin.reflect.jvm.internal.impl.descriptors.o c(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            u(20);
        }
        return typeSubstitutor.f() ? this : G0(typeSubstitutor).m(a()).k().I(true).build();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
    public boolean c0() {
        return this.q;
    }

    public Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.o> d() {
        H0();
        Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.o> collectionEmptyList = this.x;
        if (collectionEmptyList == null) {
            collectionEmptyList = Collections.emptyList();
        }
        if (collectionEmptyList == null) {
            u(12);
        }
        return collectionEmptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    /* JADX INFO: renamed from: e0, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.descriptors.o A0(kotlin.reflect.jvm.internal.impl.descriptors.i iVar, Modality modality, m0 m0Var, CallableMemberDescriptor.Kind kind, boolean z) {
        kotlin.reflect.jvm.internal.impl.descriptors.o oVarBuild = r().p(iVar).j(modality).c(m0Var).q(kind).n(z).build();
        if (oVarBuild == null) {
            u(24);
        }
        return oVarBuild;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public List<ValueParameterDescriptor> g() {
        List<ValueParameterDescriptor> list = this.f9118f;
        if (list == null) {
            u(17);
        }
        return list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public CallableMemberDescriptor.Kind getKind() {
        CallableMemberDescriptor.Kind kind = this.A;
        if (kind == null) {
            u(19);
        }
        return kind;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public kotlin.reflect.jvm.internal.impl.types.u getReturnType() {
        return this.f9119g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public List<i0> getTypeParameters() {
        List<i0> list = this.f9117e;
        if (list == null) {
            u(16);
        }
        return list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.m, kotlin.reflect.jvm.internal.impl.descriptors.q
    public m0 getVisibility() {
        m0 m0Var = this.k;
        if (m0Var == null) {
            u(14);
        }
        return m0Var;
    }

    public boolean isExternal() {
        return this.n;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o
    public boolean isInfix() {
        if (this.m) {
            return true;
        }
        Iterator<? extends kotlin.reflect.jvm.internal.impl.descriptors.o> it = a().d().iterator();
        while (it.hasNext()) {
            if (it.next().isInfix()) {
                return true;
            }
        }
        return false;
    }

    public boolean isInline() {
        return this.o;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o
    public boolean isOperator() {
        if (this.l) {
            return true;
        }
        Iterator<? extends kotlin.reflect.jvm.internal.impl.descriptors.o> it = a().d().iterator();
        while (it.hasNext()) {
            if (it.next().isOperator()) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o
    public boolean isSuspend() {
        return this.u;
    }

    protected abstract FunctionDescriptorImpl k0(kotlin.reflect.jvm.internal.impl.descriptors.i iVar, kotlin.reflect.jvm.internal.impl.descriptors.o oVar, CallableMemberDescriptor.Kind kind, Name name, Annotations annotations, d0 d0Var);

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o
    public kotlin.reflect.jvm.internal.impl.descriptors.o n0() {
        return this.B;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
    public Modality p() {
        Modality modality = this.j;
        if (modality == null) {
            u(13);
        }
        return modality;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public <V> V p0(a.InterfaceC0516a<V> interfaceC0516a) {
        Map<a.InterfaceC0516a<?>, Object> map = this.C;
        if (map == null) {
            return null;
        }
        return (V) map.get(interfaceC0516a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o
    public o.a<? extends kotlin.reflect.jvm.internal.impl.descriptors.o> r() {
        c cVarG0 = G0(TypeSubstitutor.a);
        if (cVarG0 == null) {
            u(21);
        }
        return cVarG0;
    }

    public <R, D> R w(kotlin.reflect.jvm.internal.impl.descriptors.k<R, D> kVar, D d2) {
        return kVar.i(this, d2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o
    public boolean w0() {
        return this.s;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void x0(Collection<? extends CallableMemberDescriptor> collection) {
        if (collection == 0) {
            u(15);
        }
        this.x = collection;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (((kotlin.reflect.jvm.internal.impl.descriptors.o) it.next()).y0()) {
                this.t = true;
                return;
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o
    public boolean y0() {
        return this.t;
    }

    public boolean z() {
        return this.p;
    }

    protected kotlin.reflect.jvm.internal.impl.descriptors.o z0(c cVar) {
        w wVar;
        b0 b0Var;
        kotlin.reflect.jvm.internal.impl.types.u uVarI;
        if (cVar == null) {
            u(23);
        }
        boolean[] zArr = new boolean[1];
        Annotations annotationsComposeAnnotations = cVar.r != null ? AnnotationsKt.composeAnnotations(getAnnotations(), cVar.r) : getAnnotations();
        kotlin.reflect.jvm.internal.impl.descriptors.i iVar = cVar.b;
        kotlin.reflect.jvm.internal.impl.descriptors.o oVar = cVar.f9121e;
        FunctionDescriptorImpl functionDescriptorImplK0 = k0(iVar, oVar, cVar.f9122f, cVar.k, annotationsComposeAnnotations, B0(cVar.n, oVar));
        List<i0> typeParameters = cVar.q == null ? getTypeParameters() : cVar.q;
        zArr[0] = zArr[0] | (!typeParameters.isEmpty());
        ArrayList arrayList = new ArrayList(typeParameters.size());
        TypeSubstitutor typeSubstitutorSubstituteTypeParameters = DescriptorSubstitutor.substituteTypeParameters(typeParameters, cVar.a, functionDescriptorImplK0, arrayList, zArr);
        if (typeSubstitutorSubstituteTypeParameters == null) {
            return null;
        }
        b0 b0Var2 = cVar.h;
        if (b0Var2 != null) {
            kotlin.reflect.jvm.internal.impl.types.u uVarI2 = typeSubstitutorSubstituteTypeParameters.i(b0Var2.getType(), Variance.IN_VARIANCE);
            if (uVarI2 == null) {
                return null;
            }
            w wVar2 = new w(functionDescriptorImplK0, new kotlin.reflect.jvm.internal.impl.resolve.scopes.g.b(functionDescriptorImplK0, uVarI2, cVar.h.getValue()), cVar.h.getAnnotations());
            zArr[0] = (uVarI2 != cVar.h.getType()) | zArr[0];
            wVar = wVar2;
        } else {
            wVar = null;
        }
        b0 b0Var3 = cVar.i;
        if (b0Var3 != null) {
            b0 b0VarC = b0Var3.c(typeSubstitutorSubstituteTypeParameters);
            if (b0VarC == null) {
                return null;
            }
            zArr[0] = zArr[0] | (b0VarC != cVar.i);
            b0Var = b0VarC;
        } else {
            b0Var = null;
        }
        List<ValueParameterDescriptor> substitutedValueParameters = getSubstitutedValueParameters(functionDescriptorImplK0, cVar.f9123g, typeSubstitutorSubstituteTypeParameters, cVar.o, cVar.n, zArr);
        if (substitutedValueParameters == null || (uVarI = typeSubstitutorSubstituteTypeParameters.i(cVar.j, Variance.OUT_VARIANCE)) == null) {
            return null;
        }
        zArr[0] = zArr[0] | (uVarI != cVar.j);
        if (!zArr[0] && cVar.v) {
            return this;
        }
        functionDescriptorImplK0.F0(wVar, b0Var, arrayList, substitutedValueParameters, uVarI, cVar.c, cVar.f9120d);
        functionDescriptorImplK0.T0(this.l);
        functionDescriptorImplK0.Q0(this.m);
        functionDescriptorImplK0.L0(this.n);
        functionDescriptorImplK0.S0(this.o);
        functionDescriptorImplK0.W0(this.p);
        functionDescriptorImplK0.V0(this.u);
        functionDescriptorImplK0.K0(this.q);
        functionDescriptorImplK0.J0(this.r);
        functionDescriptorImplK0.M0(this.v);
        functionDescriptorImplK0.P0(cVar.p);
        functionDescriptorImplK0.O0(cVar.s);
        functionDescriptorImplK0.N0(cVar.u != null ? cVar.u.booleanValue() : this.w);
        if (!cVar.t.isEmpty() || this.C != null) {
            Map<a.InterfaceC0516a<?>, Object> map = cVar.t;
            Map<a.InterfaceC0516a<?>, Object> map2 = this.C;
            if (map2 != null) {
                for (Map.Entry<a.InterfaceC0516a<?>, Object> entry : map2.entrySet()) {
                    if (!map.containsKey(entry.getKey())) {
                        map.put(entry.getKey(), entry.getValue());
                    }
                }
            }
            if (map.size() == 1) {
                functionDescriptorImplK0.C = Collections.singletonMap(map.keySet().iterator().next(), map.values().iterator().next());
            } else {
                functionDescriptorImplK0.C = map;
            }
        }
        if (cVar.m || n0() != null) {
            functionDescriptorImplK0.R0((n0() != null ? n0() : this).c(typeSubstitutorSubstituteTypeParameters));
        }
        if (cVar.l && !a().d().isEmpty()) {
            if (cVar.a.f()) {
                Function0<Collection<kotlin.reflect.jvm.internal.impl.descriptors.o>> function0 = this.y;
                if (function0 != null) {
                    functionDescriptorImplK0.y = function0;
                } else {
                    functionDescriptorImplK0.x0(d());
                }
            } else {
                functionDescriptorImplK0.y = new a(typeSubstitutorSubstituteTypeParameters);
            }
        }
        return functionDescriptorImplK0;
    }
}
