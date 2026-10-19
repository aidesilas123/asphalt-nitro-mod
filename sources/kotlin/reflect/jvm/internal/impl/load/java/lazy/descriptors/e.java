package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.load.java.components.TypeUsage;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotations;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolverKt;
import kotlin.reflect.jvm.internal.impl.load.java.structure.u;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: compiled from: LazyJavaTypeParameterDescriptor.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class e extends kotlin.reflect.jvm.internal.impl.descriptors.impl.b {
    private final LazyJavaAnnotations k;
    private final kotlin.reflect.jvm.internal.impl.load.java.lazy.d l;
    private final u m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(kotlin.reflect.jvm.internal.impl.load.java.lazy.d c, u javaTypeParameter, int i, i containingDeclaration) {
        super(c.e(), containingDeclaration, javaTypeParameter.getName(), Variance.INVARIANT, false, i, d0.a, c.a().t());
        Intrinsics.checkParameterIsNotNull(c, "c");
        Intrinsics.checkParameterIsNotNull(javaTypeParameter, "javaTypeParameter");
        Intrinsics.checkParameterIsNotNull(containingDeclaration, "containingDeclaration");
        this.l = c;
        this.m = javaTypeParameter;
        this.k = new LazyJavaAnnotations(c, javaTypeParameter);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.e
    protected void b0(kotlin.reflect.jvm.internal.impl.types.u type) {
        Intrinsics.checkParameterIsNotNull(type, "type");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.e
    protected List<kotlin.reflect.jvm.internal.impl.types.u> e0() {
        Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.i> upperBounds = this.m.getUpperBounds();
        if (upperBounds.isEmpty()) {
            y yVarJ = this.l.d().k().j();
            Intrinsics.checkExpressionValueIsNotNull(yVarJ, "c.module.builtIns.anyType");
            y yVarI = this.l.d().k().I();
            Intrinsics.checkExpressionValueIsNotNull(yVarI, "c.module.builtIns.nullableAnyType");
            return CollectionsKt__CollectionsJVMKt.listOf(KotlinTypeFactory.flexibleType(yVarJ, yVarI));
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(upperBounds, 10));
        Iterator<T> it = upperBounds.iterator();
        while (it.hasNext()) {
            arrayList.add(this.l.g().k((kotlin.reflect.jvm.internal.impl.load.java.structure.i) it.next(), JavaTypeResolverKt.toAttributes$default(TypeUsage.COMMON, false, this, 1, null)));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.b, kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
    public LazyJavaAnnotations getAnnotations() {
        return this.k;
    }
}
