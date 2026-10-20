###### Class com.vungle.ads.internal.network.a (com.vungle.ads.internal.network.a)
.class public final synthetic Lcom/vungle/ads/internal/network/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/network/h;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/network/h;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/network/a;->a:Lcom/vungle/ads/internal/network/h;

    iput-object p2, p0, Lcom/vungle/ads/internal/network/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/vungle/ads/internal/network/a;->a:Lcom/vungle/ads/internal/network/h;

    iget-object v1, p0, Lcom/vungle/ads/internal/network/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/network/h;->a(Lcom/vungle/ads/internal/network/h;Ljava/lang/String;)V

    return-void
.end method
