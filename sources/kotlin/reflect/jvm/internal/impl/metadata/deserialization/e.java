package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;

/* JADX INFO: compiled from: TypeTable.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class e {
    private final List<ProtoBuf$Type> a;

    public e(ProtoBuf$TypeTable typeTable) {
        Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
        List<ProtoBuf$Type> originalTypes = typeTable.u();
        if (typeTable.v()) {
            int iR = typeTable.r();
            List<ProtoBuf$Type> listU = typeTable.u();
            Intrinsics.checkExpressionValueIsNotNull(listU, "typeTable.typeList");
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listU, 10));
            int i = 0;
            for (Object obj : listU) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                ProtoBuf$Type protoBuf$TypeBuild = (ProtoBuf$Type) obj;
                if (i >= iR) {
                    protoBuf$TypeBuild = protoBuf$TypeBuild.toBuilder().E(true).build();
                }
                arrayList.add(protoBuf$TypeBuild);
                i = i2;
            }
            originalTypes = arrayList;
        } else {
            Intrinsics.checkExpressionValueIsNotNull(originalTypes, "originalTypes");
        }
        this.a = originalTypes;
    }

    public final ProtoBuf$Type a(int i) {
        return this.a.get(i);
    }
}
