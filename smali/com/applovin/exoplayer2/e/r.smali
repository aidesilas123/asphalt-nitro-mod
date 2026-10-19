###### Class com.applovin.exoplayer2.e.r (com.applovin.exoplayer2.e.r)
.class public final Lcom/applovin/exoplayer2/e/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final uN:Ljava/util/regex/Pattern;


# instance fields
.field public dO:I

.field public dP:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/e/r;->uN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/applovin/exoplayer2/e/r;->dO:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/r;->dP:I

    return-void
.end method

.method private D(Ljava/lang/String;)Z
    .registers 6

    sget-object v0, Lcom/applovin/exoplayer2/e/r;->uN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x1

    :try_start_d
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    if-gtz v1, :cond_30

    if-lez p1, :cond_35

    :cond_30
    iput v1, p0, Lcom/applovin/exoplayer2/e/r;->dO:I

    iput p1, p0, Lcom/applovin/exoplayer2/e/r;->dP:I
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_34} :catch_35

    return v0

    :catch_35
    :cond_35
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public bP(I)Z
    .registers 3

    shr-int/lit8 v0, p1, 0xc

    and-int/lit16 p1, p1, 0xfff

    if-gtz v0, :cond_b

    if-lez p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    return p1

    :cond_b
    :goto_b
    iput v0, p0, Lcom/applovin/exoplayer2/e/r;->dO:I

    iput p1, p0, Lcom/applovin/exoplayer2/e/r;->dP:I

    const/4 p1, 0x1

    return p1
.end method

.method public e(Lcom/applovin/exoplayer2/g/a;)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/g/a;->kD()I

    move-result v2

    if-ge v1, v2, :cond_4a

    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/g/a;->de(I)Lcom/applovin/exoplayer2/g/a$a;

    move-result-object v2

    instance-of v3, v2, Lcom/applovin/exoplayer2/g/e/e;

    const-string v4, "iTunSMPB"

    const/4 v5, 0x1

    if-eqz v3, :cond_26

    check-cast v2, Lcom/applovin/exoplayer2/g/e/e;

    iget-object v3, v2, Lcom/applovin/exoplayer2/g/e/e;->oc:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v2, v2, Lcom/applovin/exoplayer2/g/e/e;->JN:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/applovin/exoplayer2/e/r;->D(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    return v5

    :cond_26
    instance-of v3, v2, Lcom/applovin/exoplayer2/g/e/i;

    if-eqz v3, :cond_47

    check-cast v2, Lcom/applovin/exoplayer2/g/e/i;

    iget-object v3, v2, Lcom/applovin/exoplayer2/g/e/i;->JU:Ljava/lang/String;

    const-string v6, "com.apple.iTunes"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v3, v2, Lcom/applovin/exoplayer2/g/e/i;->oc:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v2, v2, Lcom/applovin/exoplayer2/g/e/i;->JN:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/applovin/exoplayer2/e/r;->D(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    return v5

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4a
    return v0
.end method

.method public ij()Z
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/e/r;->dO:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/applovin/exoplayer2/e/r;->dP:I

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method
