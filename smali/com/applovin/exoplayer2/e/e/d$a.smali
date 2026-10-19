###### Class com.applovin.exoplayer2.e.e.d.a (com.applovin.exoplayer2.e.e.d$a)
.class final Lcom/applovin/exoplayer2/e/e/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/e/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic xR:Lcom/applovin/exoplayer2/e/e/d;


# direct methods
.method private constructor <init>(Lcom/applovin/exoplayer2/e/e/d;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/e/d$a;->xR:Lcom/applovin/exoplayer2/e/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/e/e/d;Lcom/applovin/exoplayer2/e/e/d$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d$a;-><init>(Lcom/applovin/exoplayer2/e/e/d;)V

    return-void
.end method


# virtual methods
.method public a(IILcom/applovin/exoplayer2/e/i;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d$a;->xR:Lcom/applovin/exoplayer2/e/e/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/e/d;->a(IILcom/applovin/exoplayer2/e/i;)V

    return-void
.end method

.method public b(ID)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d$a;->xR:Lcom/applovin/exoplayer2/e/e/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/e/d;->b(ID)V

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d$a;->xR:Lcom/applovin/exoplayer2/e/e/d;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/e/e/d;->b(ILjava/lang/String;)V

    return-void
.end method

.method public bX(I)I
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d$a;->xR:Lcom/applovin/exoplayer2/e/e/d;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/e/e/d;->bX(I)I

    move-result p1

    return p1
.end method

.method public bY(I)Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d$a;->xR:Lcom/applovin/exoplayer2/e/e/d;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/e/e/d;->bY(I)Z

    move-result p1

    return p1
.end method

.method public bZ(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d$a;->xR:Lcom/applovin/exoplayer2/e/e/d;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/e/e/d;->bZ(I)V

    return-void
.end method

.method public e(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d$a;->xR:Lcom/applovin/exoplayer2/e/e/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/e/d;->e(IJ)V

    return-void
.end method

.method public f(IJJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d$a;->xR:Lcom/applovin/exoplayer2/e/e/d;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/exoplayer2/e/e/d;->f(IJJ)V

    return-void
.end method
