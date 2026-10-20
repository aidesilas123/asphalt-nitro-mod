###### Class com.applovin.exoplayer2.common.a.n.AnonymousClass1 (com.applovin.exoplayer2.common.a.n$1)
.class Lcom/applovin/exoplayer2/common/a/n$1;
.super Lcom/applovin/exoplayer2/common/a/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/common/a/n;-><init>(Lcom/applovin/exoplayer2/common/a/n$1;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/n;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/applovin/exoplayer2/common/a/n;"
        }
    .end annotation

    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/common/a/n$1;->bf(I)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object p1

    return-object p1
.end method

.method bf(I)Lcom/applovin/exoplayer2/common/a/n;
    .registers 2

    if-gez p1, :cond_7

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/n;->fR()Lcom/applovin/exoplayer2/common/a/n;

    move-result-object p1

    goto :goto_12

    :cond_7
    if-lez p1, :cond_e

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/n;->fS()Lcom/applovin/exoplayer2/common/a/n;

    move-result-object p1

    goto :goto_12

    :cond_e
    invoke-static {}, Lcom/applovin/exoplayer2/common/a/n;->fT()Lcom/applovin/exoplayer2/common/a/n;

    move-result-object p1

    :goto_12
    return-object p1
.end method

.method public c(ZZ)Lcom/applovin/exoplayer2/common/a/n;
    .registers 3

    invoke-static {p2, p1}, Lcom/applovin/exoplayer2/common/b/a;->e(ZZ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/common/a/n$1;->bf(I)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object p1

    return-object p1
.end method

.method public d(ZZ)Lcom/applovin/exoplayer2/common/a/n;
    .registers 3

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/common/b/a;->e(ZZ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/common/a/n$1;->bf(I)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object p1

    return-object p1
.end method

.method public fQ()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public i(JJ)Lcom/applovin/exoplayer2/common/a/n;
    .registers 5

    invoke-static {p1, p2, p3, p4}, Lcom/applovin/exoplayer2/common/b/d;->j(JJ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/common/a/n$1;->bf(I)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object p1

    return-object p1
.end method

.method public r(II)Lcom/applovin/exoplayer2/common/a/n;
    .registers 3

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/common/b/c;->w(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/common/a/n$1;->bf(I)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object p1

    return-object p1
.end method
