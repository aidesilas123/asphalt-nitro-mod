package kotlin.reflect.jvm.internal.impl.renderer;

import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationUseSiteTarget;
import kotlin.reflect.jvm.internal.impl.descriptors.h0;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.renderer.a;
import kotlin.reflect.jvm.internal.impl.types.g0;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.v;

/* JADX INFO: compiled from: DescriptorRenderer.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class DescriptorRenderer {
    public static final DescriptorRenderer a;
    public static final DescriptorRenderer b;
    public static final DescriptorRenderer c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final DescriptorRenderer f9725d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final DescriptorRenderer f9726e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final DescriptorRenderer f9727f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final DescriptorRenderer f9728g;
    public static final DescriptorRenderer h;
    public static final DescriptorRenderer i;
    public static final DescriptorRenderer j;
    public static final k k;

    /* JADX INFO: compiled from: DescriptorRenderer.kt */
    static final class a extends Lambda implements Function1<DescriptorRendererOptions, v> {
        public static final a a = new a();

        a() {
            super(1);
        }

        public final void a(DescriptorRendererOptions receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.c(false);
            receiver.l(SetsKt__SetsKt.emptySet());
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(DescriptorRendererOptions descriptorRendererOptions) {
            a(descriptorRendererOptions);
            return v.a;
        }
    }

    /* JADX INFO: compiled from: DescriptorRenderer.kt */
    static final class b extends Lambda implements Function1<DescriptorRendererOptions, v> {
        public static final b a = new b();

        b() {
            super(1);
        }

        public final void a(DescriptorRendererOptions receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.c(false);
            receiver.l(SetsKt__SetsKt.emptySet());
            receiver.e(true);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(DescriptorRendererOptions descriptorRendererOptions) {
            a(descriptorRendererOptions);
            return v.a;
        }
    }

    /* JADX INFO: compiled from: DescriptorRenderer.kt */
    static final class c extends Lambda implements Function1<DescriptorRendererOptions, v> {
        public static final c a = new c();

        c() {
            super(1);
        }

        public final void a(DescriptorRendererOptions receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.c(false);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(DescriptorRendererOptions descriptorRendererOptions) {
            a(descriptorRendererOptions);
            return v.a;
        }
    }

    /* JADX INFO: compiled from: DescriptorRenderer.kt */
    static final class d extends Lambda implements Function1<DescriptorRendererOptions, v> {
        public static final d a = new d();

        d() {
            super(1);
        }

        public final void a(DescriptorRendererOptions receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.l(SetsKt__SetsKt.emptySet());
            receiver.m(a.b.a);
            receiver.b(ParameterNameRenderingPolicy.ONLY_NON_SYNTHESIZED);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(DescriptorRendererOptions descriptorRendererOptions) {
            a(descriptorRendererOptions);
            return v.a;
        }
    }

    /* JADX INFO: compiled from: DescriptorRenderer.kt */
    static final class e extends Lambda implements Function1<DescriptorRendererOptions, v> {
        public static final e a = new e();

        e() {
            super(1);
        }

        public final void a(DescriptorRendererOptions receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.setDebugMode(true);
            receiver.m(a.C0542a.a);
            receiver.l(DescriptorRendererModifier.o);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(DescriptorRendererOptions descriptorRendererOptions) {
            a(descriptorRendererOptions);
            return v.a;
        }
    }

    /* JADX INFO: compiled from: DescriptorRenderer.kt */
    static final class f extends Lambda implements Function1<DescriptorRendererOptions, v> {
        public static final f a = new f();

        f() {
            super(1);
        }

        public final void a(DescriptorRendererOptions receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.l(DescriptorRendererModifier.n);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(DescriptorRendererOptions descriptorRendererOptions) {
            a(descriptorRendererOptions);
            return v.a;
        }
    }

    /* JADX INFO: compiled from: DescriptorRenderer.kt */
    static final class g extends Lambda implements Function1<DescriptorRendererOptions, v> {
        public static final g a = new g();

        g() {
            super(1);
        }

        public final void a(DescriptorRendererOptions receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.l(DescriptorRendererModifier.o);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(DescriptorRendererOptions descriptorRendererOptions) {
            a(descriptorRendererOptions);
            return v.a;
        }
    }

    /* JADX INFO: compiled from: DescriptorRenderer.kt */
    static final class h extends Lambda implements Function1<DescriptorRendererOptions, v> {
        public static final h a = new h();

        h() {
            super(1);
        }

        public final void a(DescriptorRendererOptions receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.g(RenderingFormat.HTML);
            receiver.l(DescriptorRendererModifier.o);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(DescriptorRendererOptions descriptorRendererOptions) {
            a(descriptorRendererOptions);
            return v.a;
        }
    }

    /* JADX INFO: compiled from: DescriptorRenderer.kt */
    static final class i extends Lambda implements Function1<DescriptorRendererOptions, v> {
        public static final i a = new i();

        i() {
            super(1);
        }

        public final void a(DescriptorRendererOptions receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.c(false);
            receiver.l(SetsKt__SetsKt.emptySet());
            receiver.m(a.b.a);
            receiver.o(true);
            receiver.b(ParameterNameRenderingPolicy.NONE);
            receiver.f(true);
            receiver.n(true);
            receiver.e(true);
            receiver.a(true);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(DescriptorRendererOptions descriptorRendererOptions) {
            a(descriptorRendererOptions);
            return v.a;
        }
    }

    /* JADX INFO: compiled from: DescriptorRenderer.kt */
    static final class j extends Lambda implements Function1<DescriptorRendererOptions, v> {
        public static final j a = new j();

        j() {
            super(1);
        }

        public final void a(DescriptorRendererOptions receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.m(a.b.a);
            receiver.b(ParameterNameRenderingPolicy.ONLY_NON_SYNTHESIZED);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(DescriptorRendererOptions descriptorRendererOptions) {
            a(descriptorRendererOptions);
            return v.a;
        }
    }

    /* JADX INFO: compiled from: DescriptorRenderer.kt */
    public static final class k {
        private k() {
        }

        public /* synthetic */ k(n nVar) {
            this();
        }

        public final String a(kotlin.reflect.jvm.internal.impl.descriptors.g classifier) {
            Intrinsics.checkParameterIsNotNull(classifier, "classifier");
            if (classifier instanceof h0) {
                return "typealias";
            }
            if (!(classifier instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
                throw new AssertionError("Unexpected classifier: " + classifier);
            }
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) classifier;
            if (dVar.U()) {
                return "companion object";
            }
            switch (kotlin.reflect.jvm.internal.impl.renderer.b.a[dVar.getKind().ordinal()]) {
                case 1:
                    return "class";
                case 2:
                    return "interface";
                case 3:
                    return "enum class";
                case 4:
                    return "object";
                case 5:
                    return "annotation class";
                case 6:
                    return "enum entry";
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }

        public final DescriptorRenderer b(Function1<? super DescriptorRendererOptions, v> changeOptions) {
            Intrinsics.checkParameterIsNotNull(changeOptions, "changeOptions");
            kotlin.reflect.jvm.internal.impl.renderer.e eVar = new kotlin.reflect.jvm.internal.impl.renderer.e();
            changeOptions.invoke(eVar);
            eVar.k0();
            return new DescriptorRendererImpl(eVar);
        }
    }

    /* JADX INFO: compiled from: DescriptorRenderer.kt */
    public interface l {

        /* JADX INFO: compiled from: DescriptorRenderer.kt */
        public static final class a implements l {
            public static final a a = new a();

            private a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer.l
            public void a(ValueParameterDescriptor parameter, int i, int i2, StringBuilder builder) {
                Intrinsics.checkParameterIsNotNull(parameter, "parameter");
                Intrinsics.checkParameterIsNotNull(builder, "builder");
            }

            @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer.l
            public void b(int i, StringBuilder builder) {
                Intrinsics.checkParameterIsNotNull(builder, "builder");
                builder.append("(");
            }

            @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer.l
            public void c(ValueParameterDescriptor parameter, int i, int i2, StringBuilder builder) {
                Intrinsics.checkParameterIsNotNull(parameter, "parameter");
                Intrinsics.checkParameterIsNotNull(builder, "builder");
                if (i != i2 - 1) {
                    builder.append(", ");
                }
            }

            @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer.l
            public void d(int i, StringBuilder builder) {
                Intrinsics.checkParameterIsNotNull(builder, "builder");
                builder.append(")");
            }
        }

        void a(ValueParameterDescriptor valueParameterDescriptor, int i, int i2, StringBuilder sb);

        void b(int i, StringBuilder sb);

        void c(ValueParameterDescriptor valueParameterDescriptor, int i, int i2, StringBuilder sb);

        void d(int i, StringBuilder sb);
    }

    static {
        k kVar = new k(null);
        k = kVar;
        a = kVar.b(c.a);
        b = kVar.b(a.a);
        c = kVar.b(b.a);
        f9725d = kVar.b(d.a);
        f9726e = kVar.b(i.a);
        f9727f = kVar.b(f.a);
        f9728g = kVar.b(g.a);
        h = kVar.b(j.a);
        i = kVar.b(e.a);
        j = kVar.b(h.a);
    }

    public static /* synthetic */ String renderAnnotation$default(DescriptorRenderer descriptorRenderer, AnnotationDescriptor annotationDescriptor, AnnotationUseSiteTarget annotationUseSiteTarget, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: renderAnnotation");
        }
        if ((i2 & 2) != 0) {
            annotationUseSiteTarget = null;
        }
        return descriptorRenderer.q(annotationDescriptor, annotationUseSiteTarget);
    }

    public abstract String p(kotlin.reflect.jvm.internal.impl.descriptors.i iVar);

    public abstract String q(AnnotationDescriptor annotationDescriptor, AnnotationUseSiteTarget annotationUseSiteTarget);

    public abstract String r(String str, String str2, KotlinBuiltIns kotlinBuiltIns);

    public abstract String s(FqNameUnsafe fqNameUnsafe);

    public abstract String t(Name name, boolean z);

    public abstract String u(u uVar);

    public abstract String v(g0 g0Var);

    public final DescriptorRenderer w(Function1<? super DescriptorRendererOptions, v> changeOptions) {
        Intrinsics.checkParameterIsNotNull(changeOptions, "changeOptions");
        kotlin.reflect.jvm.internal.impl.renderer.e eVarP = ((DescriptorRendererImpl) this).U().p();
        changeOptions.invoke(eVarP);
        eVarP.k0();
        return new DescriptorRendererImpl(eVarP);
    }
}
