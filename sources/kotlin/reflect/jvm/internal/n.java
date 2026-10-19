package kotlin.reflect.jvm.internal;

import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.NotImplementedError;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.e0;
import kotlin.reflect.KProperty;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.KVariance;
import kotlin.reflect.jvm.internal.ReflectProperties;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: KTypeParameterImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class n implements KTypeParameter, e {
    static final /* synthetic */ KProperty[] a = {Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(n.class), "upperBounds", "getUpperBounds()Ljava/util/List;"))};
    private final ReflectProperties.a b;
    private final i0 c;

    /* JADX INFO: compiled from: KTypeParameterImpl.kt */
    static final class a extends Lambda implements Function0<List<? extends KTypeImpl>> {

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.n$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: KTypeParameterImpl.kt */
        static final class C0558a extends Lambda implements Function0 {
            C0558a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final Void invoke() {
                throw new NotImplementedError("An operation is not implemented: " + ("Java type is not yet supported for type parameters: " + n.this.getDescriptor()));
            }
        }

        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<KTypeImpl> invoke() {
            List<u> upperBounds = n.this.getDescriptor().getUpperBounds();
            Intrinsics.checkExpressionValueIsNotNull(upperBounds, "descriptor.upperBounds");
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(upperBounds, 10));
            for (u kotlinType : upperBounds) {
                Intrinsics.checkExpressionValueIsNotNull(kotlinType, "kotlinType");
                arrayList.add(new KTypeImpl(kotlinType, new C0558a()));
            }
            return arrayList;
        }
    }

    public n(i0 descriptor) {
        Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
        this.c = descriptor;
        this.b = ReflectProperties.lazySoft(new a());
    }

    @Override // kotlin.reflect.jvm.internal.e
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public i0 getDescriptor() {
        return this.c;
    }

    public boolean equals(Object obj) {
        return (obj instanceof n) && Intrinsics.areEqual(getDescriptor(), ((n) obj).getDescriptor());
    }

    @Override // kotlin.reflect.KTypeParameter
    public String getName() {
        String strE = getDescriptor().getName().e();
        Intrinsics.checkExpressionValueIsNotNull(strE, "descriptor.name.asString()");
        return strE;
    }

    @Override // kotlin.reflect.KTypeParameter
    public List<KType> getUpperBounds() {
        return (List) this.b.b(this, a[0]);
    }

    public int hashCode() {
        return getDescriptor().hashCode();
    }

    @Override // kotlin.reflect.KTypeParameter
    public KVariance j() {
        int i = m.a[getDescriptor().j().ordinal()];
        if (i == 1) {
            return KVariance.a;
        }
        if (i == 2) {
            return KVariance.b;
        }
        if (i == 3) {
            return KVariance.c;
        }
        throw new NoWhenBranchMatchedException();
    }

    public String toString() {
        return q.b.i(getDescriptor());
    }
}
