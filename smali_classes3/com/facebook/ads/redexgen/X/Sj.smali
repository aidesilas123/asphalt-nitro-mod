###### Class com.facebook.ads.redexgen.X.C1345Sj (com.facebook.ads.redexgen.X.Sj)
.class public final Lcom/facebook/ads/redexgen/X/Sj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/NK;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/97;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaceholderDownloadListener"
.end annotation


# instance fields
.field public final A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/97;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/97;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sj;->A00:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/97;Lcom/facebook/ads/redexgen/X/9C;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Sj;-><init>(Lcom/facebook/ads/redexgen/X/97;)V

    return-void
.end method


# virtual methods
.method public final ABX(Z)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sj;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/97;

    if-eqz v0, :cond_10

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/97;->A07(Lcom/facebook/ads/redexgen/X/97;Z)Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/97;->A05(Lcom/facebook/ads/redexgen/X/97;)V

    :cond_10
    return-void
.end method
