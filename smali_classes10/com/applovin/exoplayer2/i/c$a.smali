###### Class com.applovin.exoplayer2.i.c.a (com.applovin.exoplayer2.i.c$a)
.class final Lcom/applovin/exoplayer2/i/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/i/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final Or:Lcom/applovin/exoplayer2/common/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;"
        }
    .end annotation
.end field

.field private final rJ:J


# direct methods
.method public constructor <init>(JLcom/applovin/exoplayer2/common/a/s;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/applovin/exoplayer2/i/c$a;->rJ:J

    iput-object p3, p0, Lcom/applovin/exoplayer2/i/c$a;->Or:Lcom/applovin/exoplayer2/common/a/s;

    return-void
.end method


# virtual methods
.method public be(J)I
    .registers 6

    iget-wide v0, p0, Lcom/applovin/exoplayer2/i/c$a;->rJ:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_8

    const/4 p1, 0x0

    goto :goto_9

    :cond_8
    const/4 p1, -0x1

    :goto_9
    return p1
.end method

.method public bf(J)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/applovin/exoplayer2/i/c$a;->rJ:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_9

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/c$a;->Or:Lcom/applovin/exoplayer2/common/a/s;

    goto :goto_d

    :cond_9
    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->ga()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object p1

    :goto_d
    return-object p1
.end method

.method public ej(I)J
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    iget-wide v0, p0, Lcom/applovin/exoplayer2/i/c$a;->rJ:J

    return-wide v0
.end method

.method public lX()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
