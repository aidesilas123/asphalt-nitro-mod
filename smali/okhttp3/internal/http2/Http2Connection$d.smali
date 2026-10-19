###### Class okhttp3.internal.http2.Http2Connection.d (okhttp3.internal.http2.Http2Connection$d)
.class public final Lokhttp3/internal/http2/Http2Connection$d;
.super Lokhttp3/internal/concurrent/a;
.source "TaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection;->u(ILokio/e;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "okhttp3/internal/concurrent/TaskQueue$execute$1",
        "Lokhttp3/internal/concurrent/Task;",
        "runOnce",
        "",
        "okhttp"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z

.field final synthetic g:Lokhttp3/internal/http2/Http2Connection;

.field final synthetic h:I

.field final synthetic i:Lokio/Buffer;

.field final synthetic j:I

.field final synthetic k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLokhttp3/internal/http2/Http2Connection;ILokio/Buffer;IZ)V
    .registers 8

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$d;->e:Ljava/lang/String;

    iput-boolean p2, p0, Lokhttp3/internal/http2/Http2Connection$d;->f:Z

    iput-object p3, p0, Lokhttp3/internal/http2/Http2Connection$d;->g:Lokhttp3/internal/http2/Http2Connection;

    iput p4, p0, Lokhttp3/internal/http2/Http2Connection$d;->h:I

    iput-object p5, p0, Lokhttp3/internal/http2/Http2Connection$d;->i:Lokio/Buffer;

    iput p6, p0, Lokhttp3/internal/http2/Http2Connection$d;->j:I

    iput-boolean p7, p0, Lokhttp3/internal/http2/Http2Connection$d;->k:Z

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/concurrent/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .registers 6

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$d;->g:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v0}, Lokhttp3/internal/http2/Http2Connection;->access$getPushObserver$p(Lokhttp3/internal/http2/Http2Connection;)Lokhttp3/internal/http2/g;

    move-result-object v0

    iget v1, p0, Lokhttp3/internal/http2/Http2Connection$d;->h:I

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$d;->i:Lokio/Buffer;

    iget v3, p0, Lokhttp3/internal/http2/Http2Connection$d;->j:I

    iget-boolean v4, p0, Lokhttp3/internal/http2/Http2Connection$d;->k:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lokhttp3/internal/http2/g;->b(ILokio/e;IZ)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$d;->g:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Connection;->q()Lokhttp3/internal/http2/e;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http2/Http2Connection$d;->h:I

    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->j:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2, v3}, Lokhttp3/internal/http2/e;->m(ILokhttp3/internal/http2/ErrorCode;)V

    :cond_21
    if-nez v0, :cond_27

    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection$d;->k:Z

    if-eqz v0, :cond_3e

    :cond_27
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$d;->g:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v0
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2a} :catch_3e

    :try_start_2a
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$d;->g:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v1}, Lokhttp3/internal/http2/Http2Connection;->access$getCurrentPushRequests$p(Lokhttp3/internal/http2/Http2Connection;)Ljava/util/Set;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http2/Http2Connection$d;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_39
    .catchall {:try_start_2a .. :try_end_39} :catchall_3b

    :try_start_39
    monitor-exit v0

    goto :goto_3e

    :catchall_3b
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3e} :catch_3e

    :catch_3e
    :cond_3e
    :goto_3e
    const-wide/16 v0, -0x1

    return-wide v0
.end method
