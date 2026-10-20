###### Class com.json.adqualitysdk.sdk.i.iv (com.ironsource.adqualitysdk.sdk.i.iv)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/iv;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:[C = null

.field private static b:I = 0x2f

.field private static c:Z = true

.field private static d:Z = true

.field private static e:I = 0x0

.field private static f:I = 0x1


# instance fields
.field private g:Lorg/json/JSONObject;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/iv;->a:[C

    return-void

    :array_a
    .array-data 2
        0x9fs
        0x9es
        0xa2s
        0xa3s
        0x73s
        0x90s
        0xa4s
        0x98s
        0x93s
    .end array-data
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/iv;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iv;->g:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/iv;->h:Ljava/lang/String;

    return-void
.end method

.method private static a([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 9

    if-eqz p3, :cond_8

    const-string v0, "ISO-8859-1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    :cond_8
    check-cast p3, [B

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_10
    check-cast p1, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_15
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/iv;->a:[C

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/iv;->b:I

    sget-boolean v3, Lcom/ironsource/adqualitysdk/sdk/i/iv;->d:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_49

    array-length p0, p3

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    new-array p0, p0, [C

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    :goto_25
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    if-ge p1, v3, :cond_42

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sub-int/2addr v3, v4

    aget-byte v3, p3, v3

    add-int/2addr v3, p2

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p0, p1

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    goto :goto_25

    :cond_42
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0

    return-object p1

    :cond_49
    sget-boolean p3, Lcom/ironsource/adqualitysdk/sdk/i/iv;->c:Z

    if-eqz p3, :cond_78

    array-length p0, p1

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    new-array p0, p0, [C

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    :goto_54
    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    if-ge p3, v3, :cond_71

    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sub-int/2addr v3, v4

    aget-char v3, p1, v3

    sub-int/2addr v3, p2

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p0, p3

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    goto :goto_54

    :cond_71
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0

    return-object p1

    :cond_78
    array-length p1, p0

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    new-array p1, p1, [C

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    :goto_7f
    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    if-ge p3, v3, :cond_9c

    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sub-int/2addr v3, v4

    aget v3, p0, v3

    sub-int/2addr v3, p2

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p1, p3

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    goto :goto_7f

    :cond_9c
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_15 .. :try_end_a2} :catchall_a3

    return-object p0

    :catchall_a3
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final ｋ()Ljava/lang/String;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iv;->e:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/iv;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x4b

    if-nez v0, :cond_11

    const/16 v0, 0x36

    goto :goto_13

    :cond_11
    const/16 v0, 0x4b

    :goto_13
    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iv;->h:Ljava/lang/String;

    const/16 v1, 0x4d

    :try_start_19
    div-int/lit8 v1, v1, 0x0
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v0

    throw v0

    :cond_1e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iv;->h:Ljava/lang/String;

    :goto_20
    return-object v0
.end method

.method public final ﾇ()Lorg/json/JSONObject;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iv;->f:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/iv;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iv;->g:Lorg/json/JSONObject;

    return-object v0

    :cond_15
    const/4 v0, 0x0

    :try_start_16
    throw v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v0

    throw v0
.end method

.method public final ﾒ()Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x7f

    const/4 v3, 0x0

    const-string v4, "\u0086\u0084\u0086\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v3, v3, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/iv;->a([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/iv;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x7f

    const-string v2, "\u0089\u0088\u0087\u0087"

    invoke-static {v3, v3, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/iv;->a([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/iv;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/iv;->f:I

    add-int/lit8 v1, v1, 0x5d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/iv;->e:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method
