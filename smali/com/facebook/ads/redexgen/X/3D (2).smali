###### Class com.facebook.ads.redexgen.X.C3D (com.facebook.ads.redexgen.X.3D)
.class public final Lcom/facebook/ads/redexgen/X/3D;
.super Lcom/facebook/ads/redexgen/X/Dl;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/MetadataRenderer$Output;
    }
.end annotation


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/DE;

.field public A03:Z

.field public final A04:Landroid/os/Handler;

.field public final A05:Lcom/facebook/ads/redexgen/X/9X;

.field public final A06:Lcom/facebook/ads/redexgen/X/DG;

.field public final A07:Lcom/facebook/ads/redexgen/X/D1;

.field public final A08:Lcom/facebook/ads/redexgen/X/DH;

.field public final A09:[J

.field public final A0A:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "0qSWVCRp"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8n"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TBzABSyg8R7UC4ujRNxCq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "jQt0eIY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "v3jD5iBy36"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AYhXU50alurSLkI0yvRIZkZn8z1ow4xX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "qUGfoy2tLuPBRFk8hkXJpZQuwVi5LQ1p"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "rA70SaLYISjIKcft86AFQfJkzoYA33nr"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0B:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/DH;Landroid/os/Looper;)V
    .registers 4

    sget-object v0, Lcom/facebook/ads/redexgen/X/DG;->A00:Lcom/facebook/ads/redexgen/X/DG;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/3D;-><init>(Lcom/facebook/ads/redexgen/X/DH;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/DG;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/DH;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/DG;)V
    .registers 6

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dl;-><init>(I)V

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/DH;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A08:Lcom/facebook/ads/redexgen/X/DH;

    if-nez p2, :cond_31

    const/4 v0, 0x0

    :goto_f
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A04:Landroid/os/Handler;

    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/DG;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A06:Lcom/facebook/ads/redexgen/X/DG;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9X;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9X;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A05:Lcom/facebook/ads/redexgen/X/9X;

    new-instance v0, Lcom/facebook/ads/redexgen/X/D1;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/D1;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A07:Lcom/facebook/ads/redexgen/X/D1;

    const/4 v1, 0x5

    new-array v0, v1, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0A:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A09:[J

    return-void

    :cond_31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_f
.end method

.method private A00()V
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0A:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    return-void
.end method

.method private A01(Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;)V
    .registers 6

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A04:Landroid/os/Handler;

    if-eqz v1, :cond_2b

    const/4 v0, 0x0

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0B:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2f

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0B:[Ljava/lang/String;

    const-string v1, "HjLXVjnhMu7EB58lvrXa8leW0c4xSFXO"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "qIzVCSliCuvFWhZzcfJ3ccTrGvRVj8IV"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :goto_2a
    return-void

    :cond_2b
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3D;->A02(Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;)V

    goto :goto_2a

    :cond_2f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A02(Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A08:Lcom/facebook/ads/redexgen/X/DH;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/DH;->AC8(Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;)V

    return-void
.end method


# virtual methods
.method public final A12()V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A00()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A02:Lcom/facebook/ads/redexgen/X/DE;

    return-void
.end method

.method public final A15(JZ)V
    .registers 5

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A00()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A03:Z

    return-void
.end method

.method public final A17([Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A06:Lcom/facebook/ads/redexgen/X/DG;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/DG;->A4V(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Lcom/facebook/ads/redexgen/X/DE;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A02:Lcom/facebook/ads/redexgen/X/DE;

    return-void
.end method

.method public final A8q()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A03:Z

    return v0
.end method

.method public final A90()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final AEb(JJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A03:Z

    const/4 v5, 0x5

    const/4 v4, 0x1

    if-nez v0, :cond_25

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    if-ge v0, v5, :cond_25

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A07:Lcom/facebook/ads/redexgen/X/D1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XE;->A07()V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3D;->A05:Lcom/facebook/ads/redexgen/X/9X;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A07:Lcom/facebook/ads/redexgen/X/D1;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dl;->A10(Lcom/facebook/ads/redexgen/X/9X;Lcom/facebook/ads/redexgen/X/XE;Z)I

    move-result v1

    const/4 v0, -0x4

    if-ne v1, v0, :cond_25

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A07:Lcom/facebook/ads/redexgen/X/D1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ap;->A04()Z

    move-result v0

    if-eqz v0, :cond_5e

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/3D;->A03:Z

    :cond_25
    :goto_25
    iget v3, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0B:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_b0

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0B:[Ljava/lang/String;

    const-string v1, "3VtXKAcUijLRyWZ1CGRxfS"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-lez v3, :cond_5d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A09:[J

    iget v3, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:I

    aget-wide v1, v0, v3

    cmp-long v0, v1, p1

    if-gtz v0, :cond_5d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0A:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3D;->A01(Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3D;->A0A:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:I

    const/4 v0, 0x0

    aput-object v0, v2, v1

    add-int/2addr v1, v4

    rem-int/2addr v1, v5

    iput v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    :cond_5d
    return-void

    :cond_5e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A07:Lcom/facebook/ads/redexgen/X/D1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ap;->A03()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0B:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_c0

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0B:[Ljava/lang/String;

    const-string v1, "LGLHrgLhu9uRK5PVWOv1cuvTksuxgVhV"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_80

    goto :goto_25

    :cond_80
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3D;->A07:Lcom/facebook/ads/redexgen/X/D1;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A05:Lcom/facebook/ads/redexgen/X/9X;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9X;->A00:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget-wide v0, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0G:J

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/D1;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A07:Lcom/facebook/ads/redexgen/X/D1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XE;->A08()V

    :try_start_8f
    iget v3, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    add-int/2addr v3, v0

    rem-int/2addr v3, v5

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3D;->A0A:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A02:Lcom/facebook/ads/redexgen/X/DE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A07:Lcom/facebook/ads/redexgen/X/D1;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/DE;->A4x(Lcom/facebook/ads/redexgen/X/D1;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;

    move-result-object v0

    aput-object v0, v2, v3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3D;->A09:[J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A07:Lcom/facebook/ads/redexgen/X/D1;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/XE;->A00:J

    aput-wide v0, v2, v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    goto/16 :goto_25
    :try_end_b0
    .catch Lcom/facebook/ads/redexgen/X/DF; {:try_start_8f .. :try_end_b0} :catch_b6

    :cond_b0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :catch_b6
    move-exception v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dl;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9K;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/9K;

    move-result-object v0

    throw v0

    :cond_c0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AFt(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A06:Lcom/facebook/ads/redexgen/X/DG;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/DG;->AFu(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Z

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

    check-cast v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3D;->A02(Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;)V

    const/4 v0, 0x1

    return v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch
.end method
