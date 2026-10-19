package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.g;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: compiled from: BuiltInAnnotationDescriptor.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class BuiltInAnnotationDescriptor implements AnnotationDescriptor {
    private final Lazy a;
    private final KotlinBuiltIns b;
    private final FqName c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<Name, g<?>> f9109d;

    /* JADX INFO: compiled from: BuiltInAnnotationDescriptor.kt */
    static final class a extends Lambda implements Function0<y> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final y invoke() {
            kotlin.reflect.jvm.internal.impl.descriptors.d dVarO = BuiltInAnnotationDescriptor.this.b.o(BuiltInAnnotationDescriptor.this.e());
            Intrinsics.checkExpressionValueIsNotNull(dVarO, "builtIns.getBuiltInClassByFqName(fqName)");
            return dVarO.n();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BuiltInAnnotationDescriptor(KotlinBuiltIns builtIns, FqName fqName, Map<Name, ? extends g<?>> allValueArguments) {
        Intrinsics.checkParameterIsNotNull(builtIns, "builtIns");
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        Intrinsics.checkParameterIsNotNull(allValueArguments, "allValueArguments");
        this.b = builtIns;
        this.c = fqName;
        this.f9109d = allValueArguments;
        this.a = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.b, (Function0) new a());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public Map<Name, g<?>> a() {
        return this.f9109d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public FqName e() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public d0 getSource() {
        d0 d0Var = d0.a;
        Intrinsics.checkExpressionValueIsNotNull(d0Var, "SourceElement.NO_SOURCE");
        return d0Var;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public u getType() {
        return (u) this.a.getValue();
    }
}
