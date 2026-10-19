package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.p;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirementTable;

/* JADX INFO: compiled from: VersionRequirement.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class VersionRequirementTable {
    private final List<ProtoBuf$VersionRequirement> c;
    public static final a b = new a(null);
    private static final VersionRequirementTable a = new VersionRequirementTable(CollectionsKt__CollectionsKt.emptyList());

    /* JADX INFO: compiled from: VersionRequirement.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final VersionRequirementTable a(ProtoBuf$VersionRequirementTable table) {
            Intrinsics.checkParameterIsNotNull(table, "table");
            if (table.p() == 0) {
                return b();
            }
            List<ProtoBuf$VersionRequirement> listQ = table.q();
            Intrinsics.checkExpressionValueIsNotNull(listQ, "table.requirementList");
            return new VersionRequirementTable(listQ, null);
        }

        public final VersionRequirementTable b() {
            return VersionRequirementTable.a;
        }
    }

    private VersionRequirementTable(List<ProtoBuf$VersionRequirement> list) {
        this.c = list;
    }

    public /* synthetic */ VersionRequirementTable(List list, n nVar) {
        this(list);
    }

    public final ProtoBuf$VersionRequirement a(int i) {
        return (ProtoBuf$VersionRequirement) p.getOrNull(this.c, i);
    }
}
