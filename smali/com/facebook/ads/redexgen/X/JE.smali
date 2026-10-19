###### Class com.facebook.ads.redexgen.X.JE (com.facebook.ads.redexgen.X.JE)
.class public final Lcom/facebook/ads/redexgen/X/JE;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/JD;,
        Lcom/facebook/ads/redexgen/X/JC;
    }
.end annotation


# instance fields
.field public A00:J

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:I

.field public final A08:I

.field public final A09:I

.field public final A0A:I

.field public final A0B:Lcom/facebook/ads/redexgen/X/JC;

.field public final A0C:Ljava/lang/String;

.field public final A0D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/JD;",
            ">;"
        }
    .end annotation
.end field

.field public final A0E:Z

.field public final A0F:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7S;Lcom/facebook/ads/redexgen/X/JC;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/facebook/ads/redexgen/X/JE;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JE;->A0C:Ljava/lang/String;

    const/16 v0, 0x65

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JE;->A07:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JE;->A0A:I

    const/16 v0, 0x67

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JE;->A08:I

    const/16 v0, 0x68

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JE;->A03:I

    const/16 v0, 0x69

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JE;->A09:I

    const/16 v0, 0x6a

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JE;->A02:I

    const/16 v0, 0x6b

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JE;->A04:I

    const/16 v0, 0x6c

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JE;->A05:I

    const/16 v0, 0x6d

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JE;->A06:I

    const/16 v0, 0x6e

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JE;->A01:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/JE;->A0E:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/JE;->A00:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JE;->A0D:Ljava/util/List;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IR;->A0D(Landroid/content/Context;)I

    move-result v1

    const/4 v0, 0x1

    if-ge v1, v0, :cond_4d

    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/JE;->A0F:Z

    :goto_4a
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/JE;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    return-void

    :cond_4d
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7S;->A08()Lcom/facebook/ads/redexgen/X/8N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8N;->A00()D

    move-result-wide v4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v1

    div-double/2addr v2, v0

    cmpg-double v0, v4, v2

    if-gez v0, :cond_5e

    const/4 v6, 0x1

    :cond_5e
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/JE;->A0F:Z

    goto :goto_4a
.end method

.method private A00()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JE;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/JC;->A6W()I

    move-result v0

    return v0
.end method

.method private A01()I
    .registers 6

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/JE;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/JE;->A00:J

    sub-long/2addr v2, v0

    long-to-int v0, v2

    return v0

    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/JE;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/JE;->A0D:Ljava/util/List;

    return-object p0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/JD;)V
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JE;->A0D:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JE;->A0D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method


# virtual methods
.method public final A04()V
    .registers 6

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JE;->A0F:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JE;->A01()I

    move-result v4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JE;->A00()I

    move-result v3

    const/4 v2, 0x0

    const/16 v1, 0x6e

    new-instance v0, Lcom/facebook/ads/redexgen/X/JD;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/JD;-><init>(IIILcom/facebook/ads/redexgen/X/JB;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JE;->A03(Lcom/facebook/ads/redexgen/X/JD;)V

    return-void
.end method

.method public final A05()V
    .registers 6

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JE;->A0F:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JE;->A01()I

    move-result v4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JE;->A00()I

    move-result v3

    const/4 v2, 0x0

    const/16 v1, 0x6a

    new-instance v0, Lcom/facebook/ads/redexgen/X/JD;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/JD;-><init>(IIILcom/facebook/ads/redexgen/X/JB;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JE;->A03(Lcom/facebook/ads/redexgen/X/JD;)V

    return-void
.end method

.method public final A06()V
    .registers 6

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JE;->A0F:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JE;->A01()I

    move-result v4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JE;->A00()I

    move-result v3

    const/4 v2, 0x0

    const/16 v1, 0x68

    new-instance v0, Lcom/facebook/ads/redexgen/X/JD;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/JD;-><init>(IIILcom/facebook/ads/redexgen/X/JB;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JE;->A03(Lcom/facebook/ads/redexgen/X/JD;)V

    return-void
.end method

.method public final A07()V
    .registers 6

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JE;->A0F:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JE;->A01()I

    move-result v4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/16 v1, 0x6d

    new-instance v0, Lcom/facebook/ads/redexgen/X/JD;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/JD;-><init>(IIILcom/facebook/ads/redexgen/X/JB;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JE;->A03(Lcom/facebook/ads/redexgen/X/JD;)V

    return-void
.end method

.method public final A08()V
    .registers 6

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JE;->A0F:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JE;->A01()I

    move-result v4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JE;->A00()I

    move-result v3

    const/4 v2, 0x0

    const/16 v1, 0x6c

    new-instance v0, Lcom/facebook/ads/redexgen/X/JD;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/JD;-><init>(IIILcom/facebook/ads/redexgen/X/JB;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JE;->A03(Lcom/facebook/ads/redexgen/X/JD;)V

    return-void
.end method

.method public final A09()V
    .registers 6

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JE;->A0F:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/JE;->A00:J

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x65

    new-instance v0, Lcom/facebook/ads/redexgen/X/JD;

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/JD;-><init>(IIILcom/facebook/ads/redexgen/X/JB;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JE;->A03(Lcom/facebook/ads/redexgen/X/JD;)V

    return-void
.end method

.method public final A0A()V
    .registers 6

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JE;->A0F:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JE;->A01()I

    move-result v4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JE;->A00()I

    move-result v3

    const/4 v2, 0x0

    const/16 v1, 0x69

    new-instance v0, Lcom/facebook/ads/redexgen/X/JD;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/JD;-><init>(IIILcom/facebook/ads/redexgen/X/JB;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JE;->A03(Lcom/facebook/ads/redexgen/X/JD;)V

    return-void
.end method

.method public final A0B()V
    .registers 6

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JE;->A0F:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JE;->A01()I

    move-result v4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JE;->A00()I

    move-result v3

    const/4 v2, 0x0

    const/16 v1, 0x66

    new-instance v0, Lcom/facebook/ads/redexgen/X/JD;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/JD;-><init>(IIILcom/facebook/ads/redexgen/X/JB;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JE;->A03(Lcom/facebook/ads/redexgen/X/JD;)V

    return-void
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;)V
    .registers 8

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JE;->A0F:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JE;->A01()I

    move-result v4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JE;->A00()I

    move-result v3

    const/4 v2, 0x0

    const/16 v1, 0x67

    new-instance v0, Lcom/facebook/ads/redexgen/X/JD;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/JD;-><init>(IIILcom/facebook/ads/redexgen/X/JB;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JE;->A03(Lcom/facebook/ads/redexgen/X/JD;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/La;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/JB;

    invoke-direct {v0, p0, p2, p1}, Lcom/facebook/ads/redexgen/X/JB;-><init>(Lcom/facebook/ads/redexgen/X/JE;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/7S;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
