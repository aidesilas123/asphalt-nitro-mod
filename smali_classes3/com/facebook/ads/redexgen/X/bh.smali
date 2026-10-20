###### Class com.facebook.ads.redexgen.X.C1636bh (com.facebook.ads.redexgen.X.bh)
.class public final Lcom/facebook/ads/redexgen/X/bh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "StateType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/bg;

.field public A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/bj<",
            "TModelType;TStateType;>;>;"
        }
    .end annotation
.end field

.field public final A02:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelType;"
        }
    .end annotation
.end field

.field public final A03:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TStateType;"
        }
    .end annotation
.end field

.field public final A04:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;TStateType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A01:Ljava/util/List;

    sget-object v0, Lcom/facebook/ads/redexgen/X/bg;->A08:Lcom/facebook/ads/redexgen/X/bg;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A00:Lcom/facebook/ads/redexgen/X/bg;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bh;->A02:Ljava/lang/Object;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bh;->A03:Ljava/lang/Object;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/bh;->A04:Ljava/lang/String;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/bh;)Lcom/facebook/ads/redexgen/X/bg;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bh;->A00:Lcom/facebook/ads/redexgen/X/bg;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/bh;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bh;->A02:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/bh;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bh;->A03:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/bh;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bh;->A04:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/bh;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bh;->A01:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final A05(Lcom/facebook/ads/redexgen/X/bj;)Lcom/facebook/ads/redexgen/X/bh;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/bj<",
            "TModelType;TStateType;>;)",
            "Lcom/facebook/ads/redexgen/X/bh<",
            "TModelType;TStateType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A01:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A01:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A01:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/bg;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/bg<",
            "TModelType;TStateType;>;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/ads/redexgen/X/bg;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bg;-><init>(Lcom/facebook/ads/redexgen/X/bh;)V

    return-object v0
.end method
