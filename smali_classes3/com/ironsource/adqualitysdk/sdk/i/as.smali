###### Class com.json.adqualitysdk.sdk.i.as (com.ironsource.adqualitysdk.sdk.i.as)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/as;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:J = 0x0L

.field private static b:I = -0x6c679616

.field private static c:C = '\u0000'

.field private static d:[C = null

.field private static e:C = '\u0006'

.field private static f:I = 0x0

.field private static g:I = 0x1


# instance fields
.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lorg/json/JSONObject;

.field private l:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/as;->d:[C

    return-void

    :array_a
    .array-data 2
        0x63s
        0x6fs
        0x6ds
        0x2es
        0x69s
        0x6es
        0x62s
        0x72s
        0x65s
        0x64s
        0x67s
        0x49s
        0x4ds
        0x41s
        0x74s
        0x76s
        0x79s
        0x70s
        0x73s
        0x61s
        0x6cs
        0x75s
        0x77s
        0x37s
        0x30s
        0x66s
        0x68s
        0x6as
        0x6bs
        0x71s
        0x78s
        0x7as
        0x7bs
        0x7cs
        0x7ds
        0x7es
    .end array-data
.end method

.method constructor <init>()V
    .registers 36

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    shr-int/lit8 v4, v4, 0x6

    const-string v5, ""

    const/16 v6, 0x30

    invoke-static {v5, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v7

    rsub-int/lit8 v7, v7, -0x1

    int-to-char v7, v7

    const-string v8, "\u0284\uf506\ue37a\u56c8"

    const-string v9, "\u0000\u0000\u0000\u0000"

    const-string v10, "\ueaf0\ua3ff\u6d79\ue790\u2358\u2301\ub632\u633b\u37cd\u8bd6\uff23\u5d70\ua82e\ue50f\u29ae\u3f6b\u86f7\u90c1\u9ccc\ubb2d"

    invoke-static {v8, v9, v4, v7, v10}, Lcom/ironsource/adqualitysdk/sdk/i/as;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v4

    const-string v14, "\u4d16\ud5d7\u2f49\u9d57"

    const-string v1, "\u2cc8\u1cd5\u01fe\uefd8\u81df\u9954\u2c99\u2f54\u58d8\uf18f\ubadf\u721c\ud69f\ud283\u1cc5"

    const-string v11, "\u0001\u0002\u0003\u0004\u0005\u0000\u0003\u0002\n\u0000\u0001\t\u000b\u0002\n\t\n\u0001\u0004\u000b\u0005\t\u0000\u0011\u0000\u0007\u0001\u0010\u0007\u000f\u0002\u000c\u0003\u0010\u0002\u0010|"

    const-string v12, "\udabb\u84d2\u88a9\ufd40"

    const v18, -0x567b2d26

    const-string v6, "\ue869\ua63f\u09b3\u4ca2\u7018\ucf32\u45f2\ud50c\ubfd1\u9d9c\u375c\u4a58\uc07c\u4914\u6549\u3b56\u2f17\u0e16\u64d5\u365d\u4b10\u67a0\uc503\u30d5\u9dca\u5ca2\ua9fc\u4c99\u055a\u2bf6\u8f72\ubb49\u5ea0\u673f\u33df\uae45\ufe24\uca45\u8bc4\u33af\u5ca1"

    const-string v8, "\u0005\u0002\u0005\u000f\u0008\t\u0013\u0014\u000b\t\u0004\u0005\u0002\u0011\t\u0008\u0014\u000c\u0002\u0010\u0001\u0016\u0015\u0002\u0011\u000b\u0014\u000e\u0006\u0013\u0010\u0002\u0010\u0002\u0014\u0015\u000c\u0001\u0010\u0002\u0010\u0003\u000f\u0011"

    const v19, -0xffffd4

    const-string v10, "\u0005\u0002\u0005\u000f\u0008\t\u0013\u0014\u000b\t\u0004\u0005\u0002\u0011\t\u0008\u0014\u000c\u0002\u0010\u0001\u0016\u0015\u0002\u0016\u0003\u0005\t\u0002\u0011\t\u0008\u0014\u000c\u0002\u0010\u0001\u0016\u0013\u000e\u0002\u000c\u0003\u0010\u0002\u0010\u00ac"

    const-string v7, "\u6ab4\ua2d1\ud4b1\u61cb"

    const v20, -0x4e5d2e96

    const v21, 0xcbd4

    const-string v3, "\uf4a6\u5cd6\ud9b7"

    const-string v15, "\u0015\u0010\u0015\u0006"

    const-string v13, "\u0005\u0001\u00c7"

    move-object/from16 v24, v13

    const-string v13, "\u8ea5\uaf11\ua2a5\u9f87"

    const v25, 0x87a3

    move-object/from16 v26, v13

    const-string v13, "\ua8a0\u9c31\u78e2\u1772"

    move-object/from16 v27, v13

    const-string v13, "\u51ff\u9c0b\u1ea7\u897a"

    const v28, -0x5863f4af

    move-object/from16 v29, v13

    const-string v13, "\u66cb\uf1fd\uc105"

    move-object/from16 v30, v13

    const-string v13, "\uf47e\u0912\u7202\uaa3a"

    const v31, 0x20912f4

    move-object/from16 v32, v13

    const-string v13, "\u52f5\ufa61\u32f7"

    move-object/from16 v33, v13

    const-string v13, "\u0001\u0016\u000c\u000f"

    const/16 v23, 0x0

    cmpl-float v4, v4, v23

    const v22, 0x49d5d74d

    sub-int v4, v22, v4

    move-object/from16 v22, v13

    move-object/from16 v34, v15

    const/4 v13, 0x0

    invoke-static {v13, v13}, Landroid/view/View;->getDefaultSize(II)I

    move-result v15

    rsub-int v13, v15, 0x572f

    int-to-char v13, v13

    invoke-static {v14, v9, v4, v13, v1}, Lcom/ironsource/adqualitysdk/sdk/i/as;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v2, v4

    const/4 v1, 0x2

    aput-object v5, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/as;->h:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/as;->i:Ljava/util/List;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const/16 v4, 0x30

    const/4 v13, 0x0

    invoke-static {v5, v4, v13}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v14

    add-int/2addr v14, v1

    int-to-byte v1, v14

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int/lit8 v4, v4, 0x25

    invoke-static {v1, v11, v4}, Lcom/ironsource/adqualitysdk/sdk/i/as;->d(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v13

    invoke-static {v13}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    add-int v1, v1, v18

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v13

    const-wide/16 v16, 0x0

    cmp-long v4, v13, v16

    rsub-int v4, v4, 0x4089

    int-to-char v4, v4

    invoke-static {v12, v9, v1, v4, v6}, Lcom/ironsource/adqualitysdk/sdk/i/as;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v2, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x3c

    int-to-byte v1, v1

    const/4 v4, 0x0

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    sub-int v6, v19, v6

    invoke-static {v1, v8, v6}, Lcom/ironsource/adqualitysdk/sdk/i/as;->d(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x2

    aput-object v1, v2, v6

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    int-to-byte v1, v1

    const/4 v4, 0x0

    invoke-static {v4, v4}, Landroid/graphics/PointF;->length(FF)F

    move-result v6

    cmpl-float v6, v6, v4

    add-int/lit8 v6, v6, 0x2f

    invoke-static {v1, v10, v6}, Lcom/ironsource/adqualitysdk/sdk/i/as;->d(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/as;->j:Ljava/util/List;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    shr-int/lit8 v2, v2, 0x16

    sub-int v2, v20, v2

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v6

    add-int v6, v6, v21

    int-to-char v6, v6

    invoke-static {v7, v9, v2, v6, v3}, Lcom/ironsource/adqualitysdk/sdk/i/as;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    invoke-static {v4, v4, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x51

    int-to-byte v2, v2

    invoke-static {v4, v4}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    const/4 v6, 0x3

    rsub-int/lit8 v3, v3, 0x3

    move-object/from16 v7, v34

    invoke-static {v2, v7, v3}, Lcom/ironsource/adqualitysdk/sdk/i/as;->d(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    const/16 v2, 0x30

    invoke-static {v2}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v3

    rsub-int v3, v3, 0x87

    int-to-byte v3, v3

    invoke-static {v4, v4}, Landroid/view/View;->resolveSize(II)I

    move-result v7

    sub-int/2addr v6, v7

    move-object/from16 v7, v24

    invoke-static {v3, v7, v6}, Lcom/ironsource/adqualitysdk/sdk/i/as;->d(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v3

    invoke-static {v5, v2, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    add-int v2, v2, v25

    int-to-char v2, v2

    move-object/from16 v5, v26

    move-object/from16 v6, v27

    invoke-static {v5, v9, v3, v2, v6}, Lcom/ironsource/adqualitysdk/sdk/i/as;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/graphics/PointF;->length(FF)F

    move-result v3

    cmpl-float v3, v3, v2

    sub-int v2, v28, v3

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    rsub-int v3, v3, 0x7a1e

    int-to-char v3, v3

    move-object/from16 v4, v29

    move-object/from16 v5, v30

    invoke-static {v4, v9, v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/as;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    sub-int v2, v31, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    rsub-int v3, v7, 0x3a73

    int-to-char v3, v3

    move-object/from16 v4, v32

    move-object/from16 v7, v33

    invoke-static {v4, v9, v2, v3, v7}, Lcom/ironsource/adqualitysdk/sdk/i/as;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x66

    int-to-byte v2, v2

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    const/4 v4, 0x4

    rsub-int/lit8 v8, v3, 0x4

    move-object/from16 v3, v22

    invoke-static {v2, v3, v8}, Lcom/ironsource/adqualitysdk/sdk/i/as;->d(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/as;->k:Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/as;->l:Lorg/json/JSONObject;

    :try_start_1db
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1df
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/ironsource/adqualitysdk/sdk/i/as;->l:Lorg/json/JSONObject;

    const/4 v4, 0x0

    invoke-static {v4, v4}, Landroid/graphics/PointF;->length(FF)F

    move-result v5

    cmpl-float v5, v5, v4

    rsub-int/lit8 v5, v5, 0x19

    int-to-byte v5, v5

    const-string v6, "\u0008\u0013"

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    const/4 v8, 0x2

    rsub-int/lit8 v10, v7, 0x2

    invoke-static {v5, v6, v10}, Lcom/ironsource/adqualitysdk/sdk/i/as;->d(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20d
    .catch Lorg/json/JSONException; {:try_start_1db .. :try_end_20d} :catch_20e

    goto :goto_1df

    :catch_20e
    :cond_20e
    return-void
.end method

.method static synthetic b(Lcom/ironsource/adqualitysdk/sdk/i/as;Ljava/lang/String;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/as;->g:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/as;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    if-eqz v0, :cond_11

    const/16 v0, 0xe

    goto :goto_13

    :cond_11
    const/16 v0, 0x38

    :goto_13
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/as;->j(Ljava/lang/String;)V

    if-eq v0, v1, :cond_19

    goto :goto_1d

    :cond_19
    const/16 p0, 0x43

    :try_start_1b
    div-int/lit8 p0, p0, 0x0
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_28

    :goto_1d
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/as;->g:I

    add-int/lit8 p0, p0, 0x33

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/as;->f:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :catchall_28
    move-exception p0

    throw p0
.end method

.method private static d(BLjava/lang/String;I)Ljava/lang/String;
    .registers 11

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_6
    check-cast p1, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/as;->d:[C

    sget-char v2, Lcom/ironsource/adqualitysdk/sdk/i/as;->e:C

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

.method private static e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;
    .registers 11

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_6
    check-cast p4, [C

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_e
    check-cast p1, [C

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_16
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻐ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1b
    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    const/4 v1, 0x0

    aget-char v2, p0, v1

    xor-int/2addr p3, v2

    int-to-char p3, p3

    aput-char p3, p0, v1

    const/4 p3, 0x2

    aget-char v2, p1, p3

    int-to-char p2, p2

    add-int/2addr v2, p2

    int-to-char p2, v2

    aput-char p2, p1, p3

    array-length p2, p4

    new-array p3, p2, [C

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    :goto_3b
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    if-ge v1, p2, :cond_80

    add-int/lit8 v2, v1, 0x2

    rem-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, v1, 0x3

    rem-int/lit8 v3, v3, 0x4

    rem-int/lit8 v1, v1, 0x4

    aget-char v1, p0, v1

    mul-int/lit16 v1, v1, 0x7fce

    aget-char v4, p1, v2

    add-int/2addr v1, v4

    const v4, 0xffff

    rem-int/2addr v1, v4

    int-to-char v1, v1

    sput-char v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ｋ:C

    aget-char v5, p0, v3

    mul-int/lit16 v5, v5, 0x7fce

    aget-char v2, p1, v2

    add-int/2addr v5, v2

    div-int/2addr v5, v4

    int-to-char v2, v5

    aput-char v2, p1, v3

    aput-char v1, p0, v3

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    aget-char v2, p4, v1

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/as;->a:J

    xor-long/2addr v2, v4

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/as;->b:I

    int-to-long v4, v4

    xor-long/2addr v2, v4

    sget-char v4, Lcom/ironsource/adqualitysdk/sdk/i/as;->c:C

    int-to-long v4, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    goto :goto_3b

    :cond_80
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p3}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_1b .. :try_end_86} :catchall_87

    return-object p0

    :catchall_87
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private j(Ljava/lang/String;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/as;->g:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/as;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x2d

    if-eqz v0, :cond_11

    const/16 v0, 0x9

    goto :goto_13

    :cond_11
    const/16 v0, 0x2d

    :goto_13
    if-ne v0, v1, :cond_2e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    :try_start_1b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/as;->k:Lorg/json/JSONObject;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_22} :catch_23

    return-void

    :catch_23
    :cond_23
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/as;->g:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/as;->f:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :cond_2e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    const/4 p1, 0x0

    :try_start_32
    throw p1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p1

    throw p1
.end method


# virtual methods
.method final a()I
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/as;->g:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/as;->f:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/as;->k:Lorg/json/JSONObject;

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    const v2, 0xfa1d

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v3

    const/4 v4, 0x0

    const-string v5, "\ue400\ufbe5\u1c1f\u55fa"

    const-string v6, "\u0000\u0000\u0000\u0000"

    const-string v7, "\u4419\u9c74\u769c\uc7ee"

    cmpl-float v3, v3, v4

    sub-int/2addr v2, v3

    int-to-char v2, v2

    invoke-static {v5, v6, v1, v2, v7}, Lcom/ironsource/adqualitysdk/sdk/i/as;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/as;->g:I

    add-int/lit8 v1, v1, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/as;->f:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method final c()I
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/as;->g:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/as;->f:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/as;->k:Lorg/json/JSONObject;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    const v3, 0x87a2

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    add-int/2addr v5, v3

    int-to-char v3, v5

    const-string v5, "\u8ea5\uaf11\ua2a5\u9f87"

    const-string v6, "\u0000\u0000\u0000\u0000"

    const-string v7, "\ua8a0\u9c31\u78e2\u1772"

    invoke-static {v5, v6, v2, v3, v7}, Lcom/ironsource/adqualitysdk/sdk/i/as;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/as;->f:I

    add-int/lit8 v2, v2, 0x67

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/as;->g:I

    rem-int/2addr v2, v1

    if-nez v2, :cond_3b

    const/4 v1, 0x0

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x1

    :goto_3c
    if-eqz v1, :cond_3f

    return v0

    :cond_3f
    const/16 v1, 0x25

    :try_start_41
    div-int/2addr v1, v4
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_43

    return v0

    :catchall_43
    move-exception v0

    throw v0
.end method

.method final f(Lcom/ironsource/adqualitysdk/sdk/i/iq;)V
    .registers 9

    const v0, 0x11daa152

    const-string v1, ""

    invoke-static {v1}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v0, v2

    const/16 v2, 0x30

    invoke-static {v1, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    rsub-int/lit8 v1, v1, -0x1

    int-to-char v1, v1

    const-string v2, "\u53ab\udaa1\ua211\u708c"

    const-string v3, "\u0000\u0000\u0000\u0000"

    const-string v4, "\u9a2c\u187c\u3ad7\u2785\u22b2\u32d8\u48f0\u74cd\u176c"

    invoke-static {v2, v3, v0, v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/as;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v3

    const-string v4, "\u0015\u0005?"

    cmpl-float v2, v3, v2

    rsub-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x3

    invoke-static {v2, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/as;->d(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/as$a;

    invoke-direct {v3, p0}, Lcom/ironsource/adqualitysdk/sdk/i/as$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/as;)V

    invoke-virtual {p1, v0, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/iq;->ﾇ(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ih;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/as;->j(Ljava/lang/String;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/as;->g:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/as;->f:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x24

    if-eqz p1, :cond_5b

    const/16 p1, 0x4b

    goto :goto_5d

    :cond_5b
    const/16 p1, 0x24

    :goto_5d
    if-eq p1, v0, :cond_65

    const/16 p1, 0x34

    :try_start_61
    div-int/2addr p1, v1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_63

    return-void

    :catchall_63
    move-exception p1

    throw p1

    :cond_65
    return-void
.end method

.method final g()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/as;->g:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/as;->f:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/as;->k:Lorg/json/JSONObject;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x57

    int-to-byte v1, v1

    invoke-static {v2, v2}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    const-string v4, "\u0005\u0001\u00c7"

    invoke-static {v1, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/as;->d(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/as;->i:Ljava/util/List;

    invoke-static {v0, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﻐ(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/as;->f:I

    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/as;->g:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3a

    const/4 v1, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    if-eqz v1, :cond_43

    const/16 v1, 0x43

    :try_start_3f
    div-int/2addr v1, v2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_41

    return-object v0

    :catchall_41
    move-exception v0

    throw v0

    :cond_43
    return-object v0
.end method

.method final h()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/as;->g:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/as;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const-string v3, "\uf4a6\u5cd6\ud9b7"

    const v4, 0xcbd4

    const v5, -0x4e5d2e96

    const-string v6, "\u0000\u0000\u0000\u0000"

    const-string v7, "\u6ab4\ua2d1\ud4b1\u61cb"

    if-eq v0, v2, :cond_3d

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/as;->k:Lorg/json/JSONObject;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v5

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v4, v1

    int-to-char v1, v4

    invoke-static {v7, v6, v2, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/as;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_32
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/as;->h:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﻐ(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_52

    :cond_3d
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/as;->k:Lorg/json/JSONObject;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v1

    shl-int/lit8 v1, v1, 0x7f

    rem-int/2addr v5, v1

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    ushr-int v1, v4, v1

    int-to-char v1, v1

    invoke-static {v7, v6, v5, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/as;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_32

    :goto_52
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/as;->f:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/as;->g:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method final i()I
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/as;->f:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/as;->g:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/as;->k:Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v2

    const/4 v3, 0x0

    const-string v4, "\u0015\u0010\u0015\u0006"

    cmpl-float v2, v2, v3

    add-int/lit8 v2, v2, 0x51

    int-to-byte v2, v2

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x4

    invoke-static {v2, v4, v1}, Lcom/ironsource/adqualitysdk/sdk/i/as;->d(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/as;->f:I

    add-int/lit8 v1, v1, 0x1f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/as;->g:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method public final ﱟ()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/as;->k:Lorg/json/JSONObject;

    const v1, 0x20912f5

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "\uf47e\u0912\u7202\uaa3a"

    const-string v8, "\u0000\u0000\u0000\u0000"

    const-string v9, "\u52f5\ufa61\u32f7"

    cmp-long v10, v2, v4

    sub-int/2addr v1, v10

    invoke-static {v6, v6}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    add-int/lit16 v2, v2, 0x3a72

    int-to-char v2, v2

    invoke-static {v7, v8, v1, v2, v9}, Lcom/ironsource/adqualitysdk/sdk/i/as;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﻐ(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/as;->g:I

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/as;->f:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3b

    const/4 v1, 0x0

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x1

    :goto_3c
    if-eqz v1, :cond_3f

    return-object v0

    :cond_3f
    const/16 v1, 0x32

    :try_start_41
    div-int/2addr v1, v6
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_43

    return-object v0

    :catchall_43
    move-exception v0

    throw v0
.end method

.method public final ﺙ()Ljava/lang/String;
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/as;->g:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/as;->f:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/as;->k:Lorg/json/JSONObject;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-static {v1}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v1

    add-int/lit16 v1, v1, 0x2310

    int-to-char v1, v1

    const-string v4, "\u89e6\uf86e\u0fa7\u2c23"

    const-string v5, "\u0000\u0000\u0000\u0000"

    const-string v6, "\u1a5f\u650d\ua70b\ufe99"

    invoke-static {v4, v5, v3, v1, v6}, Lcom/ironsource/adqualitysdk/sdk/i/as;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-string v7, "\u0014\r\u00d6"

    cmp-long v8, v3, v5

    rsub-int/lit8 v3, v8, 0x6b

    int-to-byte v3, v3

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x3

    invoke-static {v3, v7, v2}, Lcom/ironsource/adqualitysdk/sdk/i/as;->d(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/as;->g:I

    add-int/lit8 v1, v1, 0x51

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/as;->f:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final ﻏ()Lorg/json/JSONObject;
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/as;->g:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/as;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x5

    if-eqz v0, :cond_10

    const/16 v0, 0x27

    goto :goto_11

    :cond_10
    const/4 v0, 0x5

    :goto_11
    const-string v2, ""

    const/4 v3, 0x4

    const-string v4, "\u0008\u000f\u0018\u0001"

    if-eq v0, v1, :cond_41

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/as;->k:Lorg/json/JSONObject;

    const/16 v1, 0x25

    const/4 v5, 0x1

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    rem-int/2addr v1, v5

    int-to-byte v1, v1

    invoke-static {v2}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    shr-int v2, v3, v2

    invoke-static {v1, v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/as;->d(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/16 v1, 0x37

    if-nez v0, :cond_3c

    const/16 v2, 0x5c

    goto :goto_3e

    :cond_3c
    const/16 v2, 0x37

    :goto_3e
    if-eq v2, v1, :cond_6a

    goto :goto_5e

    :cond_41
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/as;->k:Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x6b

    int-to-byte v1, v1

    invoke-static {v2}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v1, v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/as;->d(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_6a

    :goto_5e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/as;->l:Lorg/json/JSONObject;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/as;->g:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/as;->f:I

    rem-int/lit8 v1, v1, 0x2

    :cond_6a
    return-object v0
.end method

.method public final ﻐ()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/as;->k:Lorg/json/JSONObject;

    const v1, -0x5863f4af

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    rsub-int v2, v2, 0x7a1e

    int-to-char v2, v2

    const-string v4, "\u51ff\u9c0b\u1ea7\u897a"

    const-string v5, "\u0000\u0000\u0000\u0000"

    const-string v6, "\u66cb\uf1fd\uc105"

    invoke-static {v4, v5, v1, v2, v6}, Lcom/ironsource/adqualitysdk/sdk/i/as;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﻐ(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/as;->g:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/as;->f:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_39

    const/4 v1, 0x1

    goto :goto_3a

    :cond_39
    const/4 v1, 0x0

    :goto_3a
    if-eqz v1, :cond_42

    const/16 v1, 0x4e

    :try_start_3e
    div-int/2addr v1, v3
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_40

    return-object v0

    :catchall_40
    move-exception v0

    throw v0

    :cond_42
    return-object v0
.end method
