###### Class com.vungle.ads.r (com.vungle.ads.r)
.class public final synthetic Lcom/vungle/ads/r;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/u0;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/u0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/r;->a:Lcom/vungle/ads/u0;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/r;->a:Lcom/vungle/ads/u0;

    invoke-static {v0}, Lcom/vungle/ads/u0$a;->d(Lcom/vungle/ads/u0;)V

    return-void
.end method
