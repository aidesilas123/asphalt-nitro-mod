package kotlin.reflect.jvm.internal.impl.renderer;

import androidx.webkit.ProxyConfig;
import com.facebook.internal.security.CertificateUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.FunctionTypesKt;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterUtilsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.a0;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationUseSiteTarget;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.e0;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.descriptors.h0;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.k0;
import kotlin.reflect.jvm.internal.impl.descriptors.l;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.n;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.descriptors.q;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.descriptors.x;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.name.SpecialNames;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.constants.q;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SpecialTypesKt;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.g0;
import kotlin.reflect.jvm.internal.impl.types.l0;
import kotlin.reflect.jvm.internal.impl.types.n0;
import kotlin.reflect.jvm.internal.impl.types.p;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.text.StringsKt__StringBuilderJVMKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.StringsKt___StringsKt;
import kotlin.v;

/* JADX INFO: compiled from: DescriptorRendererImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class DescriptorRendererImpl extends DescriptorRenderer implements DescriptorRendererOptions {
    private final Lazy l;
    private final Lazy m;
    private final kotlin.reflect.jvm.internal.impl.renderer.e n;

    /* JADX INFO: compiled from: DescriptorRendererImpl.kt */
    private final class a implements k<v, StringBuilder> {
        public a() {
        }

        private final void t(x xVar, StringBuilder sb, String str) {
            int i = kotlin.reflect.jvm.internal.impl.renderer.c.a[DescriptorRendererImpl.this.Z().ordinal()];
            if (i != 1) {
                if (i != 2) {
                    return;
                }
                p(xVar, sb);
                return;
            }
            DescriptorRendererImpl.this.E0(xVar, sb);
            sb.append(str + " for ");
            DescriptorRendererImpl descriptorRendererImpl = DescriptorRendererImpl.this;
            y yVarP = xVar.P();
            Intrinsics.checkExpressionValueIsNotNull(yVarP, "descriptor.correspondingProperty");
            descriptorRendererImpl.l1(yVarP, sb);
        }

        public void A(ValueParameterDescriptor descriptor, StringBuilder builder) {
            Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
            Intrinsics.checkParameterIsNotNull(builder, "builder");
            DescriptorRendererImpl.this.D1(descriptor, true, builder, true);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
        public /* bridge */ /* synthetic */ v a(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, StringBuilder sb) {
            n(dVar, sb);
            return v.a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
        public /* bridge */ /* synthetic */ v b(PackageViewDescriptor packageViewDescriptor, StringBuilder sb) {
            s(packageViewDescriptor, sb);
            return v.a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
        public /* bridge */ /* synthetic */ v c(y yVar, StringBuilder sb) {
            u(yVar, sb);
            return v.a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
        public /* bridge */ /* synthetic */ v d(h0 h0Var, StringBuilder sb) {
            y(h0Var, sb);
            return v.a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
        public /* bridge */ /* synthetic */ v e(a0 a0Var, StringBuilder sb) {
            w(a0Var, sb);
            return v.a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
        public /* bridge */ /* synthetic */ v f(ValueParameterDescriptor valueParameterDescriptor, StringBuilder sb) {
            A(valueParameterDescriptor, sb);
            return v.a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
        public /* bridge */ /* synthetic */ v g(z zVar, StringBuilder sb) {
            v(zVar, sb);
            return v.a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
        public /* bridge */ /* synthetic */ v h(s sVar, StringBuilder sb) {
            r(sVar, sb);
            return v.a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
        public /* bridge */ /* synthetic */ v i(o oVar, StringBuilder sb) {
            p(oVar, sb);
            return v.a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
        public /* bridge */ /* synthetic */ v j(h hVar, StringBuilder sb) {
            o(hVar, sb);
            return v.a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
        public /* bridge */ /* synthetic */ v k(ModuleDescriptor moduleDescriptor, StringBuilder sb) {
            q(moduleDescriptor, sb);
            return v.a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
        public /* bridge */ /* synthetic */ v l(b0 b0Var, StringBuilder sb) {
            x(b0Var, sb);
            return v.a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
        public /* bridge */ /* synthetic */ v m(i0 i0Var, StringBuilder sb) {
            z(i0Var, sb);
            return v.a;
        }

        public void n(kotlin.reflect.jvm.internal.impl.descriptors.d descriptor, StringBuilder builder) {
            Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
            Intrinsics.checkParameterIsNotNull(builder, "builder");
            DescriptorRendererImpl.this.K0(descriptor, builder);
        }

        public void o(h constructorDescriptor, StringBuilder builder) {
            Intrinsics.checkParameterIsNotNull(constructorDescriptor, "constructorDescriptor");
            Intrinsics.checkParameterIsNotNull(builder, "builder");
            DescriptorRendererImpl.this.P0(constructorDescriptor, builder);
        }

        public void p(o descriptor, StringBuilder builder) {
            Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
            Intrinsics.checkParameterIsNotNull(builder, "builder");
            DescriptorRendererImpl.this.T0(descriptor, builder);
        }

        public void q(ModuleDescriptor descriptor, StringBuilder builder) {
            Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
            Intrinsics.checkParameterIsNotNull(builder, "builder");
            DescriptorRendererImpl.this.d1(descriptor, builder, true);
        }

        public void r(s descriptor, StringBuilder builder) {
            Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
            Intrinsics.checkParameterIsNotNull(builder, "builder");
            DescriptorRendererImpl.this.h1(descriptor, builder);
        }

        public void s(PackageViewDescriptor descriptor, StringBuilder builder) {
            Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
            Intrinsics.checkParameterIsNotNull(builder, "builder");
            DescriptorRendererImpl.this.j1(descriptor, builder);
        }

        public void u(y descriptor, StringBuilder builder) {
            Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
            Intrinsics.checkParameterIsNotNull(builder, "builder");
            DescriptorRendererImpl.this.l1(descriptor, builder);
        }

        public void v(z descriptor, StringBuilder builder) {
            Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
            Intrinsics.checkParameterIsNotNull(builder, "builder");
            t(descriptor, builder, "getter");
        }

        public void w(a0 descriptor, StringBuilder builder) {
            Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
            Intrinsics.checkParameterIsNotNull(builder, "builder");
            t(descriptor, builder, "setter");
        }

        public void x(b0 descriptor, StringBuilder builder) {
            Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
            Intrinsics.checkParameterIsNotNull(builder, "builder");
            builder.append(descriptor.getName());
        }

        public void y(h0 descriptor, StringBuilder builder) {
            Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
            Intrinsics.checkParameterIsNotNull(builder, "builder");
            DescriptorRendererImpl.this.t1(descriptor, builder);
        }

        public void z(i0 descriptor, StringBuilder builder) {
            Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
            Intrinsics.checkParameterIsNotNull(builder, "builder");
            DescriptorRendererImpl.this.y1(descriptor, builder, true);
        }
    }

    /* JADX INFO: compiled from: DescriptorRendererImpl.kt */
    static final class b extends Lambda implements Function1<g0, CharSequence> {
        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CharSequence invoke(g0 it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            if (it.b()) {
                return ProxyConfig.MATCH_ALL_SCHEMES;
            }
            DescriptorRendererImpl descriptorRendererImpl = DescriptorRendererImpl.this;
            u type = it.getType();
            Intrinsics.checkExpressionValueIsNotNull(type, "it.type");
            String strU = descriptorRendererImpl.u(type);
            if (it.c() == Variance.INVARIANT) {
                return strU;
            }
            return it.c() + ' ' + strU;
        }
    }

    /* JADX INFO: compiled from: DescriptorRendererImpl.kt */
    static final class c extends Lambda implements Function0<DescriptorRendererImpl> {

        /* JADX INFO: compiled from: DescriptorRendererImpl.kt */
        static final class a extends Lambda implements Function1<DescriptorRendererOptions, v> {
            public static final a a = new a();

            a() {
                super(1);
            }

            public final void a(DescriptorRendererOptions receiver) {
                Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
                receiver.k(SetsKt___SetsKt.plus((Set) receiver.i(), (Iterable) CollectionsKt__CollectionsJVMKt.listOf(KotlinBuiltIns.h.A)));
                receiver.h(AnnotationArgumentsRenderingPolicy.ALWAYS_PARENTHESIZED);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(DescriptorRendererOptions descriptorRendererOptions) {
                a(descriptorRendererOptions);
                return v.a;
            }
        }

        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final DescriptorRendererImpl invoke() {
            DescriptorRenderer descriptorRendererW = DescriptorRendererImpl.this.w(a.a);
            if (descriptorRendererW != null) {
                return (DescriptorRendererImpl) descriptorRendererW;
            }
            throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.renderer.DescriptorRendererImpl");
        }
    }

    /* JADX INFO: compiled from: DescriptorRendererImpl.kt */
    static final class d extends Lambda implements Function0<DescriptorRenderer> {

        /* JADX INFO: compiled from: DescriptorRendererImpl.kt */
        static final class a extends Lambda implements Function1<DescriptorRendererOptions, v> {
            public static final a a = new a();

            a() {
                super(1);
            }

            public final void a(DescriptorRendererOptions receiver) {
                Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
                receiver.k(SetsKt___SetsKt.plus((Set) receiver.i(), (Iterable) CollectionsKt__CollectionsJVMKt.listOf(KotlinBuiltIns.h.B)));
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(DescriptorRendererOptions descriptorRendererOptions) {
                a(descriptorRendererOptions);
                return v.a;
            }
        }

        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final DescriptorRenderer invoke() {
            return DescriptorRendererImpl.this.w(a.a);
        }
    }

    /* JADX INFO: compiled from: DescriptorRendererImpl.kt */
    static final class e extends Lambda implements Function1<kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>, String> {
        e() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke(kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return DescriptorRendererImpl.this.O0(it);
        }
    }

    /* JADX INFO: compiled from: DescriptorRendererImpl.kt */
    static final class f extends Lambda implements Function1<ValueParameterDescriptor, String> {
        public static final f a = new f();

        f() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke(ValueParameterDescriptor valueParameterDescriptor) {
            return "";
        }
    }

    /* JADX INFO: compiled from: DescriptorRendererImpl.kt */
    static final class g extends Lambda implements Function1<u, String> {
        g() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke(u it) {
            DescriptorRendererImpl descriptorRendererImpl = DescriptorRendererImpl.this;
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            return descriptorRendererImpl.u(it);
        }
    }

    public DescriptorRendererImpl(kotlin.reflect.jvm.internal.impl.renderer.e options) {
        Intrinsics.checkParameterIsNotNull(options, "options");
        this.n = options;
        options.j0();
        this.l = LazyKt__LazyJVMKt.lazy(new c());
        this.m = LazyKt__LazyJVMKt.lazy(new d());
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean A(java.lang.String r7, java.lang.String r8) {
        /*
            r6 = this;
            java.lang.String r1 = "?"
            java.lang.String r2 = ""
            r3 = 0
            r4 = 4
            r5 = 0
            r0 = r8
            java.lang.String r0 = kotlin.text.g.replace$default(r0, r1, r2, r3, r4, r5)
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r0)
            r1 = 0
            if (r0 != 0) goto L50
            r0 = 2
            r2 = 0
            java.lang.String r3 = "?"
            boolean r0 = kotlin.text.g.endsWith$default(r8, r3, r1, r0, r2)
            if (r0 == 0) goto L34
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r7)
            r2 = 63
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r8)
            if (r0 != 0) goto L50
        L34:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r2 = 40
            r0.append(r2)
            r0.append(r7)
            java.lang.String r7 = ")?"
            r0.append(r7)
            java.lang.String r7 = r0.toString()
            boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r8)
            if (r7 == 0) goto L51
        L50:
            r1 = 1
        L51:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl.A(java.lang.String, java.lang.String):boolean");
    }

    private final Modality A0(q qVar) {
        if (qVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
            return ((kotlin.reflect.jvm.internal.impl.descriptors.d) qVar).getKind() == ClassKind.INTERFACE ? Modality.ABSTRACT : Modality.FINAL;
        }
        i iVarB = qVar.b();
        if (!(iVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
            iVarB = null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) iVarB;
        if (dVar != null && (qVar instanceof CallableMemberDescriptor)) {
            CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) qVar;
            Intrinsics.checkExpressionValueIsNotNull(callableMemberDescriptor.d(), "this.overriddenDescriptors");
            if ((!r1.isEmpty()) && dVar.p() != Modality.FINAL) {
                return Modality.OPEN;
            }
            if (dVar.getKind() != ClassKind.INTERFACE || !(!Intrinsics.areEqual(callableMemberDescriptor.getVisibility(), Visibilities.a))) {
                return Modality.FINAL;
            }
            Modality modalityP = callableMemberDescriptor.p();
            Modality modality = Modality.ABSTRACT;
            return modalityP == modality ? modality : Modality.OPEN;
        }
        return Modality.FINAL;
    }

    private final void A1(List<? extends i0> list, StringBuilder sb, boolean z) {
        if (!x0() && (!list.isEmpty())) {
            sb.append(B0());
            z1(sb, list);
            sb.append(y0());
            if (z) {
                sb.append(" ");
            }
        }
    }

    private final String B(String str) {
        return n0().a(str);
    }

    private final String B0() {
        return B("<");
    }

    private final void B1(k0 k0Var, StringBuilder sb, boolean z) {
        if (z || !(k0Var instanceof ValueParameterDescriptor)) {
            sb.append(W0(k0Var.J() ? "var" : "val"));
            sb.append(" ");
        }
    }

    private final boolean C0(CallableMemberDescriptor callableMemberDescriptor) {
        return !callableMemberDescriptor.d().isEmpty();
    }

    static /* synthetic */ void C1(DescriptorRendererImpl descriptorRendererImpl, k0 k0Var, StringBuilder sb, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        descriptorRendererImpl.B1(k0Var, sb, z);
    }

    private final void D0(StringBuilder sb, kotlin.reflect.jvm.internal.impl.types.a aVar) {
        RenderingFormat renderingFormatN0 = n0();
        RenderingFormat renderingFormat = RenderingFormat.HTML;
        if (renderingFormatN0 == renderingFormat) {
            sb.append("<font color=\"808080\"><i>");
        }
        sb.append(" /* = ");
        f1(sb, aVar.D());
        sb.append(" */");
        if (n0() == renderingFormat) {
            sb.append("</i></font>");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void D1(kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor r10, boolean r11, java.lang.StringBuilder r12, boolean r13) {
        /*
            r9 = this;
            if (r13 == 0) goto L10
            java.lang.String r0 = "value-parameter"
            java.lang.String r0 = r9.W0(r0)
            r12.append(r0)
            java.lang.String r0 = " "
            r12.append(r0)
        L10:
            boolean r0 = r9.s0()
            if (r0 == 0) goto L27
            java.lang.String r0 = "/*"
            r12.append(r0)
            int r0 = r10.h()
            r12.append(r0)
        */
        //  java.lang.String r0 = "*/ "
        /*
            r12.append(r0)
        L27:
            r4 = 0
            r5 = 2
            r6 = 0
            r1 = r9
            r2 = r12
            r3 = r10
            I0(r1, r2, r3, r4, r5, r6)
            boolean r0 = r10.m0()
            java.lang.String r1 = "crossinline"
            r9.c1(r12, r0, r1)
            boolean r0 = r10.j0()
            java.lang.String r1 = "noinline"
            r9.c1(r12, r0, r1)
            boolean r0 = r9.h0()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L5f
            kotlin.reflect.jvm.internal.impl.descriptors.a r0 = r10.b()
            boolean r3 = r0 instanceof kotlin.reflect.jvm.internal.impl.descriptors.c
            if (r3 != 0) goto L53
            r0 = 0
        L53:
            kotlin.reflect.jvm.internal.impl.descriptors.c r0 = (kotlin.reflect.jvm.internal.impl.descriptors.c) r0
            if (r0 == 0) goto L5f
            boolean r0 = r0.V()
            if (r0 != r2) goto L5f
            r8 = 1
            goto L60
        L5f:
            r8 = 0
        L60:
            if (r8 == 0) goto L6b
            boolean r0 = r9.C()
            java.lang.String r3 = "actual"
            r9.c1(r12, r0, r3)
        L6b:
            r3 = r9
            r4 = r10
            r5 = r11
            r6 = r12
            r7 = r13
            r3.F1(r4, r5, r6, r7, r8)
            kotlin.jvm.b.l r11 = r9.I()
            if (r11 == 0) goto L8b
            boolean r11 = r9.getDebugMode()
            if (r11 == 0) goto L84
            boolean r11 = r10.u0()
            goto L88
        L84:
            boolean r11 = kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt.declaresOrInheritsDefaultValue(r10)
        L88:
            if (r11 == 0) goto L8b
            r1 = 1
        L8b:
            if (r1 == 0) goto Lb0
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r13 = " = "
            r11.append(r13)
            kotlin.jvm.b.l r13 = r9.I()
            if (r13 != 0) goto La0
            kotlin.jvm.internal.Intrinsics.throwNpe()
        La0:
            java.lang.Object r10 = r13.invoke(r10)
            java.lang.String r10 = (java.lang.String) r10
            r11.append(r10)
            java.lang.String r10 = r11.toString()
            r12.append(r10)
        Lb0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl.D1(kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor, boolean, java.lang.StringBuilder, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E0(x xVar, StringBuilder sb) {
        Y0(xVar, sb);
    }

    private final void E1(Collection<? extends ValueParameterDescriptor> collection, boolean z, StringBuilder sb) {
        boolean zK1 = K1(z);
        int size = collection.size();
        r0().b(size, sb);
        int i = 0;
        for (ValueParameterDescriptor valueParameterDescriptor : collection) {
            r0().a(valueParameterDescriptor, i, size, sb);
            D1(valueParameterDescriptor, zK1, sb, false);
            r0().c(valueParameterDescriptor, i, size, sb);
            i++;
        }
        r0().d(size, sb);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void F0(kotlin.reflect.jvm.internal.impl.descriptors.o r7, java.lang.StringBuilder r8) {
        /*
            r6 = this;
            boolean r0 = r7.isOperator()
            java.lang.String r1 = "it"
            java.lang.String r2 = "functionDescriptor.overriddenDescriptors"
            r3 = 0
            r4 = 1
            if (r0 == 0) goto L43
            java.util.Collection r0 = r7.d()
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r2)
            boolean r5 = r0 instanceof java.util.Collection
            if (r5 == 0) goto L1f
            boolean r5 = r0.isEmpty()
            if (r5 == 0) goto L1f
        L1d:
            r0 = 1
            goto L39
        L1f:
            java.util.Iterator r0 = r0.iterator()
        L23:
            boolean r5 = r0.hasNext()
            if (r5 == 0) goto L1d
            java.lang.Object r5 = r0.next()
            kotlin.reflect.jvm.internal.impl.descriptors.o r5 = (kotlin.reflect.jvm.internal.impl.descriptors.o) r5
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r5, r1)
            boolean r5 = r5.isOperator()
            if (r5 == 0) goto L23
            r0 = 0
        L39:
            if (r0 != 0) goto L41
            boolean r0 = r6.D()
            if (r0 == 0) goto L43
        L41:
            r0 = 1
            goto L44
        L43:
            r0 = 0
        L44:
            boolean r5 = r7.isInfix()
            if (r5 == 0) goto L80
            java.util.Collection r5 = r7.d()
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r5, r2)
            boolean r2 = r5 instanceof java.util.Collection
            if (r2 == 0) goto L5d
            boolean r2 = r5.isEmpty()
            if (r2 == 0) goto L5d
        L5b:
            r1 = 1
            goto L77
        L5d:
            java.util.Iterator r2 = r5.iterator()
        L61:
            boolean r5 = r2.hasNext()
            if (r5 == 0) goto L5b
            java.lang.Object r5 = r2.next()
            kotlin.reflect.jvm.internal.impl.descriptors.o r5 = (kotlin.reflect.jvm.internal.impl.descriptors.o) r5
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r5, r1)
            boolean r5 = r5.isInfix()
            if (r5 == 0) goto L61
            r1 = 0
        L77:
            if (r1 != 0) goto L7f
            boolean r1 = r6.D()
            if (r1 == 0) goto L80
        L7f:
            r3 = 1
        L80:
            boolean r1 = r7.z()
            java.lang.String r2 = "tailrec"
            r6.c1(r8, r1, r2)
            r6.s1(r7, r8)
            boolean r7 = r7.isInline()
            java.lang.String r1 = "inline"
            r6.c1(r8, r7, r1)
            java.lang.String r7 = "infix"
            r6.c1(r8, r3, r7)
            java.lang.String r7 = "operator"
            r6.c1(r8, r0, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl.F0(kotlin.reflect.jvm.internal.impl.descriptors.o, java.lang.StringBuilder):void");
    }

    private final void F1(k0 k0Var, boolean z, StringBuilder sb, boolean z2, boolean z3) {
        u type = k0Var.getType();
        Intrinsics.checkExpressionValueIsNotNull(type, "variable.type");
        ValueParameterDescriptor valueParameterDescriptor = (ValueParameterDescriptor) (!(k0Var instanceof ValueParameterDescriptor) ? null : k0Var);
        u uVarQ0 = valueParameterDescriptor != null ? valueParameterDescriptor.q0() : null;
        u uVar = uVarQ0 != null ? uVarQ0 : type;
        c1(sb, uVarQ0 != null, "vararg");
        if (z3 || (z2 && !m0())) {
            B1(k0Var, sb, z3);
        }
        if (z) {
            d1(k0Var, sb, z2);
            sb.append(": ");
        }
        sb.append(u(uVar));
        V0(k0Var, sb);
        if (!s0() || uVarQ0 == null) {
            return;
        }
        sb.append(" /*");
        sb.append(u(type));
        sb.append("*/");
    }

    private final List<String> G0(AnnotationDescriptor annotationDescriptor) {
        kotlin.reflect.jvm.internal.impl.descriptors.c cVarA;
        List<ValueParameterDescriptor> listG;
        Map<Name, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> mapA = annotationDescriptor.a();
        List listEmptyList = null;
        kotlin.reflect.jvm.internal.impl.descriptors.d annotationClass = e0() ? DescriptorUtilsKt.getAnnotationClass(annotationDescriptor) : null;
        if (annotationClass != null && (cVarA = annotationClass.A()) != null && (listG = cVarA.g()) != null) {
            ArrayList<ValueParameterDescriptor> arrayList = new ArrayList();
            for (Object obj : listG) {
                if (((ValueParameterDescriptor) obj).u0()) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
            for (ValueParameterDescriptor it : arrayList) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                arrayList2.add(it.getName());
            }
            listEmptyList = arrayList2;
        }
        if (listEmptyList == null) {
            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : listEmptyList) {
            if (!mapA.containsKey((Name) obj2)) {
                arrayList3.add(obj2);
            }
        }
        ArrayList arrayList4 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList3, 10));
        Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            arrayList4.add(((Name) it2.next()).e() + " = ...");
        }
        Set<Map.Entry<Name, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>>> setEntrySet = mapA.entrySet();
        ArrayList arrayList5 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(setEntrySet, 10));
        Iterator<T> it3 = setEntrySet.iterator();
        while (it3.hasNext()) {
            Map.Entry entry = (Map.Entry) it3.next();
            Name name = (Name) entry.getKey();
            kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVar = (kotlin.reflect.jvm.internal.impl.resolve.constants.g) entry.getValue();
            StringBuilder sb = new StringBuilder();
            sb.append(name.e());
            sb.append(" = ");
            sb.append(!listEmptyList.contains(name) ? O0(gVar) : "...");
            arrayList5.add(sb.toString());
        }
        return CollectionsKt___CollectionsKt.sorted(CollectionsKt___CollectionsKt.plus((Collection) arrayList4, (Iterable) arrayList5));
    }

    private final boolean G1(m0 m0Var, StringBuilder sb) {
        if (!S().contains(DescriptorRendererModifier.VISIBILITY)) {
            return false;
        }
        if (T()) {
            m0Var = m0Var.e();
        }
        if (!g0() && Intrinsics.areEqual(m0Var, Visibilities.l)) {
            return false;
        }
        sb.append(W0(m0Var.b()));
        sb.append(" ");
        return true;
    }

    private final void H0(StringBuilder sb, kotlin.reflect.jvm.internal.impl.descriptors.annotations.a aVar, AnnotationUseSiteTarget annotationUseSiteTarget) {
        if (S().contains(DescriptorRendererModifier.ANNOTATIONS)) {
            Set<FqName> setI = aVar instanceof u ? i() : K();
            Function1<AnnotationDescriptor, Boolean> function1E = E();
            for (AnnotationDescriptor annotationDescriptor : aVar.getAnnotations()) {
                if (!CollectionsKt___CollectionsKt.contains(setI, annotationDescriptor.e()) && (function1E == null || function1E.invoke(annotationDescriptor).booleanValue())) {
                    sb.append(q(annotationDescriptor, annotationUseSiteTarget));
                    if (J()) {
                        StringsKt__StringBuilderJVMKt.appendln(sb);
                    } else {
                        sb.append(" ");
                    }
                }
            }
        }
    }

    private final void H1(List<? extends i0> list, StringBuilder sb) {
        if (x0()) {
            return;
        }
        ArrayList arrayList = new ArrayList(0);
        for (i0 i0Var : list) {
            List<u> upperBounds = i0Var.getUpperBounds();
            Intrinsics.checkExpressionValueIsNotNull(upperBounds, "typeParameter.upperBounds");
            for (u it : CollectionsKt___CollectionsKt.drop(upperBounds, 1)) {
                StringBuilder sb2 = new StringBuilder();
                Name name = i0Var.getName();
                Intrinsics.checkExpressionValueIsNotNull(name, "typeParameter.name");
                sb2.append(t(name, false));
                sb2.append(" : ");
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                sb2.append(u(it));
                arrayList.add(sb2.toString());
            }
        }
        if (!arrayList.isEmpty()) {
            sb.append(" ");
            sb.append(W0("where"));
            sb.append(" ");
            CollectionsKt___CollectionsKt.joinTo$default(arrayList, sb, ", ", null, null, 0, null, null, 124, null);
        }
    }

    static /* synthetic */ void I0(DescriptorRendererImpl descriptorRendererImpl, StringBuilder sb, kotlin.reflect.jvm.internal.impl.descriptors.annotations.a aVar, AnnotationUseSiteTarget annotationUseSiteTarget, int i, Object obj) {
        if ((i & 2) != 0) {
            annotationUseSiteTarget = null;
        }
        descriptorRendererImpl.H0(sb, aVar, annotationUseSiteTarget);
    }

    private final String I1(String str, String str2, String str3, String str4, String str5) {
        if (StringsKt__StringsJVMKt.startsWith$default(str, str2, false, 2, null) && StringsKt__StringsJVMKt.startsWith$default(str3, str4, false, 2, null)) {
            int length = str2.length();
            if (str == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            String strSubstring = str.substring(length);
            Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.String).substring(startIndex)");
            int length2 = str4.length();
            if (str3 == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            String strSubstring2 = str3.substring(length2);
            Intrinsics.checkExpressionValueIsNotNull(strSubstring2, "(this as java.lang.String).substring(startIndex)");
            String str6 = str5 + strSubstring;
            if (Intrinsics.areEqual(strSubstring, strSubstring2)) {
                return str6;
            }
            if (A(strSubstring, strSubstring2)) {
                return str6 + '!';
            }
        }
        return null;
    }

    private final void J0(kotlin.reflect.jvm.internal.impl.descriptors.g gVar, StringBuilder sb) {
        List<i0> listO = gVar.o();
        Intrinsics.checkExpressionValueIsNotNull(listO, "classifier.declaredTypeParameters");
        f0 f0VarI = gVar.i();
        Intrinsics.checkExpressionValueIsNotNull(f0VarI, "classifier.typeConstructor");
        List<i0> parameters = f0VarI.getParameters();
        Intrinsics.checkExpressionValueIsNotNull(parameters, "classifier.typeConstructor.parameters");
        if (s0() && gVar.x() && parameters.size() > listO.size()) {
            sb.append(" /*captured type parameters: ");
            z1(sb, parameters.subList(listO.size(), parameters.size()));
            sb.append("*/");
        }
    }

    private final boolean J1(u uVar) {
        boolean z;
        if (!FunctionTypesKt.isBuiltinFunctionalType(uVar)) {
            return false;
        }
        List<g0> listG0 = uVar.G0();
        if ((listG0 instanceof Collection) && listG0.isEmpty()) {
            z = true;
        } else {
            Iterator<T> it = listG0.iterator();
            while (it.hasNext()) {
                if (((g0) it.next()).b()) {
                    z = false;
                    break;
                }
            }
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K0(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, StringBuilder sb) {
        kotlin.reflect.jvm.internal.impl.descriptors.c cVarA;
        boolean z = dVar.getKind() == ClassKind.ENUM_ENTRY;
        if (!m0()) {
            I0(this, sb, dVar, null, 2, null);
            if (!z) {
                m0 visibility = dVar.getVisibility();
                Intrinsics.checkExpressionValueIsNotNull(visibility, "klass.visibility");
                G1(visibility, sb);
            }
            if (dVar.getKind() != ClassKind.INTERFACE || dVar.p() != Modality.ABSTRACT) {
                ClassKind kind = dVar.getKind();
                Intrinsics.checkExpressionValueIsNotNull(kind, "klass.kind");
                if (!kind.e() || dVar.p() != Modality.FINAL) {
                    Modality modalityP = dVar.p();
                    Intrinsics.checkExpressionValueIsNotNull(modalityP, "klass.modality");
                    a1(modalityP, sb, A0(dVar));
                }
            }
            Y0(dVar, sb);
            c1(sb, S().contains(DescriptorRendererModifier.INNER) && dVar.x(), "inner");
            c1(sb, S().contains(DescriptorRendererModifier.DATA) && dVar.C0(), "data");
            c1(sb, S().contains(DescriptorRendererModifier.INLINE) && dVar.isInline(), "inline");
            L0(dVar, sb);
        }
        if (DescriptorUtils.isCompanionObject(dVar)) {
            N0(dVar, sb);
        } else {
            if (!m0()) {
                q1(sb);
            }
            d1(dVar, sb, true);
        }
        if (z) {
            return;
        }
        List<i0> listO = dVar.o();
        Intrinsics.checkExpressionValueIsNotNull(listO, "klass.declaredTypeParameters");
        A1(listO, sb, false);
        J0(dVar, sb);
        ClassKind kind2 = dVar.getKind();
        Intrinsics.checkExpressionValueIsNotNull(kind2, "klass.kind");
        if (!kind2.e() && G() && (cVarA = dVar.A()) != null) {
            sb.append(" ");
            I0(this, sb, cVarA, null, 2, null);
            m0 visibility2 = cVarA.getVisibility();
            Intrinsics.checkExpressionValueIsNotNull(visibility2, "primaryConstructor.visibility");
            G1(visibility2, sb);
            sb.append(W0("constructor"));
            List<ValueParameterDescriptor> listG = cVarA.g();
            Intrinsics.checkExpressionValueIsNotNull(listG, "primaryConstructor.valueParameters");
            E1(listG, cVarA.Y(), sb);
        }
        r1(dVar, sb);
        H1(listO, sb);
    }

    private final boolean K1(boolean z) {
        int i = kotlin.reflect.jvm.internal.impl.renderer.d.f9737e[W().ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return false;
                }
                throw new NoWhenBranchMatchedException();
            }
            if (z) {
                return false;
            }
        }
        return true;
    }

    private final DescriptorRendererImpl L() {
        return (DescriptorRendererImpl) this.l.getValue();
    }

    private final void L0(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, StringBuilder sb) {
        sb.append(W0(DescriptorRenderer.k.a(dVar)));
    }

    private final DescriptorRenderer M() {
        return (DescriptorRenderer) this.m.getValue();
    }

    private final void N0(i iVar, StringBuilder sb) {
        if (b0()) {
            if (m0()) {
                sb.append("companion object");
            }
            q1(sb);
            i iVarB = iVar.b();
            if (iVarB != null) {
                sb.append("of ");
                Name name = iVarB.getName();
                Intrinsics.checkExpressionValueIsNotNull(name, "containingDeclaration.name");
                sb.append(t(name, false));
            }
        }
        if (s0() || (!Intrinsics.areEqual(iVar.getName(), SpecialNames.c))) {
            if (!m0()) {
                q1(sb);
            }
            Name name2 = iVar.getName();
            Intrinsics.checkExpressionValueIsNotNull(name2, "descriptor.name");
            sb.append(t(name2, true));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String O0(kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVar) {
        if (gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.b) {
            return CollectionsKt___CollectionsKt.joinToString$default(((kotlin.reflect.jvm.internal.impl.resolve.constants.b) gVar).b(), ", ", "{", "}", 0, null, new e(), 24, null);
        }
        if (gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.a) {
            return StringsKt__StringsKt.removePrefix(DescriptorRenderer.renderAnnotation$default(this, ((kotlin.reflect.jvm.internal.impl.resolve.constants.a) gVar).b(), null, 2, null), (CharSequence) "@");
        }
        if (!(gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.q)) {
            return gVar.toString();
        }
        q.b bVarB = ((kotlin.reflect.jvm.internal.impl.resolve.constants.q) gVar).b();
        if (bVarB instanceof q.b.a) {
            return ((q.b.a) bVarB).a() + "::class";
        }
        if (!(bVarB instanceof q.b.C0543b)) {
            throw new NoWhenBranchMatchedException();
        }
        q.b.C0543b c0543b = (q.b.C0543b) bVarB;
        String strB = c0543b.b().b().b();
        Intrinsics.checkExpressionValueIsNotNull(strB, "classValue.classId.asSingleFqName().asString()");
        for (int i = 0; i < c0543b.a(); i++) {
            strB = "kotlin.Array<" + strB + '>';
        }
        return strB + "::class";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:6:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void P0(kotlin.reflect.jvm.internal.impl.descriptors.h r18, java.lang.StringBuilder r19) {
        /*
            Method dump skipped, instruction units count: 281
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl.P0(kotlin.reflect.jvm.internal.impl.descriptors.h, java.lang.StringBuilder):void");
    }

    private final void Q0(StringBuilder sb, u uVar) {
        I0(this, sb, uVar, null, 2, null);
        if (KotlinTypeKt.isError(uVar)) {
            if ((uVar instanceof l0) && Y()) {
                sb.append(((l0) uVar).Q0());
            } else if (!(uVar instanceof kotlin.reflect.jvm.internal.impl.types.o) || R()) {
                sb.append(uVar.H0().toString());
            } else {
                sb.append(((kotlin.reflect.jvm.internal.impl.types.o) uVar).Q0());
            }
            sb.append(u1(uVar.G0()));
        } else {
            x1(this, sb, uVar, null, 2, null);
        }
        if (uVar.I0()) {
            sb.append("?");
        }
        if (SpecialTypesKt.isDefinitelyNotNullType(uVar)) {
            sb.append("!!");
        }
    }

    private final String R0(String str) {
        int i = kotlin.reflect.jvm.internal.impl.renderer.d.b[n0().ordinal()];
        if (i == 1) {
            return str;
        }
        if (i != 2) {
            throw new NoWhenBranchMatchedException();
        }
        return "<font color=red><b>" + str + "</b></font>";
    }

    private final String S0(List<Name> list) {
        return B(RenderingUtilsKt.renderFqName(list));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T0(o oVar, StringBuilder sb) {
        if (!m0()) {
            if (!l0()) {
                I0(this, sb, oVar, null, 2, null);
                m0 visibility = oVar.getVisibility();
                Intrinsics.checkExpressionValueIsNotNull(visibility, "function.visibility");
                G1(visibility, sb);
                b1(oVar, sb);
                if (N()) {
                    Y0(oVar, sb);
                }
                g1(oVar, sb);
                if (N()) {
                    F0(oVar, sb);
                } else {
                    s1(oVar, sb);
                }
                X0(oVar, sb);
                if (s0()) {
                    if (oVar.w0()) {
                        sb.append("/*isHiddenToOvercomeSignatureClash*/ ");
                    }
                    if (oVar.y0()) {
                        sb.append("/*isHiddenForResolutionEverywhereBesideSupercalls*/ ");
                    }
                }
            }
            sb.append(W0("fun"));
            sb.append(" ");
            List<i0> typeParameters = oVar.getTypeParameters();
            Intrinsics.checkExpressionValueIsNotNull(typeParameters, "function.typeParameters");
            A1(typeParameters, sb, true);
            n1(oVar, sb);
        }
        d1(oVar, sb, true);
        List<ValueParameterDescriptor> listG = oVar.g();
        Intrinsics.checkExpressionValueIsNotNull(listG, "function.valueParameters");
        E1(listG, oVar.Y(), sb);
        o1(oVar, sb);
        u returnType = oVar.getReturnType();
        if (!v0() && (q0() || returnType == null || !KotlinBuiltIns.isUnit(returnType))) {
            sb.append(": ");
            sb.append(returnType == null ? "[NULL]" : u(returnType));
        }
        List<i0> typeParameters2 = oVar.getTypeParameters();
        Intrinsics.checkExpressionValueIsNotNull(typeParameters2, "function.typeParameters");
        H1(typeParameters2, sb);
    }

    private final void U0(StringBuilder sb, u uVar) {
        Name nameExtractParameterNameFromFunctionTypeArgument;
        int length = sb.length();
        I0(L(), sb, uVar, null, 2, null);
        boolean z = true;
        boolean z2 = sb.length() != length;
        boolean zIsSuspendFunctionType = FunctionTypesKt.isSuspendFunctionType(uVar);
        boolean zI0 = uVar.I0();
        u receiverTypeFromFunctionType = FunctionTypesKt.getReceiverTypeFromFunctionType(uVar);
        boolean z3 = zI0 || (z2 && receiverTypeFromFunctionType != null);
        if (z3) {
            if (zIsSuspendFunctionType) {
                sb.insert(length, '(');
            } else {
                if (z2) {
                    StringsKt___StringsKt.last(sb);
                    if (sb.charAt(StringsKt__StringsKt.getLastIndex(sb) - 1) != ')') {
                        sb.insert(StringsKt__StringsKt.getLastIndex(sb), "()");
                    }
                }
                sb.append("(");
            }
        }
        c1(sb, zIsSuspendFunctionType, "suspend");
        if (receiverTypeFromFunctionType != null) {
            if ((!J1(receiverTypeFromFunctionType) || receiverTypeFromFunctionType.I0()) && !z0(receiverTypeFromFunctionType)) {
                z = false;
            }
            if (z) {
                sb.append("(");
            }
            e1(sb, receiverTypeFromFunctionType);
            if (z) {
                sb.append(")");
            }
            sb.append(".");
        }
        sb.append("(");
        int i = 0;
        for (g0 g0Var : FunctionTypesKt.getValueParameterTypesFromFunctionType(uVar)) {
            if (i > 0) {
                sb.append(", ");
            }
            if (X()) {
                u type = g0Var.getType();
                Intrinsics.checkExpressionValueIsNotNull(type, "typeProjection.type");
                nameExtractParameterNameFromFunctionTypeArgument = FunctionTypesKt.extractParameterNameFromFunctionTypeArgument(type);
            } else {
                nameExtractParameterNameFromFunctionTypeArgument = null;
            }
            if (nameExtractParameterNameFromFunctionTypeArgument != null) {
                sb.append(t(nameExtractParameterNameFromFunctionTypeArgument, false));
                sb.append(": ");
            }
            sb.append(M().v(g0Var));
            i++;
        }
        sb.append(") ");
        sb.append(z());
        sb.append(" ");
        e1(sb, FunctionTypesKt.getReturnTypeFromFunctionType(uVar));
        if (z3) {
            sb.append(")");
        }
        if (zI0) {
            sb.append("?");
        }
    }

    private final void V0(k0 k0Var, StringBuilder sb) {
        kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> constant;
        if (!Q() || (constant = k0Var.i0()) == null) {
            return;
        }
        sb.append(" = ");
        Intrinsics.checkExpressionValueIsNotNull(constant, "constant");
        sb.append(B(O0(constant)));
    }

    private final String W0(String str) {
        int i = kotlin.reflect.jvm.internal.impl.renderer.d.a[n0().ordinal()];
        if (i == 1) {
            return str;
        }
        if (i != 2) {
            throw new NoWhenBranchMatchedException();
        }
        if (F()) {
            return str;
        }
        return "<b>" + str + "</b>";
    }

    private final void X0(CallableMemberDescriptor callableMemberDescriptor, StringBuilder sb) {
        if (S().contains(DescriptorRendererModifier.MEMBER_KIND) && s0() && callableMemberDescriptor.getKind() != CallableMemberDescriptor.Kind.DECLARATION) {
            sb.append("/*");
            String strName = callableMemberDescriptor.getKind().name();
            if (strName == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            String lowerCase = strName.toLowerCase();
            Intrinsics.checkExpressionValueIsNotNull(lowerCase, "(this as java.lang.String).toLowerCase()");
            sb.append(lowerCase);
            sb.append("*/ ");
        }
    }

    private final void Y0(kotlin.reflect.jvm.internal.impl.descriptors.q qVar, StringBuilder sb) {
        c1(sb, qVar.isExternal(), "external");
        c1(sb, S().contains(DescriptorRendererModifier.EXPECT) && qVar.c0(), "expect");
        c1(sb, S().contains(DescriptorRendererModifier.ACTUAL) && qVar.R(), "actual");
    }

    private final void a1(Modality modality, StringBuilder sb, Modality modality2) {
        if (f0() || modality != modality2) {
            boolean zContains = S().contains(DescriptorRendererModifier.MODALITY);
            String strName = modality.name();
            if (strName == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            String lowerCase = strName.toLowerCase();
            Intrinsics.checkExpressionValueIsNotNull(lowerCase, "(this as java.lang.String).toLowerCase()");
            c1(sb, zContains, lowerCase);
        }
    }

    private final void b1(CallableMemberDescriptor callableMemberDescriptor, StringBuilder sb) {
        if (DescriptorUtils.isTopLevelDeclaration(callableMemberDescriptor) && callableMemberDescriptor.p() == Modality.FINAL) {
            return;
        }
        if (V() == OverrideRenderingPolicy.RENDER_OVERRIDE && callableMemberDescriptor.p() == Modality.OPEN && C0(callableMemberDescriptor)) {
            return;
        }
        Modality modalityP = callableMemberDescriptor.p();
        Intrinsics.checkExpressionValueIsNotNull(modalityP, "callable.modality");
        a1(modalityP, sb, A0(callableMemberDescriptor));
    }

    private final void c1(StringBuilder sb, boolean z, String str) {
        if (z) {
            sb.append(W0(str));
            sb.append(" ");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d1(i iVar, StringBuilder sb, boolean z) {
        Name name = iVar.getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "descriptor.name");
        sb.append(t(name, z));
    }

    private final void e1(StringBuilder sb, u uVar) {
        kotlin.reflect.jvm.internal.impl.types.m0 m0VarK0 = uVar.K0();
        if (!(m0VarK0 instanceof kotlin.reflect.jvm.internal.impl.types.a)) {
            m0VarK0 = null;
        }
        kotlin.reflect.jvm.internal.impl.types.a aVar = (kotlin.reflect.jvm.internal.impl.types.a) m0VarK0;
        if (aVar == null) {
            f1(sb, uVar);
            return;
        }
        if (i0()) {
            f1(sb, aVar.D());
            return;
        }
        f1(sb, aVar.T0());
        if (j0()) {
            D0(sb, aVar);
        }
    }

    private final void f1(StringBuilder sb, u uVar) {
        if ((uVar instanceof n0) && getDebugMode() && !((n0) uVar).M0()) {
            sb.append("<Not computed yet>");
            return;
        }
        kotlin.reflect.jvm.internal.impl.types.m0 m0VarK0 = uVar.K0();
        if (m0VarK0 instanceof p) {
            sb.append(((p) m0VarK0).R0(this, this));
        } else if (m0VarK0 instanceof kotlin.reflect.jvm.internal.impl.types.y) {
            p1(sb, (kotlin.reflect.jvm.internal.impl.types.y) m0VarK0);
        }
    }

    private final void g1(CallableMemberDescriptor callableMemberDescriptor, StringBuilder sb) {
        if (S().contains(DescriptorRendererModifier.OVERRIDE) && C0(callableMemberDescriptor) && V() != OverrideRenderingPolicy.RENDER_OPEN) {
            c1(sb, true, "override");
            if (s0()) {
                sb.append("/*");
                sb.append(callableMemberDescriptor.d().size());
                sb.append("*/ ");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h1(s sVar, StringBuilder sb) {
        i1(sVar.e(), "package-fragment", sb);
        if (getDebugMode()) {
            sb.append(" in ");
            d1(sVar.b(), sb, false);
        }
    }

    private final void i1(FqName fqName, String str, StringBuilder sb) {
        sb.append(W0(str));
        FqNameUnsafe fqNameUnsafeJ = fqName.j();
        Intrinsics.checkExpressionValueIsNotNull(fqNameUnsafeJ, "fqName.toUnsafe()");
        String strS = s(fqNameUnsafeJ);
        if (strS.length() > 0) {
            sb.append(" ");
            sb.append(strS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j1(PackageViewDescriptor packageViewDescriptor, StringBuilder sb) {
        i1(packageViewDescriptor.e(), "package", sb);
        if (getDebugMode()) {
            sb.append(" in context of ");
            d1(packageViewDescriptor.v0(), sb, false);
        }
    }

    private final void k1(StringBuilder sb, w wVar) {
        w wVarC = wVar.c();
        if (wVarC != null) {
            k1(sb, wVarC);
            sb.append('.');
            Name name = wVar.b().getName();
            Intrinsics.checkExpressionValueIsNotNull(name, "possiblyInnerType.classifierDescriptor.name");
            sb.append(t(name, false));
        } else {
            f0 f0VarI = wVar.b().i();
            Intrinsics.checkExpressionValueIsNotNull(f0VarI, "possiblyInnerType.classi…escriptor.typeConstructor");
            sb.append(v1(f0VarI));
        }
        sb.append(u1(wVar.a()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l1(y yVar, StringBuilder sb) {
        if (!m0()) {
            if (!l0()) {
                m1(yVar, sb);
                m0 visibility = yVar.getVisibility();
                Intrinsics.checkExpressionValueIsNotNull(visibility, "property.visibility");
                G1(visibility, sb);
                boolean z = false;
                c1(sb, S().contains(DescriptorRendererModifier.CONST) && yVar.isConst(), "const");
                Y0(yVar, sb);
                b1(yVar, sb);
                g1(yVar, sb);
                if (S().contains(DescriptorRendererModifier.LATEINIT) && yVar.s0()) {
                    z = true;
                }
                c1(sb, z, "lateinit");
                X0(yVar, sb);
            }
            C1(this, yVar, sb, false, 4, null);
            List<i0> typeParameters = yVar.getTypeParameters();
            Intrinsics.checkExpressionValueIsNotNull(typeParameters, "property.typeParameters");
            A1(typeParameters, sb, true);
            n1(yVar, sb);
        }
        d1(yVar, sb, true);
        sb.append(": ");
        u type = yVar.getType();
        Intrinsics.checkExpressionValueIsNotNull(type, "property.type");
        sb.append(u(type));
        o1(yVar, sb);
        V0(yVar, sb);
        List<i0> typeParameters2 = yVar.getTypeParameters();
        Intrinsics.checkExpressionValueIsNotNull(typeParameters2, "property.typeParameters");
        H1(typeParameters2, sb);
    }

    private final void m1(y yVar, StringBuilder sb) {
        if (S().contains(DescriptorRendererModifier.ANNOTATIONS)) {
            I0(this, sb, yVar, null, 2, null);
            n it = yVar.r0();
            if (it != null) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                H0(sb, it, AnnotationUseSiteTarget.FIELD);
            }
            n it2 = yVar.L();
            if (it2 != null) {
                Intrinsics.checkExpressionValueIsNotNull(it2, "it");
                H0(sb, it2, AnnotationUseSiteTarget.PROPERTY_DELEGATE_FIELD);
            }
            if (Z() == PropertyAccessorRenderingPolicy.NONE) {
                z it3 = yVar.getGetter();
                if (it3 != null) {
                    Intrinsics.checkExpressionValueIsNotNull(it3, "it");
                    H0(sb, it3, AnnotationUseSiteTarget.PROPERTY_GETTER);
                }
                a0 setter = yVar.getSetter();
                if (setter != null) {
                    Intrinsics.checkExpressionValueIsNotNull(setter, "it");
                    H0(sb, setter, AnnotationUseSiteTarget.PROPERTY_SETTER);
                    Intrinsics.checkExpressionValueIsNotNull(setter, "setter");
                    List<ValueParameterDescriptor> listG = setter.g();
                    Intrinsics.checkExpressionValueIsNotNull(listG, "setter.valueParameters");
                    ValueParameterDescriptor it4 = (ValueParameterDescriptor) kotlin.collections.p.single((List) listG);
                    Intrinsics.checkExpressionValueIsNotNull(it4, "it");
                    H0(sb, it4, AnnotationUseSiteTarget.SETTER_PARAMETER);
                }
            }
        }
    }

    private final void n1(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, StringBuilder sb) {
        b0 b0VarK = aVar.K();
        if (b0VarK != null) {
            H0(sb, b0VarK, AnnotationUseSiteTarget.RECEIVER);
            u type = b0VarK.getType();
            Intrinsics.checkExpressionValueIsNotNull(type, "receiver.type");
            String strU = u(type);
            if (J1(type) && !TypeUtils.isNullableType(type)) {
                strU = '(' + strU + ')';
            }
            sb.append(strU);
            sb.append(".");
        }
    }

    private final void o1(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, StringBuilder sb) {
        b0 b0VarK;
        if (a0() && (b0VarK = aVar.K()) != null) {
            sb.append(" on ");
            u type = b0VarK.getType();
            Intrinsics.checkExpressionValueIsNotNull(type, "receiver.type");
            sb.append(u(type));
        }
    }

    private final void p1(StringBuilder sb, kotlin.reflect.jvm.internal.impl.types.y yVar) {
        if (Intrinsics.areEqual(yVar, TypeUtils.b) || TypeUtils.isDontCarePlaceholder(yVar)) {
            sb.append("???");
            return;
        }
        if (!ErrorUtils.isUninferredParameter(yVar)) {
            if (KotlinTypeKt.isError(yVar)) {
                Q0(sb, yVar);
                return;
            } else if (J1(yVar)) {
                U0(sb, yVar);
                return;
            } else {
                Q0(sb, yVar);
                return;
            }
        }
        if (!p0()) {
            sb.append("???");
            return;
        }
        f0 f0VarH0 = yVar.H0();
        if (f0VarH0 == null) {
            throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.types.ErrorUtils.UninferredParameterTypeConstructor");
        }
        i0 i0VarF = ((ErrorUtils.f) f0VarH0).f();
        Intrinsics.checkExpressionValueIsNotNull(i0VarF, "(type.constructor as Uni…).typeParameterDescriptor");
        String string = i0VarF.getName().toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "(type.constructor as Uni…escriptor.name.toString()");
        sb.append(R0(string));
    }

    private final void q1(StringBuilder sb) {
        int length = sb.length();
        if (length == 0 || sb.charAt(length - 1) != ' ') {
            sb.append(' ');
        }
    }

    private final void r1(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, StringBuilder sb) {
        if (w0() || KotlinBuiltIns.isNothing(dVar.n())) {
            return;
        }
        f0 f0VarI = dVar.i();
        Intrinsics.checkExpressionValueIsNotNull(f0VarI, "klass.typeConstructor");
        Collection<u> collectionH = f0VarI.h();
        Intrinsics.checkExpressionValueIsNotNull(collectionH, "klass.typeConstructor.supertypes");
        if (collectionH.isEmpty()) {
            return;
        }
        if (collectionH.size() == 1 && KotlinBuiltIns.isAnyOrNullableAny(collectionH.iterator().next())) {
            return;
        }
        q1(sb);
        sb.append(": ");
        CollectionsKt___CollectionsKt.joinTo$default(collectionH, sb, ", ", null, null, 0, null, new g(), 60, null);
    }

    private final void s1(o oVar, StringBuilder sb) {
        c1(sb, oVar.isSuspend(), "suspend");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t1(h0 h0Var, StringBuilder sb) {
        I0(this, sb, h0Var, null, 2, null);
        m0 visibility = h0Var.getVisibility();
        Intrinsics.checkExpressionValueIsNotNull(visibility, "typeAlias.visibility");
        G1(visibility, sb);
        Y0(h0Var, sb);
        sb.append(W0("typealias"));
        sb.append(" ");
        d1(h0Var, sb, true);
        List<i0> listO = h0Var.o();
        Intrinsics.checkExpressionValueIsNotNull(listO, "typeAlias.declaredTypeParameters");
        A1(listO, sb, false);
        J0(h0Var, sb);
        sb.append(" = ");
        sb.append(u(h0Var.o0()));
    }

    private final void w1(StringBuilder sb, u uVar, f0 f0Var) {
        w wVarBuildPossiblyInnerType = TypeParameterUtilsKt.buildPossiblyInnerType(uVar);
        if (wVarBuildPossiblyInnerType != null) {
            k1(sb, wVarBuildPossiblyInnerType);
        } else {
            sb.append(v1(f0Var));
            sb.append(u1(uVar.G0()));
        }
    }

    private final void x(StringBuilder sb, i iVar) {
        if ((iVar instanceof s) || (iVar instanceof PackageViewDescriptor)) {
            return;
        }
        if (iVar instanceof ModuleDescriptor) {
            sb.append(" is a module");
            return;
        }
        i iVarB = iVar.b();
        if (iVarB == null || (iVarB instanceof ModuleDescriptor)) {
            return;
        }
        sb.append(" ");
        sb.append(Z0("defined in"));
        sb.append(" ");
        FqNameUnsafe fqName = DescriptorUtils.getFqName(iVarB);
        Intrinsics.checkExpressionValueIsNotNull(fqName, "DescriptorUtils.getFqName(containingDeclaration)");
        sb.append(fqName.e() ? "root package" : s(fqName));
        if (u0() && (iVarB instanceof s) && (iVar instanceof l)) {
            d0 source = ((l) iVar).getSource();
            Intrinsics.checkExpressionValueIsNotNull(source, "descriptor.source");
            e0 e0VarB = source.b();
            Intrinsics.checkExpressionValueIsNotNull(e0VarB, "descriptor.source.containingFile");
            String name = e0VarB.getName();
            if (name != null) {
                sb.append(" ");
                sb.append(Z0("in file"));
                sb.append(" ");
                sb.append(name);
            }
        }
    }

    static /* synthetic */ void x1(DescriptorRendererImpl descriptorRendererImpl, StringBuilder sb, u uVar, f0 f0Var, int i, Object obj) {
        if ((i & 2) != 0) {
            f0Var = uVar.H0();
        }
        descriptorRendererImpl.w1(sb, uVar, f0Var);
    }

    private final void y(StringBuilder sb, List<? extends g0> list) {
        CollectionsKt___CollectionsKt.joinTo$default(list, sb, ", ", null, null, 0, null, new b(), 60, null);
    }

    private final String y0() {
        return B(">");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y1(i0 i0Var, StringBuilder sb, boolean z) {
        if (z) {
            sb.append(B0());
        }
        if (s0()) {
            sb.append("/*");
            sb.append(i0Var.h());
            sb.append("*/ ");
        }
        c1(sb, i0Var.t(), "reified");
        String strF = i0Var.j().f();
        boolean z2 = true;
        c1(sb, strF.length() > 0, strF);
        I0(this, sb, i0Var, null, 2, null);
        d1(i0Var, sb, z);
        int size = i0Var.getUpperBounds().size();
        if ((size > 1 && !z) || size == 1) {
            u upperBound = i0Var.getUpperBounds().iterator().next();
            if (!KotlinBuiltIns.isDefaultBound(upperBound)) {
                sb.append(" : ");
                Intrinsics.checkExpressionValueIsNotNull(upperBound, "upperBound");
                sb.append(u(upperBound));
            }
        } else if (z) {
            for (u upperBound2 : i0Var.getUpperBounds()) {
                if (!KotlinBuiltIns.isDefaultBound(upperBound2)) {
                    if (z2) {
                        sb.append(" : ");
                    } else {
                        sb.append(" & ");
                    }
                    Intrinsics.checkExpressionValueIsNotNull(upperBound2, "upperBound");
                    sb.append(u(upperBound2));
                    z2 = false;
                }
            }
        }
        if (z) {
            sb.append(y0());
        }
    }

    private final String z() {
        int i = kotlin.reflect.jvm.internal.impl.renderer.d.c[n0().ordinal()];
        if (i == 1) {
            return B("->");
        }
        if (i == 2) {
            return "&rarr;";
        }
        throw new NoWhenBranchMatchedException();
    }

    private final boolean z0(u uVar) {
        return FunctionTypesKt.isSuspendFunctionType(uVar) || !uVar.getAnnotations().isEmpty();
    }

    private final void z1(StringBuilder sb, List<? extends i0> list) {
        Iterator<? extends i0> it = list.iterator();
        while (it.hasNext()) {
            y1(it.next(), sb, false);
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
    }

    public boolean C() {
        return this.n.q();
    }

    public boolean D() {
        return this.n.r();
    }

    public Function1<AnnotationDescriptor, Boolean> E() {
        return this.n.s();
    }

    public boolean F() {
        return this.n.t();
    }

    public boolean G() {
        return this.n.u();
    }

    public kotlin.reflect.jvm.internal.impl.renderer.a H() {
        return this.n.v();
    }

    public Function1<ValueParameterDescriptor, String> I() {
        return this.n.w();
    }

    public boolean J() {
        return this.n.x();
    }

    public Set<FqName> K() {
        return this.n.y();
    }

    public String M0(kotlin.reflect.jvm.internal.impl.descriptors.f klass) {
        Intrinsics.checkParameterIsNotNull(klass, "klass");
        return ErrorUtils.isError(klass) ? klass.i().toString() : H().a(klass, this);
    }

    public boolean N() {
        return this.n.z();
    }

    public boolean O() {
        return this.n.A();
    }

    public boolean P() {
        return this.n.B();
    }

    public boolean Q() {
        return this.n.C();
    }

    public boolean R() {
        return this.n.D();
    }

    public Set<DescriptorRendererModifier> S() {
        return this.n.E();
    }

    public boolean T() {
        return this.n.F();
    }

    public final kotlin.reflect.jvm.internal.impl.renderer.e U() {
        return this.n;
    }

    public OverrideRenderingPolicy V() {
        return this.n.G();
    }

    public ParameterNameRenderingPolicy W() {
        return this.n.H();
    }

    public boolean X() {
        return this.n.I();
    }

    public boolean Y() {
        return this.n.J();
    }

    public PropertyAccessorRenderingPolicy Z() {
        return this.n.K();
    }

    public String Z0(String message) {
        Intrinsics.checkParameterIsNotNull(message, "message");
        int i = kotlin.reflect.jvm.internal.impl.renderer.d.f9736d[n0().ordinal()];
        if (i == 1) {
            return message;
        }
        if (i != 2) {
            throw new NoWhenBranchMatchedException();
        }
        return "<i>" + message + "</i>";
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public void a(boolean z) {
        this.n.a(z);
    }

    public boolean a0() {
        return this.n.L();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public void b(ParameterNameRenderingPolicy parameterNameRenderingPolicy) {
        Intrinsics.checkParameterIsNotNull(parameterNameRenderingPolicy, "<set-?>");
        this.n.b(parameterNameRenderingPolicy);
    }

    public boolean b0() {
        return this.n.M();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public void c(boolean z) {
        this.n.c(z);
    }

    public boolean c0() {
        return this.n.N();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public boolean d() {
        return this.n.d();
    }

    public boolean d0() {
        return this.n.O();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public void e(boolean z) {
        this.n.e(z);
    }

    public boolean e0() {
        return this.n.P();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public void f(boolean z) {
        this.n.f(z);
    }

    public boolean f0() {
        return this.n.Q();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public void g(RenderingFormat renderingFormat) {
        Intrinsics.checkParameterIsNotNull(renderingFormat, "<set-?>");
        this.n.g(renderingFormat);
    }

    public boolean g0() {
        return this.n.R();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public boolean getDebugMode() {
        return this.n.getDebugMode();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public void h(AnnotationArgumentsRenderingPolicy annotationArgumentsRenderingPolicy) {
        Intrinsics.checkParameterIsNotNull(annotationArgumentsRenderingPolicy, "<set-?>");
        this.n.h(annotationArgumentsRenderingPolicy);
    }

    public boolean h0() {
        return this.n.S();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public Set<FqName> i() {
        return this.n.i();
    }

    public boolean i0() {
        return this.n.T();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public AnnotationArgumentsRenderingPolicy j() {
        return this.n.j();
    }

    public boolean j0() {
        return this.n.U();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public void k(Set<FqName> set) {
        Intrinsics.checkParameterIsNotNull(set, "<set-?>");
        this.n.k(set);
    }

    public boolean k0() {
        return this.n.V();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public void l(Set<? extends DescriptorRendererModifier> set) {
        Intrinsics.checkParameterIsNotNull(set, "<set-?>");
        this.n.l(set);
    }

    public boolean l0() {
        return this.n.W();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public void m(kotlin.reflect.jvm.internal.impl.renderer.a aVar) {
        Intrinsics.checkParameterIsNotNull(aVar, "<set-?>");
        this.n.m(aVar);
    }

    public boolean m0() {
        return this.n.X();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public void n(boolean z) {
        this.n.n(z);
    }

    public RenderingFormat n0() {
        return this.n.Y();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public void o(boolean z) {
        this.n.o(z);
    }

    public Function1<u, u> o0() {
        return this.n.Z();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer
    public String p(i declarationDescriptor) {
        Intrinsics.checkParameterIsNotNull(declarationDescriptor, "declarationDescriptor");
        StringBuilder sb = new StringBuilder();
        declarationDescriptor.w(new a(), sb);
        if (t0()) {
            x(sb, declarationDescriptor);
        }
        String string = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public boolean p0() {
        return this.n.a0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer
    public String q(AnnotationDescriptor annotation, AnnotationUseSiteTarget annotationUseSiteTarget) {
        Intrinsics.checkParameterIsNotNull(annotation, "annotation");
        StringBuilder sb = new StringBuilder();
        sb.append('@');
        if (annotationUseSiteTarget != null) {
            sb.append(annotationUseSiteTarget.e() + CertificateUtil.DELIMITER);
        }
        u type = annotation.getType();
        sb.append(u(type));
        if (O()) {
            List<String> listG0 = G0(annotation);
            if (P() || (!listG0.isEmpty())) {
                CollectionsKt___CollectionsKt.joinTo$default(listG0, sb, ", ", "(", ")", 0, null, null, 112, null);
            }
        }
        if (s0() && (KotlinTypeKt.isError(type) || (type.H0().q() instanceof NotFoundClasses.b))) {
            sb.append(" /* annotation class not found */");
        }
        String string = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public boolean q0() {
        return this.n.b0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer
    public String r(String lowerRendered, String upperRendered, KotlinBuiltIns builtIns) {
        Intrinsics.checkParameterIsNotNull(lowerRendered, "lowerRendered");
        Intrinsics.checkParameterIsNotNull(upperRendered, "upperRendered");
        Intrinsics.checkParameterIsNotNull(builtIns, "builtIns");
        if (A(lowerRendered, upperRendered)) {
            if (!StringsKt__StringsJVMKt.startsWith$default(upperRendered, "(", false, 2, null)) {
                return lowerRendered + '!';
            }
            return '(' + lowerRendered + ")!";
        }
        kotlin.reflect.jvm.internal.impl.renderer.a aVarH = H();
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarW = builtIns.w();
        Intrinsics.checkExpressionValueIsNotNull(dVarW, "builtIns.collection");
        String strSubstringBefore$default = StringsKt__StringsKt.substringBefore$default(aVarH.a(dVarW, this), "Collection", (String) null, 2, (Object) null);
        String strI1 = I1(lowerRendered, strSubstringBefore$default + "Mutable", upperRendered, strSubstringBefore$default, strSubstringBefore$default + "(Mutable)");
        if (strI1 != null) {
            return strI1;
        }
        String strI12 = I1(lowerRendered, strSubstringBefore$default + "MutableMap.MutableEntry", upperRendered, strSubstringBefore$default + "Map.Entry", strSubstringBefore$default + "(Mutable)Map.(Mutable)Entry");
        if (strI12 != null) {
            return strI12;
        }
        kotlin.reflect.jvm.internal.impl.renderer.a aVarH2 = H();
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarK = builtIns.k();
        Intrinsics.checkExpressionValueIsNotNull(dVarK, "builtIns.array");
        String strSubstringBefore$default2 = StringsKt__StringsKt.substringBefore$default(aVarH2.a(dVarK, this), "Array", (String) null, 2, (Object) null);
        String strI13 = I1(lowerRendered, strSubstringBefore$default2 + B("Array<"), upperRendered, strSubstringBefore$default2 + B("Array<out "), strSubstringBefore$default2 + B("Array<(out) "));
        if (strI13 != null) {
            return strI13;
        }
        return '(' + lowerRendered + ".." + upperRendered + ')';
    }

    public DescriptorRenderer.l r0() {
        return this.n.c0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer
    public String s(FqNameUnsafe fqName) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        List<Name> listH = fqName.h();
        Intrinsics.checkExpressionValueIsNotNull(listH, "fqName.pathSegments()");
        return S0(listH);
    }

    public boolean s0() {
        return this.n.d0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public void setDebugMode(boolean z) {
        this.n.setDebugMode(z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer
    public String t(Name name, boolean z) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        String strB = B(RenderingUtilsKt.render(name));
        if (!F() || n0() != RenderingFormat.HTML || !z) {
            return strB;
        }
        return "<b>" + strB + "</b>";
    }

    public boolean t0() {
        return this.n.e0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer
    public String u(u type) {
        Intrinsics.checkParameterIsNotNull(type, "type");
        StringBuilder sb = new StringBuilder();
        e1(sb, o0().invoke(type));
        String string = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public boolean u0() {
        return this.n.f0();
    }

    public String u1(List<? extends g0> typeArguments) {
        Intrinsics.checkParameterIsNotNull(typeArguments, "typeArguments");
        if (typeArguments.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(B0());
        y(sb, typeArguments);
        sb.append(y0());
        String string = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer
    public String v(g0 typeProjection) {
        Intrinsics.checkParameterIsNotNull(typeProjection, "typeProjection");
        StringBuilder sb = new StringBuilder();
        y(sb, CollectionsKt__CollectionsJVMKt.listOf(typeProjection));
        String string = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public boolean v0() {
        return this.n.g0();
    }

    public String v1(f0 typeConstructor) {
        Intrinsics.checkParameterIsNotNull(typeConstructor, "typeConstructor");
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarQ = typeConstructor.q();
        if ((fVarQ instanceof i0) || (fVarQ instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) || (fVarQ instanceof h0)) {
            return M0(fVarQ);
        }
        if (fVarQ == null) {
            return typeConstructor.toString();
        }
        throw new IllegalStateException(("Unexpected classifier: " + fVarQ.getClass()).toString());
    }

    public boolean w0() {
        return this.n.h0();
    }

    public boolean x0() {
        return this.n.i0();
    }
}
