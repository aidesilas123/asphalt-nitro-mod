package okio;

import java.io.Closeable;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Okio.kt */
/* JADX INFO: loaded from: classes5.dex */
final /* synthetic */ class Okio__OkioKt {
    public static final w blackhole() {
        return new c();
    }

    public static final d buffer(w wVar) {
        Intrinsics.checkNotNullParameter(wVar, "<this>");
        return new RealBufferedSink(wVar);
    }

    public static final e buffer(y yVar) {
        Intrinsics.checkNotNullParameter(yVar, "<this>");
        return new RealBufferedSource(yVar);
    }

    public static final <T extends Closeable, R> R use(T t, Function1<? super T, ? extends R> block) throws Throwable {
        R rInvoke;
        Intrinsics.checkNotNullParameter(block, "block");
        Throwable th = null;
        try {
            rInvoke = block.invoke(t);
        } catch (Throwable th2) {
            th = th2;
            rInvoke = null;
        }
        if (t != null) {
            try {
                t.close();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                } else {
                    ExceptionsKt__ExceptionsKt.addSuppressed(th, th3);
                }
            }
        }
        if (th != null) {
            throw th;
        }
        Intrinsics.checkNotNull(rInvoke);
        return rInvoke;
    }
}
