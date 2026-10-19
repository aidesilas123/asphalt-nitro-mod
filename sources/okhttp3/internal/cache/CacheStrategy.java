package okhttp3.internal.cache;

import com.mbridge.msdk.foundation.download.Command;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.CacheControl;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;

/* JADX INFO: renamed from: okhttp3.internal.cache.b, reason: from Kotlin metadata */
/* JADX INFO: compiled from: CacheStrategy.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\u000b\fB\u001b\b\u0000\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lokhttp3/internal/cache/CacheStrategy;", "", "networkRequest", "Lokhttp3/Request;", "cacheResponse", "Lokhttp3/Response;", "(Lokhttp3/Request;Lokhttp3/Response;)V", "getCacheResponse", "()Lokhttp3/Response;", "getNetworkRequest", "()Lokhttp3/Request;", "Companion", "Factory", "okhttp"}, mv = {1, 6, 0}, xi = 48)
public final class CacheStrategy {
    public static final a a = new a(null);
    private final Request b;
    private final Response c;

    /* JADX INFO: renamed from: okhttp3.internal.cache.b$a */
    /* JADX INFO: compiled from: CacheStrategy.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Lokhttp3/internal/cache/CacheStrategy$Companion;", "", "()V", "isCacheable", "", com.json.mediationsdk.utils.c.Y1, "Lokhttp3/Response;", "request", "Lokhttp3/Request;", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x003b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final boolean a(okhttp3.Response r5, okhttp3.Request r6) {
            /*
                r4 = this;
                java.lang.String r0 = "response"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                java.lang.String r0 = "request"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
                int r0 = r5.getCode()
                r1 = 200(0xc8, float:2.8E-43)
                r2 = 0
                if (r0 == r1) goto L65
                r1 = 410(0x19a, float:5.75E-43)
                if (r0 == r1) goto L65
                r1 = 414(0x19e, float:5.8E-43)
                if (r0 == r1) goto L65
                r1 = 501(0x1f5, float:7.02E-43)
                if (r0 == r1) goto L65
                r1 = 203(0xcb, float:2.84E-43)
                if (r0 == r1) goto L65
                r1 = 204(0xcc, float:2.86E-43)
                if (r0 == r1) goto L65
                r1 = 307(0x133, float:4.3E-43)
                if (r0 == r1) goto L3b
                r1 = 308(0x134, float:4.32E-43)
                if (r0 == r1) goto L65
                r1 = 404(0x194, float:5.66E-43)
                if (r0 == r1) goto L65
                r1 = 405(0x195, float:5.68E-43)
                if (r0 == r1) goto L65
                switch(r0) {
                    case 300: goto L65;
                    case 301: goto L65;
                    case 302: goto L3b;
                    default: goto L3a;
                }
            L3a:
                return r2
            L3b:
                r0 = 2
                java.lang.String r1 = "Expires"
                r3 = 0
                java.lang.String r0 = okhttp3.Response.header$default(r5, r1, r3, r0, r3)
                if (r0 != 0) goto L65
                okhttp3.CacheControl r0 = r5.e()
                int r0 = r0.getF10552f()
                r1 = -1
                if (r0 != r1) goto L65
                okhttp3.CacheControl r0 = r5.e()
                boolean r0 = r0.getI()
                if (r0 != 0) goto L65
                okhttp3.CacheControl r0 = r5.e()
                boolean r0 = r0.getH()
                if (r0 != 0) goto L65
                return r2
            L65:
                okhttp3.CacheControl r5 = r5.e()
                boolean r5 = r5.getF10551e()
                if (r5 != 0) goto L7a
                okhttp3.CacheControl r5 = r6.b()
                boolean r5 = r5.getF10551e()
                if (r5 != 0) goto L7a
                r2 = 1
            L7a:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache.CacheStrategy.a.a(okhttp3.Response, okhttp3.Request):boolean");
        }
    }

    /* JADX INFO: renamed from: okhttp3.internal.cache.b$b */
    /* JADX INFO: compiled from: CacheStrategy.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u0017\u001a\u00020\u0003H\u0002J\u0006\u0010\u0018\u001a\u00020\u0019J\b\u0010\u001a\u001a\u00020\u0019H\u0002J\b\u0010\u001b\u001a\u00020\u0003H\u0002J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\b\u0010\u001e\u001a\u00020\u001dH\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lokhttp3/internal/cache/CacheStrategy$Factory;", "", "nowMillis", "", "request", "Lokhttp3/Request;", "cacheResponse", "Lokhttp3/Response;", "(JLokhttp3/Request;Lokhttp3/Response;)V", "ageSeconds", "", DownloadModel.ETAG, "", "expires", "Ljava/util/Date;", "lastModified", "lastModifiedString", "receivedResponseMillis", "getRequest$okhttp", "()Lokhttp3/Request;", "sentRequestMillis", "servedDate", "servedDateString", "cacheResponseAge", "compute", "Lokhttp3/internal/cache/CacheStrategy;", "computeCandidate", "computeFreshnessLifetime", "hasConditions", "", "isFreshnessLifetimeHeuristic", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class b {
        private final long a;
        private final Request b;
        private final Response c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Date f10651d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f10652e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Date f10653f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f10654g;
        private Date h;
        private long i;
        private long j;
        private String k;
        private int l;

        public b(long j, Request request, Response response) {
            Intrinsics.checkNotNullParameter(request, "request");
            this.a = j;
            this.b = request;
            this.c = response;
            this.l = -1;
            if (response != null) {
                this.i = response.getK();
                this.j = response.getL();
                Headers f10613f = response.getF10613f();
                int i = 0;
                int size = f10613f.size();
                while (i < size) {
                    int i2 = i + 1;
                    String strC = f10613f.c(i);
                    String strH = f10613f.h(i);
                    if (StringsKt__StringsJVMKt.equals(strC, "Date", true)) {
                        this.f10651d = DatesKt.toHttpDateOrNull(strH);
                        this.f10652e = strH;
                    } else if (StringsKt__StringsJVMKt.equals(strC, "Expires", true)) {
                        this.h = DatesKt.toHttpDateOrNull(strH);
                    } else if (StringsKt__StringsJVMKt.equals(strC, "Last-Modified", true)) {
                        this.f10653f = DatesKt.toHttpDateOrNull(strH);
                        this.f10654g = strH;
                    } else if (StringsKt__StringsJVMKt.equals(strC, Command.HTTP_HEADER_ETAG, true)) {
                        this.k = strH;
                    } else if (StringsKt__StringsJVMKt.equals(strC, "Age", true)) {
                        this.l = Util.toNonNegativeInt(strH, -1);
                    }
                    i = i2;
                }
            }
        }

        private final long a() {
            Date date = this.f10651d;
            long jMax = date != null ? Math.max(0L, this.j - date.getTime()) : 0L;
            int i = this.l;
            if (i != -1) {
                jMax = Math.max(jMax, TimeUnit.SECONDS.toMillis(i));
            }
            long j = this.j;
            return jMax + (j - this.i) + (this.a - j);
        }

        private final CacheStrategy c() {
            if (this.c == null) {
                return new CacheStrategy(this.b, null);
            }
            if ((!this.b.g() || this.c.getF10612e() != null) && CacheStrategy.a.a(this.c, this.b)) {
                CacheControl cacheControlB = this.b.b();
                if (cacheControlB.getF10550d() || e(this.b)) {
                    return new CacheStrategy(this.b, null);
                }
                CacheControl cacheControlE = this.c.e();
                long jA = a();
                long jD = d();
                if (cacheControlB.getF10552f() != -1) {
                    jD = Math.min(jD, TimeUnit.SECONDS.toMillis(cacheControlB.getF10552f()));
                }
                long millis = 0;
                long millis2 = cacheControlB.getL() != -1 ? TimeUnit.SECONDS.toMillis(cacheControlB.getL()) : 0L;
                if (!cacheControlE.getJ() && cacheControlB.getK() != -1) {
                    millis = TimeUnit.SECONDS.toMillis(cacheControlB.getK());
                }
                if (!cacheControlE.getF10550d()) {
                    long j = millis2 + jA;
                    if (j < millis + jD) {
                        Response.a aVarQ = this.c.q();
                        if (j >= jD) {
                            aVarQ.a("Warning", "110 HttpURLConnection \"Response is stale\"");
                        }
                        if (jA > 86400000 && f()) {
                            aVarQ.a("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                        }
                        return new CacheStrategy(null, aVarQ.c());
                    }
                }
                String str = this.k;
                String str2 = "If-Modified-Since";
                if (str != null) {
                    str2 = "If-None-Match";
                } else if (this.f10653f != null) {
                    str = this.f10654g;
                } else {
                    if (this.f10651d == null) {
                        return new CacheStrategy(this.b, null);
                    }
                    str = this.f10652e;
                }
                Headers.a aVarE = this.b.getC().e();
                Intrinsics.checkNotNull(str);
                aVarE.c(str2, str);
                return new CacheStrategy(this.b.i().g(aVarE.e()).b(), this.c);
            }
            return new CacheStrategy(this.b, null);
        }

        private final long d() {
            Long lValueOf;
            Response response = this.c;
            Intrinsics.checkNotNull(response);
            if (response.e().getF10552f() != -1) {
                return TimeUnit.SECONDS.toMillis(r0.getF10552f());
            }
            Date date = this.h;
            if (date != null) {
                Date date2 = this.f10651d;
                lValueOf = date2 != null ? Long.valueOf(date2.getTime()) : null;
                long time = date.getTime() - (lValueOf == null ? this.j : lValueOf.longValue());
                if (time > 0) {
                    return time;
                }
                return 0L;
            }
            if (this.f10653f == null || this.c.getA().getA().l() != null) {
                return 0L;
            }
            Date date3 = this.f10651d;
            lValueOf = date3 != null ? Long.valueOf(date3.getTime()) : null;
            long jLongValue = lValueOf == null ? this.i : lValueOf.longValue();
            Date date4 = this.f10653f;
            Intrinsics.checkNotNull(date4);
            long time2 = jLongValue - date4.getTime();
            if (time2 > 0) {
                return time2 / ((long) 10);
            }
            return 0L;
        }

        private final boolean e(Request request) {
            return (request.d("If-Modified-Since") == null && request.d("If-None-Match") == null) ? false : true;
        }

        private final boolean f() {
            Response response = this.c;
            Intrinsics.checkNotNull(response);
            return response.e().getF10552f() == -1 && this.h == null;
        }

        public final CacheStrategy b() {
            CacheStrategy cacheStrategyC = c();
            return (cacheStrategyC.getB() == null || !this.b.b().getM()) ? cacheStrategyC : new CacheStrategy(null, null);
        }
    }

    public CacheStrategy(Request request, Response response) {
        this.b = request;
        this.c = response;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final Response getC() {
        return this.c;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final Request getB() {
        return this.b;
    }
}
