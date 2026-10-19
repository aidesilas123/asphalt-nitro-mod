###### Class com.vungle.ads.h (com.vungle.ads.h)
.class public final synthetic Lcom/vungle/ads/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/p0;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/p0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/h;->a:Lcom/vungle/ads/p0;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/h;->a:Lcom/vungle/ads/p0;

    invoke-static {v0}, Lcom/vungle/ads/p0$a;->c(Lcom/vungle/ads/p0;)V

    return-void
.end method
