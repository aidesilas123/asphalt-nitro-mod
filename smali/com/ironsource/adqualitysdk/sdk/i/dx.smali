###### Class com.json.adqualitysdk.sdk.i.dx (com.ironsource.adqualitysdk.sdk.i.dx)
.class public abstract Lcom/ironsource/adqualitysdk/sdk/i/dx;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:J = 0x7e1574263a974710L

.field private static b:I = 0x0

.field private static c:I = 0x1


# instance fields
.field private d:Lcom/ironsource/adqualitysdk/sdk/i/do;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/do;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dx;->d:Lcom/ironsource/adqualitysdk/sdk/i/do;

    return-void
.end method

.method static a([Ljava/lang/Object;)Ljava/lang/String;
    .registers 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_a
    if-ge v4, v1, :cond_81

    aget-object v6, p0, v4

    if-nez v5, :cond_12

    const/4 v5, 0x1

    goto :goto_13

    :cond_12
    const/4 v5, 0x0

    :goto_13
    if-eq v5, v2, :cond_16

    goto :goto_3d

    :cond_16
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/dx;->b:I

    add-int/lit8 v5, v5, 0x7

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lcom/ironsource/adqualitysdk/sdk/i/dx;->c:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_24

    const/4 v5, 0x0

    goto :goto_25

    :cond_24
    const/4 v5, 0x1

    :goto_25
    const-string v7, "\u9444\u1c5a\u1027\udc54\u9468\u5b6a"

    if-eqz v5, :cond_2e

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    goto :goto_32

    :cond_2e
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    :goto_32
    invoke-static {v7, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3d
    instance-of v5, v6, Ljava/lang/String;

    if-eqz v5, :cond_43

    const/4 v5, 0x0

    goto :goto_44

    :cond_43
    const/4 v5, 0x1

    :goto_44
    if-eq v5, v2, :cond_70

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const-string v5, "\u09a4\ue2ea\uacb6\u8696\u0986"

    cmp-long v11, v7, v9

    rsub-int/lit8 v7, v11, 0x1

    invoke-static {v5, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_73

    :cond_70
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_73
    add-int/lit8 v4, v4, 0x1

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/dx;->c:I

    add-int/lit8 v5, v5, 0x17

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/dx;->b:I

    rem-int/lit8 v5, v5, 0x2

    const/4 v5, 0x0

    goto :goto_a

    :cond_81
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-wide v1, Lcom/ironsource/adqualitysdk/sdk/i/dx;->a:J

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

    sget-wide v6, Lcom/ironsource/adqualitysdk/sdk/i/dx;->a:J

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
.method public final ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;
    .registers 7

    move-object v0, p0

    :goto_1
    invoke-virtual {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object v0

    const/16 v1, 0x4c

    if-eqz v0, :cond_33

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dx;->c:I

    add-int/lit8 v2, v2, 0x21

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/dx;->b:I

    rem-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﻐ()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eqz v2, :cond_1e

    const/16 v2, 0x4f

    goto :goto_20

    :cond_1e
    const/16 v2, 0x4c

    :goto_20
    if-eq v2, v1, :cond_33

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﻐ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/dx;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/dx;->b:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dx;->c:I

    rem-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_33
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/dx;->b:I

    const/16 p2, 0x2b

    add-int/2addr p1, p2

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dx;->c:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_41

    goto :goto_43

    :cond_41
    const/16 v1, 0x2b

    :goto_43
    if-ne v1, p2, :cond_46

    return-object v0

    :cond_46
    const/4 p1, 0x0

    :try_start_47
    throw p1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception p1

    throw p1
.end method

.method public final ﻐ()Ljava/lang/String;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dx;->b:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dx;->c:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dx;->d:Lcom/ironsource/adqualitysdk/sdk/i/do;

    if-eqz v0, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v1

    const/4 v2, 0x0

    const-string v3, "\u8eb2\ud3da\u6ec9\u811a\u8e92\u94ab\ue09d\u540a\u929f\ub0ef\uc4dd\u7002\ub65d\uac2e\ua849"

    cmpl-float v1, v1, v2

    rsub-int/lit8 v1, v1, 0x1

    invoke-static {v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dx;->d:Lcom/ironsource/adqualitysdk/sdk/i/do;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/dx;->c:I

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dx;->b:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :cond_3d
    const-string v0, ""

    return-object v0
.end method

.method public final ﻛ()I
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dx;->b:I

    add-int/lit8 v1, v0, 0x47

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dx;->c:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v3, 0xd

    if-nez v1, :cond_11

    const/16 v1, 0xa

    goto :goto_13

    :cond_11
    const/16 v1, 0xd

    :goto_13
    if-ne v1, v3, :cond_39

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dx;->d:Lcom/ironsource/adqualitysdk/sdk/i/do;

    if-eqz v1, :cond_26

    add-int/lit8 v2, v2, 0x2f

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/dx;->b:I

    rem-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/do;->ﾇ()I

    move-result v0

    return v0

    :cond_26
    const/4 v1, -0x1

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dx;->c:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_38

    const/16 v0, 0x26

    :try_start_33
    div-int/lit8 v0, v0, 0x0
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_36

    return v1

    :catchall_36
    move-exception v0

    throw v0

    :cond_38
    return v1

    :cond_39
    const/4 v0, 0x0

    :try_start_3a
    throw v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception v0

    throw v0
.end method

.method public abstract ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;
.end method
