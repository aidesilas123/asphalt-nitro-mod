package okio;

import java.util.zip.Inflater;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: okio.-InflaterSourceExtensions, reason: invalid class name */
/* JADX INFO: compiled from: InflaterSource.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class InflaterSourceExtensions {
    public static final n inflate(y yVar, Inflater inflater) {
        Intrinsics.checkNotNullParameter(yVar, "<this>");
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return new n(yVar, inflater);
    }

    public static /* synthetic */ n inflate$default(y yVar, Inflater inflater, int i, Object obj) {
        if ((i & 1) != 0) {
            inflater = new Inflater();
        }
        Intrinsics.checkNotNullParameter(yVar, "<this>");
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return new n(yVar, inflater);
    }
}
