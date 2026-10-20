###### Class com.vungle.ads.internal.util.c (com.vungle.ads.internal.util.c)
.class public final synthetic Lcom/vungle/ads/internal/util/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/vungle/ads/internal/util/ImageLoader;

.field public final synthetic c:Lkotlin/jvm/b/l;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vungle/ads/internal/util/ImageLoader;Lkotlin/jvm/b/l;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/util/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vungle/ads/internal/util/c;->b:Lcom/vungle/ads/internal/util/ImageLoader;

    iput-object p3, p0, Lcom/vungle/ads/internal/util/c;->c:Lkotlin/jvm/b/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/vungle/ads/internal/util/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/ads/internal/util/c;->b:Lcom/vungle/ads/internal/util/ImageLoader;

    iget-object v2, p0, Lcom/vungle/ads/internal/util/c;->c:Lkotlin/jvm/b/l;

    invoke-static {v0, v1, v2}, Lcom/vungle/ads/internal/util/ImageLoader;->a(Ljava/lang/String;Lcom/vungle/ads/internal/util/ImageLoader;Lkotlin/jvm/b/l;)V

    return-void
.end method
