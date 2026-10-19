package kotlin.reflect.jvm.internal.impl.renderer;

import com.json.o2;
import java.lang.reflect.Field;
import java.util.Set;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.e0;
import kotlin.jvm.internal.x;
import kotlin.properties.Delegates;
import kotlin.properties.ObservableProperty;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KClass;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions;
import kotlin.reflect.jvm.internal.impl.renderer.a;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: DescriptorRendererOptionsImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class e implements DescriptorRendererOptions {
    static final /* synthetic */ KProperty[] a = {Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "classifierNamePolicy", "getClassifierNamePolicy()Lorg/jetbrains/kotlin/renderer/ClassifierNamePolicy;")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "withDefinedIn", "getWithDefinedIn()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "withSourceFileForTopLevel", "getWithSourceFileForTopLevel()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "modifiers", "getModifiers()Ljava/util/Set;")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "startFromName", "getStartFromName()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "startFromDeclarationKeyword", "getStartFromDeclarationKeyword()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), o2.d.c, "getDebugMode()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "classWithPrimaryConstructor", "getClassWithPrimaryConstructor()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "verbose", "getVerbose()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "unitReturnType", "getUnitReturnType()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "withoutReturnType", "getWithoutReturnType()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "enhancedTypes", "getEnhancedTypes()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "normalizedVisibilities", "getNormalizedVisibilities()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "renderDefaultVisibility", "getRenderDefaultVisibility()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "renderDefaultModality", "getRenderDefaultModality()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "renderConstructorDelegation", "getRenderConstructorDelegation()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "renderPrimaryConstructorParametersAsProperties", "getRenderPrimaryConstructorParametersAsProperties()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "actualPropertiesInPrimaryConstructor", "getActualPropertiesInPrimaryConstructor()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "uninferredTypeParameterAsName", "getUninferredTypeParameterAsName()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "includePropertyConstant", "getIncludePropertyConstant()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "withoutTypeParameters", "getWithoutTypeParameters()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "withoutSuperTypes", "getWithoutSuperTypes()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "typeNormalizer", "getTypeNormalizer()Lkotlin/jvm/functions/Function1;")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "defaultParameterValueRenderer", "getDefaultParameterValueRenderer()Lkotlin/jvm/functions/Function1;")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "secondaryConstructorsAsPrimary", "getSecondaryConstructorsAsPrimary()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "overrideRenderingPolicy", "getOverrideRenderingPolicy()Lorg/jetbrains/kotlin/renderer/OverrideRenderingPolicy;")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "valueParametersHandler", "getValueParametersHandler()Lorg/jetbrains/kotlin/renderer/DescriptorRenderer$ValueParametersHandler;")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "textFormat", "getTextFormat()Lorg/jetbrains/kotlin/renderer/RenderingFormat;")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "parameterNameRenderingPolicy", "getParameterNameRenderingPolicy()Lorg/jetbrains/kotlin/renderer/ParameterNameRenderingPolicy;")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "receiverAfterName", "getReceiverAfterName()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "renderCompanionObjectName", "getRenderCompanionObjectName()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "propertyAccessorRenderingPolicy", "getPropertyAccessorRenderingPolicy()Lorg/jetbrains/kotlin/renderer/PropertyAccessorRenderingPolicy;")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "renderDefaultAnnotationArguments", "getRenderDefaultAnnotationArguments()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "eachAnnotationOnNewLine", "getEachAnnotationOnNewLine()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "excludedAnnotationClasses", "getExcludedAnnotationClasses()Ljava/util/Set;")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "excludedTypeAnnotationClasses", "getExcludedTypeAnnotationClasses()Ljava/util/Set;")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "annotationFilter", "getAnnotationFilter()Lkotlin/jvm/functions/Function1;")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "annotationArgumentsRenderingPolicy", "getAnnotationArgumentsRenderingPolicy()Lorg/jetbrains/kotlin/renderer/AnnotationArgumentsRenderingPolicy;")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "alwaysRenderModifiers", "getAlwaysRenderModifiers()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "renderConstructorKeyword", "getRenderConstructorKeyword()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "renderUnabbreviatedType", "getRenderUnabbreviatedType()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "renderTypeExpansions", "getRenderTypeExpansions()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "includeAdditionalModifiers", "getIncludeAdditionalModifiers()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "parameterNamesInFunctionalTypes", "getParameterNamesInFunctionalTypes()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "renderFunctionContracts", "getRenderFunctionContracts()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "presentableUnresolvedTypes", "getPresentableUnresolvedTypes()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "boldOnlyForNamesInHtml", "getBoldOnlyForNamesInHtml()Z")), Reflection.mutableProperty1(new x(Reflection.getOrCreateKotlinClass(e.class), "informativeErrorType", "getInformativeErrorType()Z"))};
    private final ReadWriteProperty A;
    private final ReadWriteProperty B;
    private final ReadWriteProperty C;
    private final ReadWriteProperty D;
    private final ReadWriteProperty E;
    private final ReadWriteProperty F;
    private final ReadWriteProperty G;
    private final ReadWriteProperty H;
    private final ReadWriteProperty I;
    private final ReadWriteProperty J;
    private final ReadWriteProperty K;
    private final ReadWriteProperty L;
    private final ReadWriteProperty M;
    private final ReadWriteProperty N;
    private final ReadWriteProperty O;
    private final ReadWriteProperty P;
    private final ReadWriteProperty Q;
    private final ReadWriteProperty R;
    private final ReadWriteProperty S;
    private final ReadWriteProperty T;
    private final ReadWriteProperty U;
    private final ReadWriteProperty V;
    private final ReadWriteProperty W;
    private final ReadWriteProperty X;
    private boolean b;
    private final ReadWriteProperty c = l0(a.c.a);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ReadWriteProperty f9738d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ReadWriteProperty f9739e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ReadWriteProperty f9740f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ReadWriteProperty f9741g;
    private final ReadWriteProperty h;
    private final ReadWriteProperty i;
    private final ReadWriteProperty j;
    private final ReadWriteProperty k;
    private final ReadWriteProperty l;
    private final ReadWriteProperty m;
    private final ReadWriteProperty n;
    private final ReadWriteProperty o;
    private final ReadWriteProperty p;
    private final ReadWriteProperty q;
    private final ReadWriteProperty r;
    private final ReadWriteProperty s;
    private final ReadWriteProperty t;
    private final ReadWriteProperty u;
    private final ReadWriteProperty v;
    private final ReadWriteProperty w;
    private final ReadWriteProperty x;
    private final ReadWriteProperty y;
    private final ReadWriteProperty z;

    /* JADX INFO: compiled from: DescriptorRendererOptionsImpl.kt */
    static final class a extends Lambda implements Function1<ValueParameterDescriptor, String> {
        public static final a a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke(ValueParameterDescriptor it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return "...";
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: Delegates.kt */
    public static final class b<T> extends ObservableProperty<T> {
        final /* synthetic */ Object a;
        final /* synthetic */ e b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Object obj, Object obj2, e eVar) {
            super(obj2);
            this.a = obj;
            this.b = eVar;
        }

        @Override // kotlin.properties.ObservableProperty
        protected boolean beforeChange(KProperty<?> property, T t, T t2) {
            Intrinsics.checkParameterIsNotNull(property, "property");
            if (this.b.j0()) {
                throw new IllegalStateException("Cannot modify readonly DescriptorRendererOptions");
            }
            return true;
        }
    }

    /* JADX INFO: compiled from: DescriptorRendererOptionsImpl.kt */
    static final class c extends Lambda implements Function1<u, u> {
        public static final c a = new c();

        c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final u invoke(u it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return it;
        }
    }

    public e() {
        Boolean bool = Boolean.TRUE;
        this.f9738d = l0(bool);
        this.f9739e = l0(bool);
        this.f9740f = l0(DescriptorRendererModifier.n);
        Boolean bool2 = Boolean.FALSE;
        this.f9741g = l0(bool2);
        this.h = l0(bool2);
        this.i = l0(bool2);
        this.j = l0(bool2);
        this.k = l0(bool2);
        this.l = l0(bool);
        this.m = l0(bool2);
        this.n = l0(bool2);
        this.o = l0(bool2);
        this.p = l0(bool);
        this.q = l0(bool);
        this.r = l0(bool2);
        this.s = l0(bool2);
        this.t = l0(bool2);
        this.u = l0(bool2);
        this.v = l0(bool2);
        this.w = l0(bool2);
        this.x = l0(bool2);
        this.y = l0(c.a);
        this.z = l0(a.a);
        this.A = l0(bool);
        this.B = l0(OverrideRenderingPolicy.RENDER_OPEN);
        this.C = l0(DescriptorRenderer.l.a.a);
        this.D = l0(RenderingFormat.PLAIN);
        this.E = l0(ParameterNameRenderingPolicy.ALL);
        this.F = l0(bool2);
        this.G = l0(bool2);
        this.H = l0(PropertyAccessorRenderingPolicy.DEBUG);
        this.I = l0(bool2);
        this.J = l0(bool2);
        this.K = l0(SetsKt__SetsKt.emptySet());
        this.L = l0(f.b.a());
        this.M = l0(null);
        this.N = l0(AnnotationArgumentsRenderingPolicy.NO_ARGUMENTS);
        this.O = l0(bool2);
        this.P = l0(bool);
        this.Q = l0(bool);
        this.R = l0(bool2);
        this.S = l0(bool);
        this.T = l0(bool);
        this.U = l0(bool2);
        this.V = l0(bool2);
        this.W = l0(bool2);
        this.X = l0(bool);
    }

    private final <T> ReadWriteProperty<e, T> l0(T t) {
        Delegates delegates = Delegates.a;
        return new b(t, t, this);
    }

    public boolean A() {
        return DescriptorRendererOptions.DefaultImpls.getIncludeAnnotationArguments(this);
    }

    public boolean B() {
        return DescriptorRendererOptions.DefaultImpls.getIncludeEmptyAnnotationArguments(this);
    }

    public boolean C() {
        return ((Boolean) this.v.getValue(this, a[19])).booleanValue();
    }

    public boolean D() {
        return ((Boolean) this.X.getValue(this, a[47])).booleanValue();
    }

    public Set<DescriptorRendererModifier> E() {
        return (Set) this.f9740f.getValue(this, a[3]);
    }

    public boolean F() {
        return ((Boolean) this.o.getValue(this, a[12])).booleanValue();
    }

    public OverrideRenderingPolicy G() {
        return (OverrideRenderingPolicy) this.B.getValue(this, a[25]);
    }

    public ParameterNameRenderingPolicy H() {
        return (ParameterNameRenderingPolicy) this.E.getValue(this, a[28]);
    }

    public boolean I() {
        return ((Boolean) this.T.getValue(this, a[43])).booleanValue();
    }

    public boolean J() {
        return ((Boolean) this.V.getValue(this, a[45])).booleanValue();
    }

    public PropertyAccessorRenderingPolicy K() {
        return (PropertyAccessorRenderingPolicy) this.H.getValue(this, a[31]);
    }

    public boolean L() {
        return ((Boolean) this.F.getValue(this, a[29])).booleanValue();
    }

    public boolean M() {
        return ((Boolean) this.G.getValue(this, a[30])).booleanValue();
    }

    public boolean N() {
        return ((Boolean) this.r.getValue(this, a[15])).booleanValue();
    }

    public boolean O() {
        return ((Boolean) this.P.getValue(this, a[39])).booleanValue();
    }

    public boolean P() {
        return ((Boolean) this.I.getValue(this, a[32])).booleanValue();
    }

    public boolean Q() {
        return ((Boolean) this.q.getValue(this, a[14])).booleanValue();
    }

    public boolean R() {
        return ((Boolean) this.p.getValue(this, a[13])).booleanValue();
    }

    public boolean S() {
        return ((Boolean) this.s.getValue(this, a[16])).booleanValue();
    }

    public boolean T() {
        return ((Boolean) this.R.getValue(this, a[41])).booleanValue();
    }

    public boolean U() {
        return ((Boolean) this.Q.getValue(this, a[40])).booleanValue();
    }

    public boolean V() {
        return ((Boolean) this.A.getValue(this, a[24])).booleanValue();
    }

    public boolean W() {
        return ((Boolean) this.h.getValue(this, a[5])).booleanValue();
    }

    public boolean X() {
        return ((Boolean) this.f9741g.getValue(this, a[4])).booleanValue();
    }

    public RenderingFormat Y() {
        return (RenderingFormat) this.D.getValue(this, a[27]);
    }

    public Function1<u, u> Z() {
        return (Function1) this.y.getValue(this, a[22]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public void a(boolean z) {
        this.f9741g.setValue(this, a[4], Boolean.valueOf(z));
    }

    public boolean a0() {
        return ((Boolean) this.u.getValue(this, a[18])).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public void b(ParameterNameRenderingPolicy parameterNameRenderingPolicy) {
        Intrinsics.checkParameterIsNotNull(parameterNameRenderingPolicy, "<set-?>");
        this.E.setValue(this, a[28], parameterNameRenderingPolicy);
    }

    public boolean b0() {
        return ((Boolean) this.l.getValue(this, a[9])).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public void c(boolean z) {
        this.f9738d.setValue(this, a[1], Boolean.valueOf(z));
    }

    public DescriptorRenderer.l c0() {
        return (DescriptorRenderer.l) this.C.getValue(this, a[26]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public boolean d() {
        return ((Boolean) this.n.getValue(this, a[11])).booleanValue();
    }

    public boolean d0() {
        return ((Boolean) this.k.getValue(this, a[8])).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public void e(boolean z) {
        this.x.setValue(this, a[21], Boolean.valueOf(z));
    }

    public boolean e0() {
        return ((Boolean) this.f9738d.getValue(this, a[1])).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public void f(boolean z) {
        this.F.setValue(this, a[29], Boolean.valueOf(z));
    }

    public boolean f0() {
        return ((Boolean) this.f9739e.getValue(this, a[2])).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public void g(RenderingFormat renderingFormat) {
        Intrinsics.checkParameterIsNotNull(renderingFormat, "<set-?>");
        this.D.setValue(this, a[27], renderingFormat);
    }

    public boolean g0() {
        return ((Boolean) this.m.getValue(this, a[10])).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public boolean getDebugMode() {
        return ((Boolean) this.i.getValue(this, a[6])).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public void h(AnnotationArgumentsRenderingPolicy annotationArgumentsRenderingPolicy) {
        Intrinsics.checkParameterIsNotNull(annotationArgumentsRenderingPolicy, "<set-?>");
        this.N.setValue(this, a[37], annotationArgumentsRenderingPolicy);
    }

    public boolean h0() {
        return ((Boolean) this.x.getValue(this, a[21])).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public Set<FqName> i() {
        return (Set) this.L.getValue(this, a[35]);
    }

    public boolean i0() {
        return ((Boolean) this.w.getValue(this, a[20])).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public AnnotationArgumentsRenderingPolicy j() {
        return (AnnotationArgumentsRenderingPolicy) this.N.getValue(this, a[37]);
    }

    public final boolean j0() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public void k(Set<FqName> set) {
        Intrinsics.checkParameterIsNotNull(set, "<set-?>");
        this.L.setValue(this, a[35], set);
    }

    public final void k0() {
        this.b = true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public void l(Set<? extends DescriptorRendererModifier> set) {
        Intrinsics.checkParameterIsNotNull(set, "<set-?>");
        this.f9740f.setValue(this, a[3], set);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public void m(kotlin.reflect.jvm.internal.impl.renderer.a aVar) {
        Intrinsics.checkParameterIsNotNull(aVar, "<set-?>");
        this.c.setValue(this, a[0], aVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public void n(boolean z) {
        this.G.setValue(this, a[30], Boolean.valueOf(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public void o(boolean z) {
        this.w.setValue(this, a[20], Boolean.valueOf(z));
    }

    public final e p() {
        e eVar = new e();
        for (Field field : e.class.getDeclaredFields()) {
            Intrinsics.checkExpressionValueIsNotNull(field, "field");
            if ((field.getModifiers() & 8) == 0) {
                field.setAccessible(true);
                Object obj = field.get(this);
                if (!(obj instanceof ObservableProperty)) {
                    obj = null;
                }
                ObservableProperty observableProperty = (ObservableProperty) obj;
                if (observableProperty != null) {
                    String name = field.getName();
                    Intrinsics.checkExpressionValueIsNotNull(name, "field.name");
                    StringsKt__StringsJVMKt.startsWith$default(name, "is", false, 2, null);
                    KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(e.class);
                    String name2 = field.getName();
                    StringBuilder sb = new StringBuilder();
                    sb.append("get");
                    String name3 = field.getName();
                    Intrinsics.checkExpressionValueIsNotNull(name3, "field.name");
                    sb.append(StringsKt__StringsJVMKt.capitalize(name3));
                    field.set(eVar, eVar.l0(observableProperty.getValue(this, new e0(orCreateKotlinClass, name2, sb.toString()))));
                }
            }
        }
        return eVar;
    }

    public boolean q() {
        return ((Boolean) this.t.getValue(this, a[17])).booleanValue();
    }

    public boolean r() {
        return ((Boolean) this.O.getValue(this, a[38])).booleanValue();
    }

    public Function1<AnnotationDescriptor, Boolean> s() {
        return (Function1) this.M.getValue(this, a[36]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public void setDebugMode(boolean z) {
        this.i.setValue(this, a[6], Boolean.valueOf(z));
    }

    public boolean t() {
        return ((Boolean) this.W.getValue(this, a[46])).booleanValue();
    }

    public boolean u() {
        return ((Boolean) this.j.getValue(this, a[7])).booleanValue();
    }

    public kotlin.reflect.jvm.internal.impl.renderer.a v() {
        return (kotlin.reflect.jvm.internal.impl.renderer.a) this.c.getValue(this, a[0]);
    }

    public Function1<ValueParameterDescriptor, String> w() {
        return (Function1) this.z.getValue(this, a[23]);
    }

    public boolean x() {
        return ((Boolean) this.J.getValue(this, a[33])).booleanValue();
    }

    public Set<FqName> y() {
        return (Set) this.K.getValue(this, a[34]);
    }

    public boolean z() {
        return ((Boolean) this.S.getValue(this, a[42])).booleanValue();
    }
}
