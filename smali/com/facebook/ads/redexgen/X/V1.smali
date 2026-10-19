###### Class com.facebook.ads.redexgen.X.V1 (com.facebook.ads.redexgen.X.V1)
.class public final Lcom/facebook/ads/redexgen/X/V1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ga;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/V2;
    }
.end annotation


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/Gg;

.field public A03:Lcom/facebook/ads/redexgen/X/Ho;

.field public A04:Ljava/io/File;

.field public A05:Ljava/io/FileOutputStream;

.field public A06:Ljava/io/OutputStream;

.field public final A07:I

.field public final A08:J

.field public final A09:Lcom/facebook/ads/redexgen/X/H2;

.field public final A0A:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/H2;J)V
    .registers 10

    const/16 v4, 0x5000

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/V1;-><init>(Lcom/facebook/ads/redexgen/X/H2;JIZ)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/H2;JIZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/H2;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A09:Lcom/facebook/ads/redexgen/X/H2;

    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/V1;->A08:J

    iput p4, p0, Lcom/facebook/ads/redexgen/X/V1;->A07:I

    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/V1;->A0A:Z

    return-void
.end method

.method private A00()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A06:Ljava/io/OutputStream;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A0A:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A05:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_2f

    :cond_17
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A06:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0X(Ljava/io/Closeable;)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/V1;->A06:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V1;->A04:Ljava/io/File;

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/V1;->A04:Ljava/io/File;

    if-eqz v2, :cond_2b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A09:Lcom/facebook/ads/redexgen/X/H2;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/H2;->A4K(Ljava/io/File;)V

    :goto_2a
    return-void

    :cond_2b
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2a

    :catchall_2f
    move-exception v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A06:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0X(Ljava/io/Closeable;)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/V1;->A06:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V1;->A04:Ljava/io/File;

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/V1;->A04:Ljava/io/File;

    if-eqz v4, :cond_43

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A09:Lcom/facebook/ads/redexgen/X/H2;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/H2;->A4K(Ljava/io/File;)V

    :goto_42
    throw v2

    :cond_43
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_42
.end method

.method private A01()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A02:Lcom/facebook/ads/redexgen/X/Gg;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/Gg;->A02:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_4b

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/V1;->A08:J

    :goto_c
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/V1;->A09:Lcom/facebook/ads/redexgen/X/H2;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A02:Lcom/facebook/ads/redexgen/X/Gg;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Gg;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A02:Lcom/facebook/ads/redexgen/X/Gg;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/Gg;->A01:J

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/V1;->A00:J

    add-long/2addr v4, v0

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/H2;->AFi(Ljava/lang/String;JJ)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A04:Ljava/io/File;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A04:Ljava/io/File;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/V1;->A05:Ljava/io/FileOutputStream;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A07:I

    if-lez v0, :cond_48

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A03:Lcom/facebook/ads/redexgen/X/Ho;

    if-nez v0, :cond_44

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/V1;->A05:Ljava/io/FileOutputStream;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/V1;->A07:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ho;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ho;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A03:Lcom/facebook/ads/redexgen/X/Ho;

    :goto_3b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A03:Lcom/facebook/ads/redexgen/X/Ho;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A06:Ljava/io/OutputStream;

    :goto_3f
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A01:J

    return-void

    :cond_44
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ho;->A00(Ljava/io/OutputStream;)V

    goto :goto_3b

    :cond_48
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/V1;->A06:Ljava/io/OutputStream;

    goto :goto_3f

    :cond_4b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A02:Lcom/facebook/ads/redexgen/X/Gg;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/Gg;->A02:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A00:J

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A08:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_c
.end method


# virtual methods
.method public final ADd(Lcom/facebook/ads/redexgen/X/Gg;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/V2;
        }
    .end annotation

    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/Gg;->A02:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_13

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A02(I)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A02:Lcom/facebook/ads/redexgen/X/Gg;

    return-void

    :cond_13
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V1;->A02:Lcom/facebook/ads/redexgen/X/Gg;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A00:J

    :try_start_19
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/V1;->A01()V

    goto :goto_24
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1d} :catch_1d

    :catch_1d
    move-exception v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/V2;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/V2;-><init>(Ljava/io/IOException;)V

    throw v0

    :goto_24
    return-void
.end method

.method public final close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/V2;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A02:Lcom/facebook/ads/redexgen/X/Gg;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/V1;->A00()V

    goto :goto_10
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_9

    :catch_9
    move-exception v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/V2;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/V2;-><init>(Ljava/io/IOException;)V

    throw v0

    :goto_10
    return-void
.end method

.method public final write([BII)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/V2;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A02:Lcom/facebook/ads/redexgen/X/Gg;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v6, 0x0

    :goto_6
    if-ge v6, p3, :cond_3f

    :try_start_8
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/V1;->A01:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A08:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_16

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/V1;->A00()V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/V1;->A01()V

    :cond_16
    sub-int v0, p3, v6

    int-to-long v4, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A08:J

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/V1;->A01:J

    sub-long/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v4, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V1;->A06:Ljava/io/OutputStream;

    add-int v0, p2, v6

    invoke-virtual {v1, p1, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v6, v4

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/V1;->A01:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/V1;->A01:J

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/V1;->A00:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/V1;->A00:J

    goto :goto_6
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_38} :catch_38

    :catch_38
    move-exception v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/V2;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/V2;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_3f
    return-void
.end method
