###### Class com.facebook.ads.redexgen.X.C0989Ek (com.facebook.ads.redexgen.X.Ek)
.class public final Lcom/facebook/ads/redexgen/X/Ek;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Em;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadEventInfo"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:J

.field public final A03:Lcom/facebook/ads/redexgen/X/Gg;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Gg;JJJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ek;->A03:Lcom/facebook/ads/redexgen/X/Gg;

    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Ek;->A01:J

    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/Ek;->A02:J

    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/Ek;->A00:J

    return-void
.end method
