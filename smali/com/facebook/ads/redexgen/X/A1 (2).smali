###### Class com.facebook.ads.redexgen.X.A1 (com.facebook.ads.redexgen.X.A1)
.class public final Lcom/facebook/ads/redexgen/X/A1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/XP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaPeriodQueueTracker"
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/9z;

.field public A01:Lcom/facebook/ads/redexgen/X/A2;

.field public A02:Lcom/facebook/ads/redexgen/X/A2;

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/9x;

.field public final A05:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/A2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "rmgpPCWB7BYHQ3azE8yCiRChgWLX4K1O"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ESYL8WQp59BjyyK9DI9xkUBJ1yOk4QLd"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YweXfGig2PVNilG2mJZlv3ovQAOkP8UY"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CAftEyLXQvcAYYqOnK17yfwScyM6Y9GQ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5ZUx"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "CHSAxwc6W9B6bhcUywJKjVUar2kzl0Sb"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "G9dVYOs473"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "8VVZpCzafohaQpJb3SOOvVZNRfYg5osa"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/A1;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A05:Ljava/util/ArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9x;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9x;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A04:Lcom/facebook/ads/redexgen/X/9x;

    sget-object v0, Lcom/facebook/ads/redexgen/X/9z;->A01:Lcom/facebook/ads/redexgen/X/9z;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A00:Lcom/facebook/ads/redexgen/X/9z;

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/A2;Lcom/facebook/ads/redexgen/X/9z;)Lcom/facebook/ads/redexgen/X/A2;
    .registers 8

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/9z;->A0E()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A00:Lcom/facebook/ads/redexgen/X/9z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9z;->A0E()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    return-object p1

    :cond_f
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/A1;->A00:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/A2;->A01:Lcom/facebook/ads/redexgen/X/EW;

    iget v3, v0, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/A1;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_4f

    sget-object v2, Lcom/facebook/ads/redexgen/X/A1;->A06:[Ljava/lang/String;

    const-string v1, "6Z7kXvoTE0GMRlV8X7ahHWF28Ir1JA8U"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/A1;->A04:Lcom/facebook/ads/redexgen/X/9x;

    const/4 v0, 0x1

    invoke-virtual {v4, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/9z;->A0A(ILcom/facebook/ads/redexgen/X/9x;Z)Lcom/facebook/ads/redexgen/X/9x;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9x;->A03:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/9z;->A04(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_3b

    return-object p1

    :cond_3b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A04:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {p2, v1, v0}, Lcom/facebook/ads/redexgen/X/9z;->A09(ILcom/facebook/ads/redexgen/X/9x;)Lcom/facebook/ads/redexgen/X/9x;

    move-result-object v0

    iget v2, v0, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/A2;->A01:Lcom/facebook/ads/redexgen/X/EW;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/EW;->A00(I)Lcom/facebook/ads/redexgen/X/EW;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/A2;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/A2;-><init>(ILcom/facebook/ads/redexgen/X/EW;)V

    return-object v0

    :cond_4f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/A1;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/A1;->A05:Ljava/util/ArrayList;

    return-object p0
.end method

.method private A02()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/A1;->A05:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A2;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A01:Lcom/facebook/ads/redexgen/X/A2;

    :cond_13
    return-void
.end method


# virtual methods
.method public final A03()Lcom/facebook/ads/redexgen/X/A2;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A01:Lcom/facebook/ads/redexgen/X/A2;

    return-object v0
.end method

.method public final A04()Lcom/facebook/ads/redexgen/X/A2;
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/A1;->A05:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/A1;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_34

    sget-object v2, Lcom/facebook/ads/redexgen/X/A1;->A06:[Ljava/lang/String;

    const-string v1, "IuVtQJyFuB"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "VEjGs0KHAo6Qkjlg0Fq6YAYYmbb9RMII"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A2;

    goto :goto_9

    :cond_34
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/A2;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A00:Lcom/facebook/ads/redexgen/X/9z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9z;->A0E()Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A03:Z

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return-object v0

    :cond_16
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/A1;->A05:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A2;

    goto :goto_15
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/A2;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A02:Lcom/facebook/ads/redexgen/X/A2;

    return-object v0
.end method

.method public final A07(I)Lcom/facebook/ads/redexgen/X/EW;
    .registers 9

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A00:Lcom/facebook/ads/redexgen/X/9z;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9z;->A00()I

    move-result v5

    const/4 v4, 0x0

    :goto_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_35

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/A2;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/A2;->A01:Lcom/facebook/ads/redexgen/X/EW;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    if-ge v2, v5, :cond_32

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/A1;->A00:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A04:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/9z;->A09(ILcom/facebook/ads/redexgen/X/9x;)Lcom/facebook/ads/redexgen/X/9x;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    if-ne v0, p1, :cond_32

    if-eqz v6, :cond_30

    const/4 v0, 0x0

    return-object v0

    :cond_30
    iget-object v6, v3, Lcom/facebook/ads/redexgen/X/A2;->A01:Lcom/facebook/ads/redexgen/X/EW;

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_35
    return-object v6
.end method

.method public final A08()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A03:Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/A1;->A02()V

    return-void
.end method

.method public final A09()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A03:Z

    return-void
.end method

.method public final A0A(I)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/A1;->A02()V

    return-void
.end method

.method public final A0B(ILcom/facebook/ads/redexgen/X/EW;)V
    .registers 5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/A1;->A05:Ljava/util/ArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/A2;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/A2;-><init>(ILcom/facebook/ads/redexgen/X/EW;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A00:Lcom/facebook/ads/redexgen/X/9z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9z;->A0E()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/A1;->A02()V

    :cond_1e
    return-void
.end method

.method public final A0C(ILcom/facebook/ads/redexgen/X/EW;)V
    .registers 5

    new-instance v1, Lcom/facebook/ads/redexgen/X/A2;

    invoke-direct {v1, p1, p2}, Lcom/facebook/ads/redexgen/X/A2;-><init>(ILcom/facebook/ads/redexgen/X/EW;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A02:Lcom/facebook/ads/redexgen/X/A2;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/A2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    :goto_1b
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A02:Lcom/facebook/ads/redexgen/X/A2;

    :cond_1d
    return-void

    :cond_1e
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/A1;->A05:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A2;

    goto :goto_1b
.end method

.method public final A0D(ILcom/facebook/ads/redexgen/X/EW;)V
    .registers 4

    new-instance v0, Lcom/facebook/ads/redexgen/X/A2;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/A2;-><init>(ILcom/facebook/ads/redexgen/X/EW;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A02:Lcom/facebook/ads/redexgen/X/A2;

    return-void
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/9z;)V
    .registers 5

    const/4 v2, 0x0

    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1b

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/A1;->A05:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A2;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/A1;->A00(Lcom/facebook/ads/redexgen/X/A2;Lcom/facebook/ads/redexgen/X/9z;)Lcom/facebook/ads/redexgen/X/A2;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A02:Lcom/facebook/ads/redexgen/X/A2;

    if-eqz v0, :cond_25

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/A1;->A00(Lcom/facebook/ads/redexgen/X/A2;Lcom/facebook/ads/redexgen/X/9z;)Lcom/facebook/ads/redexgen/X/A2;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A02:Lcom/facebook/ads/redexgen/X/A2;

    :cond_25
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/A1;->A00:Lcom/facebook/ads/redexgen/X/9z;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/A1;->A02()V

    return-void
.end method

.method public final A0F()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/A1;->A03:Z

    return v0
.end method
