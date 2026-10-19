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
