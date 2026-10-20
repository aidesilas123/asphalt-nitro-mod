###### Class com.ironsource.adqualitysdk.sdk.i.gl.b (com.ironsource.adqualitysdk.sdk.i.gl$b)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/gl$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/gd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/gl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static a:[C = null

.field private static b:I = 0x79

.field private static c:Z = true

.field private static d:Z = true

.field private static e:I = 0x0

.field private static f:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x18

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/gl$b;->a:[C

    return-void

    :array_a
    .array-data 2
        0xdcs
        0xe8s
        0xe6s
        0xa7s
        0xdbs
        0xebs
        0xe2s
        0xdds
        0xe0s
        0xdes
        0xecs
        0xe4s
        0xc6s
        0xbbs
        0xccs
        0xbds
        0xc4s
        0xe7s
        0xeds
        0xa8s
        0xdas
        0xe5s
        0xb0s
        0xa9s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/gl$b;->a:[C

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/gl$b;->b:I

    sget-boolean v3, Lcom/ironsource/adqualitysdk/sdk/i/gl$b;->d:Z

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
    sget-boolean p3, Lcom/ironsource/adqualitysdk/sdk/i/gl$b;->c:Z

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
.method public final ﻐ()Ljava/lang/Class;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/gl$b;->e:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/gl$b;->f:I

    rem-int/lit8 v0, v0, 0x2

    const-class v0, Lcom/mbridge/msdk/MBridgeSDK;

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/gl$b;->e:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final ﻛ()Ljava/lang/String;
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/gl$b;->e:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/gl$b;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x45

    if-nez v0, :cond_11

    const/16 v0, 0x45

    goto :goto_13

    :cond_11
    const/16 v0, 0x52

    :goto_13
    const/4 v2, 0x0

    const-string v3, "\u0091\u0090\u008f\u008a\u0089\u0088\u0087\u0086\u008e\u008d\u0084\u008c\u0088\u008b\u0083\u0084\u008a\u0089\u0088\u0087\u0086\u0085\u0083\u0084\u0083\u0082\u0081"

    const-string v4, ""

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v0, v1, :cond_25

    const/16 v0, 0x30

    invoke-static {v4, v0, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x7e

    goto :goto_2e

    :cond_25
    const/16 v0, 0x5c

    const/16 v1, 0x4c

    invoke-static {v4, v1, v5}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    div-int/2addr v0, v1

    :goto_2e
    invoke-static {v6, v6, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/gl$b;->a([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/gl$b;->e:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/gl$b;->f:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_43

    const/4 v2, 0x1

    :cond_43
    if-eq v2, v5, :cond_46

    return-object v0

    :cond_46
    :try_start_46
    throw v6
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception v0

    throw v0
.end method

.method public final ｋ()Lcom/ironsource/adqualitysdk/sdk/i/iw$e;
    .registers 8

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v3

    const/4 v4, 0x0

    const-string v5, "\u0096\u0095\u0086\u0089\u008a\u0093\u0092\u0087\u0083\u0094\u008b\u0086\u0082\u0093\u0081\u008a\u0092\u0092\u0082\u0081"

    const-string v6, "\u0098\u0084\u0097"

    cmpl-float v2, v3, v2

    add-int/lit8 v2, v2, 0x7f

    invoke-static {v4, v4, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/gl$b;->a([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x7f

    invoke-static {v4, v4, v3, v6}, Lcom/ironsource/adqualitysdk/sdk/i/gl$b;->a([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/gl$b;->f:I

    add-int/lit8 v2, v2, 0x37

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/gl$b;->e:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_39

    const/4 v2, 0x1

    goto :goto_3a

    :cond_39
    const/4 v2, 0x0

    :goto_3a
    if-eq v2, v3, :cond_3d

    return-object v0

    :cond_3d
    const/16 v2, 0x5c

    :try_start_3f
    div-int/2addr v2, v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_41

    return-object v0

    :catchall_41
    move-exception v0

    throw v0
.end method

.method public final ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/az;
    .registers 5

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/bs$a;

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x7f

    const/4 v2, 0x0

    const-string v3, "\u0096\u0095\u0086\u0089\u008a\u0093\u0092\u0087\u0083"

    invoke-static {v2, v2, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/gl$b;->a([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bs$a;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/gl$b;->e:I

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/gl$b;->f:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_27

    const/4 v1, 0x0

    goto :goto_28

    :cond_27
    const/4 v1, 0x1

    :goto_28
    if-eqz v1, :cond_2b

    return-object v0

    :cond_2b
    const/16 v1, 0x5c

    :try_start_2d
    div-int/2addr v1, v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2f

    return-object v0

    :catchall_2f
    move-exception v0

    throw v0
.end method

.method public final ﾒ()Ljava/lang/String;
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/gl$b;->e:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/gl$b;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const-string v3, "\u0096\u0095\u0086\u0089\u008a\u0093\u0092\u0087\u0083"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v0, v2, :cond_28

    invoke-static {v1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    cmpl-float v0, v0, v4

    add-int/lit8 v0, v0, 0x7f

    :goto_1f
    invoke-static {v5, v5, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/gl$b;->a([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    :cond_28
    const/16 v0, 0x6d

    invoke-static {v2}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    cmpl-float v1, v1, v4

    ushr-int/2addr v0, v1

    goto :goto_1f

    :goto_32
    return-object v0
.end method
