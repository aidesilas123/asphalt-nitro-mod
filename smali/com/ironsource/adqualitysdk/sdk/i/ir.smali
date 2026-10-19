###### Class com.json.adqualitysdk.sdk.i.ir (com.ironsource.adqualitysdk.sdk.i.ir)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ir;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/ir$c;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = null

.field private static b:[C = null

.field private static c:I = 0x0

.field private static d:Z = false

.field private static e:Z = false

.field private static f:I = 0x0

.field private static g:I = 0x1


# instance fields
.field private h:Lcom/ironsource/adqualitysdk/sdk/i/iu;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ir;->b()V

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x7f

    const/4 v2, 0x0

    const-string v3, "\u008f\u0086\u009d\u0083\u0082\u0083\u009c\u009a\u008f\u0089\u0097\u0088\u0086\u009b"

    invoke-static {v2, v2, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ir;->d([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ir;->a:Ljava/lang/String;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ir;->f:I

    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ir;->g:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    if-nez v1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x1

    :goto_26
    if-ne v0, v3, :cond_29

    return-void

    :cond_29
    :try_start_29
    throw v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v0

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ir;->i:Z

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/iu;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/iu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ir;->h:Lcom/ironsource/adqualitysdk/sdk/i/iu;

    return-void
.end method

.method static synthetic a(Lcom/ironsource/adqualitysdk/sdk/i/ir;)Lcom/ironsource/adqualitysdk/sdk/i/iu;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ir;->f:I

    add-int/lit8 v1, v0, 0x61

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ir;->g:I

    rem-int/lit8 v1, v1, 0x2

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ir;->h:Lcom/ironsource/adqualitysdk/sdk/i/iu;

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ir;->g:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method static b()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/ir;->d:Z

    sput-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/ir;->e:Z

    const/16 v0, 0xa3

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ir;->c:I

    const/16 v0, 0x1d

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ir;->b:[C

    return-void

    nop

    :array_14
    .array-data 2
        0xf8s
        0x111s
        0x104s
        0x105s
        0x10fs
        0x108s
        0xc3s
        0x117s
        0x112s
        0x113s
        0x116s
        0x106s
        0x118s
        0x110s
        0x115s
        0x114s
        0x10cs
        0x10bs
        0xf5s
        0xefs
        0xebs
        0x107s
        0x11as
        0x119s
        0xf6s
        0x10es
        0xf1s
        0xf0s
        0x10as
    .end array-data
.end method

.method static synthetic c(Lcom/ironsource/adqualitysdk/sdk/i/ir;Lcom/ironsource/adqualitysdk/sdk/i/is;Lcom/ironsource/adqualitysdk/sdk/i/ir$c;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ir;->f:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ir;->g:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ir;->e(Lcom/ironsource/adqualitysdk/sdk/i/is;Lcom/ironsource/adqualitysdk/sdk/i/ir$c;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ir;->f:I

    add-int/lit8 p0, p0, 0x5d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ir;->g:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static d([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
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
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ir;->b:[C

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ir;->c:I

    sget-boolean v3, Lcom/ironsource/adqualitysdk/sdk/i/ir;->e:Z

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
    sget-boolean p3, Lcom/ironsource/adqualitysdk/sdk/i/ir;->d:Z

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

.method private e(Lcom/ironsource/adqualitysdk/sdk/i/is;Lcom/ironsource/adqualitysdk/sdk/i/ir$c;)V
    .registers 8

    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ir;->i:Z

    const/16 v1, 0x2f

    if-eqz v0, :cond_9

    const/16 v0, 0x2f

    goto :goto_b

    :cond_9
    const/16 v0, 0x19

    :goto_b
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v0, v1, :cond_1f

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ir$b;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ir$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ir;)V

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jt;->ﾇ(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void

    :cond_1f
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ir;->f:I

    add-int/lit8 p1, p1, 0x43

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ir;->g:I

    rem-int/2addr p1, v4

    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/ir;->a:Ljava/lang/String;

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result p2

    shr-int/lit8 p2, p2, 0x10

    add-int/lit8 p2, p2, 0x7f

    const/4 v0, 0x0

    const-string v1, "\u0082\u0097\u0089\u0096\u0088\u008d\u0092\u008b\u0087\u008b\u0083\u0097\u0087\u008f\u0086\u009d\u0083\u0082\u0083\u009c\u009a\u008f\u0089\u0097\u0088\u0086\u009b\u0087\u0082\u0086\u0092\u0097\u0087\u0088\u008b\u0086\u008d\u0090\u0086\u0093\u0086\u009a\u0089\u0098\u0082\u0091\u0087\u0089\u0088\u0087\u0096\u0086\u0091\u008f\u0088\u0087\u0086\u0082\u0089\u0086\u008e\u0089\u0099"

    invoke-static {v0, v0, p2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ir;->d([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ir;->g:I

    add-int/lit8 p1, p1, 0x49

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ir;->f:I

    rem-int/2addr p1, v4

    if-eqz p1, :cond_4c

    const/4 v2, 0x1

    :cond_4c
    if-eq v2, v3, :cond_4f

    return-void

    :cond_4f
    :try_start_4f
    throw v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_50

    :catchall_50
    move-exception p1

    throw p1
.end method

.method static synthetic f()Ljava/lang/String;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ir;->f:I

    add-int/lit8 v1, v0, 0x7b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ir;->g:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    if-eq v1, v2, :cond_1d

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ir;->a:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ir;->g:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1

    :cond_1d
    const/4 v0, 0x0

    :try_start_1e
    throw v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v0

    throw v0
.end method


# virtual methods
.method public final ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/iu;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ir;->g:I

    const/16 v1, 0x3f

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ir;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x34

    if-eqz v0, :cond_12

    const/16 v0, 0x5b

    goto :goto_14

    :cond_12
    const/16 v0, 0x34

    :goto_14
    if-eq v0, v2, :cond_1d

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ir;->h:Lcom/ironsource/adqualitysdk/sdk/i/iu;

    :try_start_18
    div-int/lit8 v1, v1, 0x0
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v0

    throw v0

    :cond_1d
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ir;->h:Lcom/ironsource/adqualitysdk/sdk/i/iu;

    :goto_1f
    return-object v0
.end method

.method public final ﻛ(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/is;)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ir;->g:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ir;->f:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x5e

    if-eqz v0, :cond_15

    const/16 v0, 0x5e

    goto :goto_17

    :cond_15
    const/16 v0, 0x35

    :goto_17
    if-eq v0, v1, :cond_22

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ir$a;

    invoke-direct {v0, p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ir$a;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-direct {p0, p3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ir;->e(Lcom/ironsource/adqualitysdk/sdk/i/is;Lcom/ironsource/adqualitysdk/sdk/i/ir$c;)V

    return-void

    :cond_22
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/ir;->a:Ljava/lang/String;

    const/16 p2, 0x30

    const-string p3, ""

    invoke-static {p3, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result p2

    rsub-int/lit8 p2, p2, 0x7e

    const/4 p3, 0x0

    const-string v0, "\u0096\u0086\u0096\u0091\u0098\u0089\u008f\u008a\u0087\u0088\u0089\u0082\u0087\u0086\u008f\u0086\u0097\u0087\u008f\u0086\u0085\u0096\u0082\u0083\u0095\u0086\u008b\u0082\u0089\u008a\u008b\u0086\u008f\u0087\u008f\u0089\u0087\u0094\u0093\u0081\u0087\u008f\u0086\u0092\u0088\u0091\u0086\u0087\u0088\u008b\u0086\u008d\u0090\u0086\u008f\u0087\u008e\u0089\u0088\u008b\u008d\u008c\u0087\u0088\u008b\u0089\u008a\u0087\u0089\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081"

    invoke-static {p3, p3, p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ir;->d([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﱡ(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ir;->g:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ir;->f:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final ﾇ()V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ir;->g:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ir;->f:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ir;->h:Lcom/ironsource/adqualitysdk/sdk/i/iu;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->ﾒ()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ir;->i:Z

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ir;->g:I

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ir;->f:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    if-nez v0, :cond_23

    return-void

    :cond_23
    const/4 v0, 0x0

    :try_start_24
    throw v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v0

    throw v0
.end method
