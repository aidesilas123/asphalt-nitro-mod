package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class e {
    private final i a;
    private final List<i> b;

    /* JADX WARN: Multi-variable type inference failed */
    public e() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public e(i iVar, List<i> parametersInfo) {
        Intrinsics.checkParameterIsNotNull(parametersInfo, "parametersInfo");
        this.a = iVar;
        this.b = parametersInfo;
    }

    public /* synthetic */ e(i iVar, List list, int i, n nVar) {
        this((i & 1) != 0 ? null : iVar, (i & 2) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list);
    }

    public final List<i> a() {
        return this.b;
    }

    public final i b() {
        return this.a;
    }
}
