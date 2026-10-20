###### Class com.vungle.ads.internal.e (com.vungle.ads.internal.e)
.class public final synthetic Lcom/vungle/ads/internal/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/vungle/ads/internal/VungleInitializer;

.field public final synthetic d:Lcom/vungle/ads/c1;

.field public final synthetic e:Lkotlin/i;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/internal/VungleInitializer;Lcom/vungle/ads/c1;Lkotlin/i;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/vungle/ads/internal/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/ads/internal/e;->c:Lcom/vungle/ads/internal/VungleInitializer;

    iput-object p4, p0, Lcom/vungle/ads/internal/e;->d:Lcom/vungle/ads/c1;

    iput-object p5, p0, Lcom/vungle/ads/internal/e;->e:Lkotlin/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/vungle/ads/internal/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/vungle/ads/internal/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/ads/internal/e;->c:Lcom/vungle/ads/internal/VungleInitializer;

    iget-object v3, p0, Lcom/vungle/ads/internal/e;->d:Lcom/vungle/ads/c1;

    iget-object v4, p0, Lcom/vungle/ads/internal/e;->e:Lkotlin/i;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vungle/ads/internal/VungleInitializer;->d(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/internal/VungleInitializer;Lcom/vungle/ads/c1;Lkotlin/i;)V

    return-void
.end method
