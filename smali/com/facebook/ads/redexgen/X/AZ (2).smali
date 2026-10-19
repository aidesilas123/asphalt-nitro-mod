###### Class com.facebook.ads.redexgen.X.AZ (com.facebook.ads.redexgen.X.AZ)
.class public final Lcom/facebook/ads/redexgen/X/AZ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/AX;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/audio/AudioTimestampPoller$State;
    }
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public final A05:Lcom/facebook/ads/redexgen/X/AX;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "tMW2fkMpy5HihKk0yN3j3FySApib3JSJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DmNw9hS4nxXBj6Mr2INd4L8q1xMEyvKq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0eqkaL3Dsezuu4pOs0MDPfwpckzWpND4"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "49OOFjFtCxl3f3ujLPMCOchIYt8uEQEa"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MWNNllbG7VNHRaURq2pyYfck8pAxQtjw"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ldwZ0eJIezAamtWPjZLM2iroOhc1OYkS"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "11ihmkQKk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Tg3NlfrAQ4uSsG9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/AZ;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioTrack;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_14

    new-instance v0, Lcom/facebook/ads/redexgen/X/AX;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/AX;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AZ;->A05:Lcom/facebook/ads/redexgen/X/AX;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AZ;->A05()V

    :goto_13
    return-void

    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AZ;->A05:Lcom/facebook/ads/redexgen/X/AX;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AZ;->A00(I)V

    goto :goto_13
.end method

.method private A00(I)V
    .registers 8

    iput p1, p0, Lcom/facebook/ads/redexgen/X/AZ;->A00:I

    const-wide/16 v4, 0x1388

    packed-switch p1, :pswitch_data_4a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_d
    const-wide/32 v3, 0x7a120

    sget-object v1, Lcom/facebook/ads/redexgen/X/AZ;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_23

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_23
    sget-object v2, Lcom/facebook/ads/redexgen/X/AZ;->A06:[Ljava/lang/String;

    const-string v1, "I3kIT2QQI"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/AZ;->A04:J

    goto :goto_49

    :pswitch_2d
    const-wide/32 v0, 0x989680

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/AZ;->A04:J

    goto :goto_49

    :pswitch_33
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/AZ;->A04:J

    goto :goto_49

    :pswitch_36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/AZ;->A03:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/AZ;->A01:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/AZ;->A02:J

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/AZ;->A04:J

    :goto_49
    return-void

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_36
        :pswitch_33
        :pswitch_2d
        :pswitch_2d
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public final A01()J
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AZ;->A05:Lcom/facebook/ads/redexgen/X/AX;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AX;->A00()J

    move-result-wide v0

    :goto_8
    return-wide v0

    :cond_9
    const-wide/16 v0, -0x1

    goto :goto_8
.end method

.method public final A02()J
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AZ;->A05:Lcom/facebook/ads/redexgen/X/AX;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AX;->A01()J

    move-result-wide v0

    :goto_8
    return-wide v0

    :cond_9
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_8
.end method

.method public final A03()V
    .registers 3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/AZ;->A00:I

    const/4 v0, 0x4

    if-ne v1, v0, :cond_8

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AZ;->A05()V

    :cond_8
    return-void
.end method

.method public final A04()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AZ;->A00(I)V

    return-void
.end method

.method public final A05()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AZ;->A05:Lcom/facebook/ads/redexgen/X/AX;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AZ;->A00(I)V

    :cond_8
    return-void
.end method

.method public final A06()Z
    .registers 4

    iget v2, p0, Lcom/facebook/ads/redexgen/X/AZ;->A00:I

    const/4 v1, 0x1

    if-eq v2, v1, :cond_8

    const/4 v0, 0x2

    if-ne v2, v0, :cond_9

    :cond_8
    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public final A07()Z
    .registers 3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/AZ;->A00:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final A08(J)Z
    .registers 9

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/AZ;->A05:Lcom/facebook/ads/redexgen/X/AX;

    if-eqz v5, :cond_e

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/AZ;->A03:J

    sub-long v3, p1, v0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/AZ;->A04:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_10

    :cond_e
    const/4 v0, 0x0

    return v0

    :cond_10
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/AZ;->A03:J

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/AX;->A02()Z

    move-result v5

    iget v0, p0, Lcom/facebook/ads/redexgen/X/AZ;->A00:I

    packed-switch v0, :pswitch_data_70

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_21
    if-eqz v5, :cond_5e

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AZ;->A05()V

    goto :goto_5e

    :pswitch_27
    if-nez v5, :cond_5e

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AZ;->A05()V

    goto :goto_5e

    :pswitch_2d
    if-eqz v5, :cond_40

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AZ;->A05:Lcom/facebook/ads/redexgen/X/AX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AX;->A00()J

    move-result-wide v3

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/AZ;->A01:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_5e

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AZ;->A00(I)V

    goto :goto_5e

    :cond_40
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AZ;->A05()V

    goto :goto_5e

    :pswitch_44
    if-eqz v5, :cond_61

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AZ;->A05:Lcom/facebook/ads/redexgen/X/AX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AX;->A01()J

    move-result-wide v3

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/AZ;->A02:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_5f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AZ;->A05:Lcom/facebook/ads/redexgen/X/AX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AX;->A00()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/AZ;->A01:J

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AZ;->A00(I)V

    :cond_5e
    :goto_5e
    :pswitch_5e
    return v5

    :cond_5f
    const/4 v5, 0x0

    goto :goto_5e

    :cond_61
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/AZ;->A02:J

    sub-long/2addr p1, v0

    const-wide/32 v1, 0x7a120

    cmp-long v0, p1, v1

    if-lez v0, :cond_5e

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AZ;->A00(I)V

    goto :goto_5e

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_44
        :pswitch_2d
        :pswitch_27
        :pswitch_21
        :pswitch_5e
    .end packed-switch
.end method
