###### Class com.facebook.ads.redexgen.X.C1371Tk (com.facebook.ads.redexgen.X.Tk)
.class public final Lcom/facebook/ads/redexgen/X/Tk;
.super Lcom/facebook/ads/redexgen/X/4h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/2O;->getOnScrollListener()Lcom/facebook/ads/redexgen/X/4h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/2O;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8Yn2PgyedH1iX"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "R67HljoZMbsPm0e6EtybvG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "R8Pp2uuVTku92bGxcvFWCvwfHASfPd1y"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2y5E80sPhAjkTDK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Itturke"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "abRBLy2wdT4xlnoMDCf2vtSzdY3x1mV2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QG421Xj1ReSIzqeVHucrcoJTP843GzsJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Tk;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2O;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tk;->A00:Lcom/facebook/ads/redexgen/X/2O;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4h;-><init>()V

    return-void
.end method


# virtual methods
.method public final A0L(Lcom/facebook/ads/redexgen/X/ED;I)V
    .registers 7

    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4h;->A0L(Lcom/facebook/ads/redexgen/X/ED;I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tk;->A00:Lcom/facebook/ads/redexgen/X/2O;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2O;->getLayoutManager()Lcom/facebook/ads/redexgen/X/ZC;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZC;->A27()I

    move-result v1

    if-ltz v1, :cond_26

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tk;->A00:Lcom/facebook/ads/redexgen/X/2O;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->getAdapter()Lcom/facebook/ads/redexgen/X/4Q;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tk;->A00:Lcom/facebook/ads/redexgen/X/2O;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->getAdapter()Lcom/facebook/ads/redexgen/X/4Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Q;->A0D()I

    move-result v0

    if-lt v1, v0, :cond_27

    :cond_26
    return-void

    :cond_27
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/ED;->A1F(I)Lcom/facebook/ads/redexgen/X/4u;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Lw;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Tk;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_4c

    sget-object v2, Lcom/facebook/ads/redexgen/X/Tk;->A01:[Ljava/lang/String;

    const-string v1, "EBOsosi"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v3, :cond_48

    return-void

    :cond_48
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Lw;->AF7()V

    return-void

    :cond_4c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
