###### Class com.json.adqualitysdk.sdk.i.co (com.ironsource.adqualitysdk.sdk.i.co)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/co;
.super Lcom/ironsource/adqualitysdk/sdk/i/cx;
.source ""


# static fields
.field private static h:J = -0x7fec614a5fda83b4L

.field private static i:I = 0x0

.field private static j:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;-><init>()V

    return-void
.end method

.method private static d(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/co;->h:J

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

.method public static ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/cj;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-class v0, Ljava/lang/Boolean;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    rsub-int v3, v3, 0x13d5

    const-string v5, "\u7c76"

    invoke-static {v5, v3}, Lcom/ironsource/adqualitysdk/sdk/i/co;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v1, Ljava/lang/Throwable;

    const/4 v3, 0x1

    invoke-static {p1, v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/Throwable;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v9, 0x0

    const/4 v7, 0x2

    if-le v1, v7, :cond_d8

    const-class v1, Lorg/json/JSONObject;

    invoke-static {p1, v7, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->b(Ljava/util/List;ILjava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a9

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/co;->j:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v8, v1, 0x80

    sput v8, Lcom/ironsource/adqualitysdk/sdk/i/co;->i:I

    rem-int/2addr v1, v7

    const-class v1, Lorg/json/JSONObject;

    invoke-static {p1, v7, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x3

    if-le v8, v10, :cond_a7

    sget v8, Lcom/ironsource/adqualitysdk/sdk/i/co;->i:I

    add-int/lit8 v8, v8, 0x5

    rem-int/lit16 v11, v8, 0x80

    sput v11, Lcom/ironsource/adqualitysdk/sdk/i/co;->j:I

    rem-int/2addr v8, v7

    if-nez v8, :cond_78

    const/4 v3, 0x0

    :cond_78
    if-eqz v3, :cond_81

    invoke-static {p1, v10, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->b(Ljava/util/List;ILjava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_a7

    goto :goto_91

    :cond_81
    invoke-static {p1, v7, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->b(Ljava/util/List;ILjava/lang/Class;)Z

    move-result v3

    const/16 v8, 0x33

    if-eqz v3, :cond_8c

    const/16 v3, 0x33

    goto :goto_8e

    :cond_8c
    const/16 v3, 0x44

    :goto_8e
    if-eq v3, v8, :cond_91

    goto :goto_a7

    :cond_91
    :goto_91
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/co;->j:I

    add-int/lit8 v2, v2, 0x77

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/co;->i:I

    rem-int/2addr v2, v7

    invoke-static {p1, v10, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object v7, v1

    move v8, v2

    goto :goto_d0

    :cond_a7
    :goto_a7
    move-object v7, v1

    goto :goto_b9

    :cond_a9
    invoke-static {p1, v7, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->b(Ljava/util/List;ILjava/lang/Class;)Z

    move-result v1

    const/16 v3, 0x38

    if-eqz v1, :cond_b4

    const/16 v1, 0x38

    goto :goto_b6

    :cond_b4
    const/16 v1, 0x28

    :goto_b6
    if-eq v1, v3, :cond_bb

    move-object v7, v9

    :goto_b9
    const/4 v8, 0x0

    goto :goto_d0

    :cond_bb
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/co;->i:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/co;->j:I

    rem-int/2addr v1, v7

    invoke-static {p1, v7, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v8, v2

    move-object v7, v9

    :goto_d0
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v3 .. v8}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lorg/json/JSONObject;Z)V

    goto :goto_e1

    :cond_d8
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lorg/json/JSONObject;Z)V

    :goto_e1
    return-object v9
.end method
