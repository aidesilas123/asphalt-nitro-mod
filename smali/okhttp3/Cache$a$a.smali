###### Class okhttp3.Cache.a.C0604a (okhttp3.Cache$a$a)
.class public final Lokhttp3/Cache$a$a;
.super Lokio/j;
.source "Cache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/Cache$a;-><init>(Lokhttp3/internal/cache/DiskLruCache$d;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "okhttp3/Cache$CacheResponseBody$1",
        "Lokio/ForwardingSource;",
        "close",
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
.field final synthetic a:Lokio/y;

.field final synthetic b:Lokhttp3/Cache$a;


# direct methods
.method constructor <init>(Lokio/y;Lokhttp3/Cache$a;)V
    .registers 3

    iput-object p1, p0, Lokhttp3/Cache$a$a;->a:Lokio/y;

    iput-object p2, p0, Lokhttp3/Cache$a$a;->b:Lokhttp3/Cache$a;

    invoke-direct {p0, p1}, Lokio/j;-><init>(Lokio/y;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/Cache$a$a;->b:Lokhttp3/Cache$a;

    invoke-virtual {v0}, Lokhttp3/Cache$a;->d()Lokhttp3/internal/cache/DiskLruCache$d;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$d;->close()V

    invoke-super {p0}, Lokio/j;->close()V

    return-void
.end method
