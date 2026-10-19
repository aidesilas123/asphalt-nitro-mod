###### Class com.facebook.ads.redexgen.X.C2K (com.facebook.ads.redexgen.X.2K)
.class public final Lcom/facebook/ads/redexgen/X/2K;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = -0x2c891ddc6efb75c6L


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/2K;

.field public final A01:I

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/lang/String;

.field public final A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/2K;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A04:Ljava/util/List;

    iput p1, p0, Lcom/facebook/ads/redexgen/X/2K;->A01:I

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2K;->A03:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/2K;->A02:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/2K;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/2K;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2K;->A00:Lcom/facebook/ads/redexgen/X/2K;

    return-void
.end method


# virtual methods
.method public final A01()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A01:I

    return v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/2K;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A00:Lcom/facebook/ads/redexgen/X/2K;

    return-object v0
.end method

.method public final A03()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A04()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A03:Ljava/lang/String;

    return-object v0
.end method

.method public final A05()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/2K;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A04:Ljava/util/List;

    return-object v0
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/2K;)V
    .registers 3

    invoke-direct {p1, p0}, Lcom/facebook/ads/redexgen/X/2K;->A00(Lcom/facebook/ads/redexgen/X/2K;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A04:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
