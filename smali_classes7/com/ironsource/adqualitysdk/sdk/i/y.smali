###### Class com.json.adqualitysdk.sdk.i.y (com.ironsource.adqualitysdk.sdk.i.y)
.class public abstract Lcom/ironsource/adqualitysdk/sdk/i/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ironsource/adqualitysdk/sdk/i/p<",
        "TK;TT;>;"
    }
.end annotation


# static fields
.field private static a:[C = null

.field private static b:I = 0xe0

.field private static c:Z = true

.field private static d:Z = true

.field private static e:I = 0x0

.field private static f:I = 0x0

.field private static g:I = 0x0

.field private static h:[B = null

.field private static i:[S = null

.field private static j:I = 0x0

.field private static k:I = 0x1


# instance fields
.field private l:Lcom/ironsource/adqualitysdk/sdk/i/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ironsource/adqualitysdk/sdk/i/p<",
            "TK;TT;>;"
        }
    .end annotation
.end field

.field private m:Lcom/ironsource/adqualitysdk/sdk/i/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ironsource/adqualitysdk/sdk/i/p<",
            "TK;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x17

    new-array v0, v0, [C

    fill-array-data v0, :array_22

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/y;->a:[C

    const v0, 0x20abc3f2

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/y;->e:I

    const/16 v0, 0x71

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/y;->f:I

    const v0, 0x672920fb

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/y;->g:I

    const/16 v0, 0x4f

    new-array v0, v0, [B

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/y;->h:[B

    return-void

    nop

    :array_22
    .array-data 2
        0x121s
        0x144s
        0x100s
        0x149s
        0x153s
        0x150s
        0x14cs
        0x141s
        0x159s
        0x145s
        0x11as
        0x158s
        0x154s
        0x152s
        0x143s
        0x14bs
        0x156s
        0x157s
        0x148s
        0x128s
        0x14es
        0x130s
        0x14fs
    .end array-data

    nop

    :array_3e
    .array-data 1
        0x6ft
        -0x5ft
        -0x1et
        0x1bt
        0x56t
        0x55t
        -0x5ct
        -0x12t
        0x14t
        0x57t
        0x52t
        -0x60t
        0x52t
        0x55t
        -0x5ft
        -0x15t
        0x14t
        -0x75t
        -0x54t
        -0x5ft
        0x57t
        0x50t
        0x5at
        0x10t
        -0x11t
        0x70t
        -0x48t
        0x78t
        0x77t
        -0x6ft
        0x6ft
        0x3bt
        -0x3dt
        0x7et
        0x72t
        0x18t
        -0x28t
        -0x29t
        0x31t
        -0x31t
        -0x65t
        0x6dt
        0x20t
        0x25t
        -0x21t
        0x20t
        -0x14t
        0x66t
        -0x68t
        -0x1dt
        -0x20t
        0x15t
        0x56t
        -0x50t
        0x1at
        0x15t
        -0xdt
        0xdt
        0x59t
        -0x5bt
        -0x1bt
        0x19t
        -0x17t
        0xft
        -0x20t
        -0x11t
        0x13t
        0x5ft
        -0x4et
        0x1ft
        -0x1ft
        0x1ct
        0x31t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/y$a;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/y$a;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/y;->m:Lcom/ironsource/adqualitysdk/sdk/i/p;

    return-void
.end method

.method private static a([IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    if-eqz p3, :cond_8

    const-string v0, "ISO-8859-1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    :cond_8
    check-cast p3, [B

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    :cond_10
    check-cast p2, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_15
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/y;->a:[C

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/y;->b:I

    sget-boolean v3, Lcom/ironsource/adqualitysdk/sdk/i/y;->d:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_49

    array-length p0, p3

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    new-array p0, p0, [C

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    :goto_25
    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    if-ge p2, v3, :cond_42

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sub-int/2addr v3, v4

    aget-byte v3, p3, v3

    add-int/2addr v3, p1

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p0, p2

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    goto :goto_25

    :cond_42
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0

    return-object p1

    :cond_49
    sget-boolean p3, Lcom/ironsource/adqualitysdk/sdk/i/y;->c:Z

    if-eqz p3, :cond_78

    array-length p0, p2

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

    aget-char v3, p2, v3

    sub-int/2addr v3, p1

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
    array-length p2, p0

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    new-array p2, p2, [C

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

    sub-int/2addr v3, p1

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p2, p3

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    goto :goto_7f

    :cond_9c
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_15 .. :try_end_a2} :catchall_a3

    return-object p0

    :catchall_a3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private b(Lorg/json/JSONObject;Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "TT;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/y;->k:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/y;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_43

    :try_start_f
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﾒ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/16 v4, 0x36

    if-nez v0, :cond_1c

    const/16 v0, 0x3a

    goto :goto_1e

    :cond_1c
    const/16 v0, 0x36

    :goto_1e
    if-eq v0, v4, :cond_29

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﾒ:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/y;->ﻐ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_29
    sget-object p2, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﱟ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_33

    const/4 p2, 0x1

    goto :goto_34

    :cond_33
    const/4 p2, 0x0

    :goto_34
    if-eq p2, v1, :cond_37

    goto :goto_97

    :cond_37
    sget-object p2, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﱟ:Ljava/lang/String;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jt;->ﻐ()J

    move-result-wide v4

    invoke-virtual {p1, p2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_97

    :catch_41
    move-exception p2

    goto :goto_4b

    :cond_43
    sget-object p2, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﾒ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_48} :catch_41

    :try_start_48
    throw v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception p1

    throw p1

    :goto_4b
    invoke-static {v3, v3}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-string v0, "\u0089\u008c\u0097\u008e\u0096\u008e\u008a\u0087\u0082\u0095\u0088\u0094\u0082\u0081"

    const-string v8, ""

    cmp-long v9, v4, v6

    rsub-int/lit8 v4, v9, 0x7e

    invoke-static {v2, v4, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/y;->a([IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v4

    rsub-int/lit8 v4, v4, -0x58

    const v5, -0x672920b5

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v9

    cmp-long v11, v9, v6

    sub-int/2addr v5, v11

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    add-int/lit8 v9, v9, 0x1c

    int-to-byte v9, v9

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v10

    cmp-long v12, v10, v6

    sub-int/2addr v1, v12

    int-to-short v1, v1

    const v6, -0x20abc3c2

    const/16 v7, 0x30

    invoke-static {v8, v7, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v3

    sub-int/2addr v6, v3

    invoke-static {v4, v5, v9, v1, v6}, Lcom/ironsource/adqualitysdk/sdk/i/y;->d(IIBSI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_97
    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/y;->k:I

    add-int/lit8 p2, p2, 0xd

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/y;->j:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_a4

    return-object p1

    :cond_a4
    :try_start_a4
    throw v2
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a5

    :catchall_a5
    move-exception p1

    throw p1
.end method

.method private c()Lcom/ironsource/adqualitysdk/sdk/i/p;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ironsource/adqualitysdk/sdk/i/p<",
            "TK;TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/y;->l:Lcom/ironsource/adqualitysdk/sdk/i/p;

    const/4 v1, 0x7

    if-eqz v0, :cond_8

    const/16 v2, 0x50

    goto :goto_9

    :cond_8
    const/4 v2, 0x7

    :goto_9
    if-eq v2, v1, :cond_16

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/y;->k:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/y;->j:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :cond_16
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/y;->m:Lcom/ironsource/adqualitysdk/sdk/i/p;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/y;->j:I

    add-int/lit8 v1, v1, 0x45

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/y;->k:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x5a

    if-nez v1, :cond_29

    const/16 v1, 0x5a

    goto :goto_2b

    :cond_29
    const/16 v1, 0x3e

    :goto_2b
    if-eq v1, v2, :cond_2e

    return-object v0

    :cond_2e
    const/4 v0, 0x0

    :try_start_2f
    throw v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v0

    throw v0
.end method

.method private static d(IIBSI)Ljava/lang/String;
    .registers 12

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/y;->f:I

    add-int/2addr p0, v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p0, v3, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    if-eqz v3, :cond_2a

    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/y;->h:[B

    if-eqz p0, :cond_21

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/y;->e:I

    add-int/2addr v6, p4

    aget-byte p0, p0, v6

    add-int/2addr p0, v2

    int-to-byte p0, p0

    goto :goto_2a

    :cond_21
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/y;->i:[S

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/y;->e:I

    add-int/2addr v6, p4

    aget-short p0, p0, v6

    add-int/2addr p0, v2

    int-to-short p0, p0

    :cond_2a
    :goto_2a
    if-lez p0, :cond_89

    add-int/2addr p4, p0

    add-int/lit8 p4, p4, -0x2

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/y;->e:I

    add-int/2addr p4, v2

    if-eqz v3, :cond_35

    const/4 v4, 0x1

    :cond_35
    add-int/2addr p4, v4

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    sput-byte p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ｋ:B

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/y;->g:I

    add-int/2addr p1, p2

    int-to-char p1, p1

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻛ:C

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾒ:I

    :goto_49
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾒ:I

    if-ge p1, p0, :cond_89

    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/y;->h:[B

    if-eqz p1, :cond_65

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    add-int/lit8 p4, p2, -0x1

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    aget-byte p1, p1, p2

    sget-char p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻛ:C

    add-int/2addr p1, p3

    int-to-byte p1, p1

    sget-byte p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ｋ:B

    xor-int/2addr p1, p4

    add-int/2addr p2, p1

    int-to-char p1, p2

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    goto :goto_7a

    :cond_65
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/y;->i:[S

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    add-int/lit8 p4, p2, -0x1

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    aget-short p1, p1, p2

    sget-char p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻛ:C

    add-int/2addr p1, p3

    int-to-short p1, p1

    sget-byte p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ｋ:B

    xor-int/2addr p1, p4

    add-int/2addr p2, p1

    int-to-char p1, p2

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    :goto_7a
    sget-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻛ:C

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾒ:I

    add-int/2addr p1, v5

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾒ:I

    goto :goto_49

    :cond_89
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_3 .. :try_end_8e} :catchall_8f

    return-object p0

    :catchall_8f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private e(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 13

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x7f

    const/4 v2, 0x0

    const-string v3, "\u0089\u008c\u0097\u008e\u0096\u008e\u008a\u0087\u0082\u0095\u0088\u0094\u0082\u0081"

    invoke-static {v2, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/y;->a([IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, -0x6e

    const v5, -0x672920da

    const/16 v6, 0x30

    const-string v7, ""

    invoke-static {v7, v6, v0, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v7}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x6a

    int-to-byte v5, v5

    invoke-static {v0, v0}, Landroid/view/View;->getDefaultSize(II)I

    move-result v7

    int-to-short v7, v7

    const v8, -0x20abc3c3

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    add-int/2addr v9, v8

    invoke-static {v4, v6, v5, v7, v9}, Lcom/ironsource/adqualitysdk/sdk/i/y;->d(IIBSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/y;->j:I

    add-int/lit8 p1, p1, 0x6f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/y;->k:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_6c

    const/4 v0, 0x1

    :cond_6c
    if-nez v0, :cond_6f

    return-void

    :cond_6f
    :try_start_6f
    throw v2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_70

    :catchall_70
    move-exception p1

    throw p1
.end method


# virtual methods
.method protected abstract ﻐ(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public ﻐ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "TK;TT;)V"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/y;->k:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/y;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x58

    if-eqz v0, :cond_11

    const/16 v0, 0x46

    goto :goto_13

    :cond_11
    const/16 v0, 0x58

    :goto_13
    const-string v2, "\u008b\u0088\u008e\u008d\u008c\u008a\u0083\u0082\u008a\u0089\u0088\u0087\u0086\u0085\u0084\u0082\u0083\u0082\u0081"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_38

    invoke-direct {p0, p1, p3}, Lcom/ironsource/adqualitysdk/sdk/i/y;->b(Lorg/json/JSONObject;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const/16 v0, 0x4f

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v1

    div-int/lit8 v1, v1, 0x2b

    shl-int/2addr v0, v1

    :goto_25
    invoke-static {v3, v0, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/y;->a([IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/y;->e(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/y;->c()Lcom/ironsource/adqualitysdk/sdk/i/p;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/p;->ﻐ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_45

    :cond_38
    invoke-direct {p0, p1, p3}, Lcom/ironsource/adqualitysdk/sdk/i/y;->b(Lorg/json/JSONObject;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x7f

    goto :goto_25

    :goto_45
    return-void
.end method

.method public final ﻐ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "TK;",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/y;->k:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/y;->j:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, p4}, Lcom/ironsource/adqualitysdk/sdk/i/y;->b(Lorg/json/JSONObject;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    rsub-int/lit8 v0, v0, -0x68

    const v1, -0x672920a5

    const/16 v2, 0x30

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/graphics/PointF;->length(FF)F

    move-result v5

    cmpl-float v5, v5, v2

    add-int/lit8 v5, v5, 0x7e

    int-to-byte v5, v5

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v6

    cmpl-float v2, v6, v2

    int-to-short v2, v2

    const v6, -0x20abc3d8

    invoke-static {v3}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v3

    add-int/2addr v3, v6

    invoke-static {v0, v1, v5, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/y;->d(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/y;->e(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/y;->c()Lcom/ironsource/adqualitysdk/sdk/i/p;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ironsource/adqualitysdk/sdk/i/p;->ﻐ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/y;->k:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/y;->j:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x1

    if-eqz p1, :cond_5c

    const/4 v4, 0x1

    :cond_5c
    if-eq v4, p2, :cond_5f

    return-void

    :cond_5f
    const/4 p1, 0x0

    :try_start_60
    throw p1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_61

    :catchall_61
    move-exception p1

    throw p1
.end method

.method public final ﻛ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "TK;TT;)V"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/y;->j:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/y;->k:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const-string v3, "\u008b\u0082\u008a\u0093\u008f\u0088\u008d\u008d\u0088\u0083\u0092\u008a\u0084\u0091"

    const-string v4, ""

    const/4 v5, 0x0

    if-eqz v0, :cond_24

    invoke-direct {p0, p1, p3}, Lcom/ironsource/adqualitysdk/sdk/i/y;->b(Lorg/json/JSONObject;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const/16 v0, 0x5e

    invoke-static {v4, v4, v2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v1

    rem-int/2addr v0, v1

    goto :goto_2e

    :cond_24
    invoke-direct {p0, p1, p3}, Lcom/ironsource/adqualitysdk/sdk/i/y;->b(Lorg/json/JSONObject;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v4, v4, v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    add-int/lit8 v0, v0, 0x7f

    :goto_2e
    invoke-static {v5, v0, v5, v3}, Lcom/ironsource/adqualitysdk/sdk/i/y;->a([IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/y;->e(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/y;->c()Lcom/ironsource/adqualitysdk/sdk/i/p;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/p;->ﻛ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public ｋ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "TK;TT;)V"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/y;->k:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/y;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const-string v3, "\u008b\u0082\u008a\u0089\u0088\u0087\u0086\u0085\u0084\u0082\u0083\u0082\u0081"

    const/4 v4, 0x0

    if-eq v0, v1, :cond_33

    invoke-direct {p0, p1, p3}, Lcom/ironsource/adqualitysdk/sdk/i/y;->b(Lorg/json/JSONObject;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x7e

    :goto_20
    invoke-static {v4, v0, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/y;->a([IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/y;->e(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/y;->c()Lcom/ironsource/adqualitysdk/sdk/i/p;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/p;->ｋ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3f

    :cond_33
    invoke-direct {p0, p1, p3}, Lcom/ironsource/adqualitysdk/sdk/i/y;->b(Lorg/json/JSONObject;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const/16 v0, 0xa

    invoke-static {v2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    shl-int/2addr v0, v1

    goto :goto_20

    :goto_3f
    return-void
.end method

.method public final ﾇ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "TK;TT;)V"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/y;->j:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/y;->k:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, p3}, Lcom/ironsource/adqualitysdk/sdk/i/y;->b(Lorg/json/JSONObject;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    rsub-int/lit8 v0, v0, -0x64

    const v1, -0x672920b8

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    add-int/2addr v2, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    rsub-int/lit8 v1, v1, -0x22

    int-to-byte v1, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    int-to-short v3, v3

    const v4, -0x20abc3cf

    const-string v5, ""

    const/4 v6, 0x0

    invoke-static {v5, v5, v6, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v0, v2, v1, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/y;->d(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/y;->e(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/y;->c()Lcom/ironsource/adqualitysdk/sdk/i/p;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/p;->ﾇ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/y;->k:I

    add-int/lit8 p1, p1, 0x57

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/y;->j:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final ﾇ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "TK;",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/y;->k:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/y;->j:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, p4}, Lcom/ironsource/adqualitysdk/sdk/i/y;->b(Lorg/json/JSONObject;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x0

    const-string v2, "\u008b\u0082\u008a\u0090\u008f\u0084\u0087\u008f\u0083\u0082\u0081"

    invoke-static {v1, v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/y;->a([IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/y;->e(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/y;->c()Lcom/ironsource/adqualitysdk/sdk/i/p;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ironsource/adqualitysdk/sdk/i/p;->ﾇ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/y;->j:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/y;->k:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0x22

    if-nez p1, :cond_3b

    const/16 p1, 0x22

    goto :goto_3d

    :cond_3b
    const/16 p1, 0x2e

    :goto_3d
    if-eq p1, p2, :cond_40

    return-void

    :cond_40
    :try_start_40
    throw v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception p1

    throw p1
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/p;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/p<",
            "TK;TT;>;)V"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/y;->k:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/y;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x7

    if-eqz v0, :cond_10

    const/16 v0, 0x36

    goto :goto_11

    :cond_10
    const/4 v0, 0x7

    :goto_11
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/y;->l:Lcom/ironsource/adqualitysdk/sdk/i/p;

    if-ne v0, v1, :cond_16

    return-void

    :cond_16
    const/4 p1, 0x0

    :try_start_17
    throw p1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception p1

    throw p1
.end method

.method public final ﾒ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "TK;TT;)V"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/y;->j:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/y;->k:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, p3}, Lcom/ironsource/adqualitysdk/sdk/i/y;->b(Lorg/json/JSONObject;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-string v5, ""

    cmp-long v6, v1, v3

    rsub-int/lit8 v1, v6, -0x68

    const v2, -0x672920bb

    const/16 v6, 0x30

    invoke-static {v5, v6, v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v0

    sub-int/2addr v2, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    cmp-long v0, v6, v3

    add-int/lit8 v0, v0, 0x52

    int-to-byte v0, v0

    invoke-static {v5, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    int-to-short v3, v3

    const v4, -0x20abc3e1

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    add-int/2addr v5, v4

    invoke-static {v1, v2, v0, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/y;->d(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/y;->e(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/y;->c()Lcom/ironsource/adqualitysdk/sdk/i/p;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/p;->ﾒ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/y;->k:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/y;->j:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final ﾒ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "TK;",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/y;->k:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/y;->j:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, p4}, Lcom/ironsource/adqualitysdk/sdk/i/y;->b(Lorg/json/JSONObject;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    rsub-int/lit8 v1, v1, -0x5e

    const v2, -0x672920bb

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v3

    const/4 v4, 0x0

    const-string v5, ""

    cmpl-float v3, v3, v4

    add-int/2addr v3, v2

    const/16 v2, 0x30

    invoke-static {v5, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    rsub-int/lit8 v2, v2, -0x59

    int-to-byte v2, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v4

    shr-int/lit8 v4, v4, 0x18

    int-to-short v4, v4

    const v5, -0x20abc3f2

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/2addr v6, v5

    invoke-static {v1, v3, v2, v4, v6}, Lcom/ironsource/adqualitysdk/sdk/i/y;->d(IIBSI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/y;->e(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/y;->c()Lcom/ironsource/adqualitysdk/sdk/i/p;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/ironsource/adqualitysdk/sdk/i/p;->ﾒ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/y;->j:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/y;->k:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_5c

    const/4 p1, 0x1

    goto :goto_5d

    :cond_5c
    const/4 p1, 0x0

    :goto_5d
    if-eqz p1, :cond_65

    const/16 p1, 0x59

    :try_start_61
    div-int/2addr p1, v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_63

    return-void

    :catchall_63
    move-exception p1

    throw p1

    :cond_65
    return-void
.end method
