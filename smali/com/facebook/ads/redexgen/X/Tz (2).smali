###### Class com.facebook.ads.redexgen.X.C1386Tz (com.facebook.ads.redexgen.X.Tz)
.class public final Lcom/facebook/ads/redexgen/X/Tz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/LB;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/LD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BypassLineProcessor"
.end annotation


# instance fields
.field public A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/LB;

.field public final A02:Lcom/facebook/ads/redexgen/X/LB;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/LB;ILcom/facebook/ads/redexgen/X/LB;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tz;->A01:Lcom/facebook/ads/redexgen/X/LB;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Tz;->A00:I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Tz;->A02:Lcom/facebook/ads/redexgen/X/LB;

    return-void
.end method


# virtual methods
.method public final ADy(Ljava/lang/String;)V
    .registers 3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Tz;->A00:I

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tz;->A01:Lcom/facebook/ads/redexgen/X/LB;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/LB;->ADy(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tz;->A01:Lcom/facebook/ads/redexgen/X/LB;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LB;->flush()V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Tz;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Tz;->A00:I

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tz;->A02:Lcom/facebook/ads/redexgen/X/LB;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/LB;->ADy(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public final flush()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tz;->A02:Lcom/facebook/ads/redexgen/X/LB;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LB;->flush()V

    return-void
.end method
