package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;

/* JADX INFO: renamed from: kotlinx.serialization.json.internal.g, reason: from Kotlin metadata */
/* JADX INFO: compiled from: ByteArrayPool.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\f\u001a\u00020\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lkotlinx/serialization/json/internal/ByteArrayPool;", "", "()V", "MAX_CHARS_IN_POOL", "", "arrays", "Lkotlin/collections/ArrayDeque;", "", "charsTotal", "release", "", "array", "take", "kotlinx-serialization-json"}, mv = {1, 7, 1}, xi = 48)
public final class ByteArrayPool {
    public static final ByteArrayPool a = new ByteArrayPool();
    private static final ArrayDeque<byte[]> b = new ArrayDeque<>();
    private static int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f10498d;

    static {
        Object objM1238constructorimpl;
        try {
            Result.a aVar = Result.a;
            String property = System.getProperty("kotlinx.serialization.json.pool.size");
            Intrinsics.checkNotNullExpressionValue(property, "getProperty(\"kotlinx.ser…lization.json.pool.size\")");
            objM1238constructorimpl = Result.m1238constructorimpl(StringsKt__StringNumberConversionsKt.toIntOrNull(property));
        } catch (Throwable th) {
            Result.a aVar2 = Result.a;
            objM1238constructorimpl = Result.m1238constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m1243isFailureimpl(objM1238constructorimpl)) {
            objM1238constructorimpl = null;
        }
        Integer num = (Integer) objM1238constructorimpl;
        f10498d = num != null ? num.intValue() : 2097152;
    }

    private ByteArrayPool() {
    }

    public final void a(byte[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        synchronized (this) {
            int i = c;
            if (array.length + i < f10498d) {
                c = i + array.length;
                b.addLast(array);
            }
            kotlin.v vVar = kotlin.v.a;
        }
    }

    public final byte[] b() {
        byte[] bArrZ;
        synchronized (this) {
            bArrZ = b.z();
            if (bArrZ != null) {
                c -= bArrZ.length;
            } else {
                bArrZ = null;
            }
        }
        return bArrZ == null ? new byte[512] : bArrZ;
    }
}
