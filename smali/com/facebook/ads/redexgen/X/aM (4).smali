###### Class com.facebook.ads.redexgen.X.C1560aM (com.facebook.ads.redexgen.X.aM)
.class public final Lcom/facebook/ads/redexgen/X/aM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/1f;->A0A(Lcom/facebook/ads/redexgen/X/YA;Ljava/util/EnumSet;Lcom/facebook/ads/redexgen/X/aQ;Lcom/facebook/ads/redexgen/X/aS;ILcom/facebook/ads/redexgen/X/1e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/aS;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/aQ;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/1e;

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/1f;

.field public final synthetic A05:Lcom/facebook/ads/redexgen/X/YA;

.field public final synthetic A06:Ljava/util/EnumSet;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1f;Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/aS;Lcom/facebook/ads/redexgen/X/aQ;ILcom/facebook/ads/redexgen/X/1e;Ljava/util/EnumSet;)V
    .registers 8

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aM;->A04:Lcom/facebook/ads/redexgen/X/1f;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/aM;->A05:Lcom/facebook/ads/redexgen/X/YA;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/aM;->A01:Lcom/facebook/ads/redexgen/X/aS;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/aM;->A02:Lcom/facebook/ads/redexgen/X/aQ;

    iput p5, p0, Lcom/facebook/ads/redexgen/X/aM;->A00:I

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/aM;->A03:Lcom/facebook/ads/redexgen/X/1e;

    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/aM;->A06:Ljava/util/EnumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00()V
    .registers 9

    iget v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A00:I

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A02:Lcom/facebook/ads/redexgen/X/aQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aQ;->A0q()I

    move-result v0

    if-lt v1, v0, :cond_d

    return-void

    :cond_d
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aM;->A04:Lcom/facebook/ads/redexgen/X/1f;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aM;->A05:Lcom/facebook/ads/redexgen/X/YA;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aM;->A06:Ljava/util/EnumSet;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/aM;->A02:Lcom/facebook/ads/redexgen/X/aQ;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A00:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/aQ;->A0t(I)Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v5

    iget v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A00:I

    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/aM;->A03:Lcom/facebook/ads/redexgen/X/1e;

    invoke-static/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/1f;->A07(Lcom/facebook/ads/redexgen/X/1f;Lcom/facebook/ads/redexgen/X/YA;Ljava/util/EnumSet;Lcom/facebook/ads/redexgen/X/aQ;Lcom/facebook/ads/redexgen/X/aS;ILcom/facebook/ads/redexgen/X/1e;)V

    return-void
.end method


# virtual methods
.method public final AAP(Lcom/facebook/ads/AdError;)V
    .registers 3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A00:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A03:Lcom/facebook/ads/redexgen/X/1e;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/1e;->AAP(Lcom/facebook/ads/AdError;)V

    :cond_9
    return-void
.end method

.method public final AAQ()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A05:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A00()Lcom/facebook/ads/redexgen/X/6U;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A01:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A02:Lcom/facebook/ads/redexgen/X/aQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aQ;->A0u()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6U;->AF6(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A00:I

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A03:Lcom/facebook/ads/redexgen/X/1e;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1e;->AAQ()V

    :cond_1e
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aM;->A00()V

    return-void
.end method

.method public final AEL()V
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A00:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A03:Lcom/facebook/ads/redexgen/X/1e;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1e;->AEL()V

    :cond_9
    return-void
.end method

.method public final AG1()V
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A00:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A03:Lcom/facebook/ads/redexgen/X/1e;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1e;->AG1()V

    :cond_9
    return-void
.end method
