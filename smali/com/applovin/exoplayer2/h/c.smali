###### Class com.applovin.exoplayer2.h.c (com.applovin.exoplayer2.h.c)
.class public final Lcom/applovin/exoplayer2/h/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/h/s;


# instance fields
.field private final KP:Lcom/applovin/exoplayer2/e/l;

.field private KQ:Lcom/applovin/exoplayer2/e/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private KR:Lcom/applovin/exoplayer2/e/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/e/l;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/c;->KP:Lcom/applovin/exoplayer2/e/l;

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/e/u;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/c;->KQ:Lcom/applovin/exoplayer2/e/h;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/e/h;

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/c;->KR:Lcom/applovin/exoplayer2/e/i;

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/e/i;

    invoke-interface {v0, v1, p1}, Lcom/applovin/exoplayer2/e/h;->b(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/applovin/exoplayer2/k/g;Landroid/net/Uri;Ljava/util/Map;JJLcom/applovin/exoplayer2/e/j;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/k/g;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJ",
            "Lcom/applovin/exoplayer2/e/j;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v6, Lcom/applovin/exoplayer2/e/e;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/applovin/exoplayer2/e/e;-><init>(Lcom/applovin/exoplayer2/k/g;JJ)V

    iput-object v6, p0, Lcom/applovin/exoplayer2/h/c;->KR:Lcom/applovin/exoplayer2/e/i;

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/c;->KQ:Lcom/applovin/exoplayer2/e/h;

    if-eqz p1, :cond_10

    return-void

    :cond_10
    iget-object p1, p0, Lcom/applovin/exoplayer2/h/c;->KP:Lcom/applovin/exoplayer2/e/l;

    invoke-interface {p1, p2, p3}, Lcom/applovin/exoplayer2/e/l;->a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/applovin/exoplayer2/e/h;

    move-result-object p1

    array-length p3, p1

    const/4 p6, 0x0

    const/4 p7, 0x1

    if-ne p3, p7, :cond_20

    aget-object p1, p1, p6

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/c;->KQ:Lcom/applovin/exoplayer2/e/h;

    goto :goto_75

    :cond_20
    array-length p3, p1

    const/4 v0, 0x0

    :goto_22
    if-ge v0, p3, :cond_71

    aget-object v1, p1, v0

    :try_start_26
    invoke-interface {v1, v6}, Lcom/applovin/exoplayer2/e/h;->a(Lcom/applovin/exoplayer2/e/i;)Z

    move-result v2

    if-eqz v2, :cond_35

    iput-object v1, p0, Lcom/applovin/exoplayer2/h/c;->KQ:Lcom/applovin/exoplayer2/e/h;
    :try_end_2e
    .catch Ljava/io/EOFException; {:try_start_26 .. :try_end_2e} :catch_57
    .catchall {:try_start_26 .. :try_end_2e} :catchall_42

    invoke-static {p7}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    invoke-interface {v6}, Lcom/applovin/exoplayer2/e/i;->ic()V

    goto :goto_71

    :cond_35
    iget-object v1, p0, Lcom/applovin/exoplayer2/h/c;->KQ:Lcom/applovin/exoplayer2/e/h;

    if-nez v1, :cond_67

    invoke-interface {v6}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v1

    cmp-long v3, v1, p4

    if-nez v3, :cond_65

    goto :goto_67

    :catchall_42
    move-exception p1

    iget-object p2, p0, Lcom/applovin/exoplayer2/h/c;->KQ:Lcom/applovin/exoplayer2/e/h;

    if-nez p2, :cond_4f

    invoke-interface {v6}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide p2

    cmp-long p8, p2, p4

    if-nez p8, :cond_50

    :cond_4f
    const/4 p6, 0x1

    :cond_50
    invoke-static {p6}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    invoke-interface {v6}, Lcom/applovin/exoplayer2/e/i;->ic()V

    throw p1

    :catch_57
    nop

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/c;->KQ:Lcom/applovin/exoplayer2/e/h;

    if-nez v1, :cond_67

    invoke-interface {v6}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v1

    cmp-long v3, v1, p4

    if-nez v3, :cond_65

    goto :goto_67

    :cond_65
    const/4 v1, 0x0

    goto :goto_68

    :cond_67
    :goto_67
    const/4 v1, 0x1

    :goto_68
    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    invoke-interface {v6}, Lcom/applovin/exoplayer2/e/i;->ic()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_71
    :goto_71
    iget-object p3, p0, Lcom/applovin/exoplayer2/h/c;->KQ:Lcom/applovin/exoplayer2/e/h;

    if-eqz p3, :cond_7b

    :goto_75
    iget-object p1, p0, Lcom/applovin/exoplayer2/h/c;->KQ:Lcom/applovin/exoplayer2/e/h;

    invoke-interface {p1, p8}, Lcom/applovin/exoplayer2/e/h;->a(Lcom/applovin/exoplayer2/e/j;)V

    return-void

    :cond_7b
    new-instance p3, Lcom/applovin/exoplayer2/h/ae;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "None of the available extractors ("

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/ai;->h([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") could read the stream."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    invoke-direct {p3, p1, p2}, Lcom/applovin/exoplayer2/h/ae;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p3
.end method

.method public kK()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/c;->KQ:Lcom/applovin/exoplayer2/e/h;

    instance-of v1, v0, Lcom/applovin/exoplayer2/e/f/d;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/applovin/exoplayer2/e/f/d;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/f/d;->iG()V

    :cond_b
    return-void
.end method

.method public kL()J
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/c;->KR:Lcom/applovin/exoplayer2/e/i;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, -0x1

    :goto_b
    return-wide v0
.end method

.method public o(JJ)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/c;->KQ:Lcom/applovin/exoplayer2/e/h;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/e/h;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/e/h;->o(JJ)V

    return-void
.end method

.method public release()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/c;->KQ:Lcom/applovin/exoplayer2/e/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/applovin/exoplayer2/e/h;->release()V

    iput-object v1, p0, Lcom/applovin/exoplayer2/h/c;->KQ:Lcom/applovin/exoplayer2/e/h;

    :cond_a
    iput-object v1, p0, Lcom/applovin/exoplayer2/h/c;->KR:Lcom/applovin/exoplayer2/e/i;

    return-void
.end method
