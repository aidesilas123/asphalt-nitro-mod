###### Class com.json.adqualitysdk.sdk.i.ju (com.ironsource.adqualitysdk.sdk.i.ju)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ju;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/ju$a;,
        Lcom/ironsource/adqualitysdk/sdk/i/ju$d;
    }
.end annotation


# static fields
.field private static a:J = 0x2184b0d61dd654e7L

.field private static b:I = 0x0

.field private static c:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/json/JSONArray;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2a

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->e(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_19

    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    const/4 v1, 0x1

    :goto_1a
    if-eq v1, v0, :cond_29

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    add-int/lit8 p0, p0, 0x3

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    rem-int/lit8 p0, p0, 0x2

    :cond_29
    return-void

    :cond_2a
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->e(Ljava/lang/Object;I)Ljava/lang/String;

    const/4 p0, 0x0

    :try_start_32
    throw p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p0

    throw p0
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

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/ju;->a:J

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

.method private static c(Lorg/json/JSONObject;I)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x4b

    if-nez v0, :cond_11

    const/16 v0, 0x4b

    goto :goto_13

    :cond_11
    const/16 v0, 0x57

    :goto_13
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾒ(Lorg/json/JSONObject;ILjava/util/List;)V

    if-eq v0, v1, :cond_2e

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    add-int/lit8 p0, p0, 0x23

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_27

    const/4 p0, 0x0

    goto :goto_28

    :cond_27
    const/4 p0, 0x1

    :goto_28
    if-eqz p0, :cond_2b

    return-void

    :cond_2b
    :try_start_2b
    throw v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p0

    throw p0

    :cond_2e
    :try_start_2e
    throw v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception p0

    throw p0
.end method

.method private static d(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->e(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    if-eq v2, v0, :cond_12

    goto :goto_43

    :cond_12
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_36

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    add-int/lit8 p2, p2, 0x49

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    rem-int/lit8 p2, p2, 0x2

    const/4 v0, 0x5

    if-nez p2, :cond_2a

    const/4 p2, 0x5

    goto :goto_2c

    :cond_2a
    const/16 p2, 0x3a

    :goto_2c
    if-eq p2, v0, :cond_30

    :goto_2e
    move-object p2, v2

    goto :goto_36

    :cond_30
    const/16 p2, 0x5b

    :try_start_32
    div-int/2addr p2, v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_34

    goto :goto_2e

    :catchall_34
    move-exception p0

    throw p0

    :cond_36
    :goto_36
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    add-int/lit8 p0, p0, 0x7

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    rem-int/lit8 p0, p0, 0x2

    :goto_43
    return-void
.end method

.method private static e(Ljava/lang/Object;I)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x11

    if-eqz v0, :cond_11

    const/16 v0, 0x4f

    goto :goto_13

    :cond_11
    const/16 v0, 0x11

    :goto_13
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v0, v2, :cond_21

    instance-of v0, p0, Lorg/json/JSONObject;

    const/16 v2, 0x2e

    :try_start_1b
    div-int/2addr v2, v4
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1f

    if-eqz v0, :cond_2e

    goto :goto_7a

    :catchall_1f
    move-exception p0

    throw p0

    :cond_21
    instance-of v0, p0, Lorg/json/JSONObject;

    const/16 v2, 0x23

    if-eqz v0, :cond_2a

    const/16 v0, 0x23

    goto :goto_2c

    :cond_2a
    const/16 v0, 0x22

    :goto_2c
    if-eq v0, v2, :cond_7a

    :cond_2e
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_4a

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_42

    check-cast p0, Lorg/json/JSONArray;

    invoke-static {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->f(Lorg/json/JSONArray;I)V

    goto :goto_87

    :cond_42
    check-cast p0, Lorg/json/JSONArray;

    invoke-static {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->f(Lorg/json/JSONArray;I)V

    :try_start_47
    throw v3
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception p0

    throw p0

    :cond_4a
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_87

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_79

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result p0

    add-int/lit16 p0, p0, 0x7bea

    const-string p1, "\u54c9\u2f20\ua31b\u2774\ubb37\u3f18\ub3e4\u37d6\u8bcc\u0fb7\u8389\u0781\u9a6f\u1e1b"

    invoke-static {p1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_79
    return-object p0

    :cond_7a
    :goto_7a
    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    rem-int/lit8 v1, v1, 0x2

    check-cast p0, Lorg/json/JSONObject;

    invoke-static {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c(Lorg/json/JSONObject;I)V

    :cond_87
    :goto_87
    return-object v3
.end method

.method private static f(Lorg/json/JSONArray;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    if-nez v0, :cond_11

    const/16 v0, 0x26

    goto :goto_13

    :cond_11
    const/16 v0, 0xe

    :goto_13
    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_15
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    if-eq v1, v3, :cond_22

    return-void

    :cond_22
    invoke-static {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->a(Lorg/json/JSONArray;II)V

    add-int/lit8 v0, v0, 0x1

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    add-int/lit8 v1, v1, 0x65

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    rem-int/lit8 v1, v1, 0x2

    goto :goto_15
.end method

.method public static ﻐ(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/16 p1, 0x3d

    if-nez p0, :cond_b

    const/16 v0, 0x3d

    goto :goto_c

    :cond_b
    const/4 v0, 0x6

    :goto_c
    if-eq v0, p1, :cond_1d

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾒ(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    :cond_1d
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    add-int/lit8 p0, p0, 0x15

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    rem-int/lit8 p0, p0, 0x2

    add-int/lit8 p1, p1, 0x3

    rem-int/lit16 p0, p1, 0x80

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    rem-int/lit8 p1, p1, 0x2

    return-object p2
.end method

.method public static ﻐ(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ju$c;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ju$c;-><init>()V

    invoke-static {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾇ(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/ju$a;)Ljava/util/Map;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method public static ｋ(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    .registers 8

    const/16 v0, 0x33

    const/4 v1, 0x6

    if-eqz p0, :cond_8

    const/16 v2, 0x33

    goto :goto_9

    :cond_8
    const/4 v2, 0x6

    :goto_9
    if-eq v2, v1, :cond_65

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    const/16 v1, 0x30

    :try_start_1a
    div-int/2addr v1, v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1e

    if-eqz p1, :cond_65

    goto :goto_22

    :catchall_1e
    move-exception p0

    throw p0

    :cond_20
    if-eqz p1, :cond_65

    :goto_22
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x38

    if-eqz v3, :cond_31

    const/16 v3, 0x38

    goto :goto_33

    :cond_31
    const/16 v3, 0x47

    :goto_33
    if-eq v3, v4, :cond_4b

    if-eqz p2, :cond_38

    goto :goto_39

    :cond_38
    const/4 v2, 0x1

    :goto_39
    if-eqz v2, :cond_3c

    goto :goto_65

    :cond_3c
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    add-int/2addr p1, v0

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    rem-int/lit8 p1, p1, 0x2

    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﱟ:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_65

    :cond_4b
    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    add-int/lit8 v3, v3, 0x79

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    rem-int/lit8 v3, v3, 0x2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_5b
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_5b .. :try_end_62} :catch_63

    goto :goto_26

    :catch_63
    nop

    goto :goto_26

    :cond_65
    :goto_65
    return-void
.end method

.method public static ﾇ(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ju$b;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ju$b;-><init>()V

    invoke-static {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾇ(Lorg/json/JSONArray;Lcom/ironsource/adqualitysdk/sdk/i/ju$d;)Ljava/util/List;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method public static ﾇ(Lorg/json/JSONArray;Lcom/ironsource/adqualitysdk/sdk/i/ju$d;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Lcom/ironsource/adqualitysdk/sdk/i/ju$d<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_57

    if-eqz p0, :cond_56

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_16
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    :goto_20
    if-eqz v3, :cond_55

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    add-int/lit8 v3, v3, 0x69

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_30

    const/4 v3, 0x1

    goto :goto_31

    :cond_30
    const/4 v3, 0x0

    :goto_31
    if-eq v3, v4, :cond_3a

    invoke-interface {p1, p0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ju$d;->ｋ(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_50

    goto :goto_43

    :cond_3a
    invoke-interface {p1, p0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ju$d;->ｋ(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x41

    :try_start_40
    div-int/2addr v4, v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_53

    if-eqz v3, :cond_50

    :goto_43
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    add-int/lit8 v3, v3, 0x47

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    rem-int/lit8 v3, v3, 0x2

    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :catchall_53
    move-exception p0

    throw p0

    :cond_55
    return-object v0

    :cond_56
    return-object v1

    :cond_57
    :try_start_57
    throw v1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception p0

    throw p0
.end method

.method public static ﾇ(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/ju$a;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Lcom/ironsource/adqualitysdk/sdk/i/ju$a<",
            "TT;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x23

    if-eqz v0, :cond_11

    const/16 v0, 0x38

    goto :goto_13

    :cond_11
    const/16 v0, 0x23

    :goto_13
    const/4 v2, 0x0

    if-ne v0, v1, :cond_46

    if-eqz p0, :cond_45

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    add-int/lit8 v2, v2, 0x71

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    rem-int/lit8 v2, v2, 0x2

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    const/4 v2, 0x1

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    :goto_34
    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, p0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ju$a;->ｋ(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    :cond_44
    return-object v0

    :cond_45
    return-object v2

    :cond_46
    :try_start_46
    throw v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception p0

    throw p0
.end method

.method public static ﾇ(IIJJ)Lorg/json/JSONObject;
    .registers 21

    move-wide/from16 v0, p2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-wide/16 v3, -0x1

    const/16 v5, 0x62

    cmp-long v6, v0, v3

    if-lez v6, :cond_12

    const/16 v3, 0x62

    goto :goto_14

    :cond_12
    const/16 v3, 0x4e

    :goto_14
    const-string v4, "\u5492"

    const-string v6, "\u5493"

    const-string v7, "\u549e"

    const-string v8, "\u549f"

    const/4 v9, 0x0

    const-string v10, ""

    if-eq v3, v5, :cond_76

    const/16 v0, 0x30

    :try_start_23
    invoke-static {v10, v0, v9, v9}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    add-int/lit16 v1, v1, 0x5ad4

    invoke-static {v8, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const v1, 0xc4d9

    invoke-static {v0}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v7, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {v10, v10, v9}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    add-int/lit16 v0, v0, 0x4b77

    invoke-static {v6, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {v10}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    add-int/lit16 v0, v0, 0x7d4d

    invoke-static {v4, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6a
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_6a} :catch_d2

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    :goto_72
    rem-int/lit8 v0, v0, 0x2

    goto/16 :goto_f6

    :cond_76
    const-wide/16 v11, 0x0

    :try_start_78
    invoke-static {v11, v12}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v3

    add-int/lit16 v3, v3, 0x5ad4

    invoke-static {v8, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    move v5, p0

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const v3, 0xc508

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    cmp-long v5, v13, v11

    add-int/2addr v5, v3

    invoke-static {v7, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    move/from16 v5, p1

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    shr-int/lit8 v3, v3, 0x16

    add-int/lit16 v3, v3, 0x4b77

    invoke-static {v6, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit16 v0, v0, 0x7d4d

    invoke-static {v4, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    move-wide/from16 v3, p4

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_c9
    .catch Lorg/json/JSONException; {:try_start_78 .. :try_end_c9} :catch_d2

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    goto :goto_72

    :catch_d2
    move-exception v0

    invoke-static {v9, v9}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    rsub-int v1, v1, 0x1f99

    const-string v3, "\u54ad\u4b2d\u6b9a\u0a62\u2ad6\uc96e\ue918\u89a4\ua85c"

    invoke-static {v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    add-int/lit16 v3, v3, 0xc9d

    const-string v4, "\u54a2\u5808\u4daf\u715f\u66e1\u6bd6\u1f2a\u0cde\u306a\u2503\u2ab1\ude31\uc3d5\uf779\ue451\ue9b8\u9d56\u82f9\ub799\ubb14\ua8cc\u5c73\u41fa\u7694\u7a7f\u6fd8\u1366\u0007\u35a5"

    invoke-static {v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_f6
    return-object v2
.end method

.method public static ﾇ(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ｋ(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    add-int/lit8 p0, p0, 0x47

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    if-nez v0, :cond_1e

    return-void

    :cond_1e
    const/4 p0, 0x0

    :try_start_1f
    throw p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p0

    throw p0
.end method

.method public static ﾒ(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    add-int/lit8 v1, v0, 0x45

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v1, 0x43

    if-nez p0, :cond_11

    const/16 v2, 0x43

    goto :goto_13

    :cond_11
    const/16 v2, 0x11

    :goto_13
    const/4 v3, 0x0

    if-eq v2, v1, :cond_2d

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾇ(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2c

    const/16 v0, 0xf

    :try_start_28
    div-int/2addr v0, v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_2a

    return-object p0

    :catchall_2a
    move-exception p0

    throw p0

    :cond_2c
    return-object p0

    :cond_2d
    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 p0, 0x1

    if-nez v0, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v3, 0x1

    :goto_3a
    const/4 v0, 0x0

    if-ne v3, p0, :cond_3e

    return-object v0

    :cond_3e
    :try_start_3e
    throw v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception p0

    throw p0
.end method

.method public static ﾒ(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾒ(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method public static ﾒ(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .registers 5

    if-eqz p0, :cond_3d

    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_b} :catch_3d

    const/4 p0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_11

    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    const/4 p1, 0x1

    :goto_12
    if-eq p1, v1, :cond_3c

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    add-int/lit8 p1, p1, 0xb

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_21

    const/4 p0, 0x1

    :cond_21
    if-eq p0, v1, :cond_33

    :try_start_23
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﱟ:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_28} :catch_3d

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    add-int/lit8 p0, p0, 0x73

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_3c

    :cond_33
    :try_start_33
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﱟ:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_38} :catch_3d

    const/4 p0, 0x0

    :try_start_39
    throw p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception p0

    throw p0

    :cond_3c
    :goto_3c
    return-object v0

    :catch_3d
    :cond_3d
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method public static ﾒ(Lorg/json/JSONObject;ILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4} :catch_43

    const/16 v1, 0x54

    if-eqz v0, :cond_b

    const/16 v2, 0x28

    goto :goto_d

    :cond_b
    const/16 v2, 0x54

    :goto_d
    if-eq v2, v1, :cond_42

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1b
    :try_start_1b
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_23

    const/4 v3, 0x1

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    :goto_24
    if-eqz v3, :cond_42

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_32

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3f

    :cond_32
    invoke-static {p0, v3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->d(Lorg/json/JSONObject;Ljava/lang/String;I)V
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_35} :catch_43

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/ju;->c:I

    add-int/lit8 v3, v3, 0x9

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b:I

    rem-int/lit8 v3, v3, 0x2

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_42
    return-void

    :catch_43
    move-exception p0

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result p1

    shr-int/lit8 p1, p1, 0x18

    add-int/lit16 p1, p1, 0x1f99

    const-string p2, "\u54ad\u4b2d\u6b9a\u0a62\u2ad6\uc96e\ue918\u89a4\ua85c"

    invoke-static {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    const p2, 0xbd67

    const-string v0, ""

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    sub-int/2addr p2, v0

    const-string v0, "\u54a2\ue9f2\u2e5b\u6cbd\ua109\ue7c4\u24fb\u7957\ubfb3\ufc11\u3285\u77eb\ub447\ucab5\u0f2b\u4d89\u82b7\uc75a\u05aa\u5a2d\u9885"

    invoke-static {v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.ju.a (com.ironsource.adqualitysdk.sdk.i.ju$a)
.class public interface abstract Lcom/ironsource/adqualitysdk/sdk/i/ju$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ju;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract ｋ(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.ju.b (com.ironsource.adqualitysdk.sdk.i.ju$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ju$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ju$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾇ(Lorg/json/JSONArray;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ironsource/adqualitysdk/sdk/i/ju$d<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ｋ(Lorg/json/JSONArray;I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "I)TT;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.ju.c (com.ironsource.adqualitysdk.sdk.i.ju$c)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ju$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ju$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﻐ(Lorg/json/JSONObject;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ironsource/adqualitysdk/sdk/i/ju$a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ｋ(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.ju.d (com.ironsource.adqualitysdk.sdk.i.ju$d)
.class public interface abstract Lcom/ironsource/adqualitysdk/sdk/i/ju$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ju;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract ｋ(Lorg/json/JSONArray;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "I)TT;"
        }
    .end annotation
.end method
