###### Class com.vungle.ads.internal.c (com.vungle.ads.internal.c)
.class public final synthetic Lcom/vungle/ads/internal/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/VungleInitializer;

.field public final synthetic b:Lcom/vungle/ads/c1;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/VungleInitializer;Lcom/vungle/ads/c1;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/c;->a:Lcom/vungle/ads/internal/VungleInitializer;

    iput-object p2, p0, Lcom/vungle/ads/internal/c;->b:Lcom/vungle/ads/c1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/vungle/ads/internal/c;->a:Lcom/vungle/ads/internal/VungleInitializer;

    iget-object v1, p0, Lcom/vungle/ads/internal/c;->b:Lcom/vungle/ads/c1;

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/VungleInitializer;->b(Lcom/vungle/ads/internal/VungleInitializer;Lcom/vungle/ads/c1;)V

    return-void
.end method
