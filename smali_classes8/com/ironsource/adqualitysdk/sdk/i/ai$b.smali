###### Class com.ironsource.adqualitysdk.sdk.i.ai.b (com.ironsource.adqualitysdk.sdk.i.ai$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ai$b;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ai;->ｋ(Lorg/json/JSONArray;ZLcom/ironsource/adqualitysdk/sdk/i/ai$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static d:I = 0x81

.field private static e:I = 0x0

.field private static f:I = 0x1


# instance fields
.field private synthetic g:Z

.field private synthetic h:Lorg/json/JSONArray;

.field final synthetic i:Lcom/ironsource/adqualitysdk/sdk/i/ai$e;

.field private synthetic j:Lcom/ironsource/adqualitysdk/sdk/i/ai;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ai;ZLorg/json/JSONArray;Lcom/ironsource/adqualitysdk/sdk/i/ai$e;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->j:Lcom/ironsource/adqualitysdk/sdk/i/ai;

    iput-boolean p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->g:Z

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->h:Lorg/json/JSONArray;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->i:Lcom/ironsource/adqualitysdk/sdk/i/ai$e;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method

.method private static b(IZIILjava/lang/String;)Ljava/lang/String;
    .registers 11

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_6
    check-cast p4, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﻐ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    new-array v1, p3, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    :goto_10
    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    if-ge v3, p3, :cond_2f

    aget-char v3, p4, v3

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾇ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾇ:I

    add-int/2addr v4, p0

    int-to-char v4, v4

    aput-char v4, v1, v3

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    aget-char v4, v1, v3

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->d:I

    sub-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    goto :goto_10

    :cond_2f
    if-lez p2, :cond_46

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾒ:I

    new-array p0, p3, [C

    invoke-static {v1, v2, p0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾒ:I

    sub-int p4, p3, p2

    invoke-static {p0, v2, v1, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾒ:I

    sub-int p4, p3, p2

    invoke-static {p0, p2, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_46
    if-eqz p1, :cond_5e

    new-array p0, p3, [C

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    :goto_4c
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    if-ge p1, p3, :cond_5d

    sub-int p2, p3, p1

    add-int/lit8 p2, p2, -0x1

    aget-char p2, v1, p2

    aput-char p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    goto :goto_4c

    :cond_5d
    move-object v1, p0

    :cond_5e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_b .. :try_end_64} :catchall_65

    return-object p0

    :catchall_65
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final ﻛ()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ""

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->e:I

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->f:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->j:Lcom/ironsource/adqualitysdk/sdk/i/ai;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->g:Z

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/ironsource/adqualitysdk/sdk/i/jk;->ｋ(Lorg/json/JSONObject;ZZZ)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_17
    invoke-static {v0, v4, v4}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    rsub-int v3, v3, 0xef

    invoke-static {v4}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    add-int/lit8 v5, v5, 0x2

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x6

    const-string v7, "\u0008\ufff7\u0005\u0006\u0000\ufff7"

    invoke-static {v3, v2, v5, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->h:Lorg/json/JSONArray;

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_3d} :catch_48

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->e:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->f:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_8a

    :catch_48
    move-exception v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    add-int/lit16 v5, v5, 0xe8

    const v6, 0x1000006

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    add-int/2addr v7, v6

    invoke-static {v0}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x18

    const-string v8, "\ufffe\u000b\ufffa\r\u0008\u000b\uffda\u0007\ufffa\u0005\u0012\r\u0002\ufffc\u000c\uffde\u000f\ufffe\u0007\r\uffe0\ufffe\u0007"

    invoke-static {v5, v4, v7, v6, v8}, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x30

    invoke-static {v0, v6, v4, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v0

    add-int/lit16 v0, v0, 0xe4

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-static {v4, v4, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x18

    const-string v7, "\r\u0010\u0010\uffe3\uffff\u0012\u0003\uffeb\u0012\u000c\u0003\u0014\u0003\uffbe\u0005\u000c\u0007\u0012\uffff\u0003\u0010\u0001\uffbe\u0010"

    invoke-static {v0, v2, v6, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8a
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ai$b$a;

    invoke-direct {v0, p0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ai$b$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ai$b;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    return-void
.end method
