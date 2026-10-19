###### Class com.vungle.ads.internal.network.OkHttpCall (com.vungle.ads.internal.network.OkHttpCall)
.class public final Lcom/vungle/ads/internal/network/OkHttpCall;
.super Ljava/lang/Object;
.source "OkHttpCall.kt"

# interfaces
.implements Lcom/vungle/ads/internal/network/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/network/OkHttpCall$b;,
        Lcom/vungle/ads/internal/network/OkHttpCall$a;,
        Lcom/vungle/ads/internal/network/OkHttpCall$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vungle/ads/internal/network/e<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u0018*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0003\u0018\u0019\u001aB%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0016\u0010\u0005\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0006\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0007H\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0016\u0010\u000f\u001a\u00020\u000e2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0011H\u0016J\u0010\u0010\u0012\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\nH\u0016J\u0016\u0010\u0015\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00132\u0006\u0010\u0016\u001a\u00020\u0017R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/vungle/ads/internal/network/OkHttpCall;",
        "T",
        "Lcom/vungle/ads/internal/network/Call;",
        "rawCall",
        "Lokhttp3/Call;",
        "responseConverter",
        "Lcom/vungle/ads/internal/network/converters/Converter;",
        "Lokhttp3/ResponseBody;",
        "(Lokhttp3/Call;Lcom/vungle/ads/internal/network/converters/Converter;)V",
        "canceled",
        "",
        "buffer",
        "body",
        "cancel",
        "",
        "enqueue",
        "callback",
        "Lcom/vungle/ads/internal/network/Callback;",
        "execute",
        "Lcom/vungle/ads/internal/network/Response;",
        "isCanceled",
        "parseResponse",
        "rawResp",
        "Lokhttp3/Response;",
        "Companion",
        "ExceptionCatchingResponseBody",
        "NoContentResponseBody",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/network/OkHttpCall$Companion;


# instance fields
.field private volatile canceled:Z

.field private final rawCall:Lokhttp3/c;

.field private final responseConverter:Lcom/vungle/ads/internal/network/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/ads/internal/network/j/a<",
            "Lokhttp3/ResponseBody;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/vungle/ads/internal/network/OkHttpCall$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/network/OkHttpCall$Companion;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/vungle/ads/internal/network/OkHttpCall;->Companion:Lcom/vungle/ads/internal/network/OkHttpCall$Companion;

    return-void
.end method

.method public constructor <init>(Lokhttp3/c;Lcom/vungle/ads/internal/network/j/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/c;",
            "Lcom/vungle/ads/internal/network/j/a<",
            "Lokhttp3/ResponseBody;",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "rawCall"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseConverter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/network/OkHttpCall;->rawCall:Lokhttp3/c;

    iput-object p2, p0, Lcom/vungle/ads/internal/network/OkHttpCall;->responseConverter:Lcom/vungle/ads/internal/network/j/a;

    return-void
.end method

.method private final buffer(Lokhttp3/ResponseBody;)Lokhttp3/ResponseBody;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lokio/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lokio/e;->R(Lokio/w;)J

    sget-object v1, Lokhttp3/ResponseBody;->Companion:Lokhttp3/ResponseBody$Companion;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v3

    invoke-virtual {v1, v0, v2, v3, v4}, Lokhttp3/ResponseBody$Companion;->f(Lokio/e;Lokhttp3/MediaType;J)Lokhttp3/ResponseBody;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/ads/internal/network/OkHttpCall;->canceled:Z

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/vungle/ads/internal/network/OkHttpCall;->rawCall:Lokhttp3/c;

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_d

    monitor-exit p0

    invoke-interface {v0}, Lokhttp3/c;->cancel()V

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enqueue(Lcom/vungle/ads/internal/network/f;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/ads/internal/network/f<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_b
    iget-object v0, p0, Lcom/vungle/ads/internal/network/OkHttpCall;->rawCall:Lokhttp3/c;

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_20

    monitor-exit p0

    iget-boolean v1, p0, Lcom/vungle/ads/internal/network/OkHttpCall;->canceled:Z

    if-eqz v1, :cond_17

    invoke-interface {v0}, Lokhttp3/c;->cancel()V

    :cond_17
    new-instance v1, Lcom/vungle/ads/internal/network/OkHttpCall$c;

    invoke-direct {v1, p0, p1}, Lcom/vungle/ads/internal/network/OkHttpCall$c;-><init>(Lcom/vungle/ads/internal/network/OkHttpCall;Lcom/vungle/ads/internal/network/f;)V

    invoke-interface {v0, v1}, Lokhttp3/c;->c(Lokhttp3/d;)V

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public execute()Lcom/vungle/ads/internal/network/g;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/ads/internal/network/g<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/OkHttpCall;->rawCall:Lokhttp3/c;

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_16

    monitor-exit p0

    iget-boolean v1, p0, Lcom/vungle/ads/internal/network/OkHttpCall;->canceled:Z

    if-eqz v1, :cond_d

    invoke-interface {v0}, Lokhttp3/c;->cancel()V

    :cond_d
    invoke-interface {v0}, Lokhttp3/c;->execute()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vungle/ads/internal/network/OkHttpCall;->parseResponse(Lokhttp3/Response;)Lcom/vungle/ads/internal/network/g;

    move-result-object v0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCanceled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/vungle/ads/internal/network/OkHttpCall;->canceled:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    monitor-enter p0

    :try_start_7
    iget-object v0, p0, Lcom/vungle/ads/internal/network/OkHttpCall;->rawCall:Lokhttp3/c;

    invoke-interface {v0}, Lokhttp3/c;->isCanceled()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_f

    monitor-exit p0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final parseResponse(Lokhttp3/Response;)Lcom/vungle/ads/internal/network/g;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")",
            "Lcom/vungle/ads/internal/network/g<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "rawResp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return-object v1

    :cond_d
    invoke-virtual {p1}, Lokhttp3/Response;->q()Lokhttp3/Response$a;

    move-result-object p1

    new-instance v2, Lcom/vungle/ads/internal/network/OkHttpCall$b;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/vungle/ads/internal/network/OkHttpCall$b;-><init>(Lokhttp3/MediaType;J)V

    invoke-virtual {p1, v2}, Lokhttp3/Response$a;->b(Lokhttp3/ResponseBody;)Lokhttp3/Response$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response$a;->c()Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response;->h()I

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_5c

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_33

    goto :goto_5c

    :cond_33
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_52

    const/16 v3, 0xcd

    if-eq v2, v3, :cond_52

    new-instance v1, Lcom/vungle/ads/internal/network/OkHttpCall$a;

    invoke-direct {v1, v0}, Lcom/vungle/ads/internal/network/OkHttpCall$a;-><init>(Lokhttp3/ResponseBody;)V

    :try_start_40
    iget-object v0, p0, Lcom/vungle/ads/internal/network/OkHttpCall;->responseConverter:Lcom/vungle/ads/internal/network/j/a;

    invoke-interface {v0, v1}, Lcom/vungle/ads/internal/network/j/a;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/vungle/ads/internal/network/g;->Companion:Lcom/vungle/ads/internal/network/g$a;

    invoke-virtual {v2, v0, p1}, Lcom/vungle/ads/internal/network/g$a;->success(Ljava/lang/Object;Lokhttp3/Response;)Lcom/vungle/ads/internal/network/g;

    move-result-object p1
    :try_end_4c
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_4c} :catch_4d

    return-object p1

    :catch_4d
    move-exception p1

    invoke-virtual {v1}, Lcom/vungle/ads/internal/network/OkHttpCall$a;->throwIfCaught()V

    throw p1

    :cond_52
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    sget-object v0, Lcom/vungle/ads/internal/network/g;->Companion:Lcom/vungle/ads/internal/network/g$a;

    invoke-virtual {v0, v1, p1}, Lcom/vungle/ads/internal/network/g$a;->success(Ljava/lang/Object;Lokhttp3/Response;)Lcom/vungle/ads/internal/network/g;

    move-result-object p1

    return-object p1

    :cond_5c
    :goto_5c
    :try_start_5c
    invoke-direct {p0, v0}, Lcom/vungle/ads/internal/network/OkHttpCall;->buffer(Lokhttp3/ResponseBody;)Lokhttp3/ResponseBody;

    move-result-object v2

    sget-object v3, Lcom/vungle/ads/internal/network/g;->Companion:Lcom/vungle/ads/internal/network/g$a;

    invoke-virtual {v3, v2, p1}, Lcom/vungle/ads/internal/network/g$a;->error(Lokhttp3/ResponseBody;Lokhttp3/Response;)Lcom/vungle/ads/internal/network/g;

    move-result-object p1
    :try_end_66
    .catchall {:try_start_5c .. :try_end_66} :catchall_6a

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_6a
    move-exception p1

    :try_start_6b
    throw p1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

###### Class com.vungle.ads.internal.network.OkHttpCall.Companion (com.vungle.ads.internal.network.OkHttpCall$Companion)
.class public final Lcom/vungle/ads/internal/network/OkHttpCall$Companion;
.super Ljava/lang/Object;
.source "OkHttpCall.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/network/OkHttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vungle/ads/internal/network/OkHttpCall$Companion;",
        "",
        "()V",
        "throwIfFatal",
        "",
        "t",
        "",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lcom/vungle/ads/internal/network/OkHttpCall$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$throwIfFatal(Lcom/vungle/ads/internal/network/OkHttpCall$Companion;Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/network/OkHttpCall$Companion;->throwIfFatal(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final throwIfFatal(Ljava/lang/Throwable;)V
    .registers 3

    instance-of v0, p1, Ljava/lang/VirtualMachineError;

    if-nez v0, :cond_f

    instance-of v0, p1, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_e

    instance-of v0, p1, Ljava/lang/LinkageError;

    if-nez v0, :cond_d

    return-void

    :cond_d
    throw p1

    :cond_e
    throw p1

    :cond_f
    throw p1
.end method

###### Class com.vungle.ads.internal.network.OkHttpCall.a (com.vungle.ads.internal.network.OkHttpCall$a)
.class public final Lcom/vungle/ads/internal/network/OkHttpCall$a;
.super Lokhttp3/ResponseBody;
.source "OkHttpCall.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/network/OkHttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0005H\u0016J\u0006\u0010\u0013\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/vungle/ads/internal/network/OkHttpCall$ExceptionCatchingResponseBody;",
        "Lokhttp3/ResponseBody;",
        "delegate",
        "(Lokhttp3/ResponseBody;)V",
        "delegateSource",
        "Lokio/BufferedSource;",
        "thrownException",
        "Ljava/io/IOException;",
        "getThrownException",
        "()Ljava/io/IOException;",
        "setThrownException",
        "(Ljava/io/IOException;)V",
        "close",
        "",
        "contentLength",
        "",
        "contentType",
        "Lokhttp3/MediaType;",
        "source",
        "throwIfCaught",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final delegate:Lokhttp3/ResponseBody;

.field private final delegateSource:Lokio/e;

.field private thrownException:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lokhttp3/ResponseBody;)V
    .registers 3

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/network/OkHttpCall$a;->delegate:Lokhttp3/ResponseBody;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lokio/e;

    move-result-object p1

    new-instance v0, Lcom/vungle/ads/internal/network/OkHttpCall$a$a;

    invoke-direct {v0, p0, p1}, Lcom/vungle/ads/internal/network/OkHttpCall$a$a;-><init>(Lcom/vungle/ads/internal/network/OkHttpCall$a;Lokio/e;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/y;)Lokio/e;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/network/OkHttpCall$a;->delegateSource:Lokio/e;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/network/OkHttpCall$a;->delegate:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    return-void
.end method

.method public contentLength()J
    .registers 3

    iget-object v0, p0, Lcom/vungle/ads/internal/network/OkHttpCall$a;->delegate:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/network/OkHttpCall$a;->delegate:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public final getThrownException()Ljava/io/IOException;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/network/OkHttpCall$a;->thrownException:Ljava/io/IOException;

    return-object v0
.end method

.method public final setThrownException(Ljava/io/IOException;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/network/OkHttpCall$a;->thrownException:Ljava/io/IOException;

    return-void
.end method

.method public source()Lokio/e;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/network/OkHttpCall$a;->delegateSource:Lokio/e;

    return-object v0
.end method

.method public final throwIfCaught()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/internal/network/OkHttpCall$a;->thrownException:Ljava/io/IOException;

    if-nez v0, :cond_5

    return-void

    :cond_5
    throw v0
.end method

###### Class com.vungle.ads.internal.network.OkHttpCall.a.C0462a (com.vungle.ads.internal.network.OkHttpCall$a$a)
.class public final Lcom/vungle/ads/internal/network/OkHttpCall$a$a;
.super Lokio/j;
.source "OkHttpCall.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/network/OkHttpCall$a;-><init>(Lokhttp3/ResponseBody;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/vungle/ads/internal/network/OkHttpCall$ExceptionCatchingResponseBody$1",
        "Lokio/ForwardingSource;",
        "read",
        "",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/ads/internal/network/OkHttpCall$a;


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/network/OkHttpCall$a;Lokio/e;)V
    .registers 3

    iput-object p1, p0, Lcom/vungle/ads/internal/network/OkHttpCall$a$a;->this$0:Lcom/vungle/ads/internal/network/OkHttpCall$a;

    invoke-direct {p0, p2}, Lokio/j;-><init>(Lokio/y;)V

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    invoke-super {p0, p1, p2, p3}, Lokio/j;->read(Lokio/Buffer;J)J

    move-result-wide p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_a

    return-wide p1

    :catch_a
    move-exception p1

    iget-object p2, p0, Lcom/vungle/ads/internal/network/OkHttpCall$a$a;->this$0:Lcom/vungle/ads/internal/network/OkHttpCall$a;

    invoke-virtual {p2, p1}, Lcom/vungle/ads/internal/network/OkHttpCall$a;->setThrownException(Ljava/io/IOException;)V

    throw p1
.end method

###### Class com.vungle.ads.internal.network.OkHttpCall.b (com.vungle.ads.internal.network.OkHttpCall$b)
.class public final Lcom/vungle/ads/internal/network/OkHttpCall$b;
.super Lokhttp3/ResponseBody;
.source "OkHttpCall.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/network/OkHttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vungle/ads/internal/network/OkHttpCall$NoContentResponseBody;",
        "Lokhttp3/ResponseBody;",
        "contentType",
        "Lokhttp3/MediaType;",
        "contentLength",
        "",
        "(Lokhttp3/MediaType;J)V",
        "source",
        "Lokio/BufferedSource;",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final contentLength:J

.field private final contentType:Lokhttp3/MediaType;


# direct methods
.method public constructor <init>(Lokhttp3/MediaType;J)V
    .registers 4

    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/network/OkHttpCall$b;->contentType:Lokhttp3/MediaType;

    iput-wide p2, p0, Lcom/vungle/ads/internal/network/OkHttpCall$b;->contentLength:J

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    iget-wide v0, p0, Lcom/vungle/ads/internal/network/OkHttpCall$b;->contentLength:J

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/network/OkHttpCall$b;->contentType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public source()Lokio/e;
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read raw response body of a converted body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.vungle.ads.internal.network.OkHttpCall.c (com.vungle.ads.internal.network.OkHttpCall$c)
.class public final Lcom/vungle/ads/internal/network/OkHttpCall$c;
.super Ljava/lang/Object;
.source "OkHttpCall.kt"

# interfaces
.implements Lokhttp3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/network/OkHttpCall;->enqueue(Lcom/vungle/ads/internal/network/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/vungle/ads/internal/network/OkHttpCall$enqueue$2",
        "Lokhttp3/Callback;",
        "callFailure",
        "",
        "e",
        "",
        "onFailure",
        "call",
        "Lokhttp3/Call;",
        "Ljava/io/IOException;",
        "onResponse",
        "response",
        "Lokhttp3/Response;",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callback:Lcom/vungle/ads/internal/network/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/ads/internal/network/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/vungle/ads/internal/network/OkHttpCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/ads/internal/network/OkHttpCall<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/network/OkHttpCall;Lcom/vungle/ads/internal/network/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/ads/internal/network/OkHttpCall<",
            "TT;>;",
            "Lcom/vungle/ads/internal/network/f<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vungle/ads/internal/network/OkHttpCall$c;->this$0:Lcom/vungle/ads/internal/network/OkHttpCall;

    iput-object p2, p0, Lcom/vungle/ads/internal/network/OkHttpCall$c;->$callback:Lcom/vungle/ads/internal/network/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final callFailure(Ljava/lang/Throwable;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/vungle/ads/internal/network/OkHttpCall$c;->$callback:Lcom/vungle/ads/internal/network/f;

    iget-object v1, p0, Lcom/vungle/ads/internal/network/OkHttpCall$c;->this$0:Lcom/vungle/ads/internal/network/OkHttpCall;

    invoke-interface {v0, v1, p1}, Lcom/vungle/ads/internal/network/f;->onFailure(Lcom/vungle/ads/internal/network/e;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_11

    :catchall_8
    move-exception p1

    sget-object v0, Lcom/vungle/ads/internal/network/OkHttpCall;->Companion:Lcom/vungle/ads/internal/network/OkHttpCall$Companion;

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/network/OkHttpCall$Companion;->access$throwIfFatal(Lcom/vungle/ads/internal/network/OkHttpCall$Companion;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_11
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/c;Ljava/io/IOException;)V
    .registers 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/vungle/ads/internal/network/OkHttpCall$c;->callFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lokhttp3/c;Lokhttp3/Response;)V
    .registers 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/vungle/ads/internal/network/OkHttpCall$c;->this$0:Lcom/vungle/ads/internal/network/OkHttpCall;

    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/network/OkHttpCall;->parseResponse(Lokhttp3/Response;)Lcom/vungle/ads/internal/network/g;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_22

    :try_start_10
    iget-object p2, p0, Lcom/vungle/ads/internal/network/OkHttpCall$c;->$callback:Lcom/vungle/ads/internal/network/f;

    iget-object v0, p0, Lcom/vungle/ads/internal/network/OkHttpCall$c;->this$0:Lcom/vungle/ads/internal/network/OkHttpCall;

    invoke-interface {p2, v0, p1}, Lcom/vungle/ads/internal/network/f;->onResponse(Lcom/vungle/ads/internal/network/e;Lcom/vungle/ads/internal/network/g;)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_18

    goto :goto_21

    :catchall_18
    move-exception p1

    sget-object p2, Lcom/vungle/ads/internal/network/OkHttpCall;->Companion:Lcom/vungle/ads/internal/network/OkHttpCall$Companion;

    invoke-static {p2, p1}, Lcom/vungle/ads/internal/network/OkHttpCall$Companion;->access$throwIfFatal(Lcom/vungle/ads/internal/network/OkHttpCall$Companion;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_21
    return-void

    :catchall_22
    move-exception p1

    sget-object p2, Lcom/vungle/ads/internal/network/OkHttpCall;->Companion:Lcom/vungle/ads/internal/network/OkHttpCall$Companion;

    invoke-static {p2, p1}, Lcom/vungle/ads/internal/network/OkHttpCall$Companion;->access$throwIfFatal(Lcom/vungle/ads/internal/network/OkHttpCall$Companion;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/network/OkHttpCall$c;->callFailure(Ljava/lang/Throwable;)V

    return-void
.end method
