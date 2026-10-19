package kotlin.reflect.jvm.internal.impl.builtins.functions;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.p;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.reflect.jvm.internal.impl.builtins.FunctionTypesKt;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: FunctionInvokeDescriptor.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class d extends SimpleFunctionDescriptorImpl {
    public static final a D = new a(null);

    /* JADX INFO: compiled from: FunctionInvokeDescriptor.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0030  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private final kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor b(kotlin.reflect.jvm.internal.impl.builtins.functions.d r15, int r16, kotlin.reflect.jvm.internal.impl.descriptors.i0 r17) {
            /*
                r14 = this;
                kotlin.reflect.jvm.internal.impl.name.Name r0 = r17.getName()
                java.lang.String r0 = r0.e()
                java.lang.String r1 = "typeParameter.name.asString()"
                kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1)
                int r1 = r0.hashCode()
                r2 = 69
                if (r1 == r2) goto L25
                r2 = 84
                if (r1 == r2) goto L1a
                goto L30
            L1a:
                java.lang.String r1 = "T"
                boolean r1 = r0.equals(r1)
                if (r1 == 0) goto L30
                java.lang.String r0 = "instance"
                goto L39
            L25:
                java.lang.String r1 = "E"
                boolean r1 = r0.equals(r1)
                if (r1 == 0) goto L30
                java.lang.String r0 = "receiver"
                goto L39
            L30:
                java.lang.String r0 = r0.toLowerCase()
                java.lang.String r1 = "(this as java.lang.String).toLowerCase()"
                kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1)
            L39:
                kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl r13 = new kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl
                r3 = 0
                kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations$a r1 = kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations.e0
                kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations r5 = r1.b()
                kotlin.reflect.jvm.internal.impl.name.Name r6 = kotlin.reflect.jvm.internal.impl.name.Name.identifier(r0)
                java.lang.String r0 = "Name.identifier(name)"
                kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r6, r0)
                kotlin.reflect.jvm.internal.impl.types.y r7 = r17.n()
                java.lang.String r0 = "typeParameter.defaultType"
                kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r7, r0)
                r8 = 0
                r9 = 0
                r10 = 0
                r11 = 0
                kotlin.reflect.jvm.internal.impl.descriptors.d0 r12 = kotlin.reflect.jvm.internal.impl.descriptors.d0.a
                java.lang.String r0 = "SourceElement.NO_SOURCE"
                kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r12, r0)
                r1 = r13
                r2 = r15
                r4 = r16
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)
                return r13
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.builtins.functions.d.a.b(kotlin.reflect.jvm.internal.impl.builtins.functions.d, int, kotlin.reflect.jvm.internal.impl.descriptors.i0):kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor");
        }

        public final d a(FunctionClassDescriptor functionClass, boolean z) {
            Intrinsics.checkParameterIsNotNull(functionClass, "functionClass");
            List<i0> listO = functionClass.o();
            d dVar = new d(functionClass, null, CallableMemberDescriptor.Kind.DECLARATION, z, null);
            b0 b0VarE0 = functionClass.E0();
            List<? extends i0> listEmptyList = CollectionsKt__CollectionsKt.emptyList();
            ArrayList arrayList = new ArrayList();
            for (Object obj : listO) {
                if (!(((i0) obj).j() == Variance.IN_VARIANCE)) {
                    break;
                }
                arrayList.add(obj);
            }
            Iterable<IndexedValue> iterableWithIndex = CollectionsKt___CollectionsKt.withIndex(arrayList);
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(iterableWithIndex, 10));
            for (IndexedValue indexedValue : iterableWithIndex) {
                arrayList2.add(d.D.b(dVar, indexedValue.d(), (i0) indexedValue.e()));
            }
            dVar.F0(null, b0VarE0, listEmptyList, arrayList2, ((i0) p.last((List) listO)).n(), Modality.ABSTRACT, Visibilities.f9100e);
            dVar.N0(true);
            return dVar;
        }
    }

    private d(i iVar, d dVar, CallableMemberDescriptor.Kind kind, boolean z) {
        super(iVar, dVar, Annotations.e0.b(), kotlin.reflect.jvm.internal.impl.util.i.f9886g, kind, d0.a);
        T0(true);
        V0(z);
        M0(false);
    }

    public /* synthetic */ d(i iVar, d dVar, CallableMemberDescriptor.Kind kind, boolean z, n nVar) {
        this(iVar, dVar, kind, z);
    }

    private final o c1(List<Name> list) {
        Name name;
        int size = g().size() - list.size();
        boolean z = true;
        List<ValueParameterDescriptor> valueParameters = g();
        Intrinsics.checkExpressionValueIsNotNull(valueParameters, "valueParameters");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(valueParameters, 10));
        for (ValueParameterDescriptor it : valueParameters) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            Name name2 = it.getName();
            Intrinsics.checkExpressionValueIsNotNull(name2, "it.name");
            int iH = it.h();
            int i = iH - size;
            if (i >= 0 && (name = list.get(i)) != null) {
                name2 = name;
            }
            arrayList.add(it.S(this, name2, iH));
        }
        FunctionDescriptorImpl.c cVarG0 = G0(TypeSubstitutor.a);
        if (list.isEmpty()) {
            z = false;
        } else {
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                if (((Name) it2.next()) == null) {
                    break;
                }
            }
            z = false;
        }
        FunctionDescriptorImpl.c cVarM = cVarG0.F(z).b(arrayList).m(a());
        Intrinsics.checkExpressionValueIsNotNull(cVarM, "newCopyBuilder(TypeSubst…   .setOriginal(original)");
        o oVarZ0 = super.z0(cVarM);
        if (oVarZ0 == null) {
            Intrinsics.throwNpe();
        }
        return oVarZ0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.q
    public boolean isExternal() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.o
    public boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    protected FunctionDescriptorImpl k0(i newOwner, o oVar, CallableMemberDescriptor.Kind kind, Name name, Annotations annotations, d0 source) {
        Intrinsics.checkParameterIsNotNull(newOwner, "newOwner");
        Intrinsics.checkParameterIsNotNull(kind, "kind");
        Intrinsics.checkParameterIsNotNull(annotations, "annotations");
        Intrinsics.checkParameterIsNotNull(source, "source");
        return new d(newOwner, (d) oVar, kind, isSuspend());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.o
    public boolean z() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    protected o z0(FunctionDescriptorImpl.c configuration) {
        Intrinsics.checkParameterIsNotNull(configuration, "configuration");
        d dVar = (d) super.z0(configuration);
        if (dVar == null) {
            return null;
        }
        List<ValueParameterDescriptor> listG = dVar.g();
        Intrinsics.checkExpressionValueIsNotNull(listG, "substituted.valueParameters");
        boolean z = false;
        if ((listG instanceof Collection) && listG.isEmpty()) {
            z = true;
        } else {
            for (ValueParameterDescriptor it : listG) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                u type = it.getType();
                Intrinsics.checkExpressionValueIsNotNull(type, "it.type");
                if (FunctionTypesKt.extractParameterNameFromFunctionTypeArgument(type) != null) {
                    break;
                }
            }
            z = true;
        }
        if (z) {
            return dVar;
        }
        List<ValueParameterDescriptor> listG2 = dVar.g();
        Intrinsics.checkExpressionValueIsNotNull(listG2, "substituted.valueParameters");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listG2, 10));
        for (ValueParameterDescriptor it2 : listG2) {
            Intrinsics.checkExpressionValueIsNotNull(it2, "it");
            u type2 = it2.getType();
            Intrinsics.checkExpressionValueIsNotNull(type2, "it.type");
            arrayList.add(FunctionTypesKt.extractParameterNameFromFunctionTypeArgument(type2));
        }
        return dVar.c1(arrayList);
    }
}
