###### Class com.facebook.ads.redexgen.X.AbstractC0931Bo (com.facebook.ads.redexgen.X.Bo)
.class public abstract Lcom/facebook/ads/redexgen/X/Bo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Wt;
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Bm;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Bm;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bo;->A00:Lcom/facebook/ads/redexgen/X/Bm;

    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/Hh;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9d;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Bo;->A0C(Lcom/facebook/ads/redexgen/X/Hh;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Bo;->A0B(Lcom/facebook/ads/redexgen/X/Hh;J)V

    :cond_9
    return-void
.end method

.method public abstract A0B(Lcom/facebook/ads/redexgen/X/Hh;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9d;
        }
    .end annotation
.end method

.method public abstract A0C(Lcom/facebook/ads/redexgen/X/Hh;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9d;
        }
    .end annotation
.end method
