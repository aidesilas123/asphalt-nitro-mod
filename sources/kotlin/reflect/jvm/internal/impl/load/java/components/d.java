package kotlin.reflect.jvm.internal.impl.load.java.components;

import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.e0;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.u;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;

/* JADX INFO: compiled from: JavaAnnotationMapper.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class d extends kotlin.reflect.jvm.internal.impl.load.java.components.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final /* synthetic */ KProperty[] f9202g = {Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(d.class), "allValueArguments", "getAllValueArguments()Ljava/util/Map;"))};
    private final kotlin.reflect.jvm.internal.impl.storage.e h;

    /* JADX INFO: compiled from: JavaAnnotationMapper.kt */
    static final class a extends Lambda implements Function0<Map<Name, ? extends u>> {
        public static final a a = new a();

        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Map<Name, u> invoke() {
            return MapsKt__MapsJVMKt.mapOf(TuplesKt.to(b.k.b(), new u("Deprecated in Java")));
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public d(JavaAnnotation javaAnnotation, kotlin.reflect.jvm.internal.impl.load.java.lazy.d c) {
        Intrinsics.checkParameterIsNotNull(c, "c");
        FqName fqName = KotlinBuiltIns.h.x;
        Intrinsics.checkExpressionValueIsNotNull(fqName, "KotlinBuiltIns.FQ_NAMES.deprecated");
        super(c, javaAnnotation, fqName);
        this.h = c.e().c(a.a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.components.a, kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public Map<Name, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> a() {
        return (Map) StorageKt.getValue(this.h, this, (KProperty<?>) f9202g[0]);
    }
}
