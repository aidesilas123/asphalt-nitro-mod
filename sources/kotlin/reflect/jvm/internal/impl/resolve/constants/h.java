package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;

/* JADX INFO: compiled from: ConstantValueFactory.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class h {
    public static final h a = new h();

    /* JADX INFO: compiled from: ConstantValueFactory.kt */
    static final class a extends Lambda implements Function1<ModuleDescriptor, kotlin.reflect.jvm.internal.impl.types.u> {
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.types.u a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(kotlin.reflect.jvm.internal.impl.types.u uVar) {
            super(1);
            this.a = uVar;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final kotlin.reflect.jvm.internal.impl.types.u invoke(ModuleDescriptor it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return this.a;
        }
    }

    /* JADX INFO: compiled from: ConstantValueFactory.kt */
    static final class b extends Lambda implements Function1<ModuleDescriptor, kotlin.reflect.jvm.internal.impl.types.y> {
        final /* synthetic */ PrimitiveType a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(PrimitiveType primitiveType) {
            super(1);
            this.a = primitiveType;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final kotlin.reflect.jvm.internal.impl.types.y invoke(ModuleDescriptor module) {
            Intrinsics.checkParameterIsNotNull(module, "module");
            kotlin.reflect.jvm.internal.impl.types.y yVarN = module.k().N(this.a);
            Intrinsics.checkExpressionValueIsNotNull(yVarN, "module.builtIns.getPrimi…KotlinType(componentType)");
            return yVarN;
        }
    }

    private h() {
    }

    private final kotlin.reflect.jvm.internal.impl.resolve.constants.b a(List<?> list, PrimitiveType primitiveType) {
        List list2 = CollectionsKt___CollectionsKt.toList(list);
        ArrayList arrayList = new ArrayList();
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            g<?> gVarC = c(it.next());
            if (gVarC != null) {
                arrayList.add(gVarC);
            }
        }
        return new kotlin.reflect.jvm.internal.impl.resolve.constants.b(arrayList, new b(primitiveType));
    }

    public final kotlin.reflect.jvm.internal.impl.resolve.constants.b b(List<? extends g<?>> value, kotlin.reflect.jvm.internal.impl.types.u type) {
        Intrinsics.checkParameterIsNotNull(value, "value");
        Intrinsics.checkParameterIsNotNull(type, "type");
        return new kotlin.reflect.jvm.internal.impl.resolve.constants.b(value, new a(type));
    }

    public final g<?> c(Object obj) {
        if (obj instanceof Byte) {
            return new d(((Number) obj).byteValue());
        }
        if (obj instanceof Short) {
            return new t(((Number) obj).shortValue());
        }
        if (obj instanceof Integer) {
            return new m(((Number) obj).intValue());
        }
        if (obj instanceof Long) {
            return new r(((Number) obj).longValue());
        }
        if (obj instanceof Character) {
            return new e(((Character) obj).charValue());
        }
        if (obj instanceof Float) {
            return new l(((Number) obj).floatValue());
        }
        if (obj instanceof Double) {
            return new i(((Number) obj).doubleValue());
        }
        if (obj instanceof Boolean) {
            return new c(((Boolean) obj).booleanValue());
        }
        if (obj instanceof String) {
            return new u((String) obj);
        }
        if (obj instanceof byte[]) {
            return a(ArraysKt___ArraysKt.toList((byte[]) obj), PrimitiveType.BYTE);
        }
        if (obj instanceof short[]) {
            return a(ArraysKt___ArraysKt.toList((short[]) obj), PrimitiveType.SHORT);
        }
        if (obj instanceof int[]) {
            return a(ArraysKt___ArraysKt.toList((int[]) obj), PrimitiveType.INT);
        }
        if (obj instanceof long[]) {
            return a(ArraysKt___ArraysKt.toList((long[]) obj), PrimitiveType.LONG);
        }
        if (obj instanceof char[]) {
            return a(ArraysKt___ArraysKt.toList((char[]) obj), PrimitiveType.CHAR);
        }
        if (obj instanceof float[]) {
            return a(ArraysKt___ArraysKt.toList((float[]) obj), PrimitiveType.FLOAT);
        }
        if (obj instanceof double[]) {
            return a(ArraysKt___ArraysKt.toList((double[]) obj), PrimitiveType.DOUBLE);
        }
        if (obj instanceof boolean[]) {
            return a(ArraysKt___ArraysKt.toList((boolean[]) obj), PrimitiveType.BOOLEAN);
        }
        if (obj == null) {
            return new s();
        }
        return null;
    }
}
