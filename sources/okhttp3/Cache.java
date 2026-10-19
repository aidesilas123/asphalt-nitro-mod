package okhttp3;

import androidx.webkit.ProxyConfig;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.share.internal.ShareConstants;
import com.json.b4;
import com.kidoz.sdk.api.players.web_player.WebPreferenceConstants;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.TreeSet;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.n;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlin.v;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.cache.CacheRequest;
import okhttp3.internal.cache.CacheStrategy;
import okhttp3.internal.cache.DiskLruCache;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.HttpMethod;
import okhttp3.internal.http.StatusLine;
import okhttp3.internal.io.FileSystem;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.ByteString;
import okio.Okio;
import okio.w;
import okio.y;

/* JADX INFO: compiled from: Cache.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010)\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 C2\u00020\u00012\u00020\u0002:\u0004BCDEB\u0017\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u001f\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0016\u0010\u001f\u001a\u00020 2\f\u0010!\u001a\b\u0018\u00010\"R\u00020\fH\u0002J\b\u0010#\u001a\u00020 H\u0016J\u0006\u0010$\u001a\u00020 J\r\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\b%J\u0006\u0010&\u001a\u00020 J\b\u0010'\u001a\u00020 H\u0016J\u0017\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010*\u001a\u00020+H\u0000¢\u0006\u0002\b,J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010-\u001a\u00020 J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0015\u001a\u00020\u0011J\u0017\u0010.\u001a\u0004\u0018\u00010/2\u0006\u00100\u001a\u00020)H\u0000¢\u0006\u0002\b1J\u0015\u00102\u001a\u00020 2\u0006\u0010*\u001a\u00020+H\u0000¢\u0006\u0002\b3J\u0006\u0010\u0016\u001a\u00020\u0011J\u0006\u00104\u001a\u00020\u0006J\r\u00105\u001a\u00020 H\u0000¢\u0006\u0002\b6J\u0015\u00107\u001a\u00020 2\u0006\u00108\u001a\u000209H\u0000¢\u0006\u0002\b:J\u001d\u0010;\u001a\u00020 2\u0006\u0010<\u001a\u00020)2\u0006\u0010=\u001a\u00020)H\u0000¢\u0006\u0002\b>J\f\u0010?\u001a\b\u0012\u0004\u0012\u00020A0@J\u0006\u0010\u0017\u001a\u00020\u0011J\u0006\u0010\u001c\u001a\u00020\u0011R\u0014\u0010\u000b\u001a\u00020\fX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0003\u001a\u00020\u00048G¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0012\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u00020\u0011X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0011X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0019\"\u0004\b\u001e\u0010\u001b¨\u0006F"}, d2 = {"Lokhttp3/Cache;", "Ljava/io/Closeable;", "Ljava/io/Flushable;", "directory", "Ljava/io/File;", SDKConstants.PARAM_CONTEXT_MAX_SIZE, "", "(Ljava/io/File;J)V", "fileSystem", "Lokhttp3/internal/io/FileSystem;", "(Ljava/io/File;JLokhttp3/internal/io/FileSystem;)V", WebPreferenceConstants.CLEAR_CACHE_EXIT, "Lokhttp3/internal/cache/DiskLruCache;", "getCache$okhttp", "()Lokhttp3/internal/cache/DiskLruCache;", "()Ljava/io/File;", "hitCount", "", "isClosed", "", "()Z", "networkCount", "requestCount", "writeAbortCount", "getWriteAbortCount$okhttp", "()I", "setWriteAbortCount$okhttp", "(I)V", "writeSuccessCount", "getWriteSuccessCount$okhttp", "setWriteSuccessCount$okhttp", "abortQuietly", "", "editor", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "close", "delete", "-deprecated_directory", "evictAll", "flush", "get", "Lokhttp3/Response;", "request", "Lokhttp3/Request;", "get$okhttp", MobileAdsBridgeBase.initializeMethodName, "put", "Lokhttp3/internal/cache/CacheRequest;", com.json.mediationsdk.utils.c.Y1, "put$okhttp", "remove", "remove$okhttp", "size", "trackConditionalCacheHit", "trackConditionalCacheHit$okhttp", "trackResponse", "cacheStrategy", "Lokhttp3/internal/cache/CacheStrategy;", "trackResponse$okhttp", "update", "cached", "network", "update$okhttp", "urls", "", "", "CacheResponseBody", "Companion", "Entry", "RealCacheRequest", "okhttp"}, mv = {1, 6, 0}, xi = 48)
public final class Cache implements Closeable, Flushable {
    public static final b a = new b(null);
    private final DiskLruCache b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f10539d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f10540e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f10541f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f10542g;

    /* JADX INFO: compiled from: Cache.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u00060\u0003R\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0012\u0010\u0002\u001a\u00060\u0003R\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lokhttp3/Cache$RealCacheRequest;", "Lokhttp3/internal/cache/CacheRequest;", "editor", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "Lokhttp3/internal/cache/DiskLruCache;", "(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V", "body", "Lokio/Sink;", "cacheOut", "done", "", "getDone", "()Z", "setDone", "(Z)V", "abort", "", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    private final class RealCacheRequest implements CacheRequest {
        private final DiskLruCache.b a;
        private final w b;
        private final w c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f10543d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Cache f10544e;

        /* JADX INFO: compiled from: Cache.kt */
        @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"okhttp3/Cache$RealCacheRequest$1", "Lokio/ForwardingSink;", "close", "", "okhttp"}, mv = {1, 6, 0}, xi = 48)
        public static final class a extends okio.i {
            final /* synthetic */ Cache b;
            final /* synthetic */ RealCacheRequest c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Cache cache, RealCacheRequest realCacheRequest, w wVar) {
                super(wVar);
                this.b = cache;
                this.c = realCacheRequest;
            }

            @Override // okio.i, okio.w, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                Cache cache = this.b;
                RealCacheRequest realCacheRequest = this.c;
                synchronized (cache) {
                    if (realCacheRequest.getF10543d()) {
                        return;
                    }
                    realCacheRequest.b(true);
                    cache.i(cache.getC() + 1);
                    super.close();
                    this.c.a.b();
                }
            }
        }

        public RealCacheRequest(Cache this$0, DiskLruCache.b editor) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(editor, "editor");
            this.f10544e = this$0;
            this.a = editor;
            w wVarF = editor.f(1);
            this.b = wVarF;
            this.c = new a(this$0, this, wVarF);
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final boolean getF10543d() {
            return this.f10543d;
        }

        @Override // okhttp3.internal.cache.CacheRequest
        public void abort() {
            Cache cache = this.f10544e;
            synchronized (cache) {
                if (getF10543d()) {
                    return;
                }
                b(true);
                cache.h(cache.getF10539d() + 1);
                Util.closeQuietly(this.b);
                try {
                    this.a.a();
                } catch (IOException unused) {
                }
            }
        }

        public final void b(boolean z) {
            this.f10543d = z;
        }

        @Override // okhttp3.internal.cache.CacheRequest
        /* JADX INFO: renamed from: body, reason: from getter */
        public w getC() {
            return this.c;
        }
    }

    /* JADX INFO: compiled from: Cache.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B%\u0012\n\u0010\u0002\u001a\u00060\u0003R\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\bJ\b\u0010\u0007\u001a\u00020\rH\u0016J\n\u0010\u0005\u001a\u0004\u0018\u00010\u000eH\u0016J\b\u0010\u000f\u001a\u00020\nH\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0015\u0010\u0002\u001a\u00060\u0003R\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lokhttp3/Cache$CacheResponseBody;", "Lokhttp3/ResponseBody;", "snapshot", "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "Lokhttp3/internal/cache/DiskLruCache;", "contentType", "", "contentLength", "(Lokhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V", "bodySource", "Lokio/BufferedSource;", "getSnapshot", "()Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "", "Lokhttp3/MediaType;", ShareConstants.FEED_SOURCE_PARAM, "okhttp"}, mv = {1, 6, 0}, xi = 48)
    private static final class a extends ResponseBody {
        private final DiskLruCache.d a;
        private final String b;
        private final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final okio.e f10545d;

        /* JADX INFO: renamed from: okhttp3.Cache$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Cache.kt */
        @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"okhttp3/Cache$CacheResponseBody$1", "Lokio/ForwardingSource;", "close", "", "okhttp"}, mv = {1, 6, 0}, xi = 48)
        public static final class C0604a extends okio.j {
            final /* synthetic */ y a;
            final /* synthetic */ a b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0604a(y yVar, a aVar) {
                super(yVar);
                this.a = yVar;
                this.b = aVar;
            }

            @Override // okio.j, okio.y, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                this.b.getA().close();
                super.close();
            }
        }

        public a(DiskLruCache.d snapshot, String str, String str2) {
            Intrinsics.checkNotNullParameter(snapshot, "snapshot");
            this.a = snapshot;
            this.b = str;
            this.c = str2;
            this.f10545d = Okio.buffer(new C0604a(snapshot.e(1), this));
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: contentLength */
        public long getContentLength() {
            String str = this.c;
            if (str == null) {
                return -1L;
            }
            return Util.toLongOrDefault(str, -1L);
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: contentType */
        public MediaType getContentType() {
            String str = this.b;
            if (str == null) {
                return null;
            }
            return MediaType.a.b(str);
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final DiskLruCache.d getA() {
            return this.a;
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: source, reason: from getter */
        public okio.e getDelegateSource() {
            return this.f10545d;
        }
    }

    /* JADX INFO: compiled from: Cache.kt */
    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0015\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0000¢\u0006\u0002\b\u000fJ\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0002J\u001e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001aJ\n\u0010\u001b\u001a\u00020\u0015*\u00020\u0017J\u0012\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\t0\u001d*\u00020\u0011H\u0002J\n\u0010\u0010\u001a\u00020\u0011*\u00020\u0017R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lokhttp3/Cache$Companion;", "", "()V", "ENTRY_BODY", "", "ENTRY_COUNT", "ENTRY_METADATA", "VERSION", "key", "", "url", "Lokhttp3/HttpUrl;", "readInt", ShareConstants.FEED_SOURCE_PARAM, "Lokio/BufferedSource;", "readInt$okhttp", "varyHeaders", "Lokhttp3/Headers;", "requestHeaders", "responseHeaders", "varyMatches", "", "cachedResponse", "Lokhttp3/Response;", "cachedRequest", "newRequest", "Lokhttp3/Request;", "hasVaryAll", "varyFields", "", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(n nVar) {
            this();
        }

        private final Set<String> d(Headers headers) {
            int size = headers.size();
            TreeSet treeSet = null;
            int i = 0;
            while (i < size) {
                int i2 = i + 1;
                if (StringsKt__StringsJVMKt.equals("Vary", headers.c(i), true)) {
                    String strH = headers.h(i);
                    if (treeSet == null) {
                        treeSet = new TreeSet(StringsKt__StringsJVMKt.getCASE_INSENSITIVE_ORDER(StringCompanionObject.a));
                    }
                    Iterator it = StringsKt__StringsKt.split$default((CharSequence) strH, new char[]{','}, false, 0, 6, (Object) null).iterator();
                    while (it.hasNext()) {
                        treeSet.add(StringsKt__StringsKt.trim((String) it.next()).toString());
                    }
                }
                i = i2;
            }
            return treeSet == null ? SetsKt__SetsKt.emptySet() : treeSet;
        }

        private final Headers e(Headers headers, Headers headers2) {
            Set<String> setD = d(headers2);
            if (setD.isEmpty()) {
                return Util.b;
            }
            Headers.a aVar = new Headers.a();
            int i = 0;
            int size = headers.size();
            while (i < size) {
                int i2 = i + 1;
                String strC = headers.c(i);
                if (setD.contains(strC)) {
                    aVar.a(strC, headers.h(i));
                }
                i = i2;
            }
            return aVar.e();
        }

        public final boolean a(Response response) {
            Intrinsics.checkNotNullParameter(response, "<this>");
            return d(response.getF10613f()).contains(ProxyConfig.MATCH_ALL_SCHEMES);
        }

        public final String b(HttpUrl url) {
            Intrinsics.checkNotNullParameter(url, "url");
            return ByteString.a.d(url.getK()).y().q();
        }

        public final int c(okio.e source) throws IOException {
            Intrinsics.checkNotNullParameter(source, "source");
            try {
                long decimalLong = source.readDecimalLong();
                String utf8LineStrict = source.readUtf8LineStrict();
                if (decimalLong >= 0 && decimalLong <= 2147483647L) {
                    if (!(utf8LineStrict.length() > 0)) {
                        return (int) decimalLong;
                    }
                }
                throw new IOException("expected an int but was \"" + decimalLong + utf8LineStrict + '\"');
            } catch (NumberFormatException e2) {
                throw new IOException(e2.getMessage());
            }
        }

        public final Headers f(Response response) {
            Intrinsics.checkNotNullParameter(response, "<this>");
            Response h = response.getH();
            Intrinsics.checkNotNull(h);
            return e(h.getA().getC(), response.getF10613f());
        }

        public final boolean g(Response cachedResponse, Headers cachedRequest, Request newRequest) {
            Intrinsics.checkNotNullParameter(cachedResponse, "cachedResponse");
            Intrinsics.checkNotNullParameter(cachedRequest, "cachedRequest");
            Intrinsics.checkNotNullParameter(newRequest, "newRequest");
            Set<String> setD = d(cachedResponse.getF10613f());
            if ((setD instanceof Collection) && setD.isEmpty()) {
                return true;
            }
            for (String str : setD) {
                if (!Intrinsics.areEqual(cachedRequest.i(str), newRequest.e(str))) {
                    return false;
                }
            }
            return true;
        }
    }

    /* JADX INFO: compiled from: Cache.kt */
    @Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u0000 /2\u00020\u0001:\u0001/B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0016\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020!0 2\u0006\u0010\"\u001a\u00020#H\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\n\u0010$\u001a\u00060%R\u00020&J\u001e\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\f\u0010+\u001a\b\u0012\u0004\u0012\u00020!0 H\u0002J\u0012\u0010,\u001a\u00020(2\n\u0010-\u001a\u00060.R\u00020&R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u00020\r8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00060"}, d2 = {"Lokhttp3/Cache$Entry;", "", "rawSource", "Lokio/Source;", "(Lokio/Source;)V", com.json.mediationsdk.utils.c.Y1, "Lokhttp3/Response;", "(Lokhttp3/Response;)V", "code", "", "handshake", "Lokhttp3/Handshake;", "isHttps", "", "()Z", "message", "", "protocol", "Lokhttp3/Protocol;", "receivedResponseMillis", "", "requestMethod", "responseHeaders", "Lokhttp3/Headers;", "sentRequestMillis", "url", "Lokhttp3/HttpUrl;", "varyHeaders", "matches", "request", "Lokhttp3/Request;", "readCertificateList", "", "Ljava/security/cert/Certificate;", ShareConstants.FEED_SOURCE_PARAM, "Lokio/BufferedSource;", "snapshot", "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "Lokhttp3/internal/cache/DiskLruCache;", "writeCertList", "", "sink", "Lokio/BufferedSink;", "certificates", "writeTo", "editor", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "Companion", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    private static final class c {
        public static final a a = new a(null);
        private static final String b;
        private static final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final HttpUrl f10546d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Headers f10547e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final String f10548f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final Protocol f10549g;
        private final int h;
        private final String i;
        private final Headers j;
        private final Handshake k;
        private final long l;
        private final long m;

        /* JADX INFO: compiled from: Cache.kt */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lokhttp3/Cache$Entry$Companion;", "", "()V", "RECEIVED_MILLIS", "", "SENT_MILLIS", "okhttp"}, mv = {1, 6, 0}, xi = 48)
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(n nVar) {
                this();
            }
        }

        static {
            Platform.Companion companion = Platform.a;
            b = Intrinsics.stringPlus(companion.f().f(), "-Sent-Millis");
            c = Intrinsics.stringPlus(companion.f().f(), "-Received-Millis");
        }

        public c(Response response) {
            Intrinsics.checkNotNullParameter(response, "response");
            this.f10546d = response.getA().getA();
            this.f10547e = Cache.a.f(response);
            this.f10548f = response.getA().getB();
            this.f10549g = response.getB();
            this.h = response.getCode();
            this.i = response.getMessage();
            this.j = response.getF10613f();
            this.k = response.getF10612e();
            this.l = response.getK();
            this.m = response.getL();
        }

        public c(y rawSource) throws IOException {
            Intrinsics.checkNotNullParameter(rawSource, "rawSource");
            try {
                okio.e eVarBuffer = Okio.buffer(rawSource);
                String utf8LineStrict = eVarBuffer.readUtf8LineStrict();
                HttpUrl httpUrlG = HttpUrl.a.g(utf8LineStrict);
                if (httpUrlG == null) {
                    IOException iOException = new IOException(Intrinsics.stringPlus("Cache corruption for ", utf8LineStrict));
                    Platform.a.f().j("cache corruption", 5, iOException);
                    throw iOException;
                }
                this.f10546d = httpUrlG;
                this.f10548f = eVarBuffer.readUtf8LineStrict();
                Headers.a aVar = new Headers.a();
                int iC = Cache.a.c(eVarBuffer);
                int i = 0;
                while (i < iC) {
                    i++;
                    aVar.b(eVarBuffer.readUtf8LineStrict());
                }
                this.f10547e = aVar.e();
                StatusLine statusLineA = StatusLine.a.a(eVarBuffer.readUtf8LineStrict());
                this.f10549g = statusLineA.b;
                this.h = statusLineA.c;
                this.i = statusLineA.f10703d;
                Headers.a aVar2 = new Headers.a();
                int iC2 = Cache.a.c(eVarBuffer);
                int i2 = 0;
                while (i2 < iC2) {
                    i2++;
                    aVar2.b(eVarBuffer.readUtf8LineStrict());
                }
                String str = b;
                String strF = aVar2.f(str);
                String str2 = c;
                String strF2 = aVar2.f(str2);
                aVar2.h(str);
                aVar2.h(str2);
                long j = 0;
                this.l = strF == null ? 0L : Long.parseLong(strF);
                if (strF2 != null) {
                    j = Long.parseLong(strF2);
                }
                this.m = j;
                this.j = aVar2.e();
                if (a()) {
                    String utf8LineStrict2 = eVarBuffer.readUtf8LineStrict();
                    if (utf8LineStrict2.length() > 0) {
                        throw new IOException("expected \"\" but was \"" + utf8LineStrict2 + '\"');
                    }
                    this.k = Handshake.a.b(!eVarBuffer.exhausted() ? TlsVersion.a.a(eVarBuffer.readUtf8LineStrict()) : TlsVersion.SSL_3_0, CipherSuite.a.a(eVarBuffer.readUtf8LineStrict()), c(eVarBuffer), c(eVarBuffer));
                } else {
                    this.k = null;
                }
                v vVar = v.a;
                CloseableKt.closeFinally(rawSource, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(rawSource, th);
                    throw th2;
                }
            }
        }

        private final boolean a() {
            return Intrinsics.areEqual(this.f10546d.getC(), "https");
        }

        private final List<Certificate> c(okio.e eVar) throws IOException {
            int iC = Cache.a.c(eVar);
            if (iC == -1) {
                return CollectionsKt__CollectionsKt.emptyList();
            }
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance(AndroidStaticDeviceInfoDataSource.CERTIFICATE_TYPE_X509);
                ArrayList arrayList = new ArrayList(iC);
                int i = 0;
                while (i < iC) {
                    i++;
                    String utf8LineStrict = eVar.readUtf8LineStrict();
                    Buffer buffer = new Buffer();
                    ByteString byteStringA = ByteString.a.a(utf8LineStrict);
                    Intrinsics.checkNotNull(byteStringA);
                    buffer.P(byteStringA);
                    arrayList.add(certificateFactory.generateCertificate(buffer.inputStream()));
                }
                return arrayList;
            } catch (CertificateException e2) {
                throw new IOException(e2.getMessage());
            }
        }

        private final void e(okio.d dVar, List<? extends Certificate> list) throws IOException {
            try {
                dVar.writeDecimalLong(list.size()).writeByte(10);
                Iterator<? extends Certificate> it = list.iterator();
                while (it.hasNext()) {
                    byte[] bytes = it.next().getEncoded();
                    ByteString.Companion companion = ByteString.a;
                    Intrinsics.checkNotNullExpressionValue(bytes, "bytes");
                    dVar.writeUtf8(ByteString.Companion.of$default(companion, bytes, 0, 0, 3, null).e()).writeByte(10);
                }
            } catch (CertificateEncodingException e2) {
                throw new IOException(e2.getMessage());
            }
        }

        public final boolean b(Request request, Response response) {
            Intrinsics.checkNotNullParameter(request, "request");
            Intrinsics.checkNotNullParameter(response, "response");
            return Intrinsics.areEqual(this.f10546d, request.getA()) && Intrinsics.areEqual(this.f10548f, request.getB()) && Cache.a.g(response, this.f10547e, request);
        }

        public final Response d(DiskLruCache.d snapshot) {
            Intrinsics.checkNotNullParameter(snapshot, "snapshot");
            String strA = this.j.a(b4.I);
            String strA2 = this.j.a("Content-Length");
            return new Response.a().s(new Request.Builder().p(this.f10546d).h(this.f10548f, null).g(this.f10547e).b()).q(this.f10549g).g(this.h).n(this.i).l(this.j).b(new a(snapshot, strA, strA2)).j(this.k).t(this.l).r(this.m).c();
        }

        public final void f(DiskLruCache.b editor) throws IOException {
            Intrinsics.checkNotNullParameter(editor, "editor");
            okio.d dVarBuffer = Okio.buffer(editor.f(0));
            try {
                dVarBuffer.writeUtf8(this.f10546d.getK()).writeByte(10);
                dVarBuffer.writeUtf8(this.f10548f).writeByte(10);
                dVarBuffer.writeDecimalLong(this.f10547e.size()).writeByte(10);
                int size = this.f10547e.size();
                int i = 0;
                while (i < size) {
                    int i2 = i + 1;
                    dVarBuffer.writeUtf8(this.f10547e.c(i)).writeUtf8(": ").writeUtf8(this.f10547e.h(i)).writeByte(10);
                    i = i2;
                }
                dVarBuffer.writeUtf8(new StatusLine(this.f10549g, this.h, this.i).toString()).writeByte(10);
                dVarBuffer.writeDecimalLong(this.j.size() + 2).writeByte(10);
                int size2 = this.j.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    dVarBuffer.writeUtf8(this.j.c(i3)).writeUtf8(": ").writeUtf8(this.j.h(i3)).writeByte(10);
                }
                dVarBuffer.writeUtf8(b).writeUtf8(": ").writeDecimalLong(this.l).writeByte(10);
                dVarBuffer.writeUtf8(c).writeUtf8(": ").writeDecimalLong(this.m).writeByte(10);
                if (a()) {
                    dVarBuffer.writeByte(10);
                    Handshake handshake = this.k;
                    Intrinsics.checkNotNull(handshake);
                    dVarBuffer.writeUtf8(handshake.a().getS1()).writeByte(10);
                    e(dVarBuffer, this.k.d());
                    e(dVarBuffer, this.k.c());
                    dVarBuffer.writeUtf8(this.k.e().getH()).writeByte(10);
                }
                v vVar = v.a;
                CloseableKt.closeFinally(dVarBuffer, null);
            } finally {
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Cache(File directory, long j) {
        this(directory, j, FileSystem.b);
        Intrinsics.checkNotNullParameter(directory, "directory");
    }

    public Cache(File directory, long j, FileSystem fileSystem) {
        Intrinsics.checkNotNullParameter(directory, "directory");
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        this.b = new DiskLruCache(fileSystem, directory, 201105, 2, j, TaskRunner.b);
    }

    private final void a(DiskLruCache.b bVar) {
        if (bVar == null) {
            return;
        }
        try {
            bVar.a();
        } catch (IOException unused) {
        }
    }

    public static final String key(HttpUrl httpUrl) {
        return a.b(httpUrl);
    }

    public final Response b(Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        try {
            DiskLruCache.d dVarI = this.b.i(a.b(request.getA()));
            if (dVarI == null) {
                return null;
            }
            try {
                c cVar = new c(dVarI.e(0));
                Response responseD = cVar.d(dVarI);
                if (cVar.b(request, responseD)) {
                    return responseD;
                }
                ResponseBody f10614g = responseD.getF10614g();
                if (f10614g != null) {
                    Util.closeQuietly(f10614g);
                }
                return null;
            } catch (IOException unused) {
                Util.closeQuietly(dVarI);
                return null;
            }
        } catch (IOException unused2) {
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.b.close();
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final int getF10539d() {
        return this.f10539d;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final int getC() {
        return this.c;
    }

    public final CacheRequest f(Response response) {
        DiskLruCache.b bVarEdit$default;
        Intrinsics.checkNotNullParameter(response, "response");
        String b2 = response.getA().getB();
        if (HttpMethod.a.a(response.getA().getB())) {
            try {
                g(response.getA());
            } catch (IOException unused) {
            }
            return null;
        }
        if (!Intrinsics.areEqual(b2, "GET")) {
            return null;
        }
        b bVar = a;
        if (bVar.a(response)) {
            return null;
        }
        c cVar = new c(response);
        try {
            bVarEdit$default = DiskLruCache.edit$default(this.b, bVar.b(response.getA().getA()), 0L, 2, null);
            if (bVarEdit$default == null) {
                return null;
            }
            try {
                cVar.f(bVarEdit$default);
                return new RealCacheRequest(this, bVarEdit$default);
            } catch (IOException unused2) {
                a(bVarEdit$default);
                return null;
            }
        } catch (IOException unused3) {
            bVarEdit$default = null;
        }
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        this.b.flush();
    }

    public final void g(Request request) throws IOException {
        Intrinsics.checkNotNullParameter(request, "request");
        this.b.w(a.b(request.getA()));
    }

    public final void h(int i) {
        this.f10539d = i;
    }

    public final void i(int i) {
        this.c = i;
    }

    public final synchronized void j() {
        this.f10541f++;
    }

    public final synchronized void k(CacheStrategy cacheStrategy) {
        Intrinsics.checkNotNullParameter(cacheStrategy, "cacheStrategy");
        this.f10542g++;
        if (cacheStrategy.getB() != null) {
            this.f10540e++;
        } else if (cacheStrategy.getC() != null) {
            this.f10541f++;
        }
    }

    public final void l(Response cached, Response network) {
        Intrinsics.checkNotNullParameter(cached, "cached");
        Intrinsics.checkNotNullParameter(network, "network");
        c cVar = new c(network);
        ResponseBody f10614g = cached.getF10614g();
        Objects.requireNonNull(f10614g, "null cannot be cast to non-null type okhttp3.Cache.CacheResponseBody");
        DiskLruCache.b bVarD = null;
        try {
            bVarD = ((a) f10614g).getA().d();
            if (bVarD == null) {
                return;
            }
            cVar.f(bVarD);
            bVarD.b();
        } catch (IOException unused) {
            a(bVarD);
        }
    }
}
