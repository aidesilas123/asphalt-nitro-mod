###### Class com.facebook.ads.redexgen.X.LP (com.facebook.ads.redexgen.X.LP)
.class public final Lcom/facebook/ads/redexgen/X/LP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final A01:Lcom/facebook/ads/redexgen/X/LP;


# instance fields
.field public final A00:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/ads/redexgen/X/LP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/LP;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/LP;->A01:Lcom/facebook/ads/redexgen/X/LP;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LP;->A00:Landroid/os/Handler;

    return-void
.end method

.method public static A00(Ljava/lang/Runnable;)V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne v1, v0, :cond_e

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_d
    return-void

    :cond_e
    sget-object v0, Lcom/facebook/ads/redexgen/X/LP;->A01:Lcom/facebook/ads/redexgen/X/LP;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/LP;->execute(Ljava/lang/Runnable;)V

    goto :goto_d
.end method


# virtual methods
.method public final A01()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LP;->A00:Landroid/os/Handler;

    return-object v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LP;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
