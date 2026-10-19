package kotlin.reflect.jvm.internal.impl.load.java.components;

import java.util.Collection;
import java.util.Map;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.p;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.e0;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: compiled from: JavaAnnotationMapper.kt */
/* JADX INFO: loaded from: classes5.dex */
public class a implements AnnotationDescriptor, kotlin.reflect.jvm.internal.impl.load.java.descriptors.f {
    static final /* synthetic */ KProperty[] a = {Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(a.class), "type", "getType()Lorg/jetbrains/kotlin/types/SimpleType;"))};
    private final d0 b;
    private final kotlin.reflect.jvm.internal.impl.storage.e c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.load.java.structure.a f9195d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f9196e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final FqName f9197f;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.java.components.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: JavaAnnotationMapper.kt */
    static final class C0525a extends Lambda implements Function0<y> {
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.load.java.lazy.d b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0525a(kotlin.reflect.jvm.internal.impl.load.java.lazy.d dVar) {
            super(0);
            this.b = dVar;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final y invoke() {
            kotlin.reflect.jvm.internal.impl.descriptors.d dVarO = this.b.d().k().o(a.this.e());
            Intrinsics.checkExpressionValueIsNotNull(dVarO, "c.module.builtIns.getBuiltInClassByFqName(fqName)");
            return dVarO.n();
        }
    }

    public a(kotlin.reflect.jvm.internal.impl.load.java.lazy.d c, JavaAnnotation javaAnnotation, FqName fqName) {
        d0 d0VarA;
        Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.a> collectionK;
        Intrinsics.checkParameterIsNotNull(c, "c");
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        this.f9197f = fqName;
        if (javaAnnotation == null || (d0VarA = c.a().r().a(javaAnnotation)) == null) {
            d0VarA = d0.a;
            Intrinsics.checkExpressionValueIsNotNull(d0VarA, "SourceElement.NO_SOURCE");
        }
        this.b = d0VarA;
        this.c = c.e().c(new C0525a(c));
        this.f9195d = (javaAnnotation == null || (collectionK = javaAnnotation.k()) == null) ? null : (kotlin.reflect.jvm.internal.impl.load.java.structure.a) p.firstOrNull(collectionK);
        this.f9196e = javaAnnotation != null && javaAnnotation.i();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public Map<Name, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> a() {
        return MapsKt__MapsKt.emptyMap();
    }

    protected final kotlin.reflect.jvm.internal.impl.load.java.structure.a b() {
        return this.f9195d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public y getType() {
        return (y) StorageKt.getValue(this.c, this, (KProperty<?>) a[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public FqName e() {
        return this.f9197f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public d0 getSource() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.descriptors.f
    public boolean i() {
        return this.f9196e;
    }
}
