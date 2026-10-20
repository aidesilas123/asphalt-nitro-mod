###### Class com.applovin.exoplayer2.b.d (com.applovin.exoplayer2.b.d)
.class public final Lcom/applovin/exoplayer2/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/b/d$a;
    }
.end annotation


# static fields
.field public static final br:Lcom/applovin/exoplayer2/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/g$a<",
            "Lcom/applovin/exoplayer2/b/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final jD:Lcom/applovin/exoplayer2/b/d;


# instance fields
.field public final jE:I

.field public final jF:I

.field public final jG:I

.field public final jH:I

.field private jI:Landroid/media/AudioAttributes;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/b/d$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/b/d$a;-><init>()V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/b/d$a;->dB()Lcom/applovin/exoplayer2/b/d;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/b/d;->jD:Lcom/applovin/exoplayer2/b/d;

    sget-object v0, Lcom/applovin/exoplayer2/b/z;->a:Lcom/applovin/exoplayer2/b/z;

    sput-object v0, Lcom/applovin/exoplayer2/b/d;->br:Lcom/applovin/exoplayer2/g$a;

    return-void
.end method

.method private constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/b/d;->jE:I

    iput p2, p0, Lcom/applovin/exoplayer2/b/d;->jF:I

    iput p3, p0, Lcom/applovin/exoplayer2/b/d;->jG:I

    iput p4, p0, Lcom/applovin/exoplayer2/b/d;->jH:I

    return-void
.end method

.method synthetic constructor <init>(IIIILcom/applovin/exoplayer2/b/d$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/b/d;-><init>(IIII)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/b/d;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/b/d;->t(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/b/d;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic t(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/b/d;
    .registers 4

    new-instance v0, Lcom/applovin/exoplayer2/b/d$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/b/d$a;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/applovin/exoplayer2/b/d;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-static {v1}, Lcom/applovin/exoplayer2/b/d;->t(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/b/d$a;->ar(I)Lcom/applovin/exoplayer2/b/d$a;

    :cond_1b
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/applovin/exoplayer2/b/d;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-static {v1}, Lcom/applovin/exoplayer2/b/d;->t(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/b/d$a;->as(I)Lcom/applovin/exoplayer2/b/d$a;

    :cond_31
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/applovin/exoplayer2/b/d;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-static {v1}, Lcom/applovin/exoplayer2/b/d;->t(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/b/d$a;->at(I)Lcom/applovin/exoplayer2/b/d$a;

    :cond_47
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/applovin/exoplayer2/b/d;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-static {v1}, Lcom/applovin/exoplayer2/b/d;->t(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/applovin/exoplayer2/b/d$a;->au(I)Lcom/applovin/exoplayer2/b/d$a;

    :cond_5d
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/b/d$a;->dB()Lcom/applovin/exoplayer2/b/d;

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
.method public dA()Landroid/media/AudioAttributes;
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/d;->jI:Landroid/media/AudioAttributes;

    if-nez v0, :cond_2c

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v1, p0, Lcom/applovin/exoplayer2/b/d;->jE:I

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/exoplayer2/b/d;->jF:I

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/exoplayer2/b/d;->jG:I

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    sget v1, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_26

    iget v1, p0, Lcom/applovin/exoplayer2/b/d;->jH:I

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setAllowedCapturePolicy(I)Landroid/media/AudioAttributes$Builder;

    :cond_26
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/d;->jI:Landroid/media/AudioAttributes;

    :cond_2c
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/d;->jI:Landroid/media/AudioAttributes;

    return-object v0
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

    if-eqz p1, :cond_2d

    const-class v2, Lcom/applovin/exoplayer2/b/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_2d

    :cond_10
    check-cast p1, Lcom/applovin/exoplayer2/b/d;

    iget v2, p0, Lcom/applovin/exoplayer2/b/d;->jE:I

    iget v3, p1, Lcom/applovin/exoplayer2/b/d;->jE:I

    if-ne v2, v3, :cond_2b

    iget v2, p0, Lcom/applovin/exoplayer2/b/d;->jF:I

    iget v3, p1, Lcom/applovin/exoplayer2/b/d;->jF:I

    if-ne v2, v3, :cond_2b

    iget v2, p0, Lcom/applovin/exoplayer2/b/d;->jG:I

    iget v3, p1, Lcom/applovin/exoplayer2/b/d;->jG:I

    if-ne v2, v3, :cond_2b

    iget v2, p0, Lcom/applovin/exoplayer2/b/d;->jH:I

    iget p1, p1, Lcom/applovin/exoplayer2/b/d;->jH:I

    if-ne v2, p1, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    return v0

    :cond_2d
    :goto_2d
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/b/d;->jE:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/applovin/exoplayer2/b/d;->jF:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/applovin/exoplayer2/b/d;->jG:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/applovin/exoplayer2/b/d;->jH:I

    add-int/2addr v1, v0

    return v1
.end method
