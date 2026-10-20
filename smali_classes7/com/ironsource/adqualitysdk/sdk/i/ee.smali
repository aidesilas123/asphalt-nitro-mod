###### Class com.json.adqualitysdk.sdk.i.ee (com.ironsource.adqualitysdk.sdk.i.ee)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ee;
.super Lcom/ironsource/adqualitysdk/sdk/i/dx;
.source ""


# static fields
.field private static e:[C = null

.field private static f:J = 0x0L

.field private static g:I = 0x0

.field private static h:I = 0x1


# instance fields
.field private i:Lcom/ironsource/adqualitysdk/sdk/i/dx;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_10

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ee;->e:[C

    const-wide v0, -0x25d452e23885e8a3L    # -2.34182921811591E126

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/ee;->f:J

    return-void

    :array_10
    .array-data 2
        0x2aaas
        0x29s
    .end array-data
.end method

.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dx;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ee;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    return-void
.end method

.method private static c(IIC)Ljava/lang/String;
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

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/ee;->e:[C

    add-int v4, p1, v2

    aget-char v3, v3, v4

    int-to-long v3, v3

    int-to-long v5, v2

    sget-wide v7, Lcom/ironsource/adqualitysdk/sdk/i/ee;->f:J

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

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ee;->g:I

    add-int/lit8 v1, v0, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ee;->h:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v1, 0x25

    if-ne p0, p1, :cond_11

    const/16 v2, 0x25

    goto :goto_13

    :cond_11
    const/16 v2, 0x45

    :goto_13
    const/4 v3, 0x1

    if-eq v2, v1, :cond_40

    const/4 v1, 0x0

    if-eqz p1, :cond_1b

    const/4 v2, 0x0

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x1

    :goto_1c
    if-eq v2, v3, :cond_3f

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ee;->h:I

    rem-int/lit8 v0, v0, 0x2

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/ee;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v0, v2, :cond_2f

    goto :goto_3f

    :cond_2f
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ee;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ee;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ee;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eqz v0, :cond_3c

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3c
    if-nez p1, :cond_3f

    return v3

    :cond_3f
    :goto_3f
    return v1

    :cond_40
    return v3
.end method

.method public final hashCode()I
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ee;->h:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ee;->g:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ee;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    const/4 v2, 0x0

    goto :goto_14

    :cond_13
    const/4 v2, 0x1

    :goto_14
    if-eqz v2, :cond_17

    return v1

    :cond_17
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ee;->h:I

    add-int/lit8 v2, v2, 0x3d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ee;->g:I

    rem-int/lit8 v2, v2, 0x2

    const/16 v3, 0x5e

    if-eqz v2, :cond_2c

    const/16 v2, 0x38

    goto :goto_2e

    :cond_2c
    const/16 v2, 0x5e

    :goto_2e
    if-eq v2, v3, :cond_36

    const/16 v2, 0x12

    :try_start_32
    div-int/2addr v2, v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_34

    return v0

    :catchall_34
    move-exception v0

    throw v0

    :cond_36
    return v0

    :cond_37
    const/4 v0, 0x0

    :try_start_38
    throw v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception v0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-string v7, ""

    cmp-long v8, v3, v5

    rsub-int/lit8 v3, v8, 0x1

    const/16 v4, 0x30

    invoke-static {v7, v4, v1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    rsub-int v4, v4, 0x2a81

    int-to-char v4, v4

    invoke-static {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ee;->c(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ee;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v1, v1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    int-to-char v1, v1

    invoke-static {v2, v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ee;->c(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ee;->g:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ee;->h:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ee;->h:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ee;->g:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ee;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object p1

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/ee;->h:I

    add-int/lit8 p2, p2, 0x4b

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ee;->g:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1e

    const/4 p2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p2, 0x0

    :goto_1f
    if-nez p2, :cond_22

    return-object p1

    :cond_22
    const/4 p1, 0x0

    :try_start_23
    throw p1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p1

    throw p1
.end method
