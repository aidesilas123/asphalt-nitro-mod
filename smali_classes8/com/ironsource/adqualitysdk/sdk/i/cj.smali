###### Class com.json.adqualitysdk.sdk.i.cj (com.ironsource.adqualitysdk.sdk.i.cj)
.class public Lcom/ironsource/adqualitysdk/sdk/i/cj;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:[C = null

.field private static b:C = '\u0007'

.field private static c:C = '\u0000'

.field private static d:C = '\u0000'

.field private static e:C = '\u0000'

.field private static f:C = '\u0000'

.field private static g:I = 0x0

.field private static h:I = 0x1


# instance fields
.field private i:Lcom/ironsource/adqualitysdk/sdk/i/ho;

.field private j:Lcom/ironsource/adqualitysdk/sdk/i/dr;

.field private k:Lcom/ironsource/adqualitysdk/sdk/i/cz;

.field private l:Lcom/ironsource/adqualitysdk/sdk/i/az;

.field private m:Lcom/ironsource/adqualitysdk/sdk/i/ch;

.field private n:Lcom/ironsource/adqualitysdk/sdk/i/je;

.field private o:Lcom/ironsource/adqualitysdk/sdk/i/jg;

.field private p:Lcom/ironsource/adqualitysdk/sdk/i/ci;

.field private q:Lorg/json/JSONObject;

.field private r:Lcom/ironsource/adqualitysdk/sdk/i/u;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x31

    new-array v0, v0, [C

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->a:[C

    const/16 v0, 0x7710

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->e:C

    const/16 v0, 0x1dcb

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->d:C

    const v0, 0xb2ee

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->f:C

    const v0, 0xb4d0

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->c:C

    return-void

    :array_1c
    .array-data 2
        0x52s
        0x65s
        0x6ds
        0x6fs
        0x74s
        0x41s
        0x64s
        0x4cs
        0x69s
        0x73s
        0x6es
        0x72s
        0x2es
        0x61s
        0x6cs
        0x7as
        0x45s
        0x20s
        0x63s
        0x67s
        0x76s
        0x6as
        0x3as
        0x79s
        0x77s
        0x70s
        0x46s
        0x75s
        0x4ds
        0x68s
        0x66s
        0x4es
        0x50s
        0x78s
        0x4as
        0x2ds
        0x62s
        0x53s
        0x5fs
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x5bs
        0x5cs
        0x5ds
    .end array-data
.end method

.method protected constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ci;Lcom/ironsource/adqualitysdk/sdk/i/cz;Lcom/ironsource/adqualitysdk/sdk/i/az;Lcom/ironsource/adqualitysdk/sdk/i/ho;Lcom/ironsource/adqualitysdk/sdk/i/dr;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->n:Lcom/ironsource/adqualitysdk/sdk/i/je;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->i:Lcom/ironsource/adqualitysdk/sdk/i/ho;

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/dr;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v1, p5, v2}, Lcom/ironsource/adqualitysdk/sdk/i/dr;-><init>(Ljava/util/Map;Lcom/ironsource/adqualitysdk/sdk/i/dr;Z)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->j:Lcom/ironsource/adqualitysdk/sdk/i/dr;

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/ho;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ho;->ｋ()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dr;->ｋ(Ljava/util/List;)V

    invoke-virtual {p4}, Lcom/ironsource/adqualitysdk/sdk/i/ho;->ﻐ()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4, p0}, Lcom/ironsource/adqualitysdk/sdk/i/dr;->ﾒ(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->k:Lcom/ironsource/adqualitysdk/sdk/i/cz;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->l:Lcom/ironsource/adqualitysdk/sdk/i/az;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->a()Lcom/ironsource/adqualitysdk/sdk/i/ch;

    move-result-object p2

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->m:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->p:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/u;

    invoke-direct {p1}, Lcom/ironsource/adqualitysdk/sdk/i/u;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->r:Lcom/ironsource/adqualitysdk/sdk/i/u;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide p1

    const-wide/16 p3, 0x0

    const-string p5, "\u0001\u0002\u0003\u0004\u0005\u0002\u0006\u0000\u0008\t\u000b\u0002\u0003\u0008\u0004\u0008\r\t\u000b\t\u0001\u000b\u0007\u0014\u000f\u0016\u0092"

    cmp-long v0, p1, p3

    add-int/lit8 v0, v0, 0x2c

    int-to-byte p1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result p2

    shr-int/lit8 p2, p2, 0x8

    add-int/lit8 p2, p2, 0x1b

    invoke-static {p1, p5, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->n(Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->d()V

    return-void
.end method

.method private A(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x5b

    if-nez v0, :cond_11

    const/16 v0, 0x5b

    goto :goto_13

    :cond_11
    const/16 v0, 0x2f

    :goto_13
    const-wide/16 v2, 0x0

    const-string v4, "\u000b\u0013\u0014\u0007\u0099\u0099"

    if-eq v0, v1, :cond_3f

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/az;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0x26

    int-to-byte v1, v1

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x6

    invoke-static {v1, v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->ﻐ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/az;->ﾒ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_71

    goto :goto_6c

    :cond_3f
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/az;

    move-result-object v0

    const/16 v1, 0x53

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    shl-int/lit8 v5, v5, 0x68

    ushr-int/2addr v1, v5

    int-to-byte v1, v1

    const/16 v5, 0x6a

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v2

    rem-int/2addr v5, v2

    invoke-static {v1, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->ﻐ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/az;->ﾒ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_69

    const/4 v1, 0x0

    goto :goto_6a

    :cond_69
    const/4 v1, 0x1

    :goto_6a
    if-eq v1, v0, :cond_71

    :goto_6c
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_71
    const/4 p1, 0x0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1
.end method

.method private static B(Ljava/lang/String;I)Ljava/lang/String;
    .registers 13

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    array-length v1, p0

    new-array v1, v1, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    const/4 v3, 0x2

    new-array v3, v3, [C

    :goto_14
    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    array-length v5, p0

    if-ge v4, v5, :cond_76

    aget-char v5, p0, v4

    aput-char v5, v3, v2

    add-int/lit8 v4, v4, 0x1

    aget-char v4, p0, v4

    const/4 v5, 0x1

    aput-char v4, v3, v5

    const v4, 0xe370

    const/4 v6, 0x0

    :goto_28
    const/16 v7, 0x10

    if-ge v6, v7, :cond_65

    aget-char v7, v3, v5

    aget-char v8, v3, v2

    add-int/2addr v8, v4

    aget-char v9, v3, v2

    shl-int/lit8 v9, v9, 0x4

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/cj;->e:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v2

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/cj;->f:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    sub-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v5

    aget-char v7, v3, v2

    aget-char v8, v3, v5

    add-int/2addr v8, v4

    aget-char v9, v3, v5

    shl-int/lit8 v9, v9, 0x4

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/cj;->c:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v5

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/cj;->d:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    sub-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    const v7, 0x9e37

    sub-int/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_65
    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    aget-char v6, v3, v2

    aput-char v6, v1, v4

    add-int/lit8 v6, v4, 0x1

    aget-char v5, v3, v5

    aput-char v5, v1, v6

    add-int/lit8 v4, v4, 0x2

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    goto :goto_14

    :cond_76
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_b .. :try_end_7c} :catchall_7d

    return-object p0

    :catchall_7d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private C(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 12

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x7c

    int-to-byte v0, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v1

    shr-int/lit8 v1, v1, 0x18

    rsub-int/lit8 v1, v1, 0x8

    const-string v2, "\u0017\u0007\'\u0012\u0002\u001d\u000c\u001d"

    invoke-static {v0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    add-int/lit8 v1, v1, 0x7c

    int-to-byte v1, v1

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View;->resolveSize(II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x8

    invoke-static {v1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/graphics/PointF;->length(FF)F

    move-result v2

    const/16 v4, 0x3d

    const-string v5, "\u9c6b\ud87c\u89a9\u2c2b\ue41f\ue7ac\ud6cc\u72e8"

    const/4 v6, 0x2

    cmpl-float v1, v2, v1

    add-int/lit8 v1, v1, 0x8

    invoke-static {v5, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->B(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    const/16 v1, 0x3d

    goto :goto_5a

    :cond_59
    const/4 v1, 0x2

    :goto_5a
    const/4 v2, 0x1

    if-eq v1, v4, :cond_5f

    goto/16 :goto_ec

    :cond_5f
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/2addr v1, v6

    if-eqz v1, :cond_76

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h()Lcom/ironsource/adqualitysdk/sdk/i/dj;

    move-result-object v1

    const/16 v4, 0x38

    :try_start_70
    div-int/2addr v4, v3
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_74

    if-eqz v1, :cond_ec

    goto :goto_7c

    :catchall_74
    move-exception p1

    throw p1

    :cond_76
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h()Lcom/ironsource/adqualitysdk/sdk/i/dj;

    move-result-object v1

    if-eqz v1, :cond_ec

    :goto_7c
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/dj;->ｋ()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c1

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x8

    invoke-static {v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->B(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :try_start_99
    const-string v4, "\uea36\u13f2\u8195\u72a0\u24e2\u30be\u89a9\u2c2b\ue41f\ue7ac"

    invoke-static {v3, v3}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0xa

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->B(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/dj;->ｋ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_bf
    .catch Lorg/json/JSONException; {:try_start_99 .. :try_end_bf} :catch_c0

    goto :goto_c1

    :catch_c0
    nop

    :cond_c1
    :goto_c1
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/dj;->ﻛ()Z

    move-result v0

    if-eqz v0, :cond_c9

    const/4 v0, 0x0

    goto :goto_ca

    :cond_c9
    const/4 v0, 0x1

    :goto_ca
    if-eq v0, v2, :cond_ec

    :try_start_cc
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x4a

    int-to-byte v0, v0

    const-string v1, "\u0017\r\u0002\u000f \u0005\u000c\u0007\u001e\r"

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    add-int/lit8 v9, v9, 0x9

    invoke-static {v0, v1, v9}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_ec
    .catch Lorg/json/JSONException; {:try_start_cc .. :try_end_ec} :catch_ec

    :catch_ec
    :cond_ec
    :goto_ec
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_f0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11a

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v1, v1, 0x67

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/2addr v1, v6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->G(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10d

    const/4 v1, 0x1

    goto :goto_10e

    :cond_10d
    const/4 v1, 0x0

    :goto_10e
    if-eqz v1, :cond_f0

    const/4 p1, 0x0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/2addr v0, v6

    :cond_11a
    return-object p1
.end method

.method private D(Lcom/ironsource/adqualitysdk/sdk/i/dg;)V
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    const/4 v3, 0x0

    if-eqz v0, :cond_9b

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dg;->ｋ()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->C(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const/16 v4, 0x9

    if-eqz v0, :cond_23

    const/16 v5, 0x42

    goto :goto_25

    :cond_23
    const/16 v5, 0x9

    :goto_25
    if-eq v5, v4, :cond_9a

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dg;->ﾒ()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->j(Z)Lcom/ironsource/adqualitysdk/sdk/i/s;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->j(Z)Lcom/ironsource/adqualitysdk/sdk/i/s;

    move-result-object v4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_97

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v5, v5, 0x37

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v5, v5, 0x2

    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﾒ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/dn;

    move-result-object v5

    if-eqz v5, :cond_52

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$b;

    invoke-direct {p1, p0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/cj$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cj;Lcom/ironsource/adqualitysdk/sdk/i/dn;)V

    invoke-direct {p0, v0, v4, v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->N(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/s;Lcom/ironsource/adqualitysdk/sdk/i/s;Lcom/ironsource/adqualitysdk/sdk/i/im;)V

    return-void

    :cond_52
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int/lit8 v4, v4, 0x25

    int-to-byte v4, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int/lit8 v5, v5, 0x16

    const-string v6, "\u001d\u0000\u0001 \u0004\u0000\u0014\u0003\u0002\u001d\t\u000b\u000b\u0001\n\u0001\u0011\u0018\u001f\u0002\n\u0012"

    invoke-static {v4, v6, v5}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0xa

    const-string v2, "\u997d\u5653\ue139\ua763\u5faf\ub702\u1880\u2953\u3895\ua6b7"

    invoke-static {v2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->B(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_97
    invoke-direct {p0, v0, v4, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->p(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/s;Lcom/ironsource/adqualitysdk/sdk/i/s;)V

    :cond_9a
    return-void

    :cond_9b
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dg;->ｋ()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->C(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    :try_start_a2
    throw v3
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a3

    :catchall_a3
    move-exception p1

    throw p1
.end method

.method private E(Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/dg;)V
    .registers 10

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/dg;->ｋ()Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->C(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    const/16 v0, 0x55

    if-eqz p2, :cond_f

    const/16 v1, 0x2c

    goto :goto_11

    :cond_f
    const/16 v1, 0x55

    :goto_11
    if-eq v1, v0, :cond_8a

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "\u6fa2\u49a4\u960c\u09cd\ud385\ube4f\u2f71\u2f82\u71ab\u8b03\u061a\u3fb9\u329f\ub866\ua2b6\u02ef\ua965\ua1cc"

    if-eqz v0, :cond_38

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x33

    add-int/lit8 v0, v0, 0x39

    invoke-static {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->B(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8a

    goto :goto_4e

    :cond_38
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    shr-int/lit8 v0, v0, 0x16

    add-int/lit8 v0, v0, 0x12

    invoke-static {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->B(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8a

    :goto_4e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/16 v0, 0x60

    cmp-long v6, v2, v4

    rsub-int/lit8 v2, v6, 0x13

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->B(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->ｋ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/jj$b;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->l(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_74

    const/16 p2, 0x60

    goto :goto_76

    :cond_74
    const/16 p2, 0x2d

    :goto_76
    if-eq p2, v0, :cond_79

    goto :goto_8a

    :cond_79
    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 p2, p2, 0x75

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 p2, p2, 0x2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jj;->ｋ()Lcom/ironsource/adqualitysdk/sdk/i/jj;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jj;->ﾒ(Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/jj$b;)V

    :cond_8a
    :goto_8a
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_9d

    const/16 p1, 0x14

    :try_start_98
    div-int/lit8 p1, p1, 0x0
    :try_end_9a
    .catchall {:try_start_98 .. :try_end_9a} :catchall_9b

    return-void

    :catchall_9b
    move-exception p1

    throw p1

    :cond_9d
    return-void
.end method

.method private F(Ljava/lang/String;ZZLjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->i:Lcom/ironsource/adqualitysdk/sdk/i/ho;

    invoke-virtual {v2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ho;->ﾇ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/dk;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_bc

    if-eqz v2, :cond_bb

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v3, v3, 0x27

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v3, v3, 0x2

    :try_start_15
    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->i:Lcom/ironsource/adqualitysdk/sdk/i/ho;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/dk;->ﻐ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ho;->ﾒ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/dn;

    move-result-object v3
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_bc

    const/4 v4, 0x0

    if-eqz v3, :cond_73

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v5, v5, 0x7b

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v5, v5, 0x2

    :try_start_2c
    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/dk;->ｋ()Z

    move-result v5
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_bc

    if-ne p2, v5, :cond_bb

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 p2, p2, 0x49

    rem-int/lit16 v5, p2, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 p2, p2, 0x2

    const/4 v5, 0x1

    if-eqz p2, :cond_41

    const/4 p2, 0x0

    goto :goto_42

    :cond_41
    const/4 p2, 0x1

    :goto_42
    if-eqz p2, :cond_6f

    :try_start_44
    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/dk;->ﻛ()Z

    move-result p2

    if-ne p3, p2, :cond_4b

    const/4 v5, 0x0

    :cond_4b
    if-eqz v5, :cond_4e

    goto :goto_bb

    :cond_4e
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/r;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﾇ()Z

    move-result p2
    :try_end_56
    .catchall {:try_start_44 .. :try_end_56} :catchall_bc

    if-eqz p2, :cond_69

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 p2, p2, 0x6f

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 p2, p2, 0x2

    :try_start_62
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ｋ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->j:Lcom/ironsource/adqualitysdk/sdk/i/dr;

    invoke-virtual {v3, p2, p0, p4}, Lcom/ironsource/adqualitysdk/sdk/i/dn;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    return-void

    :cond_6f
    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/dk;->ﻛ()Z

    throw v4

    :cond_73
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result p4

    shr-int/lit8 p4, p4, 0x10

    rsub-int/lit8 p4, p4, 0x25

    int-to-byte p4, p4

    const-string v3, "\u001d\u0000\u0001 \u0004\u0000\u0014\u0003\u0002\u001d\t\u000b\u000b\u0001\n\u0001\u0011\u0018\u001f\u0002\n\u0012"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    add-int/lit8 v5, v5, 0x16

    invoke-static {p4, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/dk;->ﻐ()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\u997d\u5653\ue139\ua763\u5faf\ub702\u1880\u2953\u3895\ua6b7"

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0xa

    invoke-static {p4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->B(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_bb
    .catchall {:try_start_62 .. :try_end_bb} :catchall_bc

    :cond_bb
    :goto_bb
    return-void

    :catchall_bc
    move-exception p2

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x3b

    int-to-byte v2, v2

    invoke-static {v0, v0, v1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x15

    const-string v1, "\u0012\t\n\u0004\n\u0012\"\u0008\r\u0003\u000f\u0007\u000c\u0011\u000f\u0003\u000f\u0006\u000b\u0003["

    invoke-static {v2, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private G(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    if-ne v0, v1, :cond_a3

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_8c

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->y(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0xf

    if-eqz v3, :cond_28

    const/16 v3, 0xf

    goto :goto_2a

    :cond_28
    const/16 v3, 0x21

    :goto_2a
    if-eq v3, v4, :cond_2d

    goto :goto_a2

    :cond_2d
    invoke-direct {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    if-eqz v3, :cond_37

    const/4 v5, 0x1

    goto :goto_39

    :cond_37
    const/16 v5, 0x2f

    :goto_39
    if-eq v5, v4, :cond_49

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_45
    invoke-virtual {p1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_45 .. :try_end_48} :catch_a2

    goto :goto_a2

    :cond_49
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    const-string v3, "\ue548\ucbb4\ue4f3\u6d42\ua6a3\u71b0"

    invoke-static {v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->B(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x65

    int-to-byte v0, v0

    invoke-static {v2, v2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x24

    const-string v3, "\u0018\u0011\u0004\u0005\u0010\u001f\u0006\u0018\r\u0003\u000e&\u0014\n&\u0001\u0012\u000b\t\u000b\u0014\u0012\u000f\u0007\u000b\u0002\u0003\u0008\u0004\u0008\u0010\n\u0002\u0005\u0015\u001a"

    invoke-static {v0, v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ｋ(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_8c
    instance-of v2, v0, Lorg/json/JSONArray;

    if-eqz v2, :cond_a2

    :try_start_90
    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾒ(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a2
    .catch Lorg/json/JSONException; {:try_start_90 .. :try_end_a2} :catch_a2

    :catch_a2
    :cond_a2
    :goto_a2
    return v1

    :cond_a3
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/String;

    const/4 p1, 0x0

    :try_start_aa
    throw p1
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_ab

    :catchall_ab
    move-exception p1

    throw p1
.end method

.method private H(Lcom/ironsource/adqualitysdk/sdk/i/l;Lcom/ironsource/adqualitysdk/sdk/i/l;)Lcom/ironsource/adqualitysdk/sdk/i/l;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x36

    if-eqz v0, :cond_11

    const/16 v0, 0x25

    goto :goto_13

    :cond_11
    const/16 v0, 0x36

    :goto_13
    if-ne v0, v1, :cond_33

    if-nez p1, :cond_26

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/l;

    invoke-direct {p1}, Lcom/ironsource/adqualitysdk/sdk/i/l;-><init>()V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v0, v0, 0x2

    :cond_26
    if-nez p2, :cond_2d

    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/l;

    invoke-direct {p2}, Lcom/ironsource/adqualitysdk/sdk/i/l;-><init>()V

    :cond_2d
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$d;

    invoke-direct {v0, p0, p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj$d;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cj;Lcom/ironsource/adqualitysdk/sdk/i/l;Lcom/ironsource/adqualitysdk/sdk/i/l;)V

    return-object v0

    :cond_33
    const/4 p1, 0x0

    :try_start_34
    throw p1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    :catchall_35
    move-exception p1

    throw p1
.end method

.method private I(Lcom/ironsource/adqualitysdk/sdk/i/s;Lcom/ironsource/adqualitysdk/sdk/i/s;)Lcom/ironsource/adqualitysdk/sdk/i/s;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v0, v0, 0x2

    if-nez p1, :cond_11

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/s;

    invoke-direct {p1}, Lcom/ironsource/adqualitysdk/sdk/i/s;-><init>()V

    :cond_11
    if-nez p2, :cond_18

    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/s;

    invoke-direct {p2}, Lcom/ironsource/adqualitysdk/sdk/i/s;-><init>()V

    :cond_18
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$h;

    invoke-direct {v0, p0, p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj$h;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cj;Lcom/ironsource/adqualitysdk/sdk/i/s;Lcom/ironsource/adqualitysdk/sdk/i/s;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 p1, p1, 0x2

    return-object v0
.end method

.method private J(Landroid/app/Activity;Landroid/os/Bundle;)Lorg/json/JSONObject;
    .registers 12

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_7
    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﻛ:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ci;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﻐ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᖺ:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ci;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﻛ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᖫ:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ci;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﱡ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "\u64cc\uaf11\u4a17\ubf5d\ua1f3\ua456\u24f4\u1a00"

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    rsub-int/lit8 v4, v8, 0x8

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->B(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_4d} :catch_a6

    const/16 p1, 0x29

    if-eqz p2, :cond_54

    const/16 p2, 0x62

    goto :goto_56

    :cond_54
    const/16 p2, 0x29

    :goto_56
    if-eq p2, p1, :cond_d4

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/2addr p1, v1

    const/4 p2, 0x1

    if-eqz p1, :cond_66

    const/4 p1, 0x0

    goto :goto_67

    :cond_66
    const/4 p1, 0x1

    :goto_67
    const-string v3, "\u000b\u0014\u0002\'\u0006\u000b\u0005\u0002"

    const-string v4, ""

    if-eq p1, p2, :cond_89

    const/16 p1, 0x64

    :try_start_6f
    invoke-static {v4, v1, p2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result p2

    shr-int/2addr p1, p2

    int-to-byte p1, p1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p2

    shl-int/lit8 p2, p2, 0x45

    add-int/lit8 p2, p2, 0x3e

    invoke-static {p1, v3, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_d4

    :cond_89
    const/16 p1, 0x30

    invoke-static {v4, p1, v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result p1

    add-int/lit8 p1, p1, 0x50

    int-to-byte p1, p1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int/lit8 v4, v4, 0x8

    invoke-static {p1, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_a5
    .catch Lorg/json/JSONException; {:try_start_6f .. :try_end_a5} :catch_a6

    goto :goto_d4

    :catch_a6
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    shr-int/lit8 p1, p1, 0x10

    rsub-int/lit8 p1, p1, 0x76

    int-to-byte p1, p1

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result p2

    shr-int/lit8 p2, p2, 0x18

    rsub-int/lit8 p2, p2, 0x10

    const-string v3, "\u0001\u0002\u0003\u0004\u0005\u0002\u0006\u0000\u0008\t\u000b\u0002\u0003\u0008\u0004\u0008"

    invoke-static {p1, v3, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1e

    const-string v2, "\uaadf\ue22a\ubfcb\uafdb\uc99d\u6144\u4497\u076d\u2ac0\u6207\u061a\u3fb9\ud0e2\u9a2b\ub136\uc9e3\ue41f\ue7ac\u330e\u550c\uf1a3\u305f\u2422\u1ad6\uf04b\u275c\u89a9\u2c2b\ue41f\ue7ac"

    invoke-static {v2, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->B(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d4
    :goto_d4
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/2addr p1, v1

    if-eqz p1, :cond_e0

    return-object v0

    :cond_e0
    const/4 p1, 0x0

    :try_start_e1
    throw p1
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_e2

    :catchall_e2
    move-exception p1

    throw p1
.end method

.method static synthetic K(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/lang/String;ZZLjava/util/List;)V
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->F(Ljava/lang/String;ZZLjava/util/List;)V

    if-eqz v0, :cond_16

    goto :goto_19

    :cond_16
    const/16 p0, 0x33

    :try_start_18
    div-int/2addr p0, v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_33

    :goto_19
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 p0, p0, 0x57

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 p0, p0, 0x2

    const/16 p1, 0x26

    if-eqz p0, :cond_2a

    const/16 p0, 0x3b

    goto :goto_2c

    :cond_2a
    const/16 p0, 0x26

    :goto_2c
    if-ne p0, p1, :cond_2f

    return-void

    :cond_2f
    const/4 p0, 0x0

    :try_start_30
    throw p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception p0

    throw p0

    :catchall_33
    move-exception p0

    throw p0
.end method

.method private L(Lcom/ironsource/adqualitysdk/sdk/i/dg;)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dg;->ﻛ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const-string v5, "\u000f\r\u0003\u0016"

    const-string v6, "\u0016\n\r\u0003\n\u001f"

    const/16 v7, 0xa

    const-string v8, "\u000b\u0014\u0001\u000b\u000f\r\u0002\u0019"

    const/4 v9, 0x4

    const/4 v10, 0x3

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x2

    const/4 v15, 0x0

    sparse-switch v4, :sswitch_data_1c4

    goto/16 :goto_f0

    :sswitch_20
    invoke-static {v15, v15, v15, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    add-int/lit8 v4, v4, 0x52

    int-to-byte v4, v4

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v16

    const-string v7, "\u000b\u001b\u001a\u001b\u0004\u0011\u0017\r"

    cmp-long v18, v16, v11

    add-int/lit8 v3, v18, 0x7

    invoke-static {v4, v7, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    const/4 v3, 0x4

    goto/16 :goto_f1

    :sswitch_42
    invoke-static {v15}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    rsub-int/lit8 v3, v3, 0x3

    int-to-byte v3, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    rsub-int/lit8 v4, v4, 0x4

    invoke-static {v3, v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    const/4 v2, 0x1

    goto :goto_65

    :cond_64
    const/4 v2, 0x0

    :goto_65
    if-eq v2, v13, :cond_69

    goto/16 :goto_f0

    :cond_69
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v2, v2, 0xb

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/2addr v2, v14

    const/16 v3, 0x49

    if-eqz v2, :cond_78

    const/16 v7, 0x49

    :cond_78
    if-eq v7, v3, :cond_7d

    const/4 v3, 0x1

    goto/16 :goto_f1

    :cond_7d
    :goto_7d
    const/4 v3, 0x0

    goto/16 :goto_f1

    :sswitch_80
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    sub-int/2addr v7, v3

    int-to-byte v3, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x6

    invoke-static {v3, v6, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    const/4 v2, 0x0

    goto :goto_a1

    :cond_a0
    const/4 v2, 0x1

    :goto_a1
    if-eqz v2, :cond_a4

    goto :goto_f0

    :cond_a4
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v2, v2, 0x15

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/2addr v2, v14

    const/4 v3, 0x2

    goto :goto_f1

    :sswitch_af
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v7, v3, v11

    add-int/lit8 v7, v7, 0x6c

    int-to-byte v3, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    rsub-int/lit8 v4, v4, 0x8

    invoke-static {v3, v8, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    goto :goto_7d

    :sswitch_cf
    invoke-static {v11, v12}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x10

    const-string v4, "\u64cc\uaf11\u061a\u3fb9\u57b9\u10ed\u78bc\u7848\u8883\u2262\uddd7\u6bc0\u784e\u556c\ub133\ub0b4\u24f4\u1a00"

    invoke-static {v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->B(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v2, v2, 0x3f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/2addr v2, v14

    const/4 v3, 0x3

    goto :goto_f1

    :cond_f0
    :goto_f0
    const/4 v3, -0x1

    :goto_f1
    if-eqz v3, :cond_1a6

    if-eq v3, v13, :cond_187

    if-eq v3, v14, :cond_169

    if-eq v3, v10, :cond_110

    if-eq v3, v9, :cond_fc

    goto :goto_155

    :cond_fc
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/jg;

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dg;->ﻐ()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->O(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/jf;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jg;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/jf;)V

    iput-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->o:Lcom/ironsource/adqualitysdk/sdk/i/jg;

    goto :goto_155

    :cond_110
    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->n:Lcom/ironsource/adqualitysdk/sdk/i/je;

    if-nez v2, :cond_155

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v2, v2, 0x2f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/2addr v2, v14

    if-eqz v2, :cond_13d

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dg;->ﻐ()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->i(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/je;

    move-result-object v0

    iput-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->n:Lcom/ironsource/adqualitysdk/sdk/i/je;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/jb;

    move-result-object v0

    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->n:Lcom/ironsource/adqualitysdk/sdk/i/je;

    invoke-virtual {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/jc;)V

    const/16 v0, 0x63

    :try_start_138
    div-int/2addr v0, v15
    :try_end_139
    .catchall {:try_start_138 .. :try_end_139} :catchall_13a

    goto :goto_154

    :catchall_13a
    move-exception v0

    move-object v2, v0

    throw v2

    :cond_13d
    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dg;->ﻐ()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->i(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/je;

    move-result-object v0

    iput-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->n:Lcom/ironsource/adqualitysdk/sdk/i/je;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/jb;

    move-result-object v0

    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->n:Lcom/ironsource/adqualitysdk/sdk/i/je;

    invoke-virtual {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/jc;)V

    :goto_154
    return-void

    :cond_155
    :goto_155
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/2addr v0, v14

    if-eqz v0, :cond_161

    const/4 v15, 0x1

    :cond_161
    if-eq v15, v13, :cond_164

    return-void

    :cond_164
    const/4 v0, 0x0

    :try_start_165
    throw v0
    :try_end_166
    .catchall {:try_start_165 .. :try_end_166} :catchall_166

    :catchall_166
    move-exception v0

    move-object v2, v0

    throw v2

    :cond_169
    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->w(Lcom/ironsource/adqualitysdk/sdk/i/dg;)V

    const/16 v2, 0x30

    invoke-static {v2}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v2

    rsub-int/lit8 v2, v2, 0x3a

    int-to-byte v2, v2

    invoke-static {v15}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    invoke-static {v2, v6, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->E(Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/dg;)V

    return-void

    :cond_187
    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->D(Lcom/ironsource/adqualitysdk/sdk/i/dg;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    cmp-long v4, v2, v11

    add-int/2addr v4, v14

    int-to-byte v2, v4

    invoke-static {v15, v15}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v3

    cmp-long v6, v3, v11

    add-int/lit8 v6, v6, 0x5

    invoke-static {v2, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->E(Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/dg;)V

    return-void

    :cond_1a6
    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->m(Lcom/ironsource/adqualitysdk/sdk/i/dg;)V

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v2

    int-to-byte v2, v2

    rsub-int/lit8 v2, v2, 0x6c

    int-to-byte v2, v2

    invoke-static {v15}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x8

    invoke-static {v2, v8, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->E(Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/dg;)V

    return-void

    nop

    :sswitch_data_1c4
    .sparse-switch
        -0x6ccfeae5 -> :sswitch_cf
        -0x62b40cf1 -> :sswitch_af
        -0x2ef42410 -> :sswitch_80
        0x373aa5 -> :sswitch_42
        0x44391737 -> :sswitch_20
    .end sparse-switch
.end method

.method private M(Lcom/ironsource/adqualitysdk/sdk/i/ig;Z)V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    const/4 v2, 0x0

    if-nez v0, :cond_35

    if-eqz p2, :cond_31

    :try_start_14
    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/cj$n;

    invoke-direct {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj$n;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ig;)V

    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_36

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 p1, p1, 0x6f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/2addr p1, v1

    if-nez p1, :cond_29

    const/4 p1, 0x2

    goto :goto_2b

    :cond_29
    const/16 p1, 0x57

    :goto_2b
    if-eq p1, v1, :cond_2e

    return-void

    :cond_2e
    :try_start_2e
    throw v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception p1

    throw p1

    :cond_31
    :try_start_31
    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    return-void

    :cond_35
    throw v2
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_36

    :catchall_36
    return-void
.end method

.method private N(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/s;Lcom/ironsource/adqualitysdk/sdk/i/s;Lcom/ironsource/adqualitysdk/sdk/i/im;)V
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->r:Lcom/ironsource/adqualitysdk/sdk/i/u;

    invoke-direct {p0, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->I(Lcom/ironsource/adqualitysdk/sdk/i/s;Lcom/ironsource/adqualitysdk/sdk/i/s;)Lcom/ironsource/adqualitysdk/sdk/i/s;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p4}, Lcom/ironsource/adqualitysdk/sdk/i/u;->ﾒ(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/s;Lcom/ironsource/adqualitysdk/sdk/i/im;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 p1, p1, 0x25

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private O(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/jf;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/jf;"
        }
    .end annotation

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$k;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj$k;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v1, 0x3c

    if-eqz p1, :cond_16

    const/16 p1, 0x32

    goto :goto_18

    :cond_16
    const/16 p1, 0x3c

    :goto_18
    if-eq p1, v1, :cond_20

    const/4 p1, 0x1

    :try_start_1b
    div-int/lit8 p1, p1, 0x0
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_1e

    return-object v0

    :catchall_1e
    move-exception p1

    throw p1

    :cond_20
    return-object v0
.end method

.method private P(Z)Lcom/ironsource/adqualitysdk/sdk/i/x;
    .registers 4

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$c;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj$c;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cj;Z)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 p1, p1, 0x2

    return-object v0
.end method

.method private Q(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱟ()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾇ(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    const/16 v3, 0x4f

    add-int/2addr p1, v3

    rem-int/lit16 v4, p1, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_28

    const/4 v1, 0x0

    :cond_28
    if-eqz v1, :cond_2b

    return-object v0

    :cond_2b
    :try_start_2b
    div-int/2addr v3, v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2d

    return-object v0

    :catchall_2d
    move-exception p1

    throw p1

    :cond_2f
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱟ()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾇ(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const/4 p1, 0x0

    :try_start_37
    throw p1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception p1

    throw p1
.end method

.method private S(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/x;Lcom/ironsource/adqualitysdk/sdk/i/x;)V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->r:Lcom/ironsource/adqualitysdk/sdk/i/u;

    invoke-direct {p0, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->k(Lcom/ironsource/adqualitysdk/sdk/i/x;Lcom/ironsource/adqualitysdk/sdk/i/x;)Lcom/ironsource/adqualitysdk/sdk/i/x;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/u;->ﻛ(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/x;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :cond_26
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->r:Lcom/ironsource/adqualitysdk/sdk/i/u;

    invoke-direct {p0, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->k(Lcom/ironsource/adqualitysdk/sdk/i/x;Lcom/ironsource/adqualitysdk/sdk/i/x;)Lcom/ironsource/adqualitysdk/sdk/i/x;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/u;->ﻛ(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/x;)V

    const/4 p1, 0x0

    :try_start_30
    throw p1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception p1

    throw p1
.end method

.method private static T(Lcom/ironsource/adqualitysdk/sdk/i/dg;)Z
    .registers 5

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->טּ()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/dg;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz v0, :cond_39

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->UNKNOWN:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    const/16 v3, 0x22

    if-eq p0, v2, :cond_18

    const/16 v2, 0x5c

    goto :goto_1a

    :cond_18
    const/16 v2, 0x22

    :goto_1a
    if-eq v2, v3, :cond_39

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 p0, p0, 0x27

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 p0, p0, 0x2

    return v1

    :cond_2d
    const/4 p0, 0x0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v0, v0, 0x2

    return p0

    :cond_39
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 p0, p0, 0x31

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 p0, p0, 0x2

    const/16 v0, 0x39

    if-eqz p0, :cond_4a

    const/16 p0, 0x39

    goto :goto_4c

    :cond_4a
    const/16 p0, 0x5f

    :goto_4c
    if-eq p0, v0, :cond_4f

    return v1

    :cond_4f
    const/4 p0, 0x0

    :try_start_50
    throw p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_51

    :catchall_51
    move-exception p0

    throw p0
.end method

.method private a()Lcom/ironsource/adqualitysdk/sdk/i/ch;
    .registers 4

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$a;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cj;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x5d

    if-nez v1, :cond_16

    const/16 v1, 0x1f

    goto :goto_18

    :cond_16
    const/16 v1, 0x5d

    :goto_18
    if-ne v1, v2, :cond_1b

    return-object v0

    :cond_1b
    const/4 v0, 0x0

    :try_start_1c
    throw v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception v0

    throw v0
.end method

.method private b()Lcom/ironsource/adqualitysdk/sdk/i/je;
    .registers 4

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$i;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj$i;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cj;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method private c()V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->r:Lcom/ironsource/adqualitysdk/sdk/i/u;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/u;->ﻐ()V

    const/16 v0, 0x3a

    :try_start_1a
    div-int/2addr v0, v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1c

    goto :goto_23

    :catchall_1c
    move-exception v0

    throw v0

    :cond_1e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->r:Lcom/ironsource/adqualitysdk/sdk/i/u;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/u;->ﻐ()V

    :goto_23
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_30

    const/4 v1, 0x0

    :cond_30
    if-eqz v1, :cond_33

    return-void

    :cond_33
    const/4 v0, 0x0

    :try_start_34
    throw v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    :catchall_35
    move-exception v0

    throw v0
.end method

.method private d()V
    .registers 6

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/ho;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ho;->ﾒ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v1, v1, 0x2

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    if-eq v1, v3, :cond_24

    return-void

    :cond_24
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/dg;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->T(Lcom/ironsource/adqualitysdk/sdk/i/dg;)Z

    move-result v3

    const/16 v4, 0x3d

    :try_start_41
    div-int/2addr v4, v2
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_45

    if-eqz v3, :cond_16

    goto :goto_57

    :catchall_45
    move-exception v0

    throw v0

    :cond_47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/dg;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->T(Lcom/ironsource/adqualitysdk/sdk/i/dg;)Z

    move-result v4

    if-eqz v4, :cond_54

    goto :goto_55

    :cond_54
    const/4 v2, 0x1

    :goto_55
    if-eq v2, v3, :cond_16

    :goto_57
    invoke-direct {p0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->L(Lcom/ironsource/adqualitysdk/sdk/i/dg;)V

    goto :goto_16
.end method

.method private f()V
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->r:Lcom/ironsource/adqualitysdk/sdk/i/u;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/u;->ﾒ()V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private g()V
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x16

    if-eqz v0, :cond_11

    const/16 v0, 0x24

    goto :goto_13

    :cond_11
    const/16 v0, 0x16

    :goto_13
    if-eq v0, v1, :cond_21

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->r:Lcom/ironsource/adqualitysdk/sdk/i/u;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/u;->ｋ()V

    const/16 v0, 0x59

    :try_start_1c
    div-int/lit8 v0, v0, 0x0
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_1f

    goto :goto_26

    :catchall_1f
    move-exception v0

    throw v0

    :cond_21
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->r:Lcom/ironsource/adqualitysdk/sdk/i/u;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/u;->ｋ()V

    :goto_26
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private h()Lcom/ironsource/adqualitysdk/sdk/i/dj;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x23

    if-nez v0, :cond_11

    const/16 v0, 0x23

    goto :goto_13

    :cond_11
    const/16 v0, 0x43

    :goto_13
    if-eq v0, v1, :cond_1e

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->a()Lcom/ironsource/adqualitysdk/sdk/i/dj;

    move-result-object v0

    return-object v0

    :cond_1e
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->a()Lcom/ironsource/adqualitysdk/sdk/i/dj;

    const/4 v0, 0x0

    :try_start_26
    throw v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v0

    throw v0
.end method

.method private i(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/je;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/je;"
        }
    .end annotation

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 p1, p1, 0x2

    return-object v0
.end method

.method private j(Z)Lcom/ironsource/adqualitysdk/sdk/i/s;
    .registers 4

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cj;Z)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 p1, p1, 0x2

    return-object v0
.end method

.method private k(Lcom/ironsource/adqualitysdk/sdk/i/x;Lcom/ironsource/adqualitysdk/sdk/i/x;)Lcom/ironsource/adqualitysdk/sdk/i/x;
    .registers 5

    if-nez p1, :cond_11

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/x;

    invoke-direct {p1}, Lcom/ironsource/adqualitysdk/sdk/i/x;-><init>()V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v0, v0, 0x2

    :cond_11
    if-nez p2, :cond_18

    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/x;

    invoke-direct {p2}, Lcom/ironsource/adqualitysdk/sdk/i/x;-><init>()V

    :cond_18
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$f;

    invoke-direct {v0, p0, p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj$f;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cj;Lcom/ironsource/adqualitysdk/sdk/i/x;Lcom/ironsource/adqualitysdk/sdk/i/x;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 p1, p1, 0x3f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 p1, p1, 0x2

    return-object v0
.end method

.method private static l(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 10

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, -0x62b40cf1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_70

    const v2, -0x2ef42410

    if-eq v1, v2, :cond_3b

    const v2, 0x373aa5

    if-eq v1, v2, :cond_19

    goto/16 :goto_a5

    :cond_19
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x3

    int-to-byte v1, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x4

    const-string v6, "\u000f\r\u0003\u0016"

    invoke-static {v1, v6, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a5

    goto :goto_a2

    :cond_3b
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0xa

    int-to-byte v1, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x6

    const-string v6, "\u0016\n\r\u0003\n\u001f"

    invoke-static {v1, v6, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5e

    const/4 p0, 0x0

    goto :goto_5f

    :cond_5e
    const/4 p0, 0x1

    :goto_5f
    if-eq p0, v5, :cond_a5

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 p0, p0, 0x21

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/2addr p0, v3

    if-eqz p0, :cond_6e

    const/4 v0, 0x5

    goto :goto_a5

    :cond_6e
    const/4 v0, 0x2

    goto :goto_a5

    :cond_70
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0x6d

    int-to-byte v1, v1

    const/4 v2, 0x0

    invoke-static {v4, v2, v2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v6

    const-string v7, "\u000b\u0014\u0001\u000b\u000f\r\u0002\u0019"

    cmpl-float v2, v6, v2

    add-int/lit8 v2, v2, 0x8

    invoke-static {v1, v7, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a5

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 p0, p0, 0x1f

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/2addr p0, v3

    if-nez p0, :cond_9f

    const/4 p0, 0x0

    goto :goto_a0

    :cond_9f
    const/4 p0, 0x1

    :goto_a0
    if-eq p0, v5, :cond_a4

    :goto_a2
    const/4 v0, 0x1

    goto :goto_a5

    :cond_a4
    const/4 v0, 0x0

    :cond_a5
    :goto_a5
    const/4 p0, 0x0

    if-eqz v0, :cond_e2

    if-eq v0, v5, :cond_cb

    if-eq v0, v3, :cond_ad

    return-object p0

    :cond_ad
    invoke-static {v4, v4, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    add-int/lit8 v0, v0, 0xd

    const-string v1, "\u57b9\u10ed\ua4ca\ubab9\ue548\ucbb4\ue4f3\u6d42\u8564\u3ea6\ua1f3\ua456\u24f4\u1a00"

    invoke-static {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->B(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/2addr p1, v3

    return-object p0

    :cond_cb
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0xf

    const-string v1, "\u113b\ufc2d\u1546\u0507\ua4ca\ubab9\ue548\ucbb4\ue4f3\u6d42\u8564\u3ea6\ua1f3\ua456\u24f4\u1a00"

    invoke-static {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->B(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e2
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-string v4, "\u0014\r\u0004\u0013\u0001\u000b\u000f\r\u0002\u0019\"\n\u0003\u0002"

    cmp-long v5, v0, v2

    rsub-int/lit8 v0, v5, 0x74

    int-to-byte v0, v0

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0xe

    invoke-static {v0, v4, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private m(Lcom/ironsource/adqualitysdk/sdk/i/dg;)V
    .registers 11

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dg;->ｋ()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->C(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    :goto_19
    if-eqz v3, :cond_b6

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v3, v3, 0x25

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v3, v3, 0x2

    const/16 v4, 0x10

    const/16 v5, 0x5b

    if-nez v3, :cond_2e

    const/16 v3, 0x10

    goto :goto_30

    :cond_2e
    const/16 v3, 0x5b

    :goto_30
    const/4 v6, 0x0

    if-eq v3, v5, :cond_48

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dg;->ﱟ()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v5, 0x8

    :try_start_3d
    div-int/2addr v5, v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_46

    if-nez v3, :cond_42

    const/4 v3, 0x1

    goto :goto_43

    :cond_42
    const/4 v3, 0x0

    :goto_43
    if-eq v3, v1, :cond_52

    goto :goto_ab

    :catchall_46
    move-exception p1

    throw p1

    :cond_48
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dg;->ﱟ()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ab

    :cond_52
    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﾒ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/dn;

    move-result-object v3

    if-eqz v3, :cond_68

    new-instance v6, Lcom/ironsource/adqualitysdk/sdk/i/cj$l;

    invoke-direct {v6, p0, v3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj$l;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cj;Lcom/ironsource/adqualitysdk/sdk/i/dn;Ljava/lang/String;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 p1, p1, 0x2f

    rem-int/lit16 v3, p1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_ab

    :cond_68
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x25

    int-to-byte v7, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v8

    shr-int/lit8 v4, v8, 0x10

    rsub-int/lit8 v4, v4, 0x16

    const-string v8, "\u001d\u0000\u0001 \u0004\u0000\u0014\u0003\u0002\u001d\t\u000b\u000b\u0001\n\u0001\u0011\u0018\u001f\u0002\n\u0012"

    invoke-static {v7, v8, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result p1

    int-to-byte p1, p1

    rsub-int/lit8 p1, p1, 0x9

    const-string v4, "\u997d\u5653\ue139\ua763\u5faf\ub702\u1880\u2953\u3895\ua6b7"

    invoke-static {v4, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->B(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v6}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_ab
    :goto_ab
    invoke-direct {p0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->s(Z)Lcom/ironsource/adqualitysdk/sdk/i/l;

    move-result-object p1

    invoke-direct {p0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->s(Z)Lcom/ironsource/adqualitysdk/sdk/i/l;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, v6}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->o(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/l;Lcom/ironsource/adqualitysdk/sdk/i/l;Lcom/ironsource/adqualitysdk/sdk/i/io;)V

    :cond_b6
    return-void
.end method

.method private n(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$j;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj$j;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$m;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj$m;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$p;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj$p;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/lang/String;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->M(Lcom/ironsource/adqualitysdk/sdk/i/ig;Z)V

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 p2, p2, 0x73

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 p2, p2, 0x2

    const/4 v0, 0x0

    if-eqz p2, :cond_27

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    :goto_28
    if-eqz p1, :cond_30

    const/16 p1, 0x5c

    :try_start_2c
    div-int/2addr p1, v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2e

    return-void

    :catchall_2e
    move-exception p1

    throw p1

    :cond_30
    return-void
.end method

.method private o(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/l;Lcom/ironsource/adqualitysdk/sdk/i/l;Lcom/ironsource/adqualitysdk/sdk/i/io;)V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x45

    if-nez v0, :cond_11

    const/16 v0, 0x52

    goto :goto_13

    :cond_11
    const/16 v0, 0x45

    :goto_13
    const/4 v2, 0x0

    if-ne v0, v1, :cond_3c

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->r:Lcom/ironsource/adqualitysdk/sdk/i/u;

    invoke-direct {p0, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->H(Lcom/ironsource/adqualitysdk/sdk/i/l;Lcom/ironsource/adqualitysdk/sdk/i/l;)Lcom/ironsource/adqualitysdk/sdk/i/l;

    move-result-object p2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->b()Lcom/ironsource/adqualitysdk/sdk/i/je;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ironsource/adqualitysdk/sdk/i/u;->ｋ(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/l;Lcom/ironsource/adqualitysdk/sdk/i/je;Lcom/ironsource/adqualitysdk/sdk/i/io;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 p1, p1, 0x4d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0x23

    if-eqz p1, :cond_34

    const/16 p1, 0x23

    goto :goto_36

    :cond_34
    const/16 p1, 0x60

    :goto_36
    if-eq p1, p2, :cond_39

    return-void

    :cond_39
    :try_start_39
    throw v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception p1

    throw p1

    :cond_3c
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->r:Lcom/ironsource/adqualitysdk/sdk/i/u;

    invoke-direct {p0, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->H(Lcom/ironsource/adqualitysdk/sdk/i/l;Lcom/ironsource/adqualitysdk/sdk/i/l;)Lcom/ironsource/adqualitysdk/sdk/i/l;

    move-result-object p2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->b()Lcom/ironsource/adqualitysdk/sdk/i/je;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ironsource/adqualitysdk/sdk/i/u;->ｋ(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/l;Lcom/ironsource/adqualitysdk/sdk/i/je;Lcom/ironsource/adqualitysdk/sdk/i/io;)V

    :try_start_49
    throw v2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception p1

    throw p1
.end method

.method private p(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/s;Lcom/ironsource/adqualitysdk/sdk/i/s;)V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->r:Lcom/ironsource/adqualitysdk/sdk/i/u;

    invoke-direct {p0, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->I(Lcom/ironsource/adqualitysdk/sdk/i/s;Lcom/ironsource/adqualitysdk/sdk/i/s;)Lcom/ironsource/adqualitysdk/sdk/i/s;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/u;->ﾒ(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/s;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private static q(Landroid/app/Activity;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v0, v0, 0x2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_14

    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    const/4 v0, 0x1

    :goto_15
    if-eq v0, v2, :cond_52

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v3, 0x2d

    if-eqz v0, :cond_28

    const/16 v0, 0x2d

    goto :goto_2a

    :cond_28
    const/16 v0, 0x5d

    :goto_2a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    if-eq v0, v3, :cond_4b

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3c

    const/4 p0, 0x1

    goto :goto_3d

    :cond_3c
    const/4 p0, 0x0

    :goto_3d
    if-eqz p0, :cond_40

    goto :goto_52

    :cond_40
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 p0, p0, 0x75

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 p0, p0, 0x2

    return v1

    :cond_4b
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    :try_start_4f
    throw p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_50

    :catchall_50
    move-exception p0

    throw p0

    :cond_52
    :goto_52
    return v2
.end method

.method static synthetic r(Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dr;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->j:Lcom/ironsource/adqualitysdk/sdk/i/dr;

    if-eqz v0, :cond_1a

    const/16 v0, 0x58

    :try_start_16
    div-int/2addr v0, v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_18

    goto :goto_1a

    :catchall_18
    move-exception p0

    throw p0

    :cond_1a
    :goto_1a
    return-object p0
.end method

.method private s(Z)Lcom/ironsource/adqualitysdk/sdk/i/l;
    .registers 4

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$e;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj$e;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cj;Z)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 p1, p1, 0x67

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 p1, p1, 0x2

    return-object v0
.end method

.method private t(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x63

    if-nez v1, :cond_20

    const/16 v1, 0x63

    goto :goto_22

    :cond_20
    const/16 v1, 0x32

    :goto_22
    if-eq v1, v2, :cond_5b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->y(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v2, v2, 0x2b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_43

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v1, v1, 0x2

    goto :goto_9

    :cond_4e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v1, v1, 0x2

    goto :goto_9

    :cond_5b
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->y(Ljava/lang/String;)Z

    const/4 p1, 0x0

    :try_start_65
    throw p1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_66

    :catchall_66
    move-exception p1

    throw p1

    :cond_68
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 p1, p1, 0x3f

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 p1, p1, 0x2

    return-object v0
.end method

.method static synthetic u(Lcom/ironsource/adqualitysdk/sdk/i/cj;Landroid/app/Activity;Landroid/os/Bundle;)Lorg/json/JSONObject;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->J(Landroid/app/Activity;Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p0

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 p1, p1, 0x6f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1c

    const/4 p1, 0x0

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x1

    :goto_1d
    if-eqz p1, :cond_20

    return-object p0

    :cond_20
    const/4 p0, 0x0

    :try_start_21
    throw p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception p0

    throw p0
.end method

.method static synthetic v(Lcom/ironsource/adqualitysdk/sdk/i/cj;Lcom/ironsource/adqualitysdk/sdk/i/ig;Z)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->M(Lcom/ironsource/adqualitysdk/sdk/i/ig;Z)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 p0, p0, 0x73

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private w(Lcom/ironsource/adqualitysdk/sdk/i/dg;)V
    .registers 6

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dg;->ｋ()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->C(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    if-eq v2, v1, :cond_12

    goto :goto_36

    :cond_12
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v2, v2, 0x1f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_21

    :cond_20
    const/4 v2, 0x1

    :goto_21
    invoke-direct {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->P(Z)Lcom/ironsource/adqualitysdk/sdk/i/x;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->P(Z)Lcom/ironsource/adqualitysdk/sdk/i/x;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->S(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/x;Lcom/ironsource/adqualitysdk/sdk/i/x;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 p1, p1, 0x45

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 p1, p1, 0x2

    :goto_36
    return-void
.end method

.method static synthetic x(Landroid/app/Activity;Ljava/util/List;)Z
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->q(Landroid/app/Activity;Ljava/util/List;)Z

    move-result p0

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x4c

    if-eqz p1, :cond_1f

    const/16 p1, 0x4c

    goto :goto_20

    :cond_1f
    const/4 p1, 0x1

    :goto_20
    if-eq p1, v0, :cond_23

    return p0

    :cond_23
    const/4 p0, 0x0

    :try_start_24
    throw p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception p0

    throw p0
.end method

.method private static y(Ljava/lang/String;)Z
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, ""

    invoke-static {v0}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x27

    int-to-byte v0, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x6

    const-string v2, "\u000b\u0013\u0014\u0007\u0099\u0099"

    invoke-static {v0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_39

    const/4 v0, 0x0

    goto :goto_3a

    :cond_39
    const/4 v0, 0x1

    :goto_3a
    if-eq v0, v2, :cond_42

    const/16 v0, 0xf

    :try_start_3e
    div-int/2addr v0, v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_40

    return p0

    :catchall_40
    move-exception p0

    throw p0

    :cond_42
    return p0
.end method

.method private static z(BLjava/lang/String;I)Ljava/lang/String;
    .registers 11

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_6
    check-cast p1, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->a:[C

    sget-char v2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->b:C

    new-array v3, p2, [C

    rem-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_1d

    add-int/lit8 p2, p2, -0x1

    aget-char v4, p1, p2

    sub-int/2addr v4, p0

    int-to-char v4, v4

    aput-char v4, v3, p2

    :cond_1d
    const/4 v4, 0x1

    if-le p2, v4, :cond_df

    const/4 v5, 0x0

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    :goto_23
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    if-ge v5, p2, :cond_df

    aget-char v5, p1, v5

    sput-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    add-int/2addr v5, v4

    aget-char v5, p1, v5

    sput-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    sget-char v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    if-ne v5, v6, :cond_4b

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    sget-char v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    sub-int/2addr v6, p0

    int-to-char v6, v6

    aput-char v6, v3, v5

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    add-int/2addr v5, v4

    sget-char v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    sub-int/2addr v6, p0

    int-to-char v6, v6

    aput-char v6, v3, v5

    goto/16 :goto_d7

    :cond_4b
    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    div-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    div-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    if-ne v5, v6, :cond_8e

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    mul-int v5, v5, v2

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v5, v6

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    mul-int v6, v6, v2

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v6, v7

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v5, v1, v6

    aput-char v5, v3, v7

    goto :goto_d7

    :cond_8e
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    if-ne v5, v6, :cond_bd

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    mul-int v5, v5, v2

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v5, v6

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    mul-int v6, v6, v2

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v6, v7

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v5, v1, v6

    aput-char v5, v3, v7

    goto :goto_d7

    :cond_bd
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    mul-int v5, v5, v2

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v5, v6

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    mul-int v6, v6, v2

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v6, v7

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v5, v1, v6

    aput-char v5, v3, v7

    :goto_d7
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    add-int/lit8 v5, v5, 0x2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    goto/16 :goto_23

    :cond_df
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_e5
    .catchall {:try_start_b .. :try_end_e5} :catchall_e6

    return-object p0

    :catchall_e6
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method protected final R(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x30

    invoke-static {v1}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v1

    rsub-int/lit8 v1, v1, 0x40

    const-string v2, "\ua8fe\u4e07\ude3c\u0c0b\u17bc\uc4d3\ua11a\ue75e\u4350\u0d2e\u3811\u6ec8\ue4f3\u6d42\uad24\u2ed8"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->B(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->n(Ljava/lang/String;Ljava/util/List;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 p1, p1, 0x11

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method protected final e()V
    .registers 6

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->c()V

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g()V

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->f()V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->n:Lcom/ironsource/adqualitysdk/sdk/i/je;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    const/4 v0, 0x1

    :goto_12
    const/4 v3, 0x0

    if-eq v0, v2, :cond_34

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/jb;

    move-result-object v0

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->n:Lcom/ironsource/adqualitysdk/sdk/i/je;

    invoke-virtual {v0, v4}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/jc;)V

    iput-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->n:Lcom/ironsource/adqualitysdk/sdk/i/je;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v0, v0, 0x2

    :cond_34
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->o:Lcom/ironsource/adqualitysdk/sdk/i/jg;

    if-eqz v0, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v1, 0x1

    :goto_3a
    if-eq v1, v2, :cond_41

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jg;->ﻐ()V

    iput-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->o:Lcom/ironsource/adqualitysdk/sdk/i/jg;

    :cond_41
    iput-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->m:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    return-void
.end method

.method public final ﮐ()Lcom/ironsource/adqualitysdk/sdk/i/cz;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x41

    if-nez v0, :cond_11

    const/16 v0, 0x55

    goto :goto_13

    :cond_11
    const/16 v0, 0x41

    :goto_13
    if-eq v0, v2, :cond_1e

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->k:Lcom/ironsource/adqualitysdk/sdk/i/cz;

    const/16 v2, 0x38

    :try_start_19
    div-int/lit8 v2, v2, 0x0
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v0

    throw v0

    :cond_1e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->k:Lcom/ironsource/adqualitysdk/sdk/i/cz;

    :goto_20
    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final ﱟ()Lorg/json/JSONObject;
    .registers 9

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﻛ:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ci;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﻐ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᖫ:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ci;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﱡ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᖺ:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ci;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﻛ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_2d} :catch_2e

    goto :goto_7b

    :catch_2e
    move-exception v2

    const/16 v3, 0x30

    const-string v4, ""

    invoke-static {v4, v3, v1}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x75

    int-to-byte v3, v3

    invoke-static {v4, v1, v1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x10

    const-string v5, "\u0001\u0002\u0003\u0004\u0005\u0002\u0006\u0000\u0008\t\u000b\u0002\u0003\u0008\u0004\u0008"

    invoke-static {v3, v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/lit8 v5, v5, 0x2e

    int-to-byte v5, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v6

    shr-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x1b

    const-string v7, "\u0012\t\n\u0004\n\u0012\u0019\u0012\u0006\u0008\u0001\u000b\u000c\u0011\u000f\u0003\u000f\u0006\u000b\u0003\u000e\u0018\n\u0002\u0008\u0018N"

    invoke-static {v5, v7, v6}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7b
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v2, v2, 0x73

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_89

    goto :goto_8a

    :cond_89
    const/4 v1, 0x1

    :goto_8a
    if-ne v1, v3, :cond_8d

    return-object v0

    :cond_8d
    const/4 v0, 0x0

    :try_start_8e
    throw v0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8f

    :catchall_8f
    move-exception v0

    throw v0
.end method

.method public final ﱡ()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ci;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ｋ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {v2, v2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "\uaa98\u9731"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->B(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/ho;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ho;->ﻐ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final ﺙ()Lcom/ironsource/adqualitysdk/sdk/i/dr;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v1, v0, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->j:Lcom/ironsource/adqualitysdk/sdk/i/dr;

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x41

    if-nez v0, :cond_1b

    const/16 v0, 0x9

    goto :goto_1d

    :cond_1b
    const/16 v0, 0x41

    :goto_1d
    if-ne v0, v2, :cond_20

    return-object v1

    :cond_20
    const/4 v0, 0x0

    :try_start_21
    throw v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v0

    throw v0
.end method

.method public final ﻏ()Lcom/ironsource/adqualitysdk/sdk/i/ch;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v1, v0, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->m:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0xa

    if-nez v0, :cond_1b

    const/16 v0, 0xa

    goto :goto_1d

    :cond_1b
    const/16 v0, 0x9

    :goto_1d
    if-eq v0, v2, :cond_20

    return-object v1

    :cond_20
    const/16 v0, 0x4b

    :try_start_22
    div-int/lit8 v0, v0, 0x0
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_25

    return-object v1

    :catchall_25
    move-exception v0

    throw v0
.end method

.method public final ﻐ()Landroid/content/Context;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﭸ()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/ii;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    if-nez v0, :cond_f

    const/4 v0, 0x4

    goto :goto_11

    :cond_f
    const/16 v0, 0x14

    :goto_11
    if-eq v0, v1, :cond_1d

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->p:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﭖ()Lcom/ironsource/adqualitysdk/sdk/i/ba;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ii;)V

    return-void

    :cond_1d
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->p:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﭖ()Lcom/ironsource/adqualitysdk/sdk/i/ba;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ii;)V

    const/4 p1, 0x0

    :try_start_27
    throw p1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception p1

    throw p1
.end method

.method public final ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/az;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x18

    if-eqz v0, :cond_11

    const/16 v0, 0x52

    goto :goto_13

    :cond_11
    const/16 v0, 0x18

    :goto_13
    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->l:Lcom/ironsource/adqualitysdk/sdk/i/az;

    return-object v0

    :cond_18
    const/4 v0, 0x0

    :try_start_19
    throw v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v0

    throw v0
.end method

.method public final ｋ()Lorg/json/JSONObject;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->q:Lorg/json/JSONObject;

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x20

    if-nez v1, :cond_1b

    const/16 v1, 0x20

    goto :goto_1d

    :cond_1b
    const/16 v1, 0x2b

    :goto_1d
    if-eq v1, v2, :cond_20

    return-object v0

    :cond_20
    const/16 v1, 0x1f

    :try_start_22
    div-int/lit8 v1, v1, 0x0
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_25

    return-object v0

    :catchall_25
    move-exception v0

    throw v0
.end method

.method public final ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/ho;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x30

    if-eqz v0, :cond_11

    const/16 v0, 0x30

    goto :goto_13

    :cond_11
    const/16 v0, 0x58

    :goto_13
    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->i:Lcom/ironsource/adqualitysdk/sdk/i/ho;

    return-object v0

    :cond_18
    const/4 v0, 0x0

    :try_start_19
    throw v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v0

    throw v0
.end method

.method public final ﾇ(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 10

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    const/4 v2, 0x6

    shr-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0xc

    const-string v3, "\u113b\ufc2d\uff7d\u1041\u25a8\u8986\u695a\u3bb8\ue8db\uc7d9\u69f5\u050f"

    invoke-static {v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->B(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3a

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->p:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﭖ()Lcom/ironsource/adqualitysdk/sdk/i/ba;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->ｋ(Lorg/json/JSONObject;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v1, v1, 0x2

    goto :goto_6a

    :cond_3a
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x73

    int-to-byte v1, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x9

    const-string v5, "\u0014\r\'\u0011\u0011\u0000\u0008\u0002\u00d7"

    invoke-static {v1, v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->z(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    const/4 v1, 0x1

    goto :goto_5e

    :cond_5d
    const/4 v1, 0x0

    :goto_5e
    if-eq v1, v3, :cond_61

    goto :goto_6a

    :cond_61
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->p:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﭖ()Lcom/ironsource/adqualitysdk/sdk/i/ba;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->ﻐ(Lorg/json/JSONObject;)V

    :goto_6a
    invoke-direct {p0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->Q(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾒ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᵆ:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_84

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->p:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﭖ()Lcom/ironsource/adqualitysdk/sdk/i/ba;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->ﾒ(Lorg/json/JSONObject;)V

    return-void

    :cond_84
    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᗀ:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x4e

    if-eqz v4, :cond_91

    const/16 v4, 0x15

    goto :goto_93

    :cond_91
    const/16 v4, 0x4e

    :goto_93
    const/4 v6, 0x0

    if-eq v4, v5, :cond_b3

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->p:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﭖ()Lcom/ironsource/adqualitysdk/sdk/i/ba;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->ﾇ(Lorg/json/JSONObject;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_ac

    goto :goto_ad

    :cond_ac
    const/4 v0, 0x1

    :goto_ad
    if-eqz v0, :cond_b0

    return-void

    :cond_b0
    :try_start_b0
    throw v6
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_b1

    :catchall_b1
    move-exception p1

    throw p1

    :cond_b3
    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ib;->Ῡ:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c5

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->p:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﭖ()Lcom/ironsource/adqualitysdk/sdk/i/ba;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->ﻛ(Lorg/json/JSONObject;)V

    return-void

    :cond_c5
    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ib;->Ḽ:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e9

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_da

    const/4 v0, 0x1

    :cond_da
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->p:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﭖ()Lcom/ironsource/adqualitysdk/sdk/i/ba;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->ﻏ(Lorg/json/JSONObject;)V

    if-nez v0, :cond_e6

    return-void

    :cond_e6
    :try_start_e6
    throw v6
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e7

    :catchall_e7
    move-exception p1

    throw p1

    :cond_e9
    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ib;->Ḹ:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fb

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->p:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﭖ()Lcom/ironsource/adqualitysdk/sdk/i/ba;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->ﮐ(Lorg/json/JSONObject;)V

    return-void

    :cond_fb
    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ib;->Ḟ:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10d

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->p:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﭖ()Lcom/ironsource/adqualitysdk/sdk/i/ba;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->ﺙ(Lorg/json/JSONObject;)V

    return-void

    :cond_10d
    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᘥ:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_117

    const/4 v4, 0x1

    goto :goto_118

    :cond_117
    const/4 v4, 0x0

    :goto_118
    if-eq v4, v3, :cond_124

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->p:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﭖ()Lcom/ironsource/adqualitysdk/sdk/i/ba;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->ﾒ(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_124
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->p:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﭖ()Lcom/ironsource/adqualitysdk/sdk/i/ba;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->ﱟ(Lorg/json/JSONObject;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 p1, p1, 0x35

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_13d

    :try_start_139
    div-int/2addr v2, v0
    :try_end_13a
    .catchall {:try_start_139 .. :try_end_13a} :catchall_13b

    return-void

    :catchall_13b
    move-exception p1

    throw p1

    :cond_13d
    return-void
.end method

.method public final ﾇ(Lorg/json/JSONObject;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x29

    if-eqz v0, :cond_11

    const/16 v0, 0x4e

    goto :goto_13

    :cond_11
    const/16 v0, 0x29

    :goto_13
    if-eq v0, v1, :cond_17

    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    const/4 v0, 0x1

    :goto_18
    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾒ(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->q:Lorg/json/JSONObject;

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 p1, p1, 0x4b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x2b

    if-eqz p1, :cond_2f

    const/16 p1, 0x28

    goto :goto_31

    :cond_2f
    const/16 p1, 0x2b

    :goto_31
    if-ne p1, v0, :cond_34

    return-void

    :cond_34
    const/4 p1, 0x0

    :try_start_35
    throw p1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p1

    throw p1
.end method

.method public final ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ci;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->p:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final ﾒ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/dn;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/ho;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ho;->ﾒ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/dn;

    move-result-object p1

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;->g:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cj;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x1d

    if-nez v0, :cond_28

    const/16 v0, 0x50

    goto :goto_2a

    :cond_28
    const/16 v0, 0x1d

    :goto_2a
    if-ne v0, v2, :cond_2d

    return-object p1

    :cond_2d
    :try_start_2d
    throw v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p1

    throw p1

    :cond_30
    return-object v1

    :cond_31
    :try_start_31
    throw v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p1

    throw p1
.end method
