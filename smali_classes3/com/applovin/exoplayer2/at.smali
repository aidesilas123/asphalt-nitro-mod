###### Class com.applovin.exoplayer2.at (com.applovin.exoplayer2.at)
.class public final Lcom/applovin/exoplayer2/at;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final hh:Lcom/applovin/exoplayer2/at;


# instance fields
.field public final hi:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/applovin/exoplayer2/at;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/at;-><init>(Z)V

    sput-object v0, Lcom/applovin/exoplayer2/at;->hh:Lcom/applovin/exoplayer2/at;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/at;->hi:Z

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

    if-eqz p1, :cond_1b

    const-class v2, Lcom/applovin/exoplayer2/at;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_1b

    :cond_10
    check-cast p1, Lcom/applovin/exoplayer2/at;

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/at;->hi:Z

    iget-boolean p1, p1, Lcom/applovin/exoplayer2/at;->hi:Z

    if-ne v2, p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0

    :cond_1b
    :goto_1b
    return v1
.end method

.method public hashCode()I
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/at;->hi:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
