###### Class com.applovin.exoplayer2.j.h (com.applovin.exoplayer2.j.h)
.class public final Lcom/applovin/exoplayer2/j/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final Vc:[Lcom/applovin/exoplayer2/j/g;

.field private dS:I

.field public final fR:I


# direct methods
.method public varargs constructor <init>([Lcom/applovin/exoplayer2/j/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/j/h;->Vc:[Lcom/applovin/exoplayer2/j/g;

    array-length p1, p1

    iput p1, p0, Lcom/applovin/exoplayer2/j/h;->fR:I

    return-void
.end method


# virtual methods
.method public eU(I)Lcom/applovin/exoplayer2/j/g;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/j/h;->Vc:[Lcom/applovin/exoplayer2/j/g;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1a

    const-class v0, Lcom/applovin/exoplayer2/j/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_f

    goto :goto_1a

    :cond_f
    check-cast p1, Lcom/applovin/exoplayer2/j/h;

    iget-object v0, p0, Lcom/applovin/exoplayer2/j/h;->Vc:[Lcom/applovin/exoplayer2/j/g;

    iget-object p1, p1, Lcom/applovin/exoplayer2/j/h;->Vc:[Lcom/applovin/exoplayer2/j/g;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/j/h;->dS:I

    if-nez v0, :cond_f

    const/16 v0, 0x20f

    iget-object v1, p0, Lcom/applovin/exoplayer2/j/h;->Vc:[Lcom/applovin/exoplayer2/j/g;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/applovin/exoplayer2/j/h;->dS:I

    :cond_f
    iget v0, p0, Lcom/applovin/exoplayer2/j/h;->dS:I

    return v0
.end method
