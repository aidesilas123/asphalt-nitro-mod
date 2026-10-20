###### Class com.applovin.exoplayer2.i.b.a (com.applovin.exoplayer2.i.b.a)
.class public final Lcom/applovin/exoplayer2/i/b/a;
.super Lcom/applovin/exoplayer2/i/d;
.source "SourceFile"


# instance fields
.field private final Ql:Lcom/applovin/exoplayer2/i/b/b;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "DvbDecoder"

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/i/d;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/applovin/exoplayer2/l/y;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lcom/applovin/exoplayer2/l/y;-><init>([B)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result p1

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result v0

    new-instance v1, Lcom/applovin/exoplayer2/i/b/b;

    invoke-direct {v1, p1, v0}, Lcom/applovin/exoplayer2/i/b/b;-><init>(II)V

    iput-object v1, p0, Lcom/applovin/exoplayer2/i/b/a;->Ql:Lcom/applovin/exoplayer2/i/b/b;

    return-void
.end method


# virtual methods
.method protected c([BIZ)Lcom/applovin/exoplayer2/i/f;
    .registers 5

    if-eqz p3, :cond_7

    iget-object p3, p0, Lcom/applovin/exoplayer2/i/b/a;->Ql:Lcom/applovin/exoplayer2/i/b/b;

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/i/b/b;->Y()V

    :cond_7
    new-instance p3, Lcom/applovin/exoplayer2/i/b/c;

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/b/a;->Ql:Lcom/applovin/exoplayer2/i/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/i/b/b;->h([BI)Ljava/util/List;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/applovin/exoplayer2/i/b/c;-><init>(Ljava/util/List;)V

    return-object p3
.end method
