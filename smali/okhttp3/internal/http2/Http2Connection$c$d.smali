###### Class okhttp3.internal.http2.Http2Connection.c.d (okhttp3.internal.http2.Http2Connection$c$d)
.class public final Lokhttp3/internal/http2/Http2Connection$c$d;
.super Lokhttp3/internal/concurrent/a;
.source "TaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection$c;->a(ZLokhttp3/internal/http2/h;)V
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

.field final synthetic g:Lokhttp3/internal/http2/Http2Connection$c;

.field final synthetic h:Z

.field final synthetic i:Lokhttp3/internal/http2/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLokhttp3/internal/http2/Http2Connection$c;ZLokhttp3/internal/http2/h;)V
    .registers 6

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$c$d;->e:Ljava/lang/String;

    iput-boolean p2, p0, Lokhttp3/internal/http2/Http2Connection$c$d;->f:Z

    iput-object p3, p0, Lokhttp3/internal/http2/Http2Connection$c$d;->g:Lokhttp3/internal/http2/Http2Connection$c;

    iput-boolean p4, p0, Lokhttp3/internal/http2/Http2Connection$c$d;->h:Z

    iput-object p5, p0, Lokhttp3/internal/http2/Http2Connection$c$d;->i:Lokhttp3/internal/http2/h;

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/concurrent/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .registers 4

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$c$d;->g:Lokhttp3/internal/http2/Http2Connection$c;

    iget-boolean v1, p0, Lokhttp3/internal/http2/Http2Connection$c$d;->h:Z

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$c$d;->i:Lokhttp3/internal/http2/h;

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/http2/Http2Connection$c;->f(ZLokhttp3/internal/http2/h;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method
