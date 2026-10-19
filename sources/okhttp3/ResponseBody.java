package okhttp3;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.applovin.sdk.AppLovinEventTypes;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.ads.RequestConfiguration;
import com.json.b4;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.text.Charsets;
import kotlin.v;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.ByteString;

/* JADX INFO: compiled from: ResponseBody.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b&\u0018\u0000 !2\u00020\u0001:\u0002 !B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\u0004J\b\u0010\f\u001a\u00020\rH\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J@\u0010\u0010\u001a\u0002H\u0011\"\b\b\u0000\u0010\u0011*\u00020\u00122\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u0002H\u00110\u00142\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u0002H\u0011\u0012\u0004\u0012\u00020\u00170\u0014H\u0082\b¢\u0006\u0002\u0010\u0018J\b\u0010\u0019\u001a\u00020\u001aH&J\n\u0010\u001b\u001a\u0004\u0018\u00010\u001cH&J\b\u0010\u001d\u001a\u00020\u0015H&J\u0006\u0010\u001e\u001a\u00020\u001fR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lokhttp3/ResponseBody;", "Ljava/io/Closeable;", "()V", "reader", "Ljava/io/Reader;", "byteStream", "Ljava/io/InputStream;", "byteString", "Lokio/ByteString;", "bytes", "", "charStream", b4.K, "Ljava/nio/charset/Charset;", "close", "", "consumeSource", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "consumer", "Lkotlin/Function1;", "Lokio/BufferedSource;", "sizeMapper", "", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "contentLength", "", "contentType", "Lokhttp3/MediaType;", ShareConstants.FEED_SOURCE_PARAM, TypedValues.Custom.S_STRING, "", "BomAwareReader", "Companion", "okhttp"}, mv = {1, 6, 0}, xi = 48)
public abstract class ResponseBody implements Closeable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private Reader reader;

    /* JADX INFO: compiled from: ResponseBody.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\"\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u000bH\u0007J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\fH\u0007J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\rH\u0007J'\u0010\u000e\u001a\u00020\u0004*\u00020\u000b2\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\t\u001a\u00020\nH\u0007¢\u0006\u0002\b\u0003J\u001d\u0010\u000f\u001a\u00020\u0004*\u00020\b2\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0002\b\u0003J\u001d\u0010\u000f\u001a\u00020\u0004*\u00020\f2\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0002\b\u0003J\u001d\u0010\u000f\u001a\u00020\u0004*\u00020\r2\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0002\b\u0003¨\u0006\u0010"}, d2 = {"Lokhttp3/ResponseBody$Companion;", "", "()V", "create", "Lokhttp3/ResponseBody;", "contentType", "Lokhttp3/MediaType;", AppLovinEventTypes.USER_VIEWED_CONTENT, "", "contentLength", "", "Lokio/BufferedSource;", "", "Lokio/ByteString;", "asResponseBody", "toResponseBody", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: compiled from: ResponseBody.kt */
        @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"okhttp3/ResponseBody$Companion$asResponseBody$1", "Lokhttp3/ResponseBody;", "contentLength", "", "contentType", "Lokhttp3/MediaType;", ShareConstants.FEED_SOURCE_PARAM, "Lokio/BufferedSource;", "okhttp"}, mv = {1, 6, 0}, xi = 48)
        public static final class a extends ResponseBody {
            final /* synthetic */ MediaType a;
            final /* synthetic */ long b;
            final /* synthetic */ okio.e c;

            a(MediaType mediaType, long j, okio.e eVar) {
                this.a = mediaType;
                this.b = j;
                this.c = eVar;
            }

            @Override // okhttp3.ResponseBody
            /* JADX INFO: renamed from: contentLength, reason: from getter */
            public long getB() {
                return this.b;
            }

            @Override // okhttp3.ResponseBody
            /* JADX INFO: renamed from: contentType, reason: from getter */
            public MediaType getA() {
                return this.a;
            }

            @Override // okhttp3.ResponseBody
            /* JADX INFO: renamed from: source, reason: from getter */
            public okio.e getC() {
                return this.c;
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, String str, MediaType mediaType, int i, Object obj) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            return companion.a(str, mediaType);
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, ByteString byteString, MediaType mediaType, int i, Object obj) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            return companion.g(byteString, mediaType);
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, okio.e eVar, MediaType mediaType, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            if ((i & 2) != 0) {
                j = -1;
            }
            return companion.f(eVar, mediaType, j);
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, byte[] bArr, MediaType mediaType, int i, Object obj) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            return companion.h(bArr, mediaType);
        }

        public final ResponseBody a(String str, MediaType mediaType) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            Charset charset = Charsets.b;
            if (mediaType != null) {
                Charset charsetCharset$default = MediaType.charset$default(mediaType, null, 1, null);
                if (charsetCharset$default == null) {
                    mediaType = MediaType.a.b(mediaType + "; charset=utf-8");
                } else {
                    charset = charsetCharset$default;
                }
            }
            Buffer bufferE0 = new Buffer().e0(str, charset);
            return f(bufferE0, mediaType, bufferE0.I());
        }

        public final ResponseBody b(MediaType mediaType, long j, okio.e content) {
            Intrinsics.checkNotNullParameter(content, "content");
            return f(content, mediaType, j);
        }

        public final ResponseBody c(MediaType mediaType, String content) {
            Intrinsics.checkNotNullParameter(content, "content");
            return a(content, mediaType);
        }

        public final ResponseBody d(MediaType mediaType, ByteString content) {
            Intrinsics.checkNotNullParameter(content, "content");
            return g(content, mediaType);
        }

        public final ResponseBody e(MediaType mediaType, byte[] content) {
            Intrinsics.checkNotNullParameter(content, "content");
            return h(content, mediaType);
        }

        public final ResponseBody f(okio.e eVar, MediaType mediaType, long j) {
            Intrinsics.checkNotNullParameter(eVar, "<this>");
            return new a(mediaType, j, eVar);
        }

        public final ResponseBody g(ByteString byteString, MediaType mediaType) {
            Intrinsics.checkNotNullParameter(byteString, "<this>");
            return f(new Buffer().P(byteString), mediaType, byteString.F());
        }

        public final ResponseBody h(byte[] bArr, MediaType mediaType) {
            Intrinsics.checkNotNullParameter(bArr, "<this>");
            return f(new Buffer().write(bArr), mediaType, bArr.length);
        }
    }

    /* JADX INFO: compiled from: ResponseBody.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0019\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\n\u001a\u00020\u000bH\u0016J \u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lokhttp3/ResponseBody$BomAwareReader;", "Ljava/io/Reader;", ShareConstants.FEED_SOURCE_PARAM, "Lokio/BufferedSource;", b4.K, "Ljava/nio/charset/Charset;", "(Lokio/BufferedSource;Ljava/nio/charset/Charset;)V", "closed", "", "delegate", "close", "", "read", "", "cbuf", "", "off", "len", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class a extends Reader {
        private final okio.e a;
        private final Charset b;
        private boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Reader f10619d;

        public a(okio.e source, Charset charset) {
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(charset, "charset");
            this.a = source;
            this.b = charset;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            v vVar;
            this.c = true;
            Reader reader = this.f10619d;
            if (reader == null) {
                vVar = null;
            } else {
                reader.close();
                vVar = v.a;
            }
            if (vVar == null) {
                this.a.close();
            }
        }

        @Override // java.io.Reader
        public int read(char[] cbuf, int off, int len) throws IOException {
            Intrinsics.checkNotNullParameter(cbuf, "cbuf");
            if (this.c) {
                throw new IOException("Stream closed");
            }
            Reader inputStreamReader = this.f10619d;
            if (inputStreamReader == null) {
                inputStreamReader = new InputStreamReader(this.a.inputStream(), Util.readBomAsCharset(this.a, this.b));
                this.f10619d = inputStreamReader;
            }
            return inputStreamReader.read(cbuf, off, len);
        }
    }

    private final Charset charset() {
        MediaType a2 = getA();
        Charset charsetA = a2 == null ? null : a2.a(Charsets.b);
        return charsetA == null ? Charsets.b : charsetA;
    }

    /* JADX WARN: Type inference failed for: r6v3, types: [T, java.lang.Object] */
    private final <T> T consumeSource(Function1<? super okio.e, ? extends T> function1, Function1<? super T, Integer> function12) throws IOException {
        long b = getB();
        if (b > 2147483647L) {
            throw new IOException(Intrinsics.stringPlus("Cannot buffer entire body for content length: ", Long.valueOf(b)));
        }
        okio.e c = getC();
        try {
            T tInvoke = function1.invoke(c);
            InlineMarker.finallyStart(1);
            CloseableKt.closeFinally(c, null);
            InlineMarker.finallyEnd(1);
            int iIntValue = function12.invoke(tInvoke).intValue();
            if (b == -1 || b == iIntValue) {
                return tInvoke;
            }
            throw new IOException("Content-Length (" + b + ") and stream length (" + iIntValue + ") disagree");
        } finally {
        }
    }

    public static final ResponseBody create(String str, MediaType mediaType) {
        return INSTANCE.a(str, mediaType);
    }

    public static final ResponseBody create(MediaType mediaType, long j, okio.e eVar) {
        return INSTANCE.b(mediaType, j, eVar);
    }

    public static final ResponseBody create(MediaType mediaType, String str) {
        return INSTANCE.c(mediaType, str);
    }

    public static final ResponseBody create(MediaType mediaType, ByteString byteString) {
        return INSTANCE.d(mediaType, byteString);
    }

    public static final ResponseBody create(MediaType mediaType, byte[] bArr) {
        return INSTANCE.e(mediaType, bArr);
    }

    public static final ResponseBody create(ByteString byteString, MediaType mediaType) {
        return INSTANCE.g(byteString, mediaType);
    }

    public static final ResponseBody create(okio.e eVar, MediaType mediaType, long j) {
        return INSTANCE.f(eVar, mediaType, j);
    }

    public static final ResponseBody create(byte[] bArr, MediaType mediaType) {
        return INSTANCE.h(bArr, mediaType);
    }

    public final InputStream byteStream() {
        return getC().inputStream();
    }

    public final ByteString byteString() throws IOException {
        long b = getB();
        if (b > 2147483647L) {
            throw new IOException(Intrinsics.stringPlus("Cannot buffer entire body for content length: ", Long.valueOf(b)));
        }
        okio.e c = getC();
        try {
            ByteString byteString = c.readByteString();
            CloseableKt.closeFinally(c, null);
            int iF = byteString.F();
            if (b == -1 || b == iF) {
                return byteString;
            }
            throw new IOException("Content-Length (" + b + ") and stream length (" + iF + ") disagree");
        } finally {
        }
    }

    public final byte[] bytes() throws IOException {
        long b = getB();
        if (b > 2147483647L) {
            throw new IOException(Intrinsics.stringPlus("Cannot buffer entire body for content length: ", Long.valueOf(b)));
        }
        okio.e c = getC();
        try {
            byte[] byteArray = c.readByteArray();
            CloseableKt.closeFinally(c, null);
            int length = byteArray.length;
            if (b == -1 || b == length) {
                return byteArray;
            }
            throw new IOException("Content-Length (" + b + ") and stream length (" + length + ") disagree");
        } finally {
        }
    }

    public final Reader charStream() {
        Reader reader = this.reader;
        if (reader != null) {
            return reader;
        }
        a aVar = new a(getC(), charset());
        this.reader = aVar;
        return aVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Util.closeQuietly(getC());
    }

    /* JADX INFO: renamed from: contentLength */
    public abstract long getB();

    /* JADX INFO: renamed from: contentType */
    public abstract MediaType getA();

    /* JADX INFO: renamed from: source */
    public abstract okio.e getC();

    public final String string() throws IOException {
        okio.e c = getC();
        try {
            String string = c.readString(Util.readBomAsCharset(c, charset()));
            CloseableKt.closeFinally(c, null);
            return string;
        } finally {
        }
    }
}
