###### Class com.json.adqualitysdk.sdk.i.ea (com.ironsource.adqualitysdk.sdk.i.ea)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ea;
.super Lcom/ironsource/adqualitysdk/sdk/i/dy;
.source ""


# static fields
.field private static j:J = -0x44dd65d57242ef1fL

.field private static k:I = 0x0

.field private static l:I = 0x1


# instance fields
.field private m:Lcom/ironsource/adqualitysdk/sdk/i/dx;

.field private n:[Lcom/ironsource/adqualitysdk/sdk/i/dx;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/do;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/dx;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dx;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dx;",
            ">;",
            "Lcom/ironsource/adqualitysdk/sdk/i/do;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p4, p5}, Lcom/ironsource/adqualitysdk/sdk/i/dy;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ea;->m:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eqz p3, :cond_12

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/ironsource/adqualitysdk/sdk/i/dx;

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ea;->n:[Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-interface {p3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_12
    return-void
.end method

.method private static g([Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/ironsource/adqualitysdk/sdk/i/dx;",
            "Lcom/ironsource/adqualitysdk/sdk/i/dr;",
            "Lcom/ironsource/adqualitysdk/sdk/i/cj;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_c

    const/4 v4, 0x0

    goto :goto_d

    :cond_c
    const/4 v4, 0x1

    :goto_d
    if-eqz v4, :cond_10

    return-object v0

    :cond_10
    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/ea;->k:I

    add-int/lit8 v4, v4, 0x49

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/ea;->l:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2e

    aget-object v4, p0, v3

    invoke-virtual {v4, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﻐ()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x3c

    goto :goto_3f

    :cond_2e
    aget-object v4, p0, v3

    invoke-virtual {v4, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﻐ()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    :goto_3f
    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/ea;->l:I

    add-int/lit8 v4, v4, 0xb

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/ea;->k:I

    rem-int/lit8 v4, v4, 0x2

    goto :goto_8
.end method

.method private static h(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﻛ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ｋ:I

    array-length p1, p0

    new-array p1, p1, [C

    const/4 v1, 0x0

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    :goto_13
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    array-length v2, p0

    if-ge v1, v2, :cond_2e

    aget-char v2, p0, v1

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/h;->ｋ:I

    mul-int v3, v3, v1

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/ea;->j:J

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p1, v1

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    goto :goto_13

    :cond_2e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_35

    return-object p0

    :catchall_35
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private i()Ljava/lang/String;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ea;->k:I

    add-int/lit8 v1, v0, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ea;->l:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ea;->n:[Lcom/ironsource/adqualitysdk/sdk/i/dx;

    const-string v2, ""

    if-eqz v1, :cond_4d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0xe507

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    sub-int/2addr v1, v3

    const-string v3, "\u10dd"

    invoke-static {v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ea;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ea;->n:[Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    rsub-int v1, v1, 0x71fb

    const-string v2, "\u10df"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ea;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4d
    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ea;->l:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_59

    const/4 v0, 0x1

    goto :goto_5a

    :cond_59
    const/4 v0, 0x0

    :goto_5a
    if-nez v0, :cond_5d

    return-object v2

    :cond_5d
    const/4 v0, 0x0

    :try_start_5e
    throw v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5f

    :catchall_5f
    move-exception v0

    throw v0
.end method


# virtual methods
.method final c([Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ea;->m:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const v1, 0xcfef

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v1

    const-string v1, "\u10cf"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ea;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->ｋ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ea;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0xc707

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v4

    sub-int/2addr v1, v4

    const-string v4, "\u10c9"

    invoke-static {v4, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ea;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v2, v3, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result p1

    rsub-int p1, p1, 0x71ad

    const-string v1, "\u10c8"

    invoke-static {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ea;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ea;->k:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ea;->l:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ea;->k:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ea;->l:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1b

    const/16 v0, 0x2b

    :try_start_10
    div-int/2addr v0, v3
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_19

    if-ne p0, p1, :cond_15

    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    const/4 v0, 0x1

    :goto_16
    if-eqz v0, :cond_a1

    goto :goto_22

    :catchall_19
    move-exception p1

    throw p1

    :cond_1b
    if-ne p0, p1, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    if-eq v0, v2, :cond_a1

    :goto_22
    if-eqz p1, :cond_a0

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ea;->k:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v0, 0xd

    if-eqz v1, :cond_33

    const/16 v1, 0x20

    goto :goto_35

    :cond_33
    const/16 v1, 0xd

    :goto_35
    if-ne v1, v0, :cond_9c

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/ea;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/16 v4, 0x18

    if-eq v0, v1, :cond_44

    const/16 v0, 0x2d

    goto :goto_46

    :cond_44
    const/16 v0, 0x18

    :goto_46
    if-eq v0, v4, :cond_49

    goto :goto_a0

    :cond_49
    invoke-super {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    return v3

    :cond_50
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ea;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ea;->m:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eqz v0, :cond_73

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ea;->k:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/ea;->l:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ea;->m:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ea;->l:I

    add-int/lit8 p1, p1, 0x6f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ea;->k:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_77

    :cond_73
    iget-object v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/ea;->m:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eqz v0, :cond_78

    :goto_77
    return v3

    :cond_78
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ea;->n:[Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eqz v0, :cond_8d

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ea;->l:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ea;->k:I

    rem-int/lit8 v1, v1, 0x2

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ea;->n:[Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_8d
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ea;->n:[Lcom/ironsource/adqualitysdk/sdk/i/dx;

    const/16 v0, 0x38

    if-nez p1, :cond_96

    const/16 p1, 0x29

    goto :goto_98

    :cond_96
    const/16 p1, 0x38

    :goto_98
    if-eq p1, v0, :cond_9b

    return v2

    :cond_9b
    return v3

    :cond_9c
    const/4 p1, 0x0

    :try_start_9d
    throw p1
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9e

    :catchall_9e
    move-exception p1

    throw p1

    :cond_a0
    :goto_a0
    return v3

    :cond_a1
    return v2
.end method

.method public final hashCode()I
    .registers 6

    invoke-super {p0}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ea;->m:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/ea;->k:I

    add-int/lit8 v3, v3, 0x3b

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/ea;->l:I

    rem-int/lit8 v3, v3, 0x2

    const/16 v4, 0x18

    if-nez v3, :cond_1c

    const/16 v3, 0x11

    goto :goto_1e

    :cond_1c
    const/16 v3, 0x18

    :goto_1e
    if-ne v3, v4, :cond_25

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2d

    :cond_25
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    const/4 v0, 0x0

    :try_start_29
    throw v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v0

    throw v0

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ea;->n:[Lcom/ironsource/adqualitysdk/sdk/i/dx;

    const/16 v3, 0x57

    if-eqz v1, :cond_39

    const/16 v4, 0x57

    goto :goto_3b

    :cond_39
    const/16 v4, 0x47

    :goto_3b
    if-eq v4, v3, :cond_48

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ea;->l:I

    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ea;->k:I

    rem-int/lit8 v1, v1, 0x2

    goto :goto_56

    :cond_48
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ea;->l:I

    add-int/lit8 v2, v2, 0x73

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ea;->k:I

    rem-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_56
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ea;->k:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ea;->l:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    const/4 v0, 0x1

    :goto_f
    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->e()[Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ea;->c([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->e()[Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ea;->c([Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_22
    throw v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception v0

    throw v0
.end method

.method public final ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;
    .registers 11

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->f(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ea;->m:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    instance-of v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/ej;

    const/4 v3, 0x0

    if-eqz v2, :cond_45

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ej;

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ej;->ｋ()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u1092\uc90b\ua3af\u9c59\u76ef"

    const v4, 0xd99f

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    add-int/2addr v5, v4

    invoke-static {v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ea;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/ho;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ho;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/ho;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->ｋ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ho;->ﾒ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/dn;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/dn;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ｋ(Z)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object p1

    return-object p1

    :cond_45
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ea;->m:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v1, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﻐ()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/cg;

    if-eqz v2, :cond_67

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/dp;

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/cg;

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->ｋ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﻏ()Lcom/ironsource/adqualitysdk/sdk/i/ch;

    move-result-object p2

    invoke-interface {v1, v2, v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cg;->ﾒ(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/ch;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dp;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_67
    instance-of v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/cf;

    if-eqz v2, :cond_7e

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/dp;

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/cf;

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->ｋ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﻏ()Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-interface {v1, p2, v3, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cf;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/lang/String;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/dr;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dp;-><init>(Ljava/lang/Object;)V

    return-object v2

    :cond_7e
    instance-of v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;

    if-eqz v2, :cond_d6

    monitor-enter v1

    :try_start_83
    move-object v2, v1

    check-cast v2, Lcom/ironsource/adqualitysdk/sdk/i/cj;

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->ｋ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﾒ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/dn;

    move-result-object v4

    if-eqz v4, :cond_9e

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﺙ()Lcom/ironsource/adqualitysdk/sdk/i/dr;

    move-result-object p1

    invoke-virtual {v4, p1, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/dn;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ｋ(Z)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :cond_9e
    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u10a4\ud7f0\u9e55\u46a7\u0d1f\uf42e\ubcd6\u632c\u2b9c\u12f9\ud94a\u81d4\u482c\u3088\uf7ec\ube0c\u66bc\u2d17\u1463\udcd0\u8332\u4b9a\u3243"

    const v6, 0xc763

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ea;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->ｋ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/NoSuchMethodException;

    invoke-direct {v5}, Ljava/lang/NoSuchMethodException;-><init>()V

    invoke-static {v2, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v1
    :try_end_d2
    .catchall {:try_start_83 .. :try_end_d2} :catchall_d3

    goto :goto_d6

    :catchall_d3
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_d6
    :goto_d6
    const-wide/16 v4, 0x0

    const v2, 0xc764

    :try_start_db
    iget-object v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/ea;->n:[Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eqz v6, :cond_ec

    invoke-static {v6, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ea;->g([Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->ｋ()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v6}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->ﾒ(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)Ljava/lang/reflect/Method;

    move-result-object v6

    goto :goto_f4

    :cond_ec
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->ｋ()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->ﻐ(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)Ljava/lang/reflect/Method;

    move-result-object v6

    :goto_f4
    if-nez v6, :cond_10e

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/dp;

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﮐ()Lcom/ironsource/adqualitysdk/sdk/i/cz;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->ｋ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﻏ()Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-virtual {v3, p2, v6, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cz;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/lang/String;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/dr;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dp;-><init>(Ljava/lang/Object;)V

    return-object v1

    :cond_10e
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/dp;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/dp;-><init>(Ljava/lang/Object;)V
    :try_end_11b
    .catch Ljava/lang/IllegalAccessException; {:try_start_db .. :try_end_11b} :catch_14c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_db .. :try_end_11b} :catch_123
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_11b} :catch_11c

    return-object p1

    :catch_11c
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_123
    move-exception p1

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u10a4\ud7f0\u9e55\u46a7\u0d1f\uf42e\ubcd6\u632c\u2b9c\u12f9\ud94a\u81d4\u482c\u3088\uf7ec\ube0c\u66bc\u2d17\u1463\udcd0\u8332\u4b9a\u3243"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    cmp-long v3, v6, v4

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ea;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_174

    :catch_14c
    move-exception p1

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u10a4\ud7f0\u9e55\u46a7\u0d1f\uf42e\ubcd6\u632c\u2b9c\u12f9\ud94a\u81d4\u482c\u3088\uf7ec\ube0c\u66bc\u2d17\u1463\udcd0\u8332\u4b9a\u3243"

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v6

    cmp-long v3, v6, v4

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ea;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_174
    const/4 p1, 0x0

    return-object p1
.end method
