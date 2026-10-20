###### Class com.applovin.exoplayer2.common.a.t.a (com.applovin.exoplayer2.common.a.t$a)
.class public final Lcom/applovin/exoplayer2/common/a/t$a;
.super Lcom/applovin/exoplayer2/common/a/v$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/a/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/applovin/exoplayer2/common/a/v$a<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/v$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/applovin/exoplayer2/common/a/t$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Lcom/applovin/exoplayer2/common/a/t$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/applovin/exoplayer2/common/a/v$a;->b(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/applovin/exoplayer2/common/a/v$a;

    return-object p0
.end method

.method public varargs a(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/t$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)",
            "Lcom/applovin/exoplayer2/common/a/t$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/applovin/exoplayer2/common/a/v$a;->b(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/v$a;

    return-object p0
.end method

.method public synthetic b(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/applovin/exoplayer2/common/a/v$a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/common/a/t$a;->a(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/applovin/exoplayer2/common/a/t$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/v$a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/common/a/t$a;->a(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/t$a;

    move-result-object p1

    return-object p1
.end method

.method public gg()Lcom/applovin/exoplayer2/common/a/t;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/applovin/exoplayer2/common/a/t<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/applovin/exoplayer2/common/a/v$a;->gh()Lcom/applovin/exoplayer2/common/a/v;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/common/a/t;

    return-object v0
.end method

.method public synthetic gh()Lcom/applovin/exoplayer2/common/a/v;
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/t$a;->gg()Lcom/applovin/exoplayer2/common/a/t;

    move-result-object v0

    return-object v0
.end method
