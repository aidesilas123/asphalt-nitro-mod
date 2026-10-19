###### Class com.json.adqualitysdk.sdk.i.dy (com.ironsource.adqualitysdk.sdk.i.dy)
.class public Lcom/ironsource/adqualitysdk/sdk/i/dy;
.super Lcom/ironsource/adqualitysdk/sdk/i/dx;
.source ""


# static fields
.field private static e:J = -0x3894e3bae81227d3L

.field private static f:I = 0x0

.field private static g:I = 0x1


# instance fields
.field private h:Ljava/lang/String;

.field private i:[Lcom/ironsource/adqualitysdk/sdk/i/dx;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/do;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dx;",
            ">;",
            "Lcom/ironsource/adqualitysdk/sdk/i/do;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/ironsource/adqualitysdk/sdk/i/dx;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dq;->ﻐ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dy;->h:Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/ironsource/adqualitysdk/sdk/i/dx;

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dy;->i:[Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method private static d(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-wide v1, Lcom/ironsource/adqualitysdk/sdk/i/dy;->e:J

    invoke-static {v1, v2, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ(J[CI)[C

    move-result-object p0

    const/4 p1, 0x4

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    :goto_14
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    array-length v2, p0

    if-ge v1, v2, :cond_3a

    add-int/lit8 v1, v1, -0x4

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ｋ:I

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    aget-char v2, p0, v1

    rem-int/lit8 v3, v1, 0x4

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/f;->ｋ:I

    int-to-long v4, v4

    sget-wide v6, Lcom/ironsource/adqualitysdk/sdk/i/dy;->e:J

    mul-long v4, v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p0, v1

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    goto :goto_14

    :cond_3a
    new-instance v1, Ljava/lang/String;

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-direct {v1, p0, p1, v2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_b .. :try_end_42} :catchall_43

    return-object v1

    :catchall_43
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method c([Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dy;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0x1

    const-string v2, "\u13c7\u13ef\ue624\uc34a\ua6c0"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-static {p1, p1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x1

    const-string v1, "\u5cbf\u5c96\u57a7\uaf4a\u987e"

    invoke-static {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dy;->g:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dy;->f:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1
.end method

.method final e()[Lcom/ironsource/adqualitysdk/sdk/i/dx;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dy;->g:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dy;->f:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dy;->i:[Lcom/ironsource/adqualitysdk/sdk/i/dx;

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dy;->g:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :cond_1c
    const/4 v0, 0x0

    :try_start_1d
    throw v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dy;->g:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dy;->f:I

    rem-int/lit8 v0, v0, 0x2

    if-ne p0, p1, :cond_18

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/dy;->g:I

    rem-int/lit8 v1, v1, 0x2

    const/4 p1, 0x1

    if-nez v1, :cond_17

    :cond_17
    return p1

    :cond_18
    const/16 v0, 0x1e

    if-eqz p1, :cond_1f

    const/16 v1, 0x1a

    goto :goto_21

    :cond_1f
    const/16 v1, 0x1e

    :goto_21
    const/4 v2, 0x0

    if-eq v1, v0, :cond_65

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/16 v3, 0x40

    if-eq v0, v1, :cond_33

    const/16 v0, 0x40

    goto :goto_35

    :cond_33
    const/16 v0, 0x5d

    :goto_35
    if-eq v0, v3, :cond_65

    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/dy;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dy;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/ironsource/adqualitysdk/sdk/i/dy;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x24

    if-nez v0, :cond_48

    const/16 v0, 0x24

    goto :goto_4a

    :cond_48
    const/16 v0, 0x43

    :goto_4a
    if-eq v0, v1, :cond_65

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dy;->i:[Lcom/ironsource/adqualitysdk/sdk/i/dx;

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/dy;->i:[Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dy;->g:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dy;->f:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_61

    return p1

    :cond_61
    const/4 p1, 0x0

    :try_start_62
    throw p1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_63

    :catchall_63
    move-exception p1

    throw p1

    :cond_65
    return v2
.end method

.method final f(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/dr;",
            "Lcom/ironsource/adqualitysdk/sdk/i/cj;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dy;->i:[Lcom/ironsource/adqualitysdk/sdk/i/dx;

    array-length v2, v1

    const/4 v3, 0x0

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/dy;->g:I

    add-int/lit8 v4, v4, 0x3f

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/dy;->f:I

    rem-int/lit8 v4, v4, 0x2

    :goto_13
    const/16 v4, 0x26

    if-ge v3, v2, :cond_1a

    const/16 v5, 0x4e

    goto :goto_1c

    :cond_1a
    const/16 v5, 0x26

    :goto_1c
    if-eq v5, v4, :cond_53

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/dy;->f:I

    add-int/lit8 v4, v4, 0x55

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/dy;->g:I

    rem-int/lit8 v4, v4, 0x2

    const/16 v5, 0x1b

    if-nez v4, :cond_2f

    const/16 v4, 0x1b

    goto :goto_31

    :cond_2f
    const/16 v4, 0x31

    :goto_31
    if-eq v4, v5, :cond_43

    aget-object v4, v1, v3

    invoke-virtual {v4, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﻐ()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_43
    aget-object v4, v1, v3

    invoke-virtual {v4, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﻐ()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1f

    goto :goto_13

    :cond_53
    return-object v0
.end method

.method public hashCode()I
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dy;->f:I

    add-int/lit8 v1, v0, 0x4b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dy;->g:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dy;->h:Ljava/lang/String;

    const/16 v2, 0x56

    if-eqz v1, :cond_13

    const/16 v3, 0x53

    goto :goto_15

    :cond_13
    const/16 v3, 0x56

    :goto_15
    if-eq v3, v2, :cond_24

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dy;->g:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dy;->i:[Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/dy;->g:I

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dy;->f:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dy;->f:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dy;->g:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dy;->i:[Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->c([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dy;->i:[Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->c([Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_1e
    throw v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v0

    throw v0
.end method

.method public ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dy;->f:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dy;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x3c

    if-nez v0, :cond_10

    const/4 v0, 0x6

    goto :goto_12

    :cond_10
    const/16 v0, 0x3c

    :goto_12
    const/4 v2, 0x0

    const-string v3, "\u2505\u2569\u754b\ue77f\uad09\u10fe\u5742"

    const/4 v4, 0x1

    if-eq v0, v1, :cond_37

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->f(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->ｋ()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v5

    mul-int/lit8 v5, v5, 0x71

    ushr-int v5, v4, v5

    invoke-static {v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    goto :goto_54

    :cond_37
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->f(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->ｋ()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v4

    invoke-static {v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    :goto_54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v4

    const-string v3, "\u90f9\u90aa\u592e\uecf7\u8151\ucb05\u5ce1\u43ad"

    invoke-static {v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/dp;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dp;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_92
    :try_start_92
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->ｋ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dr;->ﻐ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/dn;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/dp;

    invoke-virtual {v1, p1, p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/dn;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dp;-><init>(Ljava/lang/Object;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_a5} :catch_b0

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/dy;->f:I

    add-int/lit8 p1, p1, 0x17

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/dy;->g:I

    rem-int/lit8 p1, p1, 0x2

    return-object v3

    :catch_b0
    nop

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/ho;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->ｋ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ho;->ﾒ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/dn;

    move-result-object v1

    if-eqz v1, :cond_de

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/ho;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->ｋ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ho;->ﾒ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/dn;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/dn;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ｋ(Z)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object p1

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/dy;->g:I

    add-int/lit8 p2, p2, 0x6f

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/dy;->f:I

    rem-int/lit8 p2, p2, 0x2

    return-object p1

    :cond_de
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/dp;

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﮐ()Lcom/ironsource/adqualitysdk/sdk/i/cz;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/dy;->ｋ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﻏ()Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-virtual {v2, p2, v3, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cz;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/lang/String;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/dr;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dp;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method final ｋ()Ljava/lang/String;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dy;->f:I

    add-int/lit8 v1, v0, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dy;->g:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dy;->h:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dy;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    if-eq v0, v3, :cond_23

    const/16 v0, 0x30

    :try_start_1f
    div-int/2addr v0, v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_21

    return-object v1

    :catchall_21
    move-exception v0

    throw v0

    :cond_23
    return-object v1
.end method
