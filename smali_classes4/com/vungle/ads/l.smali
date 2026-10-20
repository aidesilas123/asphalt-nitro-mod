###### Class com.vungle.ads.l (com.vungle.ads.l)
.class public final synthetic Lcom/vungle/ads/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/vungle/ads/internal/ImpressionTracker$b;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/s0;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/s0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/l;->a:Lcom/vungle/ads/s0;

    return-void
.end method


# virtual methods
.method public final onImpression(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/vungle/ads/l;->a:Lcom/vungle/ads/s0;

    invoke-static {v0, p1}, Lcom/vungle/ads/s0;->a(Lcom/vungle/ads/s0;Landroid/view/View;)V

    return-void
.end method
