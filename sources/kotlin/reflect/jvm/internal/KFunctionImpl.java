package kotlin.reflect.jvm.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionBase;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.e0;
import kotlin.reflect.KFunction;
import kotlin.reflect.KParameter;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.FunctionWithAllInvokes;
import kotlin.reflect.jvm.internal.ReflectProperties;
import kotlin.reflect.jvm.internal.b;
import kotlin.reflect.jvm.internal.calls.AnnotationConstructorCaller;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.calls.CallerKt;
import kotlin.reflect.jvm.internal.calls.InlineClassAwareCallerKt;
import kotlin.reflect.jvm.internal.calls.b;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.InlineClassManglingRulesKt;

/* JADX INFO: compiled from: KFunctionImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class KFunctionImpl extends KCallableImpl<Object> implements FunctionBase<Object>, KFunction<Object>, FunctionWithAllInvokes {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final /* synthetic */ KProperty[] f8988e = {Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(KFunctionImpl.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(KFunctionImpl.class), "caller", "getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(KFunctionImpl.class), "defaultCaller", "getDefaultCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"))};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ReflectProperties.a f8989f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ReflectProperties.b f8990g;
    private final ReflectProperties.b h;
    private final KDeclarationContainerImpl i;
    private final String j;
    private final Object k;

    /* JADX INFO: compiled from: KFunctionImpl.kt */
    static final class a extends Lambda implements Function0<Caller<? extends Member>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Caller<Member> invoke() {
            Object objB;
            Caller callerD;
            kotlin.reflect.jvm.internal.b bVarG = r.b.g(KFunctionImpl.this.z());
            if (bVarG instanceof b.d) {
                if (KFunctionImpl.this.A()) {
                    Class<?> clsA = KFunctionImpl.this.x().a();
                    List<KParameter> parameters = KFunctionImpl.this.getParameters();
                    ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(parameters, 10));
                    Iterator<T> it = parameters.iterator();
                    while (it.hasNext()) {
                        String name = ((KParameter) it.next()).getName();
                        if (name == null) {
                            Intrinsics.throwNpe();
                        }
                        arrayList.add(name);
                    }
                    return new AnnotationConstructorCaller(clsA, arrayList, AnnotationConstructorCaller.CallMode.POSITIONAL_CALL, AnnotationConstructorCaller.Origin.KOTLIN, null, 16, null);
                }
                objB = KFunctionImpl.this.x().o(((b.d) bVarG).b());
            } else if (bVarG instanceof b.e) {
                b.e eVar = (b.e) bVarG;
                objB = KFunctionImpl.this.x().x(eVar.c(), eVar.b());
            } else if (bVarG instanceof b.c) {
                objB = ((b.c) bVarG).b();
            } else {
                if (!(bVarG instanceof b.C0507b)) {
                    if (!(bVarG instanceof b.a)) {
                        throw new NoWhenBranchMatchedException();
                    }
                    List<Method> listB = ((b.a) bVarG).b();
                    Class<?> clsA2 = KFunctionImpl.this.x().a();
                    ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listB, 10));
                    for (Method it2 : listB) {
                        Intrinsics.checkExpressionValueIsNotNull(it2, "it");
                        arrayList2.add(it2.getName());
                    }
                    return new AnnotationConstructorCaller(clsA2, arrayList2, AnnotationConstructorCaller.CallMode.POSITIONAL_CALL, AnnotationConstructorCaller.Origin.JAVA, listB);
                }
                objB = ((b.C0507b) bVarG).b();
            }
            if (objB instanceof Constructor) {
                KFunctionImpl kFunctionImpl = KFunctionImpl.this;
                callerD = kFunctionImpl.C((Constructor) objB, kFunctionImpl.z());
            } else {
                if (!(objB instanceof Method)) {
                    throw new o("Could not compute caller for function: " + KFunctionImpl.this.z() + " (member = " + objB + ')');
                }
                Method method = (Method) objB;
                callerD = !Modifier.isStatic(method.getModifiers()) ? KFunctionImpl.this.D(method) : KFunctionImpl.this.z().getAnnotations().b(UtilKt.getJVM_STATIC()) != null ? KFunctionImpl.this.E(method) : KFunctionImpl.this.F(method);
            }
            return InlineClassAwareCallerKt.createInlineClassAwareCallerIfNeeded$default(callerD, KFunctionImpl.this.z(), false, 2, null);
        }
    }

    /* JADX INFO: compiled from: KFunctionImpl.kt */
    static final class b extends Lambda implements Function0<Caller<? extends Member>> {
        b() {
            super(0);
        }

        /* JADX WARN: Removed duplicated region for block: B:45:0x0138  */
        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final kotlin.reflect.jvm.internal.calls.Caller<java.lang.reflect.Member> invoke() {
            /*
                Method dump skipped, instruction units count: 335
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.KFunctionImpl.b.invoke():kotlin.reflect.jvm.internal.calls.Caller");
        }
    }

    /* JADX INFO: compiled from: KFunctionImpl.kt */
    static final class c extends Lambda implements Function0<kotlin.reflect.jvm.internal.impl.descriptors.o> {
        final /* synthetic */ String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str) {
            super(0);
            this.b = str;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final kotlin.reflect.jvm.internal.impl.descriptors.o invoke() {
            return KFunctionImpl.this.x().w(this.b, KFunctionImpl.this.j);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public KFunctionImpl(KDeclarationContainerImpl container, String name, String signature, Object obj) {
        this(container, name, signature, null, obj);
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(signature, "signature");
    }

    private KFunctionImpl(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2, kotlin.reflect.jvm.internal.impl.descriptors.o oVar, Object obj) {
        this.i = kDeclarationContainerImpl;
        this.j = str2;
        this.k = obj;
        this.f8989f = ReflectProperties.lazySoft(oVar, new c(str));
        this.f8990g = ReflectProperties.lazy(new a());
        this.h = ReflectProperties.lazy(new b());
    }

    /* synthetic */ KFunctionImpl(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2, kotlin.reflect.jvm.internal.impl.descriptors.o oVar, Object obj, int i, kotlin.jvm.internal.n nVar) {
        this(kDeclarationContainerImpl, str, str2, oVar, (i & 16) != 0 ? kotlin.jvm.internal.l.NO_RECEIVER : obj);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public KFunctionImpl(KDeclarationContainerImpl container, kotlin.reflect.jvm.internal.impl.descriptors.o descriptor) {
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
        String strE = descriptor.getName().e();
        Intrinsics.checkExpressionValueIsNotNull(strE, "descriptor.name.asString()");
        this(container, strE, r.b.g(descriptor).a(), descriptor, null, 16, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlin.reflect.jvm.internal.calls.b<Constructor<?>> C(Constructor<?> constructor, kotlin.reflect.jvm.internal.impl.descriptors.o oVar) {
        return InlineClassManglingRulesKt.shouldHideConstructorDueToInlineClassTypeValueParameters(oVar) ? B() ? new b.a(constructor, G()) : new b.C0509b(constructor) : B() ? new b.c(constructor, G()) : new b.e(constructor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b.h D(Method method) {
        return B() ? new b.h.a(method, G()) : new b.h.d(method);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b.h E(Method method) {
        return B() ? new b.h.C0512b(method) : new b.h.e(method);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b.h F(Method method) {
        return B() ? new b.h.c(method, G()) : new b.h.f(method);
    }

    private final Object G() {
        return InlineClassAwareCallerKt.coerceToExpectedReceiverType(this.k, z());
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public boolean B() {
        return !Intrinsics.areEqual(this.k, kotlin.jvm.internal.l.NO_RECEIVER);
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.descriptors.o z() {
        return (kotlin.reflect.jvm.internal.impl.descriptors.o) this.f8989f.b(this, f8988e[0]);
    }

    public boolean equals(Object obj) {
        KFunctionImpl kFunctionImplAsKFunctionImpl = UtilKt.asKFunctionImpl(obj);
        return kFunctionImplAsKFunctionImpl != null && Intrinsics.areEqual(x(), kFunctionImplAsKFunctionImpl.x()) && Intrinsics.areEqual(getName(), kFunctionImplAsKFunctionImpl.getName()) && Intrinsics.areEqual(this.j, kFunctionImplAsKFunctionImpl.j) && Intrinsics.areEqual(this.k, kFunctionImplAsKFunctionImpl.k);
    }

    @Override // kotlin.jvm.functions.Function7
    public Object g(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7) {
        return FunctionWithAllInvokes.DefaultImpls.invoke(this, obj, obj2, obj3, obj4, obj5, obj6, obj7);
    }

    @Override // kotlin.jvm.internal.FunctionBase
    public int getArity() {
        return CallerKt.getArity(w());
    }

    @Override // kotlin.reflect.KCallable
    public String getName() {
        String strE = z().getName().e();
        Intrinsics.checkExpressionValueIsNotNull(strE, "descriptor.name.asString()");
        return strE;
    }

    public int hashCode() {
        return (((x().hashCode() * 31) + getName().hashCode()) * 31) + this.j.hashCode();
    }

    @Override // kotlin.jvm.functions.Function0
    public Object invoke() {
        return FunctionWithAllInvokes.DefaultImpls.invoke(this);
    }

    @Override // kotlin.jvm.functions.Function1
    public Object invoke(Object obj) {
        return FunctionWithAllInvokes.DefaultImpls.invoke(this, obj);
    }

    @Override // kotlin.jvm.functions.Function2
    public Object invoke(Object obj, Object obj2) {
        return FunctionWithAllInvokes.DefaultImpls.invoke(this, obj, obj2);
    }

    @Override // kotlin.jvm.functions.Function3
    public Object invoke(Object obj, Object obj2, Object obj3) {
        return FunctionWithAllInvokes.DefaultImpls.invoke(this, obj, obj2, obj3);
    }

    @Override // kotlin.jvm.functions.Function4
    public Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        return FunctionWithAllInvokes.DefaultImpls.invoke(this, obj, obj2, obj3, obj4);
    }

    @Override // kotlin.jvm.functions.Function5
    public Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        return FunctionWithAllInvokes.DefaultImpls.invoke(this, obj, obj2, obj3, obj4, obj5);
    }

    @Override // kotlin.jvm.functions.Function6
    public Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        return FunctionWithAllInvokes.DefaultImpls.invoke(this, obj, obj2, obj3, obj4, obj5, obj6);
    }

    @Override // kotlin.reflect.KFunction
    public boolean isExternal() {
        return z().isExternal();
    }

    @Override // kotlin.reflect.KFunction
    public boolean isInfix() {
        return z().isInfix();
    }

    @Override // kotlin.reflect.KFunction
    public boolean isInline() {
        return z().isInline();
    }

    @Override // kotlin.reflect.KFunction
    public boolean isOperator() {
        return z().isOperator();
    }

    @Override // kotlin.reflect.KCallable
    public boolean isSuspend() {
        return z().isSuspend();
    }

    public String toString() {
        return q.b.d(z());
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public Caller<?> w() {
        return (Caller) this.f8990g.b(this, f8988e[1]);
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public KDeclarationContainerImpl x() {
        return this.i;
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public Caller<?> y() {
        return (Caller) this.h.b(this, f8988e[2]);
    }
}
