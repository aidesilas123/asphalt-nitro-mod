###### Class com.vungle.ads.internal.b (com.vungle.ads.internal.b)
.class public final synthetic Lcom/vungle/ads/internal/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/c1;

.field public final synthetic b:Lcom/vungle/ads/VungleError;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/c1;Lcom/vungle/ads/VungleError;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/b;->a:Lcom/vungle/ads/c1;

    iput-object p2, p0, Lcom/vungle/ads/internal/b;->b:Lcom/vungle/ads/VungleError;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/vungle/ads/internal/b;->a:Lcom/vungle/ads/c1;

    iget-object v1, p0, Lcom/vungle/ads/internal/b;->b:Lcom/vungle/ads/VungleError;

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/VungleInitializer;->a(Lcom/vungle/ads/c1;Lcom/vungle/ads/VungleError;)V

    return-void
.end method
