package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: UnsignedType.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class e {
    private static final Set<Name> a;
    private static final HashMap<ClassId, ClassId> b;
    private static final HashMap<ClassId, ClassId> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Set<Name> f9060d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final e f9061e = new e();

    static {
        UnsignedType[] unsignedTypeArrValues = UnsignedType.values();
        ArrayList arrayList = new ArrayList(unsignedTypeArrValues.length);
        for (UnsignedType unsignedType : unsignedTypeArrValues) {
            arrayList.add(unsignedType.g());
        }
        a = CollectionsKt___CollectionsKt.toSet(arrayList);
        b = new HashMap<>();
        c = new HashMap<>();
        UnsignedType[] unsignedTypeArrValues2 = UnsignedType.values();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (UnsignedType unsignedType2 : unsignedTypeArrValues2) {
            linkedHashSet.add(unsignedType2.e().h());
        }
        f9060d = linkedHashSet;
        for (UnsignedType unsignedType3 : UnsignedType.values()) {
            b.put(unsignedType3.e(), unsignedType3.f());
            c.put(unsignedType3.f(), unsignedType3.e());
        }
    }

    private e() {
    }

    public final ClassId a(ClassId arrayClassId) {
        Intrinsics.checkParameterIsNotNull(arrayClassId, "arrayClassId");
        return b.get(arrayClassId);
    }

    public final boolean b(Name name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        return f9060d.contains(name);
    }

    public final boolean c(i descriptor) {
        Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
        i iVarB = descriptor.b();
        return (iVarB instanceof s) && Intrinsics.areEqual(((s) iVarB).e(), KotlinBuiltIns.b) && a.contains(descriptor.getName());
    }

    public final boolean d(u type) {
        f fVarC;
        Intrinsics.checkParameterIsNotNull(type, "type");
        if (TypeUtils.noExpectedType(type) || (fVarC = type.H0().q()) == null) {
            return false;
        }
        Intrinsics.checkExpressionValueIsNotNull(fVarC, "type.constructor.declara…escriptor ?: return false");
        return c(fVarC);
    }
}
