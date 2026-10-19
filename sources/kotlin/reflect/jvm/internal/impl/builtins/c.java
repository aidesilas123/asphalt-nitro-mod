package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

/* JADX INFO: compiled from: CompanionObjectMapping.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class c {
    private static final LinkedHashSet<ClassId> a;
    public static final c b = new c();

    static {
        Set<PrimitiveType> set = PrimitiveType.i;
        Intrinsics.checkExpressionValueIsNotNull(set, "PrimitiveType.NUMBER_TYPES");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(set, 10));
        Iterator<T> it = set.iterator();
        while (it.hasNext()) {
            arrayList.add(KotlinBuiltIns.getPrimitiveFqName((PrimitiveType) it.next()));
        }
        KotlinBuiltIns.e eVar = KotlinBuiltIns.h;
        List listPlus = CollectionsKt___CollectionsKt.plus((Collection<? extends FqName>) CollectionsKt___CollectionsKt.plus((Collection<? extends FqName>) CollectionsKt___CollectionsKt.plus((Collection<? extends FqName>) arrayList, eVar.f9044g.l()), eVar.i.l()), eVar.r.l());
        LinkedHashSet<ClassId> linkedHashSet = new LinkedHashSet<>();
        Iterator it2 = listPlus.iterator();
        while (it2.hasNext()) {
            linkedHashSet.add(ClassId.topLevel((FqName) it2.next()));
        }
        a = linkedHashSet;
    }

    private c() {
    }

    public final Set<ClassId> a() {
        Set<ClassId> setUnmodifiableSet = Collections.unmodifiableSet(a);
        Intrinsics.checkExpressionValueIsNotNull(setUnmodifiableSet, "Collections.unmodifiableSet(classIds)");
        return setUnmodifiableSet;
    }

    public final boolean b(kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor) {
        Intrinsics.checkParameterIsNotNull(classDescriptor, "classDescriptor");
        if (DescriptorUtils.isCompanionObject(classDescriptor)) {
            LinkedHashSet<ClassId> linkedHashSet = a;
            ClassId classId = DescriptorUtilsKt.getClassId(classDescriptor);
            if (CollectionsKt___CollectionsKt.contains(linkedHashSet, classId != null ? classId.e() : null)) {
                return true;
            }
        }
        return false;
    }
}
