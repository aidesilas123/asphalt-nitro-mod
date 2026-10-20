###### Class okhttp3.internal.http2.Http2Connection.k (okhttp3.internal.http2.Http2Connection$k)
.class public final Lokhttp3/internal/http2/Http2Connection$k;
.super Lokhttp3/internal/concurrent/a;
.source "TaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection;->a0(IJ)V
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

.field final synthetic i:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLokhttp3/internal/http2/Http2Connection;IJ)V
    .registers 7

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$k;->e:Ljava/lang/String;

    iput-boolean p2, p0, Lokhttp3/internal/http2/Http2Connection$k;->f:Z

    iput-object p3, p0, Lokhttp3/internal/http2/Http2Connection$k;->g:Lokhttp3/internal/http2/Http2Connection;

    iput p4, p0, Lokhttp3/internal/http2/Http2Connection$k;->h:I

    iput-wide p5, p0, Lokhttp3/internal/http2/Http2Connection$k;->i:J

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/concurrent/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .registers 5

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$k;->g:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection;->q()Lokhttp3/internal/http2/e;

    move-result-object v0

    iget v1, p0, Lokhttp3/internal/http2/Http2Connection$k;->h:I

    iget-wide v2, p0, Lokhttp3/internal/http2/Http2Connection$k;->i:J

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/internal/http2/e;->p(IJ)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$k;->g:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v1, v0}, Lokhttp3/internal/http2/Http2Connection;->access$failConnection(Lokhttp3/internal/http2/Http2Connection;Ljava/io/IOException;)V

    :goto_14
    const-wide/16 v0, -0x1

    return-wide v0
.end method
