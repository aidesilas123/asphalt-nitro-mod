###### Class com.json.adqualitysdk.sdk.i.fg (com.ironsource.adqualitysdk.sdk.i.fg)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/fg;
.super Lcom/ironsource/adqualitysdk/sdk/i/fr;
.source ""


# static fields
.field private static a:[C = null

.field private static b:J = 0x0L

.field private static c:I = 0x0

.field private static d:I = 0x1


# instance fields
.field private e:[Lcom/ironsource/adqualitysdk/sdk/i/fr;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/fg;->a:[C

    const-wide v0, 0x50f37126015618c0L    # 9.221030694134934E81

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/fg;->b:J

    return-void

    nop

    :array_12
    .array-data 2
        -0x3538s
        -0x2d87s
        -0x1bb3s
        -0x373s
        -0x2a33s
        -0x51f3s
        0xas
        0x7ds
    .end array-data
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/fr;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/fr;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/ironsource/adqualitysdk/sdk/i/fr;

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fg;->e:[Lcom/ironsource/adqualitysdk/sdk/i/fr;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method private static a(IIC)Ljava/lang/String;
    .registers 12

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/e;->ｋ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-array v1, p0, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    :goto_8
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    if-ge v2, p0, :cond_24

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/fg;->a:[C

    add-int v4, p1, v2

    aget-char v3, v3, v4

    int-to-long v3, v3

    int-to-long v5, v2

    sget-wide v7, Lcom/ironsource/adqualitysdk/sdk/i/fg;->b:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p2

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    goto :goto_8

    :cond_24
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2b

    return-object p0

    :catchall_2b
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fg;->d:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fg;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x4

    if-ne p0, p1, :cond_10

    const/16 v1, 0x23

    goto :goto_11

    :cond_10
    const/4 v1, 0x4

    :goto_11
    const/4 v2, 0x1

    if-eq v1, v0, :cond_15

    return v2

    :cond_15
    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    const/4 v1, 0x0

    goto :goto_1c

    :cond_1a
    const/16 v1, 0x5f

    :goto_1c
    if-eqz v1, :cond_1f

    goto :goto_2c

    :cond_1f
    const-class v1, Lcom/ironsource/adqualitysdk/sdk/i/fg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_29

    const/4 v1, 0x0

    goto :goto_2a

    :cond_29
    const/4 v1, 0x1

    :goto_2a
    if-eq v1, v2, :cond_2d

    :goto_2c
    return v0

    :cond_2d
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/fg;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/fg;->e:[Lcom/ironsource/adqualitysdk/sdk/i/fr;

    if-eqz v1, :cond_44

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fg;->c:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fg;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/fg;->e:[Lcom/ironsource/adqualitysdk/sdk/i/fr;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_44
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/fg;->e:[Lcom/ironsource/adqualitysdk/sdk/i/fr;

    if-nez p1, :cond_53

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/fg;->c:I

    add-int/lit8 p1, p1, 0x45

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/fg;->d:I

    rem-int/lit8 p1, p1, 0x2

    return v2

    :cond_53
    return v0
.end method

.method public final hashCode()I
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fg;->c:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fg;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x6

    if-nez v0, :cond_f

    const/4 v0, 0x6

    goto :goto_11

    :cond_f
    const/16 v0, 0x21

    :goto_11
    const/4 v3, 0x0

    if-eq v0, v2, :cond_19

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fg;->e:[Lcom/ironsource/adqualitysdk/sdk/i/fr;

    if-eqz v0, :cond_27

    goto :goto_20

    :cond_19
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fg;->e:[Lcom/ironsource/adqualitysdk/sdk/i/fr;

    const/16 v2, 0x60

    :try_start_1d
    div-int/2addr v2, v3
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_41

    if-eqz v0, :cond_27

    :goto_20
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fg;->e:[Lcom/ironsource/adqualitysdk/sdk/i/fr;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_27
    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/fg;->c:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v0, 0x4f

    if-eqz v1, :cond_36

    const/16 v1, 0x4f

    goto :goto_38

    :cond_36
    const/16 v1, 0x50

    :goto_38
    if-eq v1, v0, :cond_3b

    return v3

    :cond_3b
    const/16 v0, 0x22

    :try_start_3d
    div-int/2addr v0, v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3f

    return v3

    :catchall_3f
    move-exception v0

    throw v0

    :catchall_41
    move-exception v0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x2

    const/high16 v3, 0x1000000

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    add-int/2addr v4, v3

    const v3, 0xcab2

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    add-int/2addr v5, v3

    int-to-char v3, v5

    invoke-static {v2, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/fg;->a(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/fg;->e:[Lcom/ironsource/adqualitysdk/sdk/i/fr;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2e
    const/4 v5, 0x1

    if-ge v4, v3, :cond_33

    const/4 v7, 0x1

    goto :goto_34

    :cond_33
    const/4 v7, 0x0

    :goto_34
    const-string v8, ""

    if-eqz v7, :cond_9f

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/fg;->d:I

    add-int/lit8 v7, v7, 0x13

    rem-int/lit16 v9, v7, 0x80

    sput v9, Lcom/ironsource/adqualitysdk/sdk/i/fg;->c:I

    rem-int/lit8 v7, v7, 0x2

    aget-object v7, v2, v4

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    rsub-int/lit8 v9, v9, 0x4

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v12

    add-int/lit8 v12, v12, 0x2

    const v13, 0xe46d

    invoke-static {v8}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v8

    sub-int/2addr v13, v8

    int-to-char v8, v13

    invoke-static {v9, v12, v8}, Lcom/ironsource/adqualitysdk/sdk/i/fg;->a(IIC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    sub-int/2addr v5, v7

    invoke-static {v1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v7

    cmp-long v9, v7, v10

    add-int/lit8 v9, v9, 0x6

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x14

    shr-int/lit8 v7, v7, 0x6

    int-to-char v7, v7

    invoke-static {v5, v9, v7}, Lcom/ironsource/adqualitysdk/sdk/i/fg;->a(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/fg;->d:I

    add-int/lit8 v5, v5, 0x6d

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lcom/ironsource/adqualitysdk/sdk/i/fg;->c:I

    rem-int/lit8 v5, v5, 0x2

    goto :goto_2e

    :cond_9f
    const/16 v2, 0x30

    invoke-static {v8, v2, v1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    neg-int v2, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    add-int/lit8 v3, v3, 0x7

    invoke-static {v1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    cmpl-float v1, v1, v6

    int-to-char v1, v1

    invoke-static {v2, v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/fg;->a(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;
    .registers 11

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/dp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dp;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/dr;

    invoke-direct {v2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dr;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dr;)V

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/fg;->e:[Lcom/ironsource/adqualitysdk/sdk/i/fr;

    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_10
    const/16 v6, 0x27

    if-ge v5, v3, :cond_17

    const/16 v7, 0x30

    goto :goto_19

    :cond_17
    const/16 v7, 0x27

    :goto_19
    if-eq v7, v6, :cond_5e

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fg;->c:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v6, v0, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/fg;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_52

    aget-object v0, p1, v5

    invoke-virtual {v0, v2, p2}, Lcom/ironsource/adqualitysdk/sdk/i/fr;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ｋ()Z

    move-result v6

    if-nez v6, :cond_51

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﻛ()Z

    move-result v6

    if-nez v6, :cond_51

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/fg;->c:I

    add-int/lit8 v6, v6, 0x75

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/ironsource/adqualitysdk/sdk/i/fg;->d:I

    rem-int/lit8 v6, v6, 0x2

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﺙ()Z

    move-result v6

    if-eqz v6, :cond_4b

    const/4 v6, 0x0

    goto :goto_4c

    :cond_4b
    const/4 v6, 0x1

    :goto_4c
    if-eqz v6, :cond_51

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_51
    return-object v0

    :cond_52
    aget-object p1, p1, v5

    invoke-virtual {p1, v2, p2}, Lcom/ironsource/adqualitysdk/sdk/i/fr;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ｋ()Z

    :try_start_5b
    throw v1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception p1

    throw p1

    :cond_5e
    return-object v0
.end method
