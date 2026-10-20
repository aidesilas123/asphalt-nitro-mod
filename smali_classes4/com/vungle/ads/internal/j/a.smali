###### Class com.vungle.ads.internal.platform.a (com.vungle.ads.internal.j.a)
.class public final synthetic Lcom/vungle/ads/internal/j/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/j/c;

.field public final synthetic b:Landroidx/core/util/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/j/c;Landroidx/core/util/Consumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/j/a;->a:Lcom/vungle/ads/internal/j/c;

    iput-object p2, p0, Lcom/vungle/ads/internal/j/a;->b:Landroidx/core/util/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/vungle/ads/internal/j/a;->a:Lcom/vungle/ads/internal/j/c;

    iget-object v1, p0, Lcom/vungle/ads/internal/j/a;->b:Landroidx/core/util/Consumer;

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/j/c;->a(Lcom/vungle/ads/internal/j/c;Landroidx/core/util/Consumer;)V

    return-void
.end method
