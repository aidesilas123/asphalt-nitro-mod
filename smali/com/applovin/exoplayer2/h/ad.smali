###### Class com.applovin.exoplayer2.h.ad (com.applovin.exoplayer2.h.ad)
.class public final Lcom/applovin/exoplayer2/h/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/g;


# static fields
.field public static final NG:Lcom/applovin/exoplayer2/h/ad;

.field public static final br:Lcom/applovin/exoplayer2/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/g$a<",
            "Lcom/applovin/exoplayer2/h/ad;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final NH:[Lcom/applovin/exoplayer2/h/ac;

.field private dS:I

.field public final fR:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/applovin/exoplayer2/h/ad;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/applovin/exoplayer2/h/ac;

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/h/ad;-><init>([Lcom/applovin/exoplayer2/h/ac;)V

    sput-object v0, Lcom/applovin/exoplayer2/h/ad;->NG:Lcom/applovin/exoplayer2/h/ad;

    sget-object v0, Lcom/applovin/exoplayer2/h/c0;->a:Lcom/applovin/exoplayer2/h/c0;

    sput-object v0, Lcom/applovin/exoplayer2/h/ad;->br:Lcom/applovin/exoplayer2/g$a;

    return-void
.end method

.method public varargs constructor <init>([Lcom/applovin/exoplayer2/h/ac;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/ad;->NH:[Lcom/applovin/exoplayer2/h/ac;

    array-length p1, p1

    iput p1, p0, Lcom/applovin/exoplayer2/h/ad;->fR:I

    return-void
.end method

.method public static synthetic b(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/h/ad;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/h/ad;->w(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/h/ad;

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

.method private static synthetic w(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/h/ad;
    .registers 4

    sget-object v0, Lcom/applovin/exoplayer2/h/ac;->br:Lcom/applovin/exoplayer2/g$a;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/applovin/exoplayer2/h/ad;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->ga()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v2

    invoke-static {v0, p0, v2}, Lcom/applovin/exoplayer2/l/c;->a(Lcom/applovin/exoplayer2/g$a;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/applovin/exoplayer2/h/ad;

    new-array v1, v1, [Lcom/applovin/exoplayer2/h/ac;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/applovin/exoplayer2/h/ac;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/h/ad;-><init>([Lcom/applovin/exoplayer2/h/ac;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/h/ac;)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/applovin/exoplayer2/h/ad;->fR:I

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/ad;->NH:[Lcom/applovin/exoplayer2/h/ac;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_c

    return v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    const/4 p1, -0x1

    return p1
.end method

.method public eb(I)Lcom/applovin/exoplayer2/h/ac;
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/ad;->NH:[Lcom/applovin/exoplayer2/h/ac;

    aget-object p1, v0, p1

    return-object p1
.end method

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

    if-eqz p1, :cond_25

    const-class v2, Lcom/applovin/exoplayer2/h/ad;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_25

    :cond_10
    check-cast p1, Lcom/applovin/exoplayer2/h/ad;

    iget v2, p0, Lcom/applovin/exoplayer2/h/ad;->fR:I

    iget v3, p1, Lcom/applovin/exoplayer2/h/ad;->fR:I

    if-ne v2, v3, :cond_23

    iget-object v2, p0, Lcom/applovin/exoplayer2/h/ad;->NH:[Lcom/applovin/exoplayer2/h/ac;

    iget-object p1, p1, Lcom/applovin/exoplayer2/h/ad;->NH:[Lcom/applovin/exoplayer2/h/ac;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    return v0

    :cond_25
    :goto_25
    return v1
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/h/ad;->dS:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/ad;->NH:[Lcom/applovin/exoplayer2/h/ac;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/h/ad;->dS:I

    :cond_c
    iget v0, p0, Lcom/applovin/exoplayer2/h/ad;->dS:I

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/h/ad;->fR:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
