###### Class com.applovin.exoplayer2.f.l.a (com.applovin.exoplayer2.f.l$a)
.class final Lcom/applovin/exoplayer2/f/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/f/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final Hu:Z

.field public final eg:Ljava/lang/String;

.field public final hi:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/l$a;->eg:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/applovin/exoplayer2/f/l$a;->Hu:Z

    iput-boolean p3, p0, Lcom/applovin/exoplayer2/f/l$a;->hi:Z

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

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/applovin/exoplayer2/f/l$a;

    if-eq v2, v3, :cond_10

    goto :goto_2b

    :cond_10
    check-cast p1, Lcom/applovin/exoplayer2/f/l$a;

    iget-object v2, p0, Lcom/applovin/exoplayer2/f/l$a;->eg:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/exoplayer2/f/l$a;->eg:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/f/l$a;->Hu:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/f/l$a;->Hu:Z

    if-ne v2, v3, :cond_29

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/f/l$a;->hi:Z

    iget-boolean p1, p1, Lcom/applovin/exoplayer2/f/l$a;->hi:Z

    if-ne v2, p1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    return v0

    :cond_2b
    :goto_2b
    return v1
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/l$a;->eg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/f/l$a;->Hu:Z

    const/16 v3, 0x4cf

    const/16 v4, 0x4d5

    if-eqz v2, :cond_16

    const/16 v2, 0x4cf

    goto :goto_18

    :cond_16
    const/16 v2, 0x4d5

    :goto_18
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/f/l$a;->hi:Z

    if-eqz v1, :cond_20

    goto :goto_22

    :cond_20
    const/16 v3, 0x4d5

    :goto_22
    add-int/2addr v0, v3

    return v0
.end method
