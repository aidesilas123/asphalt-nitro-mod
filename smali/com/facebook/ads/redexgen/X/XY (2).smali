###### Class com.facebook.ads.redexgen.X.XY (com.facebook.ads.redexgen.X.XY)
.class public final Lcom/facebook/ads/redexgen/X/XY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/8o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/XX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecordFileBasedFetch"
.end annotation


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/8t;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:Z

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/XX;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XX;Ljava/util/List;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/8k;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XY;->A02:Lcom/facebook/ads/redexgen/X/XX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/XY;->A01:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XY;->A00:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8k;->A01()Lcom/facebook/ads/redexgen/X/8j;

    move-result-object v5

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/XY;->A00:Ljava/util/List;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8k;->A00()I

    move-result v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8j;->A01()I

    move-result v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8h;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/8h;-><init>(II)V

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8j;->A00()I

    move-result v2

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8j;->A01()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8j;->A00()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8t;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/8t;-><init>(Lcom/facebook/ads/redexgen/X/8h;II)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_47
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/8t;
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XY;->A00:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8t;

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/8t;
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XY;->A00:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8t;

    return-object v0
.end method

.method public final A4y()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/8y;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XY;->A02:Lcom/facebook/ads/redexgen/X/XX;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/XX;->A04(Lcom/facebook/ads/redexgen/X/XX;Lcom/facebook/ads/redexgen/X/XY;)V

    return-void
.end method

.method public final declared-synchronized A5b()I
    .registers 4

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XY;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8t;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/8t;->A01:I

    add-int/2addr v2, v0

    goto :goto_8
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit p0

    return v2

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final AA0()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XY;->A01:Z

    return v0
.end method

.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XY;->A02:Lcom/facebook/ads/redexgen/X/XX;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/XX;->A07(Lcom/facebook/ads/redexgen/X/XX;Lcom/facebook/ads/redexgen/X/XY;)Z

    return-void
.end method
