package kotlin.reflect.jvm.internal;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.e0;
import kotlin.reflect.KParameter;
import kotlin.reflect.KProperty;
import kotlin.reflect.KType;
import kotlin.reflect.jvm.internal.ReflectProperties;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.v;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: KParameterImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class KParameterImpl implements KParameter {
    static final /* synthetic */ KProperty[] a = {Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(KParameterImpl.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/ParameterDescriptor;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(KParameterImpl.class), "annotations", "getAnnotations()Ljava/util/List;"))};
    private final ReflectProperties.a b;
    private final ReflectProperties.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final KCallableImpl<?> f8998d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f8999e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final KParameter.Kind f9000f;

    /* JADX INFO: compiled from: KParameterImpl.kt */
    static final class a extends Lambda implements Function0<List<? extends Annotation>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<Annotation> invoke() {
            return UtilKt.computeAnnotations(KParameterImpl.this.g());
        }
    }

    /* JADX INFO: compiled from: KParameterImpl.kt */
    static final class b extends Lambda implements Function0<Type> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Type invoke() {
            v vVarG = KParameterImpl.this.g();
            if (!(vVarG instanceof b0) || !Intrinsics.areEqual(UtilKt.getInstanceReceiverParameter(KParameterImpl.this.a().z()), vVarG) || KParameterImpl.this.a().z().getKind() != CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
                return KParameterImpl.this.a().w().a().get(KParameterImpl.this.j());
            }
            kotlin.reflect.jvm.internal.impl.descriptors.i iVarB = KParameterImpl.this.a().z().b();
            if (iVarB == null) {
                throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
            }
            Class<?> javaClass = UtilKt.toJavaClass((kotlin.reflect.jvm.internal.impl.descriptors.d) iVarB);
            if (javaClass != null) {
                return javaClass;
            }
            throw new o("Cannot determine receiver Java type of inherited declaration: " + vVarG);
        }
    }

    public KParameterImpl(KCallableImpl<?> callable, int i, KParameter.Kind kind, Function0<? extends v> computeDescriptor) {
        Intrinsics.checkParameterIsNotNull(callable, "callable");
        Intrinsics.checkParameterIsNotNull(kind, "kind");
        Intrinsics.checkParameterIsNotNull(computeDescriptor, "computeDescriptor");
        this.f8998d = callable;
        this.f8999e = i;
        this.f9000f = kind;
        this.b = ReflectProperties.lazySoft(computeDescriptor);
        this.c = ReflectProperties.lazySoft(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final v g() {
        return (v) this.b.b(this, a[0]);
    }

    public final KCallableImpl<?> a() {
        return this.f8998d;
    }

    @Override // kotlin.reflect.KParameter
    public boolean e() {
        v vVarG = g();
        if (!(vVarG instanceof ValueParameterDescriptor)) {
            vVarG = null;
        }
        ValueParameterDescriptor valueParameterDescriptor = (ValueParameterDescriptor) vVarG;
        if (valueParameterDescriptor != null) {
            return DescriptorUtilsKt.declaresOrInheritsDefaultValue(valueParameterDescriptor);
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (obj instanceof KParameterImpl) {
            KParameterImpl kParameterImpl = (KParameterImpl) obj;
            if (Intrinsics.areEqual(this.f8998d, kParameterImpl.f8998d) && Intrinsics.areEqual(g(), kParameterImpl.g())) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.KAnnotatedElement
    public List<Annotation> getAnnotations() {
        return (List) this.c.b(this, a[1]);
    }

    @Override // kotlin.reflect.KParameter
    public KParameter.Kind getKind() {
        return this.f9000f;
    }

    @Override // kotlin.reflect.KParameter
    public String getName() {
        v vVarG = g();
        if (!(vVarG instanceof ValueParameterDescriptor)) {
            vVarG = null;
        }
        ValueParameterDescriptor valueParameterDescriptor = (ValueParameterDescriptor) vVarG;
        if (valueParameterDescriptor == null || valueParameterDescriptor.b().Y()) {
            return null;
        }
        Name name = valueParameterDescriptor.getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "valueParameter.name");
        if (name.h()) {
            return null;
        }
        return name.e();
    }

    @Override // kotlin.reflect.KParameter
    public KType getType() {
        u type = g().getType();
        Intrinsics.checkExpressionValueIsNotNull(type, "descriptor.type");
        return new KTypeImpl(type, new b());
    }

    public int hashCode() {
        return (this.f8998d.hashCode() * 31) + g().hashCode();
    }

    public int j() {
        return this.f8999e;
    }

    public String toString() {
        return q.b.f(this);
    }
}
