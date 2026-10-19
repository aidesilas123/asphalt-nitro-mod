package com.vungle.ads.internal.network;

import androidx.core.app.NotificationCompat;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.ads.RequestConfiguration;
import com.vungle.ads.internal.network.converters.Converter;
import java.io.IOException;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.v;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.Okio;
import okio.j;

/* JADX INFO: compiled from: OkHttpCall.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 \u0018*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0003\u0018\u0019\u001aB%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0016\u0010\u0005\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0006¢\u0006\u0002\u0010\bJ\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007H\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\u0016\u0010\u000f\u001a\u00020\u000e2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0016J\u0010\u0010\u0012\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0013H\u0016J\b\u0010\u0014\u001a\u00020\nH\u0016J\u0016\u0010\u0015\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00132\u0006\u0010\u0016\u001a\u00020\u0017R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/vungle/ads/internal/network/OkHttpCall;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lcom/vungle/ads/internal/network/Call;", "rawCall", "Lokhttp3/Call;", "responseConverter", "Lcom/vungle/ads/internal/network/converters/Converter;", "Lokhttp3/ResponseBody;", "(Lokhttp3/Call;Lcom/vungle/ads/internal/network/converters/Converter;)V", "canceled", "", "buffer", "body", "cancel", "", "enqueue", "callback", "Lcom/vungle/ads/internal/network/Callback;", "execute", "Lcom/vungle/ads/internal/network/Response;", "isCanceled", "parseResponse", "rawResp", "Lokhttp3/Response;", "Companion", "ExceptionCatchingResponseBody", "NoContentResponseBody", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public final class OkHttpCall<T> implements Call<T> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private volatile boolean canceled;
    private final Call rawCall;
    private final Converter<ResponseBody, T> responseConverter;

    /* JADX INFO: compiled from: OkHttpCall.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002¨\u0006\u0007"}, d2 = {"Lcom/vungle/ads/internal/network/OkHttpCall$Companion;", "", "()V", "throwIfFatal", "", "t", "", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void throwIfFatal(Throwable t) throws Throwable {
            if ((t instanceof VirtualMachineError) || (t instanceof ThreadDeath) || (t instanceof LinkageError)) {
                throw t;
            }
        }
    }

    /* JADX INFO: compiled from: OkHttpCall.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0005H\u0016J\u0006\u0010\u0013\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/vungle/ads/internal/network/OkHttpCall$ExceptionCatchingResponseBody;", "Lokhttp3/ResponseBody;", "delegate", "(Lokhttp3/ResponseBody;)V", "delegateSource", "Lokio/BufferedSource;", "thrownException", "Ljava/io/IOException;", "getThrownException", "()Ljava/io/IOException;", "setThrownException", "(Ljava/io/IOException;)V", "close", "", "contentLength", "", "contentType", "Lokhttp3/MediaType;", ShareConstants.FEED_SOURCE_PARAM, "throwIfCaught", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class a extends ResponseBody {
        private final ResponseBody delegate;
        private final okio.e delegateSource;
        private IOException thrownException;

        /* JADX INFO: renamed from: com.vungle.ads.internal.network.OkHttpCall$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: OkHttpCall.kt */
        @Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016¨\u0006\u0007"}, d2 = {"com/vungle/ads/internal/network/OkHttpCall$ExceptionCatchingResponseBody$1", "Lokio/ForwardingSource;", "read", "", "sink", "Lokio/Buffer;", "byteCount", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class C0462a extends j {
            C0462a(okio.e eVar) {
                super(eVar);
            }

            @Override // okio.j, okio.y
            public long read(Buffer sink, long byteCount) throws IOException {
                Intrinsics.checkNotNullParameter(sink, "sink");
                try {
                    return super.read(sink, byteCount);
                } catch (IOException e2) {
                    a.this.setThrownException(e2);
                    throw e2;
                }
            }
        }

        public a(ResponseBody delegate) {
            Intrinsics.checkNotNullParameter(delegate, "delegate");
            this.delegate = delegate;
            this.delegateSource = Okio.buffer(new C0462a(delegate.getDelegateSource()));
        }

        @Override // okhttp3.ResponseBody, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.delegate.close();
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: contentLength */
        public long getContentLength() {
            return this.delegate.getContentLength();
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: contentType */
        public MediaType getContentType() {
            return this.delegate.getContentType();
        }

        public final IOException getThrownException() {
            return this.thrownException;
        }

        public final void setThrownException(IOException iOException) {
            this.thrownException = iOException;
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: source, reason: from getter */
        public okio.e getDelegateSource() {
            return this.delegateSource;
        }

        public final void throwIfCaught() throws IOException {
            IOException iOException = this.thrownException;
            if (iOException != null) {
                throw iOException;
            }
        }
    }

    /* JADX INFO: compiled from: OkHttpCall.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0016J\b\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/vungle/ads/internal/network/OkHttpCall$NoContentResponseBody;", "Lokhttp3/ResponseBody;", "contentType", "Lokhttp3/MediaType;", "contentLength", "", "(Lokhttp3/MediaType;J)V", ShareConstants.FEED_SOURCE_PARAM, "Lokio/BufferedSource;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class b extends ResponseBody {
        private final long contentLength;
        private final MediaType contentType;

        public b(MediaType mediaType, long j) {
            this.contentType = mediaType;
            this.contentLength = j;
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: contentLength, reason: from getter */
        public long getContentLength() {
            return this.contentLength;
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: contentType, reason: from getter */
        public MediaType getContentType() {
            return this.contentType;
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: source */
        public okio.e getDelegateSource() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    /* JADX INFO: compiled from: OkHttpCall.kt */
    @Metadata(d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fH\u0016¨\u0006\r"}, d2 = {"com/vungle/ads/internal/network/OkHttpCall$enqueue$2", "Lokhttp3/Callback;", "callFailure", "", "e", "", "onFailure", NotificationCompat.CATEGORY_CALL, "Lokhttp3/Call;", "Ljava/io/IOException;", "onResponse", com.json.mediationsdk.utils.c.Y1, "Lokhttp3/Response;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class c implements Callback {
        final /* synthetic */ Callback<T> $callback;
        final /* synthetic */ OkHttpCall<T> this$0;

        c(OkHttpCall<T> okHttpCall, Callback<T> callback) {
            this.this$0 = okHttpCall;
            this.$callback = callback;
        }

        private final void callFailure(Throwable e2) throws Throwable {
            try {
                this.$callback.onFailure(this.this$0, e2);
            } catch (Throwable th) {
                OkHttpCall.INSTANCE.throwIfFatal(th);
                th.printStackTrace();
            }
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException e2) throws Throwable {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(e2, "e");
            callFailure(e2);
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) throws Throwable {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(response, "response");
            try {
                try {
                    this.$callback.onResponse(this.this$0, this.this$0.parseResponse(response));
                } catch (Throwable th) {
                    OkHttpCall.INSTANCE.throwIfFatal(th);
                    th.printStackTrace();
                }
            } catch (Throwable th2) {
                OkHttpCall.INSTANCE.throwIfFatal(th2);
                callFailure(th2);
            }
        }
    }

    public OkHttpCall(Call rawCall, Converter<ResponseBody, T> responseConverter) {
        Intrinsics.checkNotNullParameter(rawCall, "rawCall");
        Intrinsics.checkNotNullParameter(responseConverter, "responseConverter");
        this.rawCall = rawCall;
        this.responseConverter = responseConverter;
    }

    private final ResponseBody buffer(ResponseBody body) throws IOException {
        Buffer buffer = new Buffer();
        body.getDelegateSource().R(buffer);
        return ResponseBody.INSTANCE.f(buffer, body.getContentType(), body.getContentLength());
    }

    @Override // com.vungle.ads.internal.network.Call
    public void cancel() {
        Call call;
        this.canceled = true;
        synchronized (this) {
            call = this.rawCall;
            v vVar = v.a;
        }
        call.cancel();
    }

    @Override // com.vungle.ads.internal.network.Call
    public void enqueue(Callback<T> callback) {
        Call call;
        Intrinsics.checkNotNullParameter(callback, "callback");
        Objects.requireNonNull(callback, "callback == null");
        synchronized (this) {
            call = this.rawCall;
            v vVar = v.a;
        }
        if (this.canceled) {
            call.cancel();
        }
        call.c(new c(this, callback));
    }

    @Override // com.vungle.ads.internal.network.Call
    public Response<T> execute() throws IOException {
        Call call;
        synchronized (this) {
            call = this.rawCall;
            v vVar = v.a;
        }
        if (this.canceled) {
            call.cancel();
        }
        return parseResponse(call.execute());
    }

    @Override // com.vungle.ads.internal.network.Call
    public boolean isCanceled() {
        boolean p;
        if (this.canceled) {
            return true;
        }
        synchronized (this) {
            p = this.rawCall.getP();
        }
        return p;
    }

    public final Response<T> parseResponse(Response rawResp) throws IOException {
        Intrinsics.checkNotNullParameter(rawResp, "rawResp");
        ResponseBody f10614g = rawResp.getF10614g();
        if (f10614g == null) {
            return null;
        }
        Response responseC = rawResp.q().b(new b(f10614g.getContentType(), f10614g.getContentLength())).c();
        int code = responseC.getCode();
        if (code >= 200 && code < 300) {
            if (code == 204 || code == 205) {
                f10614g.close();
                return Response.INSTANCE.success(null, responseC);
            }
            a aVar = new a(f10614g);
            try {
                return Response.INSTANCE.success(this.responseConverter.convert(aVar), responseC);
            } catch (RuntimeException e2) {
                aVar.throwIfCaught();
                throw e2;
            }
        }
        try {
            Response<T> responseError = Response.INSTANCE.error(buffer(f10614g), responseC);
            CloseableKt.closeFinally(f10614g, null);
            return responseError;
        } finally {
        }
    }
}
