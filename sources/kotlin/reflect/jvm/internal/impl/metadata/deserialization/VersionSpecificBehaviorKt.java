package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: versionSpecificBehavior.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class VersionSpecificBehaviorKt {
    public static final boolean isKotlin1Dot4OrLater(a version) {
        Intrinsics.checkParameterIsNotNull(version, "version");
        return version.a() == 1 && version.b() >= 4;
    }

    public static final boolean isVersionRequirementTableWrittenCorrectly(a version) {
        Intrinsics.checkParameterIsNotNull(version, "version");
        return isKotlin1Dot4OrLater(version);
    }
}
