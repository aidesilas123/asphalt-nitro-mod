###### Class okhttp3.internal.cache.CacheStrategy (okhttp3.internal.cache.b)
.class public final Lokhttp3/internal/cache/b;
.super Ljava/lang/Object;
.source "CacheStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache/b$b;,
        Lokhttp3/internal/cache/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u000b2\u00020\u0001:\u0002\u000b\u000cB\u001b\u0008\u0000\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lokhttp3/internal/cache/CacheStrategy;",
        "",
        "networkRequest",
        "Lokhttp3/Request;",
        "cacheResponse",
        "Lokhttp3/Response;",
        "(Lokhttp3/Request;Lokhttp3/Response;)V",
        "getCacheResponse",
        "()Lokhttp3/Response;",
        "getNetworkRequest",
        "()Lokhttp3/Request;",
        "Companion",
        "Factory",
        "okhttp"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lokhttp3/internal/cache/b$a;


# instance fields
.field private final b:Lokhttp3/Request;

.field private final c:Lokhttp3/Response;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokhttp3/internal/cache/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/cache/b$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lokhttp3/internal/cache/b;->a:Lokhttp3/internal/cache/b$a;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Request;Lokhttp3/Response;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/cache/b;->b:Lokhttp3/Request;

    iput-object p2, p0, Lokhttp3/internal/cache/b;->c:Lokhttp3/Response;

    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/Response;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/cache/b;->c:Lokhttp3/Response;

    return-object v0
.end method

.method public final b()Lokhttp3/Request;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/cache/b;->b:Lokhttp3/Request;

    return-object v0
.end method
