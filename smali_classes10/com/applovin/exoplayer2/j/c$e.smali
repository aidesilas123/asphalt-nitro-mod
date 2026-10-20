###### Class com.applovin.exoplayer2.j.c.e (com.applovin.exoplayer2.j.c$e)
.class public final Lcom/applovin/exoplayer2/j/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/j/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final br:Lcom/applovin/exoplayer2/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/g$a<",
            "Lcom/applovin/exoplayer2/j/c$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final UL:I

.field public final Ue:[I

.field public final bs:I

.field public final fR:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/j/n;->a:Lcom/applovin/exoplayer2/j/n;

    sput-object v0, Lcom/applovin/exoplayer2/j/c$e;->br:Lcom/applovin/exoplayer2/g$a;

    return-void
.end method

.method public constructor <init>(I[II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/j/c$e;->UL:I

    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/j/c$e;->Ue:[I

    array-length p2, p2

    iput p2, p0, Lcom/applovin/exoplayer2/j/c$e;->fR:I

    iput p3, p0, Lcom/applovin/exoplayer2/j/c$e;->bs:I

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    return-void
.end method

.method private static synthetic C(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/j/c$e;
    .registers 7

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/c$e;->t(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/applovin/exoplayer2/j/c$e;->t(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/applovin/exoplayer2/j/c$e;->t(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ltz v1, :cond_21

    if-ltz p0, :cond_21

    const/4 v0, 0x1

    :cond_21
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    invoke-static {v4}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/applovin/exoplayer2/j/c$e;

    invoke-direct {v0, v1, v4, p0}, Lcom/applovin/exoplayer2/j/c$e;-><init>(I[II)V

    return-object v0
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/j/c$e;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/j/c$e;->C(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/j/c$e;

    move-result-object p0

    return-object p0
.end method

.method private static t(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    const-class v2, Lcom/applovin/exoplayer2/j/c$e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_2b

    :cond_10
    check-cast p1, Lcom/applovin/exoplayer2/j/c$e;

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$e;->UL:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$e;->UL:I

    if-ne v2, v3, :cond_29

    iget-object v2, p0, Lcom/applovin/exoplayer2/j/c$e;->Ue:[I

    iget-object v3, p1, Lcom/applovin/exoplayer2/j/c$e;->Ue:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_29

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$e;->bs:I

    iget p1, p1, Lcom/applovin/exoplayer2/j/c$e;->bs:I

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
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/j/c$e;->UL:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/exoplayer2/j/c$e;->Ue:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/applovin/exoplayer2/j/c$e;->bs:I

    add-int/2addr v0, v1

    return v0
.end method
