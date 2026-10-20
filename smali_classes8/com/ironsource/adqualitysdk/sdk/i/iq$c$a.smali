###### Class com.ironsource.adqualitysdk.sdk.i.iq.c.a (com.ironsource.adqualitysdk.sdk.i.iq$c$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iq$c;->ﾇ(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static a:[I = null

.field private static b:J = 0x0L

.field private static c:I = 0x0

.field private static d:I = 0x1


# instance fields
.field final synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/iq$c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->a:[I

    const-wide v0, -0x6af4e116d6ce1bdL

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->b:J

    return-void

    nop

    :array_12
    .array-data 4
        0x49a5749e    # 1355411.8f
        -0x67ca01c4
        -0x71e7cd7f
        0x3c8b07ec
        0x18a0c49b
        0x4d2fa6fa
        0x68fc0aeb
        0x66407c93
        -0xb961f88
        0x6580121b
        0x74ad0708
        -0x5d40b0c1
        0x37cd9ca
        0x6bb7a721
        0xa72d6d9
        0x3889052d
        -0x6fe9c891
        -0x1be406fc
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/iq$c;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/iq$c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    shr-int/lit8 v1, v1, 0x16

    rsub-int v1, v1, 0x5d65

    const-string v2, "\u1e26\u4348\ua4ea"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_25

    const/4 v2, 0x0

    goto :goto_26

    :cond_25
    const/4 v2, 0x1

    :goto_26
    if-eq v2, v3, :cond_42

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->c:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x3f

    if-nez v0, :cond_39

    const/16 v0, 0x59

    goto :goto_3b

    :cond_39
    const/16 v0, 0x3f

    :goto_3b
    if-ne v0, v1, :cond_3e

    return-object p0

    :cond_3e
    const/4 p0, 0x0

    :try_start_3f
    throw p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    :catchall_40
    move-exception p0

    throw p0

    :cond_42
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    add-int/lit16 p0, p0, 0x1d87

    const-string v2, "\u1e2a\u03b2"

    invoke-static {v2, p0}, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const v2, 0xaec5

    invoke-static {v4, v4}, Landroid/view/View;->resolveSize(II)I

    move-result v3

    add-int/2addr v3, v2

    const-string v2, "\u1e30\ub0e7\u43a5\u1278"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/iq;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jt;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->b:J

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

.method private c(Lcom/ironsource/adqualitysdk/sdk/i/iw;Lcom/ironsource/adqualitysdk/sdk/i/ih;)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/iq$c;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c;->e:Lcom/ironsource/adqualitysdk/sdk/i/iq;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iq;->d(Lcom/ironsource/adqualitysdk/sdk/i/iq;)Lcom/ironsource/adqualitysdk/sdk/i/ir;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ir;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/iu;

    move-result-object v0

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;Lcom/ironsource/adqualitysdk/sdk/i/iw;Lcom/ironsource/adqualitysdk/sdk/i/ih;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/in;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->c:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->d:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private static d([II)Ljava/lang/String;
    .registers 14

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x4

    :try_start_4
    new-array v1, v1, [C

    array-length v2, p0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    new-array v2, v2, [C

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->a:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const/4 v5, 0x0

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    :goto_16
    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    array-length v7, p0

    if-ge v6, v7, :cond_bc

    aget v7, p0, v6

    const/16 v8, 0x10

    shr-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v1, v5

    aget v7, p0, v6

    int-to-char v7, v7

    aput-char v7, v1, v3

    add-int/lit8 v7, v6, 0x1

    aget v7, p0, v7

    shr-int/2addr v7, v8

    int-to-char v7, v7

    const/4 v9, 0x2

    aput-char v7, v1, v9

    add-int/lit8 v6, v6, 0x1

    aget v6, p0, v6

    int-to-char v6, v6

    const/4 v7, 0x3

    aput-char v6, v1, v7

    aget-char v6, v1, v5

    shl-int/2addr v6, v8

    aget-char v10, v1, v3

    add-int/2addr v6, v10

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    aget-char v6, v1, v9

    shl-int/2addr v6, v8

    aget-char v10, v1, v7

    add-int/2addr v6, v10

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ([I)V

    const/4 v6, 0x0

    :goto_4d
    if-ge v6, v8, :cond_6a

    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    aget v11, v4, v6

    xor-int/2addr v10, v11

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    invoke-static {v10}, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾇ(I)I

    move-result v10

    sget v11, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    xor-int/2addr v10, v11

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sget v11, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sput v11, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_4d

    :cond_6a
    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    aget v8, v4, v8

    xor-int/2addr v6, v8

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    const/16 v8, 0x11

    aget v8, v4, v8

    xor-int/2addr v6, v8

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    ushr-int/lit8 v8, v6, 0x10

    int-to-char v8, v8

    aput-char v8, v1, v5

    int-to-char v6, v6

    aput-char v6, v1, v3

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    ushr-int/lit8 v8, v6, 0x10

    int-to-char v8, v8

    aput-char v8, v1, v9

    int-to-char v6, v6

    aput-char v6, v1, v7

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ([I)V

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    shl-int/lit8 v8, v6, 0x1

    aget-char v10, v1, v5

    aput-char v10, v2, v8

    shl-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v3

    aget-char v10, v1, v3

    aput-char v10, v2, v8

    shl-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v9

    aget-char v9, v1, v9

    aput-char v9, v2, v8

    shl-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v7

    aget-char v7, v1, v7

    aput-char v7, v2, v8

    add-int/lit8 v6, v6, 0x2

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    goto/16 :goto_16

    :cond_bc
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v5, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_4 .. :try_end_c2} :catchall_c3

    return-object p0

    :catchall_c3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private e(Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/iw;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ih;)V
    .registers 14

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/iq$c;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c;->e:Lcom/ironsource/adqualitysdk/sdk/i/iq;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iq;->d(Lcom/ironsource/adqualitysdk/sdk/i/iq;)Lcom/ironsource/adqualitysdk/sdk/i/ir;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ir;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/iu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->ﻐ()Z

    move-result v0

    const/16 v1, 0x45

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_2c

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->d:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->c:I

    rem-int/2addr p1, v2

    if-eqz p1, :cond_28

    invoke-direct {p0, p2, p4}, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->c(Lcom/ironsource/adqualitysdk/sdk/i/iw;Lcom/ironsource/adqualitysdk/sdk/i/ih;)V

    :try_start_24
    div-int/2addr v1, v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception p1

    throw p1

    :cond_28
    invoke-direct {p0, p2, p4}, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->c(Lcom/ironsource/adqualitysdk/sdk/i/iw;Lcom/ironsource/adqualitysdk/sdk/i/ih;)V

    return-void

    :cond_2c
    const/16 v0, 0x8

    const/4 v4, 0x4

    :try_start_2f
    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/it;->ﾇ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ip;

    move-result-object v5

    const/16 v6, 0x38

    if-eqz v5, :cond_39

    const/16 v1, 0x38

    :cond_39
    const/4 v7, 0x1

    if-eq v1, v6, :cond_3e

    goto/16 :goto_145

    :cond_3e
    invoke-virtual {v5}, Lcom/ironsource/adqualitysdk/sdk/i/ip;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/ip$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ip$c;->ﾒ()I

    move-result v1

    const/16 v6, 0xc8

    if-ne v1, v6, :cond_145

    invoke-static {v5}, Lcom/ironsource/adqualitysdk/sdk/i/it;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/ip;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v5, v4, [I

    const v6, -0x5f18be62

    aput v6, v5, v3

    const v6, 0x3dce7dca

    aput v6, v5, v7

    const v6, 0x134ddbbf

    aput v6, v5, v2

    const v6, -0x6596be3e

    const/4 v8, 0x3

    aput v6, v5, v8

    const-string v6, ""

    invoke-static {v6, v3, v3}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x8

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->d([II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12b

    new-array p3, v4, [I

    const v1, 0x3292657a

    aput v1, p3, v3

    const v1, 0x26abd9c3

    aput v1, p3, v7

    const v1, 0x15628ca8

    aput v1, p3, v2

    const v1, 0x60725b5

    aput v1, p3, v8

    invoke-static {v3, v3}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x8

    invoke-static {p3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->d([II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u1e07\u7033\uc20a\u540e\ua66e\u385a\u8a49\u1cb5\u6e8f\uc0de\u52e2\ua4d0\u36cd\u893b\u1b0b\u6d1f\uff33\u5140\ua34b\u35a3\u878a\u19da"

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    add-int/lit16 v6, v6, 0x6e15

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xc

    new-array v5, v5, [I

    const v6, 0x49a4ba

    aput v6, v5, v3

    const v6, -0x3357dc0

    aput v6, v5, v7

    const v6, -0xfbde719

    aput v6, v5, v2

    const v2, -0x3b02a035

    aput v2, v5, v8

    const v2, -0x7831e4e9

    aput v2, v5, v4

    const/4 v2, 0x5

    const v6, 0x644002a8

    aput v6, v5, v2

    const/4 v2, 0x6

    const v6, -0x3514fd8c    # -7700794.0f

    aput v6, v5, v2

    const/4 v2, 0x7

    const v6, 0x7e0272c8

    aput v6, v5, v2

    const v2, -0x4fca620b

    aput v2, v5, v0

    const/16 v2, 0x9

    const v6, -0x3d5965d2

    aput v6, v5, v2

    const/16 v2, 0xa

    const v6, -0x931017e

    aput v6, v5, v2

    const/16 v2, 0xb

    const v6, 0x4ba9431

    aput v6, v5, v2

    const/16 v2, 0x30

    invoke-static {v2}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v2

    rsub-int/lit8 v2, v2, 0x47

    invoke-static {v5, v2}, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->d([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p3, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void

    :cond_12b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_144

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/iq$c;

    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/iq$c;->e:Lcom/ironsource/adqualitysdk/sdk/i/iq;

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/iq;->h(Lcom/ironsource/adqualitysdk/sdk/i/iq;)Lcom/ironsource/adqualitysdk/sdk/i/ix;

    move-result-object v2

    invoke-virtual {v2, p3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ix;->ﾇ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a$a;

    invoke-direct {v2, p4, p3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ih;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    :cond_144
    return-void

    :cond_145
    :goto_145
    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/iq$c;

    iget-object p3, p3, Lcom/ironsource/adqualitysdk/sdk/i/iq$c;->e:Lcom/ironsource/adqualitysdk/sdk/i/iq;

    invoke-static {p3}, Lcom/ironsource/adqualitysdk/sdk/i/iq;->d(Lcom/ironsource/adqualitysdk/sdk/i/iq;)Lcom/ironsource/adqualitysdk/sdk/i/ir;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/adqualitysdk/sdk/i/ir;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/iu;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->ﻐ()Z

    move-result p3

    if-nez p3, :cond_159

    const/4 p3, 0x1

    goto :goto_15a

    :cond_159
    const/4 p3, 0x0

    :goto_15a
    if-eq p3, v7, :cond_1ae

    invoke-virtual {v5}, Lcom/ironsource/adqualitysdk/sdk/i/ip;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/ip$c;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/adqualitysdk/sdk/i/ip$c;->ﾒ()I

    move-result p3

    const/16 v1, 0x193

    if-eq p3, v1, :cond_17d

    invoke-virtual {v5}, Lcom/ironsource/adqualitysdk/sdk/i/ip;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/ip$c;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/adqualitysdk/sdk/i/ip$c;->ﾒ()I

    move-result p3

    const/16 v1, 0x194

    const/16 v5, 0x40

    if-ne p3, v1, :cond_179

    const/16 p3, 0x13

    goto :goto_17b

    :cond_179
    const/16 p3, 0x40

    :goto_17b
    if-eq p3, v5, :cond_1ad

    :cond_17d
    new-array p3, v2, [I

    const v1, -0x1a640325

    aput v1, p3, v3

    const v1, -0x1c68d589

    aput v1, p3, v7

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x4

    invoke-static {p3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->d([II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1a0

    const/4 v7, 0x0

    :cond_1a0
    if-eqz v7, :cond_1a3

    goto :goto_1ad

    :cond_1a3
    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/iw;->ﻛ()V

    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/iq$c;

    iget-object p3, p3, Lcom/ironsource/adqualitysdk/sdk/i/iq$c;->e:Lcom/ironsource/adqualitysdk/sdk/i/iq;

    invoke-virtual {p3, p2, p4}, Lcom/ironsource/adqualitysdk/sdk/i/iq;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/iw;Lcom/ironsource/adqualitysdk/sdk/i/ih;)Ljava/lang/String;
    :try_end_1ad
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_1ad} :catch_1c6

    :cond_1ad
    :goto_1ad
    return-void

    :cond_1ae
    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->c:I

    add-int/lit8 p3, p3, 0x2d

    rem-int/lit16 v1, p3, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->d:I

    rem-int/2addr p3, v2

    if-nez p3, :cond_1c2

    :try_start_1b9
    invoke-direct {p0, p2, p4}, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->c(Lcom/ironsource/adqualitysdk/sdk/i/iw;Lcom/ironsource/adqualitysdk/sdk/i/ih;)V
    :try_end_1bc
    .catch Ljava/lang/Exception; {:try_start_1b9 .. :try_end_1bc} :catch_1c6

    const/16 p3, 0xf

    :try_start_1be
    div-int/2addr p3, v3
    :try_end_1bf
    .catch Ljava/lang/Exception; {:try_start_1be .. :try_end_1bf} :catch_1c6
    .catchall {:try_start_1be .. :try_end_1bf} :catchall_1c0

    return-void

    :catchall_1c0
    move-exception p1

    throw p1

    :cond_1c2
    :try_start_1c2
    invoke-direct {p0, p2, p4}, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->c(Lcom/ironsource/adqualitysdk/sdk/i/iw;Lcom/ironsource/adqualitysdk/sdk/i/ih;)V
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_1c2 .. :try_end_1c5} :catch_1c6

    return-void

    :catch_1c6
    move-exception p3

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/iq$c;

    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/iq$c;->e:Lcom/ironsource/adqualitysdk/sdk/i/iq;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/iq;->d(Lcom/ironsource/adqualitysdk/sdk/i/iq;)Lcom/ironsource/adqualitysdk/sdk/i/ir;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ir;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/iu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->ﻐ()Z

    move-result v1

    if-nez v1, :cond_1dd

    invoke-direct {p0, p2, p4}, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->c(Lcom/ironsource/adqualitysdk/sdk/i/iw;Lcom/ironsource/adqualitysdk/sdk/i/ih;)V

    return-void

    :cond_1dd
    new-array p2, v4, [I

    fill-array-data p2, :array_218

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result p4

    sub-int/2addr v0, p4

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->d([II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_224

    invoke-static {v3, v3}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x21

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->d([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p3, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void

    nop

    :array_218
    .array-data 4
        0x3292657a
        0x26abd9c3
        0x15628ca8
        0x60725b5
    .end array-data

    :array_224
    .array-data 4
        -0x1e722dca
        0x2772f92e
        0x1452d41d
        0xabd1f79
        0x648aaac8
        0x6df6cded
        0x7894c33f
        -0x74cd9e47
        -0x4f30e9d0
        0x3ccb21b8
        0x45cef354
        0x19287262
        0x4994322d
        0x55461ada
        0x258917c2
        -0x5f02f5c7
        0x2f47e29d
        -0x2f5c83b9
    .end array-data
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->d:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->c:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eq v0, v2, :cond_2a

    :try_start_13
    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/String;

    aget-object v2, p1, v2

    check-cast v2, Lcom/ironsource/adqualitysdk/sdk/i/iw;

    aget-object v4, p1, v1

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x3

    aget-object p1, p1, v5

    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ih;

    :goto_24
    invoke-direct {p0, v0, v2, v4, p1}, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->e(Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/iw;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ih;)V

    goto :goto_6a

    :catch_28
    move-exception p1

    goto :goto_3c

    :cond_2a
    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/String;

    aget-object v2, p1, v3

    check-cast v2, Lcom/ironsource/adqualitysdk/sdk/i/iw;

    aget-object v4, p1, v1

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x5

    aget-object p1, p1, v5

    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ih;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_3b} :catch_28

    goto :goto_24

    :goto_3c
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_84

    invoke-static {v3}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-string v2, "\u1e06\u72f6\uc7bf\u5879\uad2d\u0180\u928e\ue757\u780f\uccc8\u21ec\ub2a0\u0770\u9878\uecd7\u418b\ud25f\u2701\ubbd8\u0ca6\u61a9\uf262\u4736\udbcf\u2ccb\u815e\u1210\u66d3\ufbe8\u4cbc\ua174\u321e\u86c1"

    cmp-long v8, v4, v6

    add-int/lit8 v8, v8, 0x8

    invoke-static {v0, v8}, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->d([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    add-int/lit16 v4, v4, 0x6cc7

    invoke-static {v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_6a
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->d:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->c:I

    rem-int/2addr p1, v1

    const/16 v0, 0x48

    if-eqz p1, :cond_7a

    const/16 p1, 0x14

    goto :goto_7c

    :cond_7a
    const/16 p1, 0x48

    :goto_7c
    const/4 v1, 0x0

    if-ne p1, v0, :cond_80

    return-object v1

    :cond_80
    :try_start_80
    throw v1
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_81

    :catchall_81
    move-exception p1

    throw p1

    nop

    :array_84
    .array-data 4
        0x3292657a
        0x26abd9c3
        0x15628ca8
        0x60725b5
    .end array-data
.end method
