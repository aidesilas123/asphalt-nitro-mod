###### Class com.vungle.ads.o (com.vungle.ads.o)
.class public final synthetic Lcom/vungle/ads/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/u0;

.field public final synthetic b:Lcom/vungle/ads/VungleError;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/u0;Lcom/vungle/ads/VungleError;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/o;->a:Lcom/vungle/ads/u0;

    iput-object p2, p0, Lcom/vungle/ads/o;->b:Lcom/vungle/ads/VungleError;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/vungle/ads/o;->a:Lcom/vungle/ads/u0;

    iget-object v1, p0, Lcom/vungle/ads/o;->b:Lcom/vungle/ads/VungleError;

    invoke-static {v0, v1}, Lcom/vungle/ads/u0$a;->a(Lcom/vungle/ads/u0;Lcom/vungle/ads/VungleError;)V

    return-void
.end method
