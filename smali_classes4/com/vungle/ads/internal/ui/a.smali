###### Class com.vungle.ads.internal.ui.a (com.vungle.ads.internal.ui.a)
.class public final synthetic Lcom/vungle/ads/internal/ui/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/ui/view/b;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lkotlinx/serialization/json/l;

.field public final synthetic d:Landroid/os/Handler;

.field public final synthetic e:Lcom/vungle/ads/internal/ui/VungleWebClient;

.field public final synthetic f:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/ui/view/b;Ljava/lang/String;Lkotlinx/serialization/json/l;Landroid/os/Handler;Lcom/vungle/ads/internal/ui/VungleWebClient;Landroid/webkit/WebView;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/a;->a:Lcom/vungle/ads/internal/ui/view/b;

    iput-object p2, p0, Lcom/vungle/ads/internal/ui/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/ads/internal/ui/a;->c:Lkotlinx/serialization/json/l;

    iput-object p4, p0, Lcom/vungle/ads/internal/ui/a;->d:Landroid/os/Handler;

    iput-object p5, p0, Lcom/vungle/ads/internal/ui/a;->e:Lcom/vungle/ads/internal/ui/VungleWebClient;

    iput-object p6, p0, Lcom/vungle/ads/internal/ui/a;->f:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/a;->a:Lcom/vungle/ads/internal/ui/view/b;

    iget-object v1, p0, Lcom/vungle/ads/internal/ui/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/ads/internal/ui/a;->c:Lkotlinx/serialization/json/l;

    iget-object v3, p0, Lcom/vungle/ads/internal/ui/a;->d:Landroid/os/Handler;

    iget-object v4, p0, Lcom/vungle/ads/internal/ui/a;->e:Lcom/vungle/ads/internal/ui/VungleWebClient;

    iget-object v5, p0, Lcom/vungle/ads/internal/ui/a;->f:Landroid/webkit/WebView;

    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/ui/VungleWebClient;->a(Lcom/vungle/ads/internal/ui/view/b;Ljava/lang/String;Lkotlinx/serialization/json/l;Landroid/os/Handler;Lcom/vungle/ads/internal/ui/VungleWebClient;Landroid/webkit/WebView;)V

    return-void
.end method
