package kotlin.reflect.jvm.internal;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KCallable;
import kotlin.reflect.KParameter;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.KVisibility;
import kotlin.reflect.jvm.ReflectJvmMapping;
import kotlin.reflect.jvm.internal.ReflectProperties;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: KCallableImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class KCallableImpl<R> implements KCallable<R> {
    private final ReflectProperties.a<List<Annotation>> a;
    private final ReflectProperties.a<ArrayList<KParameter>> b;
    private final ReflectProperties.a<KTypeImpl> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ReflectProperties.a<List<n>> f8981d;

    /* JADX INFO: compiled from: KCallableImpl.kt */
    static final class a extends Lambda implements Function0<List<? extends Annotation>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<Annotation> invoke() {
            return UtilKt.computeAnnotations(KCallableImpl.this.z());
        }
    }

    /* JADX INFO: compiled from: KCallableImpl.kt */
    static final class b extends Lambda implements Function0<ArrayList<KParameter>> {

        /* JADX INFO: compiled from: Comparisons.kt */
        public static final class a<T> implements Comparator<T> {
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt__ComparisonsKt.compareValues(((KParameter) t).getName(), ((KParameter) t2).getName());
            }
        }

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.KCallableImpl$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: KCallableImpl.kt */
        static final class C0503b extends Lambda implements Function0<b0> {
            final /* synthetic */ b0 a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0503b(b0 b0Var) {
                super(0);
                this.a = b0Var;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final b0 invoke() {
                return this.a;
            }
        }

        /* JADX INFO: compiled from: KCallableImpl.kt */
        static final class c extends Lambda implements Function0<b0> {
            final /* synthetic */ b0 a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            c(b0 b0Var) {
                super(0);
                this.a = b0Var;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final b0 invoke() {
                return this.a;
            }
        }

        /* JADX INFO: compiled from: KCallableImpl.kt */
        static final class d extends Lambda implements Function0<ValueParameterDescriptor> {
            final /* synthetic */ CallableMemberDescriptor a;
            final /* synthetic */ int b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            d(CallableMemberDescriptor callableMemberDescriptor, int i) {
                super(0);
                this.a = callableMemberDescriptor;
                this.b = i;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final ValueParameterDescriptor invoke() {
                ValueParameterDescriptor valueParameterDescriptor = this.a.g().get(this.b);
                Intrinsics.checkExpressionValueIsNotNull(valueParameterDescriptor, "descriptor.valueParameters[i]");
                return valueParameterDescriptor;
            }
        }

        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final ArrayList<KParameter> invoke() {
            int i;
            CallableMemberDescriptor callableMemberDescriptorZ = KCallableImpl.this.z();
            ArrayList<KParameter> arrayList = new ArrayList<>();
            int i2 = 0;
            if (KCallableImpl.this.B()) {
                i = 0;
            } else {
                b0 instanceReceiverParameter = UtilKt.getInstanceReceiverParameter(callableMemberDescriptorZ);
                if (instanceReceiverParameter != null) {
                    arrayList.add(new KParameterImpl(KCallableImpl.this, 0, KParameter.Kind.a, new C0503b(instanceReceiverParameter)));
                    i = 1;
                } else {
                    i = 0;
                }
                b0 b0VarK = callableMemberDescriptorZ.K();
                if (b0VarK != null) {
                    arrayList.add(new KParameterImpl(KCallableImpl.this, i, KParameter.Kind.b, new c(b0VarK)));
                    i++;
                }
            }
            List<ValueParameterDescriptor> listG = callableMemberDescriptorZ.g();
            Intrinsics.checkExpressionValueIsNotNull(listG, "descriptor.valueParameters");
            int size = listG.size();
            while (i2 < size) {
                arrayList.add(new KParameterImpl(KCallableImpl.this, i, KParameter.Kind.c, new d(callableMemberDescriptorZ, i2)));
                i2++;
                i++;
            }
            if (KCallableImpl.this.A() && (callableMemberDescriptorZ instanceof kotlin.reflect.jvm.internal.impl.load.java.descriptors.b) && arrayList.size() > 1) {
                CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new a());
            }
            arrayList.trimToSize();
            return arrayList;
        }
    }

    /* JADX INFO: compiled from: KCallableImpl.kt */
    static final class c extends Lambda implements Function0<KTypeImpl> {

        /* JADX INFO: compiled from: KCallableImpl.kt */
        static final class a extends Lambda implements Function0<Type> {
            a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final Type invoke() {
                Type typeV = KCallableImpl.this.v();
                return typeV != null ? typeV : KCallableImpl.this.w().getReturnType();
            }
        }

        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final KTypeImpl invoke() {
            u returnType = KCallableImpl.this.z().getReturnType();
            if (returnType == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(returnType, "descriptor.returnType!!");
            return new KTypeImpl(returnType, new a());
        }
    }

    /* JADX INFO: compiled from: KCallableImpl.kt */
    static final class d extends Lambda implements Function0<List<? extends n>> {
        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<n> invoke() {
            List<i0> typeParameters = KCallableImpl.this.z().getTypeParameters();
            Intrinsics.checkExpressionValueIsNotNull(typeParameters, "descriptor.typeParameters");
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(typeParameters, 10));
            Iterator<T> it = typeParameters.iterator();
            while (it.hasNext()) {
                arrayList.add(new n((i0) it.next()));
            }
            return arrayList;
        }
    }

    public KCallableImpl() {
        ReflectProperties.a<List<Annotation>> aVarLazySoft = ReflectProperties.lazySoft(new a());
        Intrinsics.checkExpressionValueIsNotNull(aVarLazySoft, "ReflectProperties.lazySo…or.computeAnnotations() }");
        this.a = aVarLazySoft;
        ReflectProperties.a<ArrayList<KParameter>> aVarLazySoft2 = ReflectProperties.lazySoft(new b());
        Intrinsics.checkExpressionValueIsNotNull(aVarLazySoft2, "ReflectProperties.lazySo…ze()\n        result\n    }");
        this.b = aVarLazySoft2;
        ReflectProperties.a<KTypeImpl> aVarLazySoft3 = ReflectProperties.lazySoft(new c());
        Intrinsics.checkExpressionValueIsNotNull(aVarLazySoft3, "ReflectProperties.lazySo…eturnType\n        }\n    }");
        this.c = aVarLazySoft3;
        ReflectProperties.a<List<n>> aVarLazySoft4 = ReflectProperties.lazySoft(new d());
        Intrinsics.checkExpressionValueIsNotNull(aVarLazySoft4, "ReflectProperties.lazySo…KTypeParameterImpl)\n    }");
        this.f8981d = aVarLazySoft4;
    }

    private final R l(Map<KParameter, ? extends Object> map) throws kotlin.reflect.full.a {
        Object obj;
        List<KParameter> parameters = getParameters();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(parameters, 10));
        for (KParameter kParameter : parameters) {
            if (map.containsKey(kParameter)) {
                obj = map.get(kParameter);
                if (obj == null) {
                    throw new IllegalArgumentException("Annotation argument value cannot be null (" + kParameter + ')');
                }
            } else {
                if (!kParameter.e()) {
                    throw new IllegalArgumentException("No argument provided for a required parameter: " + kParameter);
                }
                obj = null;
            }
            arrayList.add(obj);
        }
        Caller<?> callerY = y();
        if (callerY == null) {
            throw new o("This callable does not support a default call: " + z());
        }
        try {
            Object[] array = arrayList.toArray(new Object[0]);
            if (array != null) {
                return (R) callerY.call(array);
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        } catch (IllegalAccessException e2) {
            throw new kotlin.reflect.full.a(e2);
        }
    }

    private final Object u(Type type) {
        if (!(type instanceof Class) || !((Class) type).isPrimitive()) {
            return null;
        }
        if (Intrinsics.areEqual(type, Boolean.TYPE)) {
            return Boolean.FALSE;
        }
        if (Intrinsics.areEqual(type, Character.TYPE)) {
            return Character.valueOf((char) 0);
        }
        if (Intrinsics.areEqual(type, Byte.TYPE)) {
            return Byte.valueOf((byte) 0);
        }
        if (Intrinsics.areEqual(type, Short.TYPE)) {
            return Short.valueOf((short) 0);
        }
        if (Intrinsics.areEqual(type, Integer.TYPE)) {
            return 0;
        }
        if (Intrinsics.areEqual(type, Float.TYPE)) {
            return Float.valueOf(0.0f);
        }
        if (Intrinsics.areEqual(type, Long.TYPE)) {
            return 0L;
        }
        if (Intrinsics.areEqual(type, Double.TYPE)) {
            return Double.valueOf(0.0d);
        }
        if (Intrinsics.areEqual(type, Void.TYPE)) {
            throw new IllegalStateException("Parameter with void type is illegal");
        }
        throw new UnsupportedOperationException("Unknown primitive: " + type);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Type v() {
        Type[] lowerBounds;
        CallableMemberDescriptor callableMemberDescriptorZ = z();
        if (!(callableMemberDescriptorZ instanceof kotlin.reflect.jvm.internal.impl.descriptors.o)) {
            callableMemberDescriptorZ = null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.o oVar = (kotlin.reflect.jvm.internal.impl.descriptors.o) callableMemberDescriptorZ;
        if (oVar == null || !oVar.isSuspend()) {
            return null;
        }
        Object objLastOrNull = kotlin.collections.p.lastOrNull((List<? extends Object>) w().a());
        if (!(objLastOrNull instanceof ParameterizedType)) {
            objLastOrNull = null;
        }
        ParameterizedType parameterizedType = (ParameterizedType) objLastOrNull;
        if (!Intrinsics.areEqual(parameterizedType != null ? parameterizedType.getRawType() : null, Continuation.class)) {
            return null;
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        Intrinsics.checkExpressionValueIsNotNull(actualTypeArguments, "continuationType.actualTypeArguments");
        Object objSingle = kotlin.collections.k.single(actualTypeArguments);
        if (!(objSingle instanceof WildcardType)) {
            objSingle = null;
        }
        WildcardType wildcardType = (WildcardType) objSingle;
        if (wildcardType == null || (lowerBounds = wildcardType.getLowerBounds()) == null) {
            return null;
        }
        return (Type) kotlin.collections.k.first(lowerBounds);
    }

    protected final boolean A() {
        return Intrinsics.areEqual(getName(), "<init>") && x().a().isAnnotation();
    }

    public abstract boolean B();

    @Override // kotlin.reflect.KCallable
    public R call(Object... args) throws kotlin.reflect.full.a {
        Intrinsics.checkParameterIsNotNull(args, "args");
        try {
            return (R) w().call(args);
        } catch (IllegalAccessException e2) {
            throw new kotlin.reflect.full.a(e2);
        }
    }

    @Override // kotlin.reflect.KCallable
    public R callBy(Map<KParameter, ? extends Object> args) {
        Intrinsics.checkParameterIsNotNull(args, "args");
        return A() ? l(args) : o(args, null);
    }

    @Override // kotlin.reflect.KAnnotatedElement
    public List<Annotation> getAnnotations() {
        List<Annotation> listC = this.a.c();
        Intrinsics.checkExpressionValueIsNotNull(listC, "_annotations()");
        return listC;
    }

    @Override // kotlin.reflect.KCallable
    public List<KParameter> getParameters() {
        ArrayList<KParameter> arrayListC = this.b.c();
        Intrinsics.checkExpressionValueIsNotNull(arrayListC, "_parameters()");
        return arrayListC;
    }

    @Override // kotlin.reflect.KCallable
    public KType getReturnType() {
        KTypeImpl kTypeImplC = this.c.c();
        Intrinsics.checkExpressionValueIsNotNull(kTypeImplC, "_returnType()");
        return kTypeImplC;
    }

    @Override // kotlin.reflect.KCallable
    public List<KTypeParameter> getTypeParameters() {
        List<n> listC = this.f8981d.c();
        Intrinsics.checkExpressionValueIsNotNull(listC, "_typeParameters()");
        return listC;
    }

    @Override // kotlin.reflect.KCallable
    public KVisibility getVisibility() {
        m0 visibility = z().getVisibility();
        Intrinsics.checkExpressionValueIsNotNull(visibility, "descriptor.visibility");
        return UtilKt.toKVisibility(visibility);
    }

    @Override // kotlin.reflect.KCallable
    public boolean isAbstract() {
        return z().p() == Modality.ABSTRACT;
    }

    @Override // kotlin.reflect.KCallable
    public boolean isFinal() {
        return z().p() == Modality.FINAL;
    }

    @Override // kotlin.reflect.KCallable
    public boolean isOpen() {
        return z().p() == Modality.OPEN;
    }

    public final R o(Map<KParameter, ? extends Object> args, Continuation<?> continuation) throws kotlin.reflect.full.a {
        Intrinsics.checkParameterIsNotNull(args, "args");
        List<KParameter> parameters = getParameters();
        ArrayList arrayList = new ArrayList(parameters.size());
        ArrayList arrayList2 = new ArrayList(1);
        int i = 0;
        boolean z = false;
        int i2 = 0;
        for (KParameter kParameter : parameters) {
            if (i != 0 && i % 32 == 0) {
                arrayList2.add(Integer.valueOf(i2));
                i2 = 0;
            }
            if (args.containsKey(kParameter)) {
                arrayList.add(args.get(kParameter));
            } else {
                if (!kParameter.e()) {
                    throw new IllegalArgumentException("No argument provided for a required parameter: " + kParameter);
                }
                arrayList.add(u(ReflectJvmMapping.getJavaType(kParameter.getType())));
                i2 = (1 << (i % 32)) | i2;
                z = true;
            }
            if (kParameter.getKind() == KParameter.Kind.c) {
                i++;
            }
        }
        if (continuation != null) {
            arrayList.add(continuation);
        }
        if (!z) {
            Object[] array = arrayList.toArray(new Object[0]);
            if (array != null) {
                return call(Arrays.copyOf(array, array.length));
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        arrayList2.add(Integer.valueOf(i2));
        Caller<?> callerY = y();
        if (callerY == null) {
            throw new o("This callable does not support a default call: " + z());
        }
        arrayList.addAll(arrayList2);
        arrayList.add(null);
        try {
            Object[] array2 = arrayList.toArray(new Object[0]);
            if (array2 != null) {
                return (R) callerY.call(array2);
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        } catch (IllegalAccessException e2) {
            throw new kotlin.reflect.full.a(e2);
        }
    }

    public abstract Caller<?> w();

    public abstract KDeclarationContainerImpl x();

    public abstract Caller<?> y();

    public abstract CallableMemberDescriptor z();
}
