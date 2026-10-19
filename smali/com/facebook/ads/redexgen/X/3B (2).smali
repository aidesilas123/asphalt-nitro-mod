###### Class com.facebook.ads.redexgen.X.C3B (com.facebook.ads.redexgen.X.3B)
.class public final Lcom/facebook/ads/redexgen/X/3B;
.super Lcom/facebook/ads/redexgen/X/Dl;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/TextRenderer$ReplacementState;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/TextRenderer$Output;
    }
.end annotation


# static fields
.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

.field public A03:Lcom/facebook/ads/redexgen/X/Vc;

.field public A04:Lcom/facebook/ads/redexgen/X/BO;

.field public A05:Lcom/facebook/ads/redexgen/X/BN;

.field public A06:Lcom/facebook/ads/redexgen/X/BN;

.field public A07:Z

.field public A08:Z

.field public final A09:Landroid/os/Handler;

.field public final A0A:Lcom/facebook/ads/redexgen/X/9X;

.field public final A0B:Lcom/facebook/ads/redexgen/X/FY;

.field public final A0C:Lcom/facebook/ads/redexgen/X/FZ;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gjDhtLri4FaGEAWjRmzGOIMLbPPteIUr"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "gp3Mr1PqMY6rayIsxO9yJntmkSBHR7UD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "5ZPDaEp5A16UYvNfALSoSfbuhC4Pwik1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wt"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "uAQVQjgSUgDp2O8dWeXQS6qYbl"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Gm3ZCOzsQkh90YHushfajnERb16f"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RaSLUB1F0sju8CZYqMhotlzh76Y2FLCY"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Ujo7akDRrtwDl4IVTi3qcCtKoi2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3B;->A0D:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FZ;Landroid/os/Looper;)V
    .registers 4

    sget-object v0, Lcom/facebook/ads/redexgen/X/FY;->A00:Lcom/facebook/ads/redexgen/X/FY;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/3B;-><init>(Lcom/facebook/ads/redexgen/X/FZ;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/FY;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FZ;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/FY;)V
    .registers 5

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dl;-><init>(I)V

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FZ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A0C:Lcom/facebook/ads/redexgen/X/FZ;

    if-nez p2, :cond_1b

    const/4 v0, 0x0

    :goto_f
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A09:Landroid/os/Handler;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/3B;->A0B:Lcom/facebook/ads/redexgen/X/FY;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9X;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9X;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A0A:Lcom/facebook/ads/redexgen/X/9X;

    return-void

    :cond_1b
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_f
.end method

.method private A00()J
    .registers 3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3B;->A01:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A06:Lcom/facebook/ads/redexgen/X/BN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BN;->A6u()I

    move-result v0

    if-lt v1, v0, :cond_13

    :cond_d
    const-wide v0, 0x7fffffffffffffffL

    :goto_12
    return-wide v0

    :cond_13
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3B;->A06:Lcom/facebook/ads/redexgen/X/BN;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/BN;->A6t(I)J

    move-result-wide v0

    goto :goto_12
.end method

.method private A01()V
    .registers 2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3B;->A06(Ljava/util/List;)V

    return-void
.end method

.method private A02()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/3B;->A04:Lcom/facebook/ads/redexgen/X/BO;

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A06:Lcom/facebook/ads/redexgen/X/BN;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BN;->A08()V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/3B;->A06:Lcom/facebook/ads/redexgen/X/BN;

    :cond_f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A05:Lcom/facebook/ads/redexgen/X/BN;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BN;->A08()V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/3B;->A05:Lcom/facebook/ads/redexgen/X/BN;

    :cond_18
    return-void
.end method

.method private A03()V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3B;->A02()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A03:Lcom/facebook/ads/redexgen/X/Vc;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/At;->AEO()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A03:Lcom/facebook/ads/redexgen/X/Vc;

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A00:I

    return-void
.end method

.method private A04()V
    .registers 3

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3B;->A03()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3B;->A0B:Lcom/facebook/ads/redexgen/X/FY;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A02:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A4W(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Lcom/facebook/ads/redexgen/X/Vc;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A03:Lcom/facebook/ads/redexgen/X/Vc;

    return-void
.end method

.method private A05(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/FV;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A0C:Lcom/facebook/ads/redexgen/X/FZ;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/FZ;->AB0(Ljava/util/List;)V

    return-void
.end method

.method private A06(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/FV;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3B;->A09:Landroid/os/Handler;

    if-eqz v1, :cond_d

    const/4 v0, 0x0

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_c
    return-void

    :cond_d
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3B;->A05(Ljava/util/List;)V

    goto :goto_c
.end method


# virtual methods
.method public final A12()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A02:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3B;->A01()V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3B;->A03()V

    return-void
.end method

.method public final A15(JZ)V
    .registers 5

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3B;->A01()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A07:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A08:Z

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A00:I

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3B;->A04()V

    :goto_f
    return-void

    :cond_10
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3B;->A02()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A03:Lcom/facebook/ads/redexgen/X/Vc;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/At;->flush()V

    goto :goto_f
.end method

.method public final A17([Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v1, p1, v0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/3B;->A02:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A03:Lcom/facebook/ads/redexgen/X/Vc;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A00:I

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A0B:Lcom/facebook/ads/redexgen/X/FY;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/FY;->A4W(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Lcom/facebook/ads/redexgen/X/Vc;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A03:Lcom/facebook/ads/redexgen/X/Vc;

    goto :goto_c
.end method

.method public final A8q()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A08:Z

    return v0
.end method

.method public final A90()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final AEb(JJ)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A08:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A05:Lcom/facebook/ads/redexgen/X/BN;

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A03:Lcom/facebook/ads/redexgen/X/Vc;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Vc;->AFQ(J)V

    :try_start_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A03:Lcom/facebook/ads/redexgen/X/Vc;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/At;->A51()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/BN;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A05:Lcom/facebook/ads/redexgen/X/BN;

    goto :goto_23
    :try_end_19
    .catch Lcom/facebook/ads/redexgen/X/FX; {:try_start_e .. :try_end_19} :catch_19

    :catch_19
    move-exception v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dl;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9K;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/9K;

    move-result-object v0

    throw v0

    :cond_23
    :goto_23
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dl;->A7t()I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2b

    return-void

    :cond_2b
    const/4 v9, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A06:Lcom/facebook/ads/redexgen/X/BN;

    const/4 v4, 0x1

    if-eqz v0, :cond_44

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3B;->A00()J

    move-result-wide v1

    :goto_35
    cmp-long v0, v1, p1

    if-gtz v0, :cond_44

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A01:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A01:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3B;->A00()J

    move-result-wide v1

    const/4 v9, 0x1

    goto :goto_35

    :cond_44
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/3B;->A05:Lcom/facebook/ads/redexgen/X/BN;

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/3B;->A0D:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_160

    sget-object v2, Lcom/facebook/ads/redexgen/X/3B;->A0D:[Ljava/lang/String;

    const-string v1, "KD"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v6, :cond_99

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Ap;->A04()Z

    move-result v0

    if-eqz v0, :cond_be

    if-nez v9, :cond_99

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3B;->A00()J

    move-result-wide v7

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v6, v7, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/3B;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_af

    sget-object v2, Lcom/facebook/ads/redexgen/X/3B;->A0D:[Ljava/lang/String;

    const-string v1, "xJP4O1R5iBehlF3gjm9oxj2d0if1stmE"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "mrFlrw4gjycn3JZxSawox6A5ZMqGzaMP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v6, :cond_99

    :goto_92
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A00:I

    if-ne v0, v5, :cond_a9

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3B;->A04()V

    :cond_99
    :goto_99
    if-eqz v9, :cond_a4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A06:Lcom/facebook/ads/redexgen/X/BN;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/BN;->A6T(J)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3B;->A06(Ljava/util/List;)V

    :cond_a4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A00:I

    if-ne v0, v5, :cond_db

    return-void

    :cond_a9
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3B;->A02()V

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/3B;->A08:Z

    goto :goto_99

    :cond_af
    sget-object v2, Lcom/facebook/ads/redexgen/X/3B;->A0D:[Ljava/lang/String;

    const-string v1, "j9HNvuqeLVtstiy16y9LH7E8URqfplUR"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "4Jhirnf8T6FRv4glusNGUbVI8l7wWqUm"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v6, :cond_99

    goto :goto_92

    :cond_be
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A05:Lcom/facebook/ads/redexgen/X/BN;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/XD;->A01:J

    cmp-long v2, v0, p1

    if-gtz v2, :cond_99

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A06:Lcom/facebook/ads/redexgen/X/BN;

    if-eqz v0, :cond_cd

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BN;->A08()V

    :cond_cd
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A05:Lcom/facebook/ads/redexgen/X/BN;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A06:Lcom/facebook/ads/redexgen/X/BN;

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3B;->A05:Lcom/facebook/ads/redexgen/X/BN;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/BN;->A7L(J)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A01:I

    const/4 v9, 0x1

    goto :goto_99

    :cond_db
    :goto_db
    :try_start_db
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A07:Z

    if-nez v0, :cond_155

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A04:Lcom/facebook/ads/redexgen/X/BO;

    if-nez v0, :cond_f0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A03:Lcom/facebook/ads/redexgen/X/Vc;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/At;->A50()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/BO;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A04:Lcom/facebook/ads/redexgen/X/BO;

    if-nez v0, :cond_f0

    return-void

    :cond_f0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A00:I

    if-ne v0, v4, :cond_106

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3B;->A04:Lcom/facebook/ads/redexgen/X/BO;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ap;->A02(I)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3B;->A03:Lcom/facebook/ads/redexgen/X/Vc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A04:Lcom/facebook/ads/redexgen/X/BO;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/At;->AE8(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3B;->A04:Lcom/facebook/ads/redexgen/X/BO;

    iput v5, p0, Lcom/facebook/ads/redexgen/X/3B;->A00:I

    goto :goto_14e

    :cond_106
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3B;->A0A:Lcom/facebook/ads/redexgen/X/9X;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3B;->A04:Lcom/facebook/ads/redexgen/X/BO;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dl;->A10(Lcom/facebook/ads/redexgen/X/9X;Lcom/facebook/ads/redexgen/X/XE;Z)I
    :try_end_10e
    .catch Lcom/facebook/ads/redexgen/X/FX; {:try_start_db .. :try_end_10e} :catch_156

    move-result v7

    const/4 v6, -0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/3B;->A0D:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_11d

    goto :goto_14f

    :cond_11d
    sget-object v2, Lcom/facebook/ads/redexgen/X/3B;->A0D:[Ljava/lang/String;

    const-string v1, "w0qgeVmaHT9zi92RU59iiGmHeY"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne v7, v6, :cond_14a

    :try_start_126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A04:Lcom/facebook/ads/redexgen/X/BO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ap;->A04()Z

    move-result v0

    if-eqz v0, :cond_13a

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/3B;->A07:Z

    :goto_130
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3B;->A03:Lcom/facebook/ads/redexgen/X/Vc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A04:Lcom/facebook/ads/redexgen/X/BO;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/At;->AE8(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3B;->A04:Lcom/facebook/ads/redexgen/X/BO;

    goto :goto_db

    :cond_13a
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3B;->A04:Lcom/facebook/ads/redexgen/X/BO;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A0A:Lcom/facebook/ads/redexgen/X/9X;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9X;->A00:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget-wide v0, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0G:J

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/BO;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A04:Lcom/facebook/ads/redexgen/X/BO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XE;->A08()V

    goto :goto_130

    :cond_14a
    const/4 v0, -0x3

    if-ne v7, v0, :cond_db

    return-void

    :goto_14e
    return-void
    :try_end_14f
    .catch Lcom/facebook/ads/redexgen/X/FX; {:try_start_126 .. :try_end_14f} :catch_156

    :goto_14f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_155
    return-void

    :catch_156
    move-exception v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dl;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9K;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/9K;

    move-result-object v0

    throw v0

    :cond_160
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AFt(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3B;->A0B:Lcom/facebook/ads/redexgen/X/FY;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/FY;->AFu(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Dl;->A0x(Lcom/facebook/ads/redexgen/X/BK;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x4

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x2

    goto :goto_12

    :cond_15
    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ha;->A0A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    return v0

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3B;->A05(Ljava/util/List;)V

    const/4 v0, 0x1

    return v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch
.end method
