###### Class com.applovin.exoplayer2.h.t.d (com.applovin.exoplayer2.h.t$d)
.class final Lcom/applovin/exoplayer2/h/t$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/h/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field public final Mv:Z

.field public final zD:I


# direct methods
.method public constructor <init>(IZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/h/t$d;->zD:I

    iput-boolean p2, p0, Lcom/applovin/exoplayer2/h/t$d;->Mv:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_21

    const-class v2, Lcom/applovin/exoplayer2/h/t$d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_21

    :cond_10
    check-cast p1, Lcom/applovin/exoplayer2/h/t$d;

    iget v2, p0, Lcom/applovin/exoplayer2/h/t$d;->zD:I

    iget v3, p1, Lcom/applovin/exoplayer2/h/t$d;->zD:I

    if-ne v2, v3, :cond_1f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/h/t$d;->Mv:Z

    iget-boolean p1, p1, Lcom/applovin/exoplayer2/h/t$d;->Mv:Z

    if-ne v2, p1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0

    :cond_21
    :goto_21
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/h/t$d;->zD:I

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/h/t$d;->Mv:Z

    add-int/2addr v0, v1

    return v0
.end method
