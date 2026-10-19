package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class i {
    private final Map<Integer, JavaTypeQualifiers> a;

    public i(Map<Integer, JavaTypeQualifiers> map) {
        Intrinsics.checkParameterIsNotNull(map, "map");
        this.a = map;
    }

    public final Map<Integer, JavaTypeQualifiers> a() {
        return this.a;
    }
}
