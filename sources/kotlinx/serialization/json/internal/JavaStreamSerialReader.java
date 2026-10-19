package kotlinx.serialization.json.internal;

import com.json.b4;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: renamed from: kotlinx.serialization.json.internal.t, reason: from Kotlin metadata */
/* JADX INFO: compiled from: JvmJsonStreams.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0019\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\nH\u0016R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lkotlinx/serialization/json/internal/JavaStreamSerialReader;", "Lkotlinx/serialization/json/internal/SerialReader;", "stream", "Ljava/io/InputStream;", b4.K, "Ljava/nio/charset/Charset;", "(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V", "reader", "Ljava/io/InputStreamReader;", "read", "", "buffer", "", "bufferOffset", "count", "kotlinx-serialization-json"}, mv = {1, 7, 1}, xi = 48)
public final class JavaStreamSerialReader implements SerialReader {
    private final InputStreamReader a;

    public JavaStreamSerialReader(InputStream stream, Charset charset) {
        Intrinsics.checkNotNullParameter(stream, "stream");
        Intrinsics.checkNotNullParameter(charset, "charset");
        this.a = new InputStreamReader(stream, charset);
    }

    public /* synthetic */ JavaStreamSerialReader(InputStream inputStream, Charset charset, int i, kotlin.jvm.internal.n nVar) {
        this(inputStream, (i & 2) != 0 ? Charsets.b : charset);
    }

    @Override // kotlinx.serialization.json.internal.SerialReader
    public int a(char[] buffer, int i, int i2) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        return this.a.read(buffer, i, i2);
    }
}
