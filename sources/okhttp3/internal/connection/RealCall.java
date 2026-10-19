package okhttp3.internal.connection;

import androidx.core.app.NotificationCompat;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.v;
import okhttp3.Address;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.CertificatePinner;
import okhttp3.Dispatcher;
import okhttp3.EventListener;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.platform.Platform;
import okio.AsyncTimeout;

/* JADX INFO: compiled from: RealCall.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000§\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0001.\u0018\u00002\u00020\u0001:\u0002deB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000e\u00101\u001a\u0002022\u0006\u0010\u0010\u001a\u00020\u000fJ!\u00103\u001a\u0002H4\"\n\b\u0000\u00104*\u0004\u0018\u0001052\u0006\u00106\u001a\u0002H4H\u0002¢\u0006\u0002\u00107J\b\u00108\u001a\u000202H\u0002J\b\u00109\u001a\u000202H\u0016J\b\u0010:\u001a\u00020\u0000H\u0016J\u0010\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>H\u0002J\u0010\u0010?\u001a\u0002022\u0006\u0010@\u001a\u00020AH\u0016J\u0016\u0010B\u001a\u0002022\u0006\u0010C\u001a\u00020\u00052\u0006\u0010D\u001a\u00020\u0007J\b\u0010E\u001a\u00020FH\u0016J\u0015\u0010G\u001a\u0002022\u0006\u0010H\u001a\u00020\u0007H\u0000¢\u0006\u0002\bIJ\r\u0010J\u001a\u00020FH\u0000¢\u0006\u0002\bKJ\u0015\u0010L\u001a\u00020\u001e2\u0006\u0010M\u001a\u00020NH\u0000¢\u0006\u0002\bOJ\b\u0010P\u001a\u00020\u0007H\u0016J\b\u0010Q\u001a\u00020\u0007H\u0016J;\u0010R\u001a\u0002H4\"\n\b\u0000\u00104*\u0004\u0018\u0001052\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010S\u001a\u00020\u00072\u0006\u0010T\u001a\u00020\u00072\u0006\u00106\u001a\u0002H4H\u0000¢\u0006\u0004\bU\u0010VJ\u0019\u0010W\u001a\u0004\u0018\u0001052\b\u00106\u001a\u0004\u0018\u000105H\u0000¢\u0006\u0002\bXJ\r\u0010Y\u001a\u00020ZH\u0000¢\u0006\u0002\b[J\u000f\u0010\\\u001a\u0004\u0018\u00010]H\u0000¢\u0006\u0002\b^J\b\u0010C\u001a\u00020\u0005H\u0016J\u0006\u0010_\u001a\u00020\u0007J\b\u0010-\u001a\u00020`H\u0016J\u0006\u00100\u001a\u000202J!\u0010a\u001a\u0002H4\"\n\b\u0000\u00104*\u0004\u0018\u0001052\u0006\u0010b\u001a\u0002H4H\u0002¢\u0006\u0002\u00107J\b\u0010c\u001a\u00020ZH\u0002R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\"\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u001aX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\"\u0010&\u001a\u0004\u0018\u00010\u001e2\b\u0010\u000e\u001a\u0004\u0018\u00010\u001e@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u000e\u0010+\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010-\u001a\u00020.X\u0082\u0004¢\u0006\u0004\n\u0002\u0010/R\u000e\u00100\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006f"}, d2 = {"Lokhttp3/internal/connection/RealCall;", "Lokhttp3/Call;", "client", "Lokhttp3/OkHttpClient;", "originalRequest", "Lokhttp3/Request;", "forWebSocket", "", "(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V", "callStackTrace", "", "canceled", "getClient", "()Lokhttp3/OkHttpClient;", "<set-?>", "Lokhttp3/internal/connection/RealConnection;", "connection", "getConnection", "()Lokhttp3/internal/connection/RealConnection;", "connectionPool", "Lokhttp3/internal/connection/RealConnectionPool;", "connectionToCancel", "getConnectionToCancel", "setConnectionToCancel", "(Lokhttp3/internal/connection/RealConnection;)V", "eventListener", "Lokhttp3/EventListener;", "getEventListener$okhttp", "()Lokhttp3/EventListener;", "exchange", "Lokhttp3/internal/connection/Exchange;", "exchangeFinder", "Lokhttp3/internal/connection/ExchangeFinder;", "executed", "Ljava/util/concurrent/atomic/AtomicBoolean;", "expectMoreExchanges", "getForWebSocket", "()Z", "interceptorScopedExchange", "getInterceptorScopedExchange$okhttp", "()Lokhttp3/internal/connection/Exchange;", "getOriginalRequest", "()Lokhttp3/Request;", "requestBodyOpen", "responseBodyOpen", "timeout", "okhttp3/internal/connection/RealCall$timeout$1", "Lokhttp3/internal/connection/RealCall$timeout$1;", "timeoutEarlyExit", "acquireConnectionNoEvents", "", "callDone", "E", "Ljava/io/IOException;", "e", "(Ljava/io/IOException;)Ljava/io/IOException;", "callStart", "cancel", "clone", "createAddress", "Lokhttp3/Address;", "url", "Lokhttp3/HttpUrl;", "enqueue", "responseCallback", "Lokhttp3/Callback;", "enterNetworkInterceptorExchange", "request", "newExchangeFinder", "execute", "Lokhttp3/Response;", "exitNetworkInterceptorExchange", "closeExchange", "exitNetworkInterceptorExchange$okhttp", "getResponseWithInterceptorChain", "getResponseWithInterceptorChain$okhttp", "initExchange", "chain", "Lokhttp3/internal/http/RealInterceptorChain;", "initExchange$okhttp", "isCanceled", "isExecuted", "messageDone", "requestDone", "responseDone", "messageDone$okhttp", "(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;", "noMoreExchanges", "noMoreExchanges$okhttp", "redactedUrl", "", "redactedUrl$okhttp", "releaseConnectionNoEvents", "Ljava/net/Socket;", "releaseConnectionNoEvents$okhttp", "retryAfterFailure", "Lokio/AsyncTimeout;", "timeoutExit", "cause", "toLoggableString", "AsyncCall", "CallReference", "okhttp"}, mv = {1, 6, 0}, xi = 48)
public final class RealCall implements Call {
    private final OkHttpClient a;
    private final Request b;
    private final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final RealConnectionPool f10669d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final EventListener f10670e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final c f10671f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final AtomicBoolean f10672g;
    private Object h;
    private ExchangeFinder i;
    private RealConnection j;
    private boolean k;
    private Exchange l;
    private boolean m;
    private boolean n;
    private boolean o;
    private volatile boolean p;
    private volatile Exchange q;
    private volatile RealConnection r;

    /* JADX INFO: compiled from: RealCall.kt */
    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0080\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J\u0012\u0010\u001a\u001a\u00020\u00172\n\u0010\u001b\u001a\u00060\u0000R\u00020\u0006J\b\u0010\u001c\u001a\u00020\u0017H\u0016R\u0011\u0010\u0005\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lokhttp3/internal/connection/RealCall$AsyncCall;", "Ljava/lang/Runnable;", "responseCallback", "Lokhttp3/Callback;", "(Lokhttp3/internal/connection/RealCall;Lokhttp3/Callback;)V", NotificationCompat.CATEGORY_CALL, "Lokhttp3/internal/connection/RealCall;", "getCall", "()Lokhttp3/internal/connection/RealCall;", "<set-?>", "Ljava/util/concurrent/atomic/AtomicInteger;", "callsPerHost", "getCallsPerHost", "()Ljava/util/concurrent/atomic/AtomicInteger;", "host", "", "getHost", "()Ljava/lang/String;", "request", "Lokhttp3/Request;", "getRequest", "()Lokhttp3/Request;", "executeOn", "", "executorService", "Ljava/util/concurrent/ExecutorService;", "reuseCallsPerHostFrom", "other", "run", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public final class a implements Runnable {
        private final Callback a;
        private volatile AtomicInteger b;
        final /* synthetic */ RealCall c;

        public a(RealCall this$0, Callback responseCallback) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(responseCallback, "responseCallback");
            this.c = this$0;
            this.a = responseCallback;
            this.b = new AtomicInteger(0);
        }

        public final void a(ExecutorService executorService) {
            Intrinsics.checkNotNullParameter(executorService, "executorService");
            Dispatcher f10593d = this.c.getA().getF10593d();
            if (Util.h && Thread.holdsLock(f10593d)) {
                throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + f10593d);
            }
            try {
                try {
                    executorService.execute(this);
                } catch (RejectedExecutionException e2) {
                    InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                    interruptedIOException.initCause(e2);
                    this.c.s(interruptedIOException);
                    this.a.onFailure(this.c, interruptedIOException);
                    this.c.getA().getF10593d().f(this);
                }
            } catch (Throwable th) {
                this.c.getA().getF10593d().f(this);
                throw th;
            }
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final RealCall getC() {
            return this.c;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final AtomicInteger getB() {
            return this.b;
        }

        public final String d() {
            return this.c.getB().getA().getF10576f();
        }

        public final void e(a other) {
            Intrinsics.checkNotNullParameter(other, "other");
            this.b = other.b;
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th;
            boolean z;
            IOException e2;
            Dispatcher f10593d;
            String strStringPlus = Intrinsics.stringPlus("OkHttp ", this.c.t());
            RealCall realCall = this.c;
            Thread threadCurrentThread = Thread.currentThread();
            String name = threadCurrentThread.getName();
            threadCurrentThread.setName(strStringPlus);
            try {
                try {
                    realCall.f10671f.j();
                    try {
                        z = true;
                        try {
                            this.a.onResponse(realCall, realCall.p());
                            f10593d = realCall.getA().getF10593d();
                        } catch (IOException e3) {
                            e2 = e3;
                            if (z) {
                                Platform.a.f().j(Intrinsics.stringPlus("Callback failure for ", realCall.z()), 4, e2);
                            } else {
                                this.a.onFailure(realCall, e2);
                            }
                            f10593d = realCall.getA().getF10593d();
                        } catch (Throwable th2) {
                            th = th2;
                            realCall.cancel();
                            if (!z) {
                                IOException iOException = new IOException(Intrinsics.stringPlus("canceled due to ", th));
                                ExceptionsKt__ExceptionsKt.addSuppressed(iOException, th);
                                this.a.onFailure(realCall, iOException);
                            }
                            throw th;
                        }
                    } catch (IOException e4) {
                        e2 = e4;
                        z = false;
                    } catch (Throwable th3) {
                        th = th3;
                        z = false;
                    }
                    f10593d.f(this);
                } catch (Throwable th4) {
                    realCall.getA().getF10593d().f(this);
                    throw th4;
                }
            } finally {
                threadCurrentThread.setName(name);
            }
        }
    }

    /* JADX INFO: compiled from: RealCall.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lokhttp3/internal/connection/RealCall$CallReference;", "Ljava/lang/ref/WeakReference;", "Lokhttp3/internal/connection/RealCall;", "referent", "callStackTrace", "", "(Lokhttp3/internal/connection/RealCall;Ljava/lang/Object;)V", "getCallStackTrace", "()Ljava/lang/Object;", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class b extends WeakReference<RealCall> {
        private final Object a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(RealCall referent, Object obj) {
            super(referent);
            Intrinsics.checkNotNullParameter(referent, "referent");
            this.a = obj;
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final Object getA() {
            return this.a;
        }
    }

    /* JADX INFO: compiled from: RealCall.kt */
    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0014¨\u0006\u0004"}, d2 = {"okhttp3/internal/connection/RealCall$timeout$1", "Lokio/AsyncTimeout;", "timedOut", "", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class c extends AsyncTimeout {
        c() {
        }

        @Override // okio.AsyncTimeout
        protected void p() {
            RealCall.this.cancel();
        }
    }

    public RealCall(OkHttpClient client, Request originalRequest, boolean z) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(originalRequest, "originalRequest");
        this.a = client;
        this.b = originalRequest;
        this.c = z;
        this.f10669d = client.getF10594e().getA();
        this.f10670e = client.getH().a(this);
        c cVar = new c();
        cVar.g(getA().getA(), TimeUnit.MILLISECONDS);
        this.f10671f = cVar;
        this.f10672g = new AtomicBoolean();
        this.o = true;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final <E extends IOException> E d(E e2) {
        Socket socketU;
        boolean z = Util.h;
        if (z && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        RealConnection realConnection = this.j;
        if (realConnection != null) {
            if (z && Thread.holdsLock(realConnection)) {
                throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + realConnection);
            }
            synchronized (realConnection) {
                socketU = u();
            }
            if (this.j == null) {
                if (socketU != null) {
                    Util.closeQuietly(socketU);
                }
                this.f10670e.l(this, realConnection);
            } else {
                if (!(socketU == null)) {
                    throw new IllegalStateException("Check failed.".toString());
                }
            }
        }
        E e3 = (E) y(e2);
        if (e2 != null) {
            EventListener eventListener = this.f10670e;
            Intrinsics.checkNotNull(e3);
            eventListener.e(this, e3);
        } else {
            this.f10670e.d(this);
        }
        return e3;
    }

    private final void e() {
        this.h = Platform.a.f().h("response.body().close()");
        this.f10670e.f(this);
    }

    private final Address g(HttpUrl httpUrl) {
        SSLSocketFactory sSLSocketFactory;
        HostnameVerifier x;
        CertificatePinner y;
        if (httpUrl.getL()) {
            SSLSocketFactory sSLSocketFactoryF = this.a.F();
            x = this.a.getX();
            sSLSocketFactory = sSLSocketFactoryF;
            y = this.a.getY();
        } else {
            sSLSocketFactory = null;
            x = null;
            y = null;
        }
        return new Address(httpUrl.getF10576f(), httpUrl.getF10577g(), this.a.getO(), this.a.getS(), sSLSocketFactory, x, y, this.a.getR(), this.a.getP(), this.a.y(), this.a.k(), this.a.getQ());
    }

    private final <E extends IOException> E y(E e2) {
        if (this.k || !this.f10671f.k()) {
            return e2;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (e2 != null) {
            interruptedIOException.initCause(e2);
        }
        return interruptedIOException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String z() {
        StringBuilder sb = new StringBuilder();
        sb.append(getP() ? "canceled " : "");
        sb.append(this.c ? "web socket" : NotificationCompat.CATEGORY_CALL);
        sb.append(" to ");
        sb.append(t());
        return sb.toString();
    }

    public final void b(RealConnection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (!Util.h || Thread.holdsLock(connection)) {
            if (!(this.j == null)) {
                throw new IllegalStateException("Check failed.".toString());
            }
            this.j = connection;
            connection.m().add(new b(this, this.h));
            return;
        }
        throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + connection);
    }

    @Override // okhttp3.Call
    public void c(Callback responseCallback) {
        Intrinsics.checkNotNullParameter(responseCallback, "responseCallback");
        if (!this.f10672g.compareAndSet(false, true)) {
            throw new IllegalStateException("Already Executed".toString());
        }
        e();
        this.a.getF10593d().a(new a(this, responseCallback));
    }

    @Override // okhttp3.Call
    public void cancel() {
        if (this.p) {
            return;
        }
        this.p = true;
        Exchange exchange = this.q;
        if (exchange != null) {
            exchange.b();
        }
        RealConnection realConnection = this.r;
        if (realConnection != null) {
            realConnection.c();
        }
        this.f10670e.g(this);
    }

    @Override // okhttp3.Call
    public Response execute() {
        if (!this.f10672g.compareAndSet(false, true)) {
            throw new IllegalStateException("Already Executed".toString());
        }
        this.f10671f.j();
        e();
        try {
            this.a.getF10593d().b(this);
            return p();
        } finally {
            this.a.getF10593d().g(this);
        }
    }

    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public RealCall clone() {
        return new RealCall(this.a, this.b, this.c);
    }

    public final void h(Request request, boolean z) {
        Intrinsics.checkNotNullParameter(request, "request");
        if (!(this.l == null)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        synchronized (this) {
            if (!(!this.n)) {
                throw new IllegalStateException("cannot make a new request because the previous response is still open: please call response.close()".toString());
            }
            if (!(!this.m)) {
                throw new IllegalStateException("Check failed.".toString());
            }
            v vVar = v.a;
        }
        if (z) {
            this.i = new ExchangeFinder(this.f10669d, g(request.getA()), this, this.f10670e);
        }
    }

    public final void i(boolean z) {
        Exchange exchange;
        synchronized (this) {
            if (!this.o) {
                throw new IllegalStateException("released".toString());
            }
            v vVar = v.a;
        }
        if (z && (exchange = this.q) != null) {
            exchange.d();
        }
        this.l = null;
    }

    @Override // okhttp3.Call
    /* JADX INFO: renamed from: isCanceled, reason: from getter */
    public boolean getP() {
        return this.p;
    }

    /* JADX INFO: renamed from: j, reason: from getter */
    public final OkHttpClient getA() {
        return this.a;
    }

    /* JADX INFO: renamed from: k, reason: from getter */
    public final RealConnection getJ() {
        return this.j;
    }

    /* JADX INFO: renamed from: l, reason: from getter */
    public final EventListener getF10670e() {
        return this.f10670e;
    }

    /* JADX INFO: renamed from: m, reason: from getter */
    public final boolean getC() {
        return this.c;
    }

    /* JADX INFO: renamed from: n, reason: from getter */
    public final Exchange getL() {
        return this.l;
    }

    /* JADX INFO: renamed from: o, reason: from getter */
    public final Request getB() {
        return this.b;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final okhttp3.Response p() throws java.lang.Throwable {
        /*
            r10 = this;
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            okhttp3.OkHttpClient r0 = r10.a
            java.util.List r0 = r0.t()
            kotlin.collections.p.addAll(r2, r0)
            okhttp3.internal.http.f r0 = new okhttp3.internal.http.f
            okhttp3.OkHttpClient r1 = r10.a
            r0.<init>(r1)
            r2.add(r0)
            okhttp3.internal.http.a r0 = new okhttp3.internal.http.a
            okhttp3.OkHttpClient r1 = r10.a
            okhttp3.h r1 = r1.getM()
            r0.<init>(r1)
            r2.add(r0)
            okhttp3.internal.cache.CacheInterceptor r0 = new okhttp3.internal.cache.CacheInterceptor
            okhttp3.OkHttpClient r1 = r10.a
            okhttp3.Cache r1 = r1.getN()
            r0.<init>(r1)
            r2.add(r0)
            okhttp3.internal.connection.a r0 = okhttp3.internal.connection.ConnectInterceptor.b
            r2.add(r0)
            boolean r0 = r10.c
            if (r0 != 0) goto L46
            okhttp3.OkHttpClient r0 = r10.a
            java.util.List r0 = r0.v()
            kotlin.collections.p.addAll(r2, r0)
        L46:
            okhttp3.internal.http.b r0 = new okhttp3.internal.http.b
            boolean r1 = r10.c
            r0.<init>(r1)
            r2.add(r0)
            okhttp3.internal.http.RealInterceptorChain r9 = new okhttp3.internal.http.RealInterceptorChain
            r3 = 0
            r4 = 0
            okhttp3.Request r5 = r10.b
            okhttp3.OkHttpClient r0 = r10.a
            int r6 = r0.getB()
            okhttp3.OkHttpClient r0 = r10.a
            int r7 = r0.getC()
            okhttp3.OkHttpClient r0 = r10.a
            int r8 = r0.getD()
            r0 = r9
            r1 = r10
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            r0 = 0
            r1 = 0
            okhttp3.Request r2 = r10.b     // Catch: java.lang.Throwable -> L8a java.io.IOException -> L8c
            okhttp3.Response r2 = r9.a(r2)     // Catch: java.lang.Throwable -> L8a java.io.IOException -> L8c
            boolean r3 = r10.getP()     // Catch: java.lang.Throwable -> L8a java.io.IOException -> L8c
            if (r3 != 0) goto L7f
            r10.s(r1)
            return r2
        L7f:
            okhttp3.internal.Util.closeQuietly(r2)     // Catch: java.lang.Throwable -> L8a java.io.IOException -> L8c
            java.io.IOException r2 = new java.io.IOException     // Catch: java.lang.Throwable -> L8a java.io.IOException -> L8c
            java.lang.String r3 = "Canceled"
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L8a java.io.IOException -> L8c
            throw r2     // Catch: java.lang.Throwable -> L8a java.io.IOException -> L8c
        L8a:
            r2 = move-exception
            goto La0
        L8c:
            r0 = move-exception
            r2 = 1
            java.io.IOException r0 = r10.s(r0)     // Catch: java.lang.Throwable -> L9d
            if (r0 != 0) goto L9c
            java.lang.NullPointerException r0 = new java.lang.NullPointerException     // Catch: java.lang.Throwable -> L9d
            java.lang.String r3 = "null cannot be cast to non-null type kotlin.Throwable"
            r0.<init>(r3)     // Catch: java.lang.Throwable -> L9d
            throw r0     // Catch: java.lang.Throwable -> L9d
        L9c:
            throw r0     // Catch: java.lang.Throwable -> L9d
        L9d:
            r0 = move-exception
            r2 = r0
            r0 = 1
        La0:
            if (r0 != 0) goto La5
            r10.s(r1)
        La5:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealCall.p():okhttp3.Response");
    }

    public final Exchange q(RealInterceptorChain chain) throws IOException {
        Intrinsics.checkNotNullParameter(chain, "chain");
        synchronized (this) {
            if (!this.o) {
                throw new IllegalStateException("released".toString());
            }
            if (!(!this.n)) {
                throw new IllegalStateException("Check failed.".toString());
            }
            if (!(!this.m)) {
                throw new IllegalStateException("Check failed.".toString());
            }
            v vVar = v.a;
        }
        ExchangeFinder exchangeFinder = this.i;
        Intrinsics.checkNotNull(exchangeFinder);
        Exchange exchange = new Exchange(this, this.f10670e, exchangeFinder, exchangeFinder.a(this.a, chain));
        this.l = exchange;
        this.q = exchange;
        synchronized (this) {
            this.m = true;
            this.n = true;
        }
        if (this.p) {
            throw new IOException("Canceled");
        }
        return exchange;
    }

    public final <E extends IOException> E r(Exchange exchange, boolean z, boolean z2, E e2) {
        boolean z3;
        boolean z4;
        Intrinsics.checkNotNullParameter(exchange, "exchange");
        if (!Intrinsics.areEqual(exchange, this.q)) {
            return e2;
        }
        synchronized (this) {
            z3 = false;
            if (z) {
                try {
                    if (!this.m) {
                        if (z2 || !this.n) {
                            z4 = false;
                        }
                    }
                    if (z) {
                        this.m = false;
                    }
                    if (z2) {
                        this.n = false;
                    }
                    boolean z5 = this.m;
                    boolean z6 = (z5 || this.n) ? false : true;
                    if (!z5 && !this.n && !this.o) {
                        z3 = true;
                    }
                    z4 = z3;
                    z3 = z6;
                } catch (Throwable th) {
                    throw th;
                }
            } else {
                if (z2) {
                }
                z4 = false;
            }
            v vVar = v.a;
        }
        if (z3) {
            this.q = null;
            RealConnection realConnection = this.j;
            if (realConnection != null) {
                realConnection.r();
            }
        }
        return z4 ? (E) d(e2) : e2;
    }

    @Override // okhttp3.Call
    public Request request() {
        return this.b;
    }

    public final IOException s(IOException iOException) {
        boolean z;
        synchronized (this) {
            z = false;
            if (this.o) {
                this.o = false;
                if (!this.m && !this.n) {
                    z = true;
                }
            }
            v vVar = v.a;
        }
        return z ? d(iOException) : iOException;
    }

    public final String t() {
        return this.b.getA().m();
    }

    public final Socket u() {
        RealConnection realConnection = this.j;
        Intrinsics.checkNotNull(realConnection);
        if (Util.h && !Thread.holdsLock(realConnection)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + realConnection);
        }
        List<Reference<RealCall>> listM = realConnection.m();
        Iterator<Reference<RealCall>> it = listM.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            if (Intrinsics.areEqual(it.next().get(), this)) {
                break;
            }
            i++;
        }
        if (!(i != -1)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        listM.remove(i);
        this.j = null;
        if (listM.isEmpty()) {
            realConnection.A(System.nanoTime());
            if (this.f10669d.c(realConnection)) {
                return realConnection.C();
            }
        }
        return null;
    }

    public final boolean v() {
        ExchangeFinder exchangeFinder = this.i;
        Intrinsics.checkNotNull(exchangeFinder);
        return exchangeFinder.e();
    }

    public final void w(RealConnection realConnection) {
        this.r = realConnection;
    }

    public final void x() {
        if (!(!this.k)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        this.k = true;
        this.f10671f.k();
    }
}
