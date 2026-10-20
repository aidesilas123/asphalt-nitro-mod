###### Class com.vungle.ads.internal.network.d (com.vungle.ads.internal.network.d)
.class public final synthetic Lcom/vungle/ads/internal/network/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lokhttp3/l;


# instance fields
.field public final synthetic b:Lcom/vungle/ads/internal/network/VungleApiClient;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/network/VungleApiClient;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/network/d;->b:Lcom/vungle/ads/internal/network/VungleApiClient;

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/l$a;)Lokhttp3/Response;
    .registers 3

    iget-object v0, p0, Lcom/vungle/ads/internal/network/d;->b:Lcom/vungle/ads/internal/network/VungleApiClient;

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/network/VungleApiClient;->a(Lcom/vungle/ads/internal/network/VungleApiClient;Lokhttp3/l$a;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
