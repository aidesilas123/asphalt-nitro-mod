package okio;

import java.util.zip.Deflater;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: okio.-DeflaterSinkExtensions, reason: invalid class name */
/* JADX INFO: compiled from: DeflaterSink.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class DeflaterSinkExtensions {
    public static final h deflate(w wVar, Deflater deflater) {
        Intrinsics.checkNotNullParameter(wVar, "<this>");
        Intrinsics.checkNotNullParameter(deflater, "deflater");
        return new h(wVar, deflater);
    }

    public static /* synthetic */ h deflate$default(w wVar, Deflater deflater, int i, Object obj) {
        if ((i & 1) != 0) {
            deflater = new Deflater();
        }
        Intrinsics.checkNotNullParameter(wVar, "<this>");
        Intrinsics.checkNotNullParameter(deflater, "deflater");
        return new h(wVar, deflater);
    }
}
