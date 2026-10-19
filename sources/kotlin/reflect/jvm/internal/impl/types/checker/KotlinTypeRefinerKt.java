package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: KotlinTypeRefiner.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class KotlinTypeRefinerKt {
    private static final ModuleDescriptor.a<i<d>> a = new ModuleDescriptor.a<>("KotlinTypeRefiner");

    public static final ModuleDescriptor.a<i<d>> getREFINER_CAPABILITY() {
        return a;
    }

    public static final List<u> refineTypes(d refineTypes, Iterable<? extends u> types) {
        Intrinsics.checkParameterIsNotNull(refineTypes, "$this$refineTypes");
        Intrinsics.checkParameterIsNotNull(types, "types");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(types, 10));
        Iterator<? extends u> it = types.iterator();
        while (it.hasNext()) {
            arrayList.add(refineTypes.g(it.next()));
        }
        return arrayList;
    }
}
