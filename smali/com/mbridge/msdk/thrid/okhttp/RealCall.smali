###### Class com.mbridge.msdk.thrid.okhttp.RealCall (com.mbridge.msdk.thrid.okhttp.RealCall)
.class final Lcom/mbridge/msdk/thrid/okhttp/RealCall;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lcom/mbridge/msdk/thrid/okhttp/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;
    }
.end annotation


# instance fields
.field final client:Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;

.field private eventListener:Lcom/mbridge/msdk/thrid/okhttp/EventListener;

.field private executed:Z

.field final forWebSocket:Z

.field final originalRequest:Lcom/mbridge/msdk/thrid/okhttp/Request;

.field final retryAndFollowUpInterceptor:Lcom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;

.field final timeout:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;


# direct methods
.method private constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;Lcom/mbridge/msdk/thrid/okhttp/Request;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    iput-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->originalRequest:Lcom/mbridge/msdk/thrid/okhttp/Request;

    iput-boolean p3, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->forWebSocket:Z

    new-instance p2, Lcom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;

    invoke-direct {p2, p1, p3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;-><init>(Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;Z)V

    iput-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->retryAndFollowUpInterceptor:Lcom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;

    new-instance p2, Lcom/mbridge/msdk/thrid/okhttp/RealCall$1;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/thrid/okhttp/RealCall$1;-><init>(Lcom/mbridge/msdk/thrid/okhttp/RealCall;)V

    iput-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->timeout:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;->callTimeoutMillis()I

    move-result p1

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Lcom/mbridge/msdk/thrid/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okio/Timeout;

    return-void
.end method

.method static synthetic access$000(Lcom/mbridge/msdk/thrid/okhttp/RealCall;)Lcom/mbridge/msdk/thrid/okhttp/EventListener;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->eventListener:Lcom/mbridge/msdk/thrid/okhttp/EventListener;

    return-object p0
.end method

.method private captureCallStackTrace()V
    .registers 3

    invoke-static {}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->get()Lcom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->retryAndFollowUpInterceptor:Lcom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->setCallStackTrace(Ljava/lang/Object;)V

    return-void
.end method

.method static newRealCall(Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;Lcom/mbridge/msdk/thrid/okhttp/Request;Z)Lcom/mbridge/msdk/thrid/okhttp/RealCall;
    .registers 4

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-direct {v0, p0, p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/RealCall;-><init>(Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;Lcom/mbridge/msdk/thrid/okhttp/Request;Z)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;->eventListenerFactory()Lcom/mbridge/msdk/thrid/okhttp/EventListener$Factory;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/mbridge/msdk/thrid/okhttp/EventListener$Factory;->create(Lcom/mbridge/msdk/thrid/okhttp/Call;)Lcom/mbridge/msdk/thrid/okhttp/EventListener;

    move-result-object p0

    iput-object p0, v0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->eventListener:Lcom/mbridge/msdk/thrid/okhttp/EventListener;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->retryAndFollowUpInterceptor:Lcom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->cancel()V

    return-void
.end method

.method public bridge synthetic clone()Lcom/mbridge/msdk/thrid/okhttp/Call;
    .registers 2

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->clone()Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mbridge/msdk/thrid/okhttp/RealCall;
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->originalRequest:Lcom/mbridge/msdk/thrid/okhttp/Request;

    iget-boolean v2, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->forWebSocket:Z

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->newRealCall(Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;Lcom/mbridge/msdk/thrid/okhttp/Request;Z)Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->clone()Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public enqueue(Lcom/mbridge/msdk/thrid/okhttp/Callback;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->executed:Z

    if-nez v0, :cond_20

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->executed:Z

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_28

    invoke-direct {p0}, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->captureCallStackTrace()V

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->eventListener:Lcom/mbridge/msdk/thrid/okhttp/EventListener;

    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/thrid/okhttp/EventListener;->callStart(Lcom/mbridge/msdk/thrid/okhttp/Call;)V

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;->dispatcher()Lcom/mbridge/msdk/thrid/okhttp/Dispatcher;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;

    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;-><init>(Lcom/mbridge/msdk/thrid/okhttp/RealCall;Lcom/mbridge/msdk/thrid/okhttp/Callback;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/Dispatcher;->enqueue(Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;)V

    return-void

    :cond_20
    :try_start_20
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already Executed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_28
    move-exception p1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public execute()Lcom/mbridge/msdk/thrid/okhttp/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->executed:Z

    if-nez v0, :cond_4e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->executed:Z

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_56

    invoke-direct {p0}, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->captureCallStackTrace()V

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->timeout:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->enter()V

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->eventListener:Lcom/mbridge/msdk/thrid/okhttp/EventListener;

    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/thrid/okhttp/EventListener;->callStart(Lcom/mbridge/msdk/thrid/okhttp/Call;)V

    :try_start_16
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;->dispatcher()Lcom/mbridge/msdk/thrid/okhttp/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/thrid/okhttp/Dispatcher;->executed(Lcom/mbridge/msdk/thrid/okhttp/RealCall;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->getResponseWithInterceptorChain()Lcom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_23} :catch_39
    .catchall {:try_start_16 .. :try_end_23} :catchall_37

    if-eqz v0, :cond_2f

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;->dispatcher()Lcom/mbridge/msdk/thrid/okhttp/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mbridge/msdk/thrid/okhttp/Dispatcher;->finished(Lcom/mbridge/msdk/thrid/okhttp/RealCall;)V

    return-object v0

    :cond_2f
    :try_start_2f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_37} :catch_39
    .catchall {:try_start_2f .. :try_end_37} :catchall_37

    :catchall_37
    move-exception v0

    goto :goto_44

    :catch_39
    move-exception v0

    :try_start_3a
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->eventListener:Lcom/mbridge/msdk/thrid/okhttp/EventListener;

    invoke-virtual {v1, p0, v0}, Lcom/mbridge/msdk/thrid/okhttp/EventListener;->callFailed(Lcom/mbridge/msdk/thrid/okhttp/Call;Ljava/io/IOException;)V

    throw v0
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_37

    :goto_44
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;->dispatcher()Lcom/mbridge/msdk/thrid/okhttp/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mbridge/msdk/thrid/okhttp/Dispatcher;->finished(Lcom/mbridge/msdk/thrid/okhttp/RealCall;)V

    throw v0

    :cond_4e
    :try_start_4e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_56
    move-exception v0

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_56

    throw v0
.end method

.method getResponseWithInterceptorChain()Lcom/mbridge/msdk/thrid/okhttp/Response;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->retryAndFollowUpInterceptor:Lcom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/BridgeInterceptor;

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;->cookieJar()Lcom/mbridge/msdk/thrid/okhttp/CookieJar;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/BridgeInterceptor;-><init>(Lcom/mbridge/msdk/thrid/okhttp/CookieJar;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;->internalCache()Lcom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;-><init>(Lcom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectInterceptor;

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-direct {v0, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectInterceptor;-><init>(Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->forWebSocket:Z

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_46
    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/CallServerInterceptor;

    iget-boolean v2, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->forWebSocket:Z

    invoke-direct {v0, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/CallServerInterceptor;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->originalRequest:Lcom/mbridge/msdk/thrid/okhttp/Request;

    iget-object v8, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->eventListener:Lcom/mbridge/msdk/thrid/okhttp/EventListener;

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;->connectTimeoutMillis()I

    move-result v9

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;->readTimeoutMillis()I

    move-result v10

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;->writeTimeoutMillis()I

    move-result v11

    move-object v0, v12

    move-object v7, p0

    invoke-direct/range {v0 .. v11}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lcom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;Lcom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;Lcom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;ILcom/mbridge/msdk/thrid/okhttp/Request;Lcom/mbridge/msdk/thrid/okhttp/Call;Lcom/mbridge/msdk/thrid/okhttp/EventListener;III)V

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->originalRequest:Lcom/mbridge/msdk/thrid/okhttp/Request;

    invoke-interface {v12, v0}, Lcom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;->proceed(Lcom/mbridge/msdk/thrid/okhttp/Request;)Lcom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->retryAndFollowUpInterceptor:Lcom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_80

    return-object v0

    :cond_80
    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCanceled()Z
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->retryAndFollowUpInterceptor:Lcom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isExecuted()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->executed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method redactedUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->originalRequest:Lcom/mbridge/msdk/thrid/okhttp/Request;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/Request;->url()Lcom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request()Lcom/mbridge/msdk/thrid/okhttp/Request;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->originalRequest:Lcom/mbridge/msdk/thrid/okhttp/Request;

    return-object v0
.end method

.method streamAllocation()Lcom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->retryAndFollowUpInterceptor:Lcom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->streamAllocation()Lcom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    move-result-object v0

    return-object v0
.end method

.method public timeout()Lcom/mbridge/msdk/thrid/okio/Timeout;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->timeout:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    return-object v0
.end method

.method timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->timeout:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_9

    return-object p1

    :cond_9
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_15

    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_15
    return-object v0
.end method

.method toLoggableString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "canceled "

    goto :goto_10

    :cond_e
    const-string v1, ""

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->forWebSocket:Z

    if-eqz v1, :cond_1a

    const-string v1, "web socket"

    goto :goto_1c

    :cond_1a
    const-string v1, "call"

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.mbridge.msdk.thrid.okhttp.RealCall.AnonymousClass1 (com.mbridge.msdk.thrid.okhttp.RealCall$1)
.class Lcom/mbridge/msdk/thrid/okhttp/RealCall$1;
.super Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/thrid/okhttp/RealCall;-><init>(Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;Lcom/mbridge/msdk/thrid/okhttp/Request;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/thrid/okhttp/RealCall;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/RealCall;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$1;->this$0:Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-direct {p0}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method protected timedOut()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$1;->this$0:Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->cancel()V

    return-void
.end method

###### Class com.mbridge.msdk.thrid.okhttp.RealCall.AsyncCall (com.mbridge.msdk.thrid.okhttp.RealCall$AsyncCall)
.class final Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;
.super Lcom/mbridge/msdk/thrid/okhttp/internal/NamedRunnable;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/thrid/okhttp/RealCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AsyncCall"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final responseCallback:Lcom/mbridge/msdk/thrid/okhttp/Callback;

.field final synthetic this$0:Lcom/mbridge/msdk/thrid/okhttp/RealCall;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    return-void
.end method

.method constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/RealCall;Lcom/mbridge/msdk/thrid/okhttp/Callback;)V
    .registers 5

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->responseCallback:Lcom/mbridge/msdk/thrid/okhttp/Callback;

    return-void
.end method


# virtual methods
.method protected execute()V
    .registers 6

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->timeout:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->enter()V

    const/4 v0, 0x0

    :try_start_8
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->getResponseWithInterceptorChain()Lcom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_e} :catch_4e
    .catchall {:try_start_8 .. :try_end_e} :catchall_26

    const/4 v1, 0x1

    :try_start_f
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->responseCallback:Lcom/mbridge/msdk/thrid/okhttp/Callback;

    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-interface {v2, v3, v0}, Lcom/mbridge/msdk/thrid/okhttp/Callback;->onResponse(Lcom/mbridge/msdk/thrid/okhttp/Call;Lcom/mbridge/msdk/thrid/okhttp/Response;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_24
    .catchall {:try_start_f .. :try_end_16} :catchall_22

    :goto_16
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;->dispatcher()Lcom/mbridge/msdk/thrid/okhttp/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/thrid/okhttp/Dispatcher;->finished(Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;)V

    goto :goto_8c

    :catchall_22
    move-exception v0

    goto :goto_29

    :catch_24
    move-exception v0

    goto :goto_51

    :catchall_26
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_29
    :try_start_29
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-virtual {v2}, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->cancel()V

    if-nez v1, :cond_4d

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canceled due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->responseCallback:Lcom/mbridge/msdk/thrid/okhttp/Callback;

    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-interface {v2, v3, v1}, Lcom/mbridge/msdk/thrid/okhttp/Callback;->onFailure(Lcom/mbridge/msdk/thrid/okhttp/Call;Ljava/io/IOException;)V

    :cond_4d
    throw v0

    :catch_4e
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_51
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-virtual {v2, v0}, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v1, :cond_79

    invoke-static {}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->get()Lcom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-virtual {v4}, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->toLoggableString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    :cond_79
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-static {v1}, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->access$000(Lcom/mbridge/msdk/thrid/okhttp/RealCall;)Lcom/mbridge/msdk/thrid/okhttp/EventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/thrid/okhttp/EventListener;->callFailed(Lcom/mbridge/msdk/thrid/okhttp/Call;Ljava/io/IOException;)V

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->responseCallback:Lcom/mbridge/msdk/thrid/okhttp/Callback;

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-interface {v1, v2, v0}, Lcom/mbridge/msdk/thrid/okhttp/Callback;->onFailure(Lcom/mbridge/msdk/thrid/okhttp/Call;Ljava/io/IOException;)V
    :try_end_8b
    .catchall {:try_start_29 .. :try_end_8b} :catchall_8d

    goto :goto_16

    :goto_8c
    return-void

    :catchall_8d
    move-exception v0

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    iget-object v1, v1, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;->dispatcher()Lcom/mbridge/msdk/thrid/okhttp/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mbridge/msdk/thrid/okhttp/Dispatcher;->finished(Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;)V

    throw v0
.end method

.method executeOn(Ljava/util/concurrent/ExecutorService;)V
    .registers 4

    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_3} :catch_6
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_2e

    :catchall_4
    move-exception p1

    goto :goto_2f

    :catch_6
    move-exception p1

    :try_start_7
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "executor rejected"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-static {p1}, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->access$000(Lcom/mbridge/msdk/thrid/okhttp/RealCall;)Lcom/mbridge/msdk/thrid/okhttp/EventListener;

    move-result-object p1

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-virtual {p1, v1, v0}, Lcom/mbridge/msdk/thrid/okhttp/EventListener;->callFailed(Lcom/mbridge/msdk/thrid/okhttp/Call;Ljava/io/IOException;)V

    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->responseCallback:Lcom/mbridge/msdk/thrid/okhttp/Callback;

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-interface {p1, v1, v0}, Lcom/mbridge/msdk/thrid/okhttp/Callback;->onFailure(Lcom/mbridge/msdk/thrid/okhttp/Call;Ljava/io/IOException;)V
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_4

    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    iget-object p1, p1, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;->dispatcher()Lcom/mbridge/msdk/thrid/okhttp/Dispatcher;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mbridge/msdk/thrid/okhttp/Dispatcher;->finished(Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;)V

    :goto_2e
    return-void

    :goto_2f
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/OkHttpClient;->dispatcher()Lcom/mbridge/msdk/thrid/okhttp/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/thrid/okhttp/Dispatcher;->finished(Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;)V

    throw p1
.end method

.method get()Lcom/mbridge/msdk/thrid/okhttp/RealCall;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    return-object v0
.end method

.method host()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->originalRequest:Lcom/mbridge/msdk/thrid/okhttp/Request;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/Request;->url()Lcom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method request()Lcom/mbridge/msdk/thrid/okhttp/Request;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lcom/mbridge/msdk/thrid/okhttp/RealCall;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/RealCall;->originalRequest:Lcom/mbridge/msdk/thrid/okhttp/Request;

    return-object v0
.end method
