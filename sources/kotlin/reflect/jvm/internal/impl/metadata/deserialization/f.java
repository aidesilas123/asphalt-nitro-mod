package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class f {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[ProtoBuf$VersionRequirement.Level.values().length];
        a = iArr;
        iArr[ProtoBuf$VersionRequirement.Level.WARNING.ordinal()] = 1;
        iArr[ProtoBuf$VersionRequirement.Level.ERROR.ordinal()] = 2;
        iArr[ProtoBuf$VersionRequirement.Level.HIDDEN.ordinal()] = 3;
    }
}
