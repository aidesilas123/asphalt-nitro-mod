###### Class com.json.adqualitysdk.sdk.i.db (com.ironsource.adqualitysdk.sdk.i.db)
.class public Lcom/ironsource/adqualitysdk/sdk/i/db;
.super Lcom/ironsource/adqualitysdk/sdk/i/cx;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/cg;


# static fields
.field private static h:C = '\u57f3'

.field private static i:C = '\u7d76'

.field private static j:C = '\u93a5'

.field private static k:C = '\u6eb6'

.field private static l:J = 0x304e6e6b146b4f4aL

.field private static m:I = 0x0

.field private static n:I = 0x1


# instance fields
.field private o:Ljava/lang/String;

.field private p:Lcom/ironsource/adqualitysdk/sdk/i/hf;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private final s:Lorg/json/JSONObject;

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->s:Lorg/json/JSONObject;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->t:Ljava/util/List;

    return-void
.end method

.method private d()Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->o:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    const/4 v3, 0x1

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    :goto_d
    if-eq v3, v2, :cond_10

    goto :goto_32

    :cond_10
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->p:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    if-eqz v2, :cond_32

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﭸ:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﮉ:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->p:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/hf;->ﾒ()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_28} :catch_7b

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    rem-int/lit8 v1, v1, 0x2

    :cond_32
    :goto_32
    :try_start_32
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ףּ:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->סּ:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_54

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ヮ:Ljava/lang/String;

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->t:Ljava/util/List;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_54
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->s:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_71

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﭴ:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->s:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_67
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_67} :catch_7b

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    rem-int/lit8 v1, v1, 0x2

    :cond_71
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    rem-int/lit8 v1, v1, 0x2

    :catch_7b
    return-object v0
.end method

.method private e()Ljava/lang/Object;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v3, 0x13

    if-eqz v0, :cond_21

    const/16 v0, 0x13

    goto :goto_23

    :cond_21
    const/16 v0, 0x47

    :goto_23
    if-eq v0, v3, :cond_26

    goto :goto_3b

    :cond_26
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_38

    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    :goto_39
    if-eqz v0, :cond_3c

    :cond_3b
    :goto_3b
    const/4 v1, 0x1

    :cond_3c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4d

    return-object v0

    :cond_4d
    const/4 v0, 0x0

    :try_start_4e
    throw v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception v0

    throw v0
.end method

.method private f()Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->s:Lorg/json/JSONObject;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﭸ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method private g()Ljava/lang/Object;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x3b

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_12

    :cond_10
    const/16 v0, 0x3b

    :goto_12
    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->s:Lorg/json/JSONObject;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->סּ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1d
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->s:Lorg/json/JSONObject;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->סּ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_25
    throw v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v0

    throw v0
.end method

.method private h(Ljava/lang/String;)V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eq v0, v2, :cond_1b

    :try_start_13
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->s:Lorg/json/JSONObject;

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ףּ:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_24

    :cond_1b
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->s:Lorg/json/JSONObject;

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ףּ:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_22} :catch_3b

    const/4 p1, 0x1

    :try_start_23
    div-int/2addr p1, v1
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_24} :catch_3b
    .catchall {:try_start_23 .. :try_end_24} :catchall_39

    :goto_24
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    add-int/lit8 p1, p1, 0x3f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_31

    goto :goto_32

    :cond_31
    const/4 v1, 0x1

    :goto_32
    if-eqz v1, :cond_35

    return-void

    :cond_35
    const/4 p1, 0x0

    :try_start_36
    throw p1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception p1

    throw p1

    :catchall_39
    move-exception p1

    throw p1

    :catch_3b
    return-void
.end method

.method private i()Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->s:Lorg/json/JSONObject;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ヮ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x1b

    if-nez v1, :cond_23

    const/16 v1, 0x1b

    goto :goto_25

    :cond_23
    const/16 v1, 0x4a

    :goto_25
    if-eq v1, v2, :cond_28

    return-object v0

    :cond_28
    const/16 v1, 0x52

    :try_start_2a
    div-int/lit8 v1, v1, 0x0
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_2d

    return-object v0

    :catchall_2d
    move-exception v0

    throw v0
.end method

.method private j(Ljava/lang/String;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_a
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->s:Lorg/json/JSONObject;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ヮ:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_11} :catch_2d

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    add-int/lit8 p1, p1, 0x5f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x57

    if-eqz p1, :cond_22

    const/16 p1, 0x3b

    goto :goto_24

    :cond_22
    const/16 p1, 0x57

    :goto_24
    if-eq p1, v0, :cond_2d

    const/16 p1, 0x28

    :try_start_28
    div-int/lit8 p1, p1, 0x0
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception p1

    throw p1

    :catch_2d
    :cond_2d
    return-void
.end method

.method private k()Lorg/json/JSONObject;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->s:Lorg/json/JSONObject;

    add-int/lit8 v1, v1, 0xb

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x2d

    if-nez v1, :cond_1b

    const/16 v1, 0x2f

    goto :goto_1d

    :cond_1b
    const/16 v1, 0x2d

    :goto_1d
    if-ne v1, v2, :cond_20

    return-object v0

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

.method private l(Ljava/lang/String;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x5a

    if-eqz v0, :cond_11

    const/16 v0, 0x15

    goto :goto_13

    :cond_11
    const/16 v0, 0x5a

    :goto_13
    if-eq v0, v1, :cond_23

    :try_start_15
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->s:Lorg/json/JSONObject;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->סּ:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1c} :catch_2a

    const/16 p1, 0x47

    :try_start_1e
    div-int/lit8 p1, p1, 0x0
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_20} :catch_2a
    .catchall {:try_start_1e .. :try_end_20} :catchall_21

    goto :goto_2a

    :catchall_21
    move-exception p1

    throw p1

    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->s:Lorg/json/JSONObject;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->סּ:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_2a} :catch_2a

    :catch_2a
    :goto_2a
    return-void
.end method

.method private m()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x3e

    if-eqz v0, :cond_11

    const/16 v0, 0x3e

    goto :goto_13

    :cond_11
    const/16 v0, 0xd

    :goto_13
    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->t:Ljava/util/List;

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

.method private n(Ljava/lang/String;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x1d

    if-nez v0, :cond_15

    const/16 v0, 0x2e

    goto :goto_17

    :cond_15
    const/16 v0, 0x1d

    :goto_17
    if-eq v0, v1, :cond_35

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    rem-int/lit8 p1, p1, 0x2

    :cond_35
    return-void
.end method

.method private static o(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/db;->j:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v2

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/db;->k:C

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

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/db;->h:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v5

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/db;->i:C

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

.method private p(Ljava/lang/String;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->o:Ljava/lang/String;

    if-eqz v0, :cond_15

    goto :goto_18

    :cond_15
    const/16 p1, 0x38

    :try_start_17
    div-int/2addr p1, v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_19

    :goto_18
    return-void

    :catchall_19
    move-exception p1

    throw p1
.end method

.method private q()Lcom/ironsource/adqualitysdk/sdk/i/hf;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x17

    if-eqz v0, :cond_11

    const/16 v0, 0x54

    goto :goto_13

    :cond_11
    const/16 v0, 0x17

    :goto_13
    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->p:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    const/16 v1, 0x22

    :try_start_19
    div-int/lit8 v1, v1, 0x0
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v0

    throw v0

    :cond_1e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->p:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    :goto_20
    return-object v0
.end method

.method private static r(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-wide v1, Lcom/ironsource/adqualitysdk/sdk/i/db;->l:J

    invoke-static {v1, v2, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ(J[CI)[C

    move-result-object p0

    const/4 p1, 0x4

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    :goto_14
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    array-length v2, p0

    if-ge v1, v2, :cond_3a

    add-int/lit8 v1, v1, -0x4

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ｋ:I

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    aget-char v2, p0, v1

    rem-int/lit8 v3, v1, 0x4

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/f;->ｋ:I

    int-to-long v4, v4

    sget-wide v6, Lcom/ironsource/adqualitysdk/sdk/i/db;->l:J

    mul-long v4, v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p0, v1

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    goto :goto_14

    :cond_3a
    new-instance v1, Ljava/lang/String;

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-direct {v1, p0, p1, v2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_b .. :try_end_42} :catchall_43

    return-object v1

    :catchall_43
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private s(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_31

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    if-eq p1, v1, :cond_1d

    return-void

    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/db;->n(Ljava/lang/String;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    add-int/lit8 p1, p1, 0x2d

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_10

    :cond_31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    const/4 p1, 0x0

    :try_start_35
    throw p1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p1

    throw p1
.end method

.method private t(Lcom/ironsource/adqualitysdk/sdk/i/hf;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->p:Lcom/ironsource/adqualitysdk/sdk/i/hf;

    if-nez v0, :cond_14

    return-void

    :cond_14
    const/4 p1, 0x0

    :try_start_15
    throw p1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception p1

    throw p1
.end method

.method private u()Ljava/lang/String;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eq v0, v2, :cond_2f

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->q:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x11

    if-eqz v1, :cond_24

    const/16 v1, 0x16

    goto :goto_26

    :cond_24
    const/16 v1, 0x11

    :goto_26
    if-eq v1, v2, :cond_2e

    const/16 v1, 0x57

    :try_start_2a
    div-int/2addr v1, v3
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2c

    return-object v0

    :catchall_2c
    move-exception v0

    throw v0

    :cond_2e
    return-object v0

    :cond_2f
    const/4 v0, 0x0

    :try_start_30
    throw v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v0

    throw v0
.end method

.method private v(Ljava/lang/String;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    add-int/lit8 v1, v0, 0x49

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    rem-int/lit8 v1, v1, 0x2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->q:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    rem-int/lit8 v0, v0, 0x2

    const/4 p1, 0x1

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    const/4 v0, 0x1

    :goto_1a
    if-ne v0, p1, :cond_1d

    return-void

    :cond_1d
    const/4 p1, 0x0

    :try_start_1e
    throw p1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p1

    throw p1
.end method

.method private ﮐ()Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->s:Lorg/json/JSONObject;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ףּ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x1d

    if-eqz v1, :cond_23

    const/16 v1, 0x25

    goto :goto_25

    :cond_23
    const/16 v1, 0x1d

    :goto_25
    if-eq v1, v2, :cond_2e

    const/16 v1, 0x11

    :try_start_29
    div-int/lit8 v1, v1, 0x0
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_2c

    return-object v0

    :catchall_2c
    move-exception v0

    throw v0

    :cond_2e
    return-object v0
.end method

.method private ﻛ()Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    add-int/lit8 v1, v0, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->o:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x3c

    if-eqz v0, :cond_1b

    const/16 v0, 0xb

    goto :goto_1d

    :cond_1b
    const/16 v0, 0x3c

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

.method private ｋ(Ljava/lang/String;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    add-int/lit8 v1, v0, 0x4b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    rem-int/lit8 v1, v1, 0x2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->r:Ljava/lang/String;

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    rem-int/lit8 v0, v0, 0x2

    const/4 p1, 0x1

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-eq v0, p1, :cond_1d

    return-void

    :cond_1d
    const/4 p1, 0x0

    :try_start_1e
    throw p1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p1

    throw p1
.end method

.method private ﾇ()Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->r:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x3c

    if-eqz v1, :cond_1b

    const/16 v1, 0x45

    goto :goto_1d

    :cond_1b
    const/16 v1, 0x3c

    :goto_1d
    if-ne v1, v2, :cond_20

    return-object v0

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

.method private ﾇ(Ljava/lang/String;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_a
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/db;->s:Lorg/json/JSONObject;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﭸ:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_11} :catch_1b

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    rem-int/lit8 p1, p1, 0x2

    :catch_1b
    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/ch;)Ljava/lang/Object;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ironsource/adqualitysdk/sdk/i/ch;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-class v3, Ljava/lang/String;

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    const/4 v5, 0x7

    add-int/2addr v4, v5

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    const/4 v6, 0x2

    rem-int/2addr v4, v6

    if-eqz v4, :cond_3aa

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const/16 v9, 0x9

    const/16 v10, 0x12

    const/4 v11, 0x6

    const/16 v12, 0xf

    const/16 v15, 0x30

    const/4 v5, 0x0

    const/16 v8, 0xd

    const/16 v16, 0x10

    const-string v14, ""

    const/4 v7, 0x1

    const/16 v17, -0x1

    const/4 v13, 0x0

    sparse-switch v4, :sswitch_data_3b2

    :cond_2f
    :goto_2f
    const/4 v5, -0x1

    goto/16 :goto_2db

    :sswitch_32
    invoke-static {v5, v5}, Landroid/graphics/PointF;->length(FF)F

    move-result v4

    const-string v6, "\ucc6a\ucc19\u59ef\u16c0\u198c\ua8f2\u876c\u4568\uf127\ud5ee\uc244\u83a1\ub648\u9019\u013b\uc0b3\u7b67\u5f5f\u4fe3\u0dc1"

    cmpl-float v4, v4, v5

    invoke-static {v6, v4}, Lcom/ironsource/adqualitysdk/sdk/i/db;->r(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v0, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v0, 0x0

    :goto_4b
    if-eq v0, v7, :cond_4e

    goto :goto_2f

    :cond_4e
    const/16 v5, 0xe

    goto/16 :goto_2db

    :sswitch_52
    invoke-static {v14, v15, v13}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v4

    add-int/lit8 v4, v4, 0x16

    const-string v5, "\u8e51\udc8b\u6c34\u8389\u5f9d\uac2b\u36ac\u3d94\u462a\ua2c6\u62b2\uf271\u1eb9\u2265\uf95c\u7368\ud06e\u041b\u8cee\u3ebc\u23c7\u1f32"

    invoke-static {v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/db;->o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v5, 0xb

    goto/16 :goto_2db

    :sswitch_6c
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v4

    const-string v6, "\uc65c\uc634\uc983\u86a8\u917c\uc172\u0f9b\u2ced\ufb10\u4587\u4aa5\uea06\ubc78p\u89eb\ua939\u7156\ucf08\uc71e\u6442\u3293"

    cmpl-float v4, v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-static {v6, v4}, Lcom/ironsource/adqualitysdk/sdk/i/db;->r(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v5, 0x14

    goto/16 :goto_2db

    :sswitch_88
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    shr-int/lit8 v4, v4, 0x16

    const-string v5, "\ucbdd\ucbba\uf808\ub727\u34ea\ub7fd\uaa0a\u5a65\uf69c\u7414\uef37\u9c97\ub1d8\u31e0\u2c62"

    invoke-static {v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/db;->r(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v5, 0x6

    goto/16 :goto_2db

    :sswitch_a1
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v4

    const-string v8, "\ub216\ub265\u0746\u4869\uda2f\u822d\u44cf\u6fb5\u8f57\u8b5a\u01f2\ua947\uc813\uceae\uc2a7"

    cmpl-float v4, v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-static {v8, v4}, Lcom/ironsource/adqualitysdk/sdk/i/db;->r(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    add-int/2addr v0, v9

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    rem-int/2addr v0, v6

    if-nez v0, :cond_c4

    const/4 v7, 0x0

    :cond_c4
    if-eqz v7, :cond_185

    const/4 v5, 0x7

    goto/16 :goto_2db

    :sswitch_c9
    invoke-static {v14, v13}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x12

    const-string v5, "\u62b2\uf271\uf708\u2c7a\ud06e\u041b\u8cee\u3ebc\u766e\u7dfb\u743e\uf423\u5805\u4df5\u1d93\uebb8\ubfa7\uc997"

    invoke-static {v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/db;->o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    rem-int/2addr v0, v6

    const/16 v5, 0x12

    goto/16 :goto_2db

    :sswitch_ec
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    const-string v5, "\u2f79\u2f1e\ud189\u9ea6\u60ba\u654b\ufe5a\u88d4\u1235\u5d8d\ubb63\u4e3f\u555d\u187a\u782d\u0d00\u9873\ud702\u36d2\uc049\udba0\u9213\uf3eb"

    invoke-static {v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/db;->r(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v5, 0x2

    goto/16 :goto_2db

    :sswitch_105
    invoke-static {v13, v13}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    const-string v5, "\u726d\u721e\u49c7\u06e8\u24fd\ub715\uba1d\u5a8f\u4f20\uc5c6\uff35\u9c46\u084f\u8031"

    invoke-static {v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/db;->r(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11a

    goto :goto_11b

    :cond_11a
    const/4 v7, 0x0

    :goto_11b
    if-eqz v7, :cond_2f

    const/4 v5, 0x5

    goto/16 :goto_2db

    :sswitch_120
    invoke-static {v14, v13, v13}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v4

    const-string v5, "\u945f\u942c\ub559\ufa76\u9821\u5097\u06c1\ubd08\ua913\u395d\u43f8\u7be3\uee7b\u7caa\u80b6\u38dc\u2355\ub3d2\uce49\uf592\u6090\uf6c6\u0b67\ub28a\ua5f2"

    invoke-static {v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/db;->r(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    rem-int/2addr v0, v6

    const/16 v5, 0xc

    goto/16 :goto_2db

    :sswitch_141
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    const-string v5, "\udcaf\udcc8\uab0e\ue421\u4ba4\u9e2f\ud544\u73a2\ue1e8\u2709\u906a\ub54a\ua69a\u62c1\u5332\uf66d\u6b84\uada3\u1ddd\u3b0b\u286c\ue881"

    invoke-static {v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/db;->r(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_159

    const/4 v0, 0x0

    goto :goto_15a

    :cond_159
    const/4 v0, 0x1

    :goto_15a
    if-eq v0, v7, :cond_2f

    const/16 v5, 0x11

    goto/16 :goto_2db

    :sswitch_160
    invoke-static {v14, v15, v13, v13}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x10

    const-string v5, "\u8e51\udc8b\ufc30\uf0f5\u9cbf\ua193\u6487\u636d\ua815\u0ca7\u0e4f\u1ba6\ud06e\u041b\u8cee\u3ebc\u23c7\u1f32"

    invoke-static {v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/db;->o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_177

    goto :goto_178

    :cond_177
    const/4 v7, 0x0

    :goto_178
    if-eqz v7, :cond_2f

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    rem-int/2addr v0, v6

    if-nez v0, :cond_189

    :cond_185
    const/16 v5, 0x59

    goto/16 :goto_2db

    :cond_189
    const/16 v5, 0xf

    goto/16 :goto_2db

    :sswitch_18d
    invoke-static {v13, v13, v13}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    const-string v5, "\u9598\u95ff\u6665\u294a\u3f84\uf4d0\ua164\u194a\ua8d5\uea64\ue44c\udf83\uefba\uaf93\u2733\u9c91\u2295\u60d5\u69eb\u51e3"

    invoke-static {v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/db;->r(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v5, 0xd

    goto/16 :goto_2db

    :sswitch_1a5
    invoke-static {v14, v14}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    const-string v5, "\uf654\uf627\ud634\u991b\u6eb2\uf059\uf052\u1dc6\ucb18\u5a30\ub56b\udb2d\u8c70\u1fc7\u7625\u9812\u415e\ud0bf\u38da\u555b\u028d\u95ae\ufde3"

    invoke-static {v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/db;->r(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v5, 0x3

    goto/16 :goto_2db

    :sswitch_1bc
    invoke-static {v13}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    sub-int/2addr v11, v4

    const-string v4, "\u2de9\u7e40\ub30f\u118a\ua59b\uf433"

    invoke-static {v4, v11}, Lcom/ironsource/adqualitysdk/sdk/i/db;->o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    rem-int/2addr v0, v6

    const/16 v5, 0x15

    goto/16 :goto_2db

    :sswitch_1de
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v8

    const-string v5, "\u77fa\u36b4\uf95c\u7368\ud06e\u041b\u8cee\u3ebc\u766e\u7dfb\u743e\uf423\u9579\u17c9"

    invoke-static {v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/db;->o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f8

    const/16 v0, 0xc

    goto :goto_1fa

    :cond_1f8
    const/16 v0, 0xd

    :goto_1fa
    if-eq v0, v8, :cond_2f

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    rem-int/2addr v0, v6

    const/16 v5, 0xa

    goto/16 :goto_2db

    :sswitch_209
    invoke-static {v14, v14, v13}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v4

    const-string v5, "\udb7a\udb09\ubfe1\uf0ce\u16c4\u5162\u8824\ubcfd\ue636\u33e5\ucd1d\u7a16\ua15e\u7612\u0e53\u3929\u6c70\ub96a\u40ac"

    invoke-static {v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/db;->r(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v5, 0x1

    goto/16 :goto_2db

    :sswitch_220
    invoke-static {v15}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v4

    add-int/lit8 v4, v4, -0x19

    const-string v5, "\u8e51\udc8b\u6c34\u8389\u5f9d\uac2b\u36ac\u3d94\u462a\ua2c6\u62b2\uf271\u1c51\u96be\ud06e\u041b\u8cee\u3ebc\u194e\uc52a\u0ae5\u9533\ubf1d\u1911"

    invoke-static {v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/db;->o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v5, 0x13

    goto/16 :goto_2db

    :sswitch_23a
    invoke-static {v13, v13}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    const-string v5, "\uf996\uf9e5\u8b52\uc47d\ue856\u3cf0\u76b6\ud168\uc4d7\u074e\u338b\u179a\u8393\u42ba\uf0de\u548d\u4e81\u8de5\ube28\u99c5\u0d53"

    invoke-static {v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/db;->r(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_250

    const/4 v0, 0x0

    goto :goto_251

    :cond_250
    const/4 v0, 0x1

    :goto_251
    if-eq v0, v7, :cond_2f

    const/16 v5, 0x10

    goto/16 :goto_2db

    :sswitch_257
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    sub-int/2addr v8, v4

    const-string v4, "\u8e51\udc8b\uf708\u2c7a\ud06e\u041b\u8cee\u3ebc\u766e\u7dfb\u743e\uf423\u9579\u17c9"

    invoke-static {v4, v8}, Lcom/ironsource/adqualitysdk/sdk/i/db;->o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/db;->n:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/db;->m:I

    rem-int/2addr v0, v6

    if-eqz v0, :cond_27c

    const/16 v0, 0x19

    goto :goto_27e

    :cond_27c
    const/16 v0, 0x4e

    :goto_27e
    const/16 v4, 0x4e

    if-eq v0, v4, :cond_285

    const/16 v5, 0x6e

    goto :goto_2db

    :cond_285
    const/16 v5, 0x8

    goto :goto_2db

    :sswitch_288
    invoke-static {v15}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v4

    add-int/lit8 v4, v4, -0x26

    const-string v5, "\u8e51\udc8b\u7eec\uf9cb\u2201\u5715\u7fc0\ua89e\u743e\uf423"

    invoke-static {v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/db;->o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v4, 0x24

    if-eqz v0, :cond_2a3

    const/16 v14, 0x59

    goto :goto_2a5

    :cond_2a3
    const/16 v14, 0x24

    :goto_2a5
    if-eq v14, v4, :cond_2f

    const/4 v5, 0x4

    goto :goto_2db

    :sswitch_2a9
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v4

    const-wide/16 v10, 0x0

    const-string v6, "\u12e6\u1287\uf7a3\ub88d\ub4b7\ua222\u2a47\u4faf\u2fa1\u7ba4\u6f79\u8947\u68d3\u3e6c\uac21\uca60"

    cmp-long v8, v4, v10

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/db;->r(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v5, 0x9

    goto :goto_2db

    :sswitch_2c5
    invoke-static {v13, v13}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    sub-int/2addr v12, v4

    const-string v4, "\u8e51\udc8b\u6c34\u8389\u5f9d\uac2b\u36ac\u3d94\u462a\ua2c6\u62b2\uf271\u1eb9\u2265\ucf4a\ubc88"

    invoke-static {v4, v12}, Lcom/ironsource/adqualitysdk/sdk/i/db;->o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v5, 0x0

    :goto_2db
    packed-switch v5, :pswitch_data_40c

    :goto_2de
    const/4 v2, 0x0

    goto/16 :goto_3a9

    :pswitch_2e1
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/db;->d()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :pswitch_2e6
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/db;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_2eb
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/db;->k()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :pswitch_2f0
    invoke-static {v2, v13, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/db;->j(Ljava/lang/String;)V

    goto :goto_2de

    :pswitch_2fa
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/db;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2ff
    invoke-static {v2, v13, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/db;->l(Ljava/lang/String;)V

    goto :goto_2de

    :pswitch_309
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/db;->g()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_30e
    invoke-static {v2, v13, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/db;->h(Ljava/lang/String;)V

    goto :goto_2de

    :pswitch_318
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/db;->ﮐ()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_31d
    invoke-static {v2, v13, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/db;->ﾇ(Ljava/lang/String;)V

    goto :goto_2de

    :pswitch_327
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/db;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_32c
    const-class v0, Ljava/util/List;

    invoke-static {v2, v13, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/db;->s(Ljava/util/List;)V

    goto :goto_2de

    :pswitch_338
    invoke-static {v2, v13, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/db;->n(Ljava/lang/String;)V

    goto :goto_2de

    :pswitch_342
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/db;->m()Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_347
    invoke-static {v2, v13, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/db;->ｋ(Ljava/lang/String;)V

    goto :goto_2de

    :pswitch_351
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/db;->ﾇ()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_356
    invoke-static {v2, v13, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/db;->v(Ljava/lang/String;)V

    goto/16 :goto_2de

    :pswitch_361
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/db;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_366
    const-class v0, Ljava/lang/Integer;

    invoke-static {v2, v13, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hf;->ﻛ(I)Lcom/ironsource/adqualitysdk/sdk/i/hf;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/db;->t(Lcom/ironsource/adqualitysdk/sdk/i/hf;)V

    goto/16 :goto_2de

    :pswitch_37b
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/db;->q()Lcom/ironsource/adqualitysdk/sdk/i/hf;

    move-result-object v0

    if-eqz v0, :cond_384

    const/16 v0, 0xa

    goto :goto_386

    :cond_384
    const/16 v0, 0x3d

    :goto_386
    const/16 v2, 0xa

    if-eq v0, v2, :cond_38c

    const/4 v0, 0x0

    return-object v0

    :cond_38c
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/db;->q()Lcom/ironsource/adqualitysdk/sdk/i/hf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hf;->ﾒ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_399
    invoke-static {v2, v13, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/db;->p(Ljava/lang/String;)V

    goto/16 :goto_2de

    :pswitch_3a4
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/db;->ﻛ()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :goto_3a9
    return-object v2

    :cond_3aa
    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    :try_start_3ae
    throw v2
    :try_end_3af
    .catchall {:try_start_3ae .. :try_end_3af} :catchall_3af

    :catchall_3af
    move-exception v0

    move-object v2, v0

    throw v2

    :sswitch_data_3b2
    .sparse-switch
        -0x7e4425e4 -> :sswitch_2c5
        -0x6d74084d -> :sswitch_2a9
        -0x655f90c9 -> :sswitch_288
        -0x53fe086b -> :sswitch_257
        -0x4d481d6a -> :sswitch_23a
        -0x4a60805c -> :sswitch_220
        -0x47fb2ad8 -> :sswitch_209
        -0x410d00e0 -> :sswitch_1de
        -0x33ce45fd -> :sswitch_1bc
        -0x2e11fb7e -> :sswitch_1a5
        -0x1842c1ce -> :sswitch_18d
        -0x153e8576 -> :sswitch_160
        -0x8657da7 -> :sswitch_141
        0xc3fab63 -> :sswitch_120
        0xe11bcab -> :sswitch_105
        0x2df16f76 -> :sswitch_ec
        0x2e711bcd -> :sswitch_c9
        0x4df72e9b -> :sswitch_a1
        0x533ecd8f -> :sswitch_88
        0x72b4f1b3 -> :sswitch_6c
        0x75142957 -> :sswitch_52
        0x7a93a4a6 -> :sswitch_32
    .end sparse-switch

    :pswitch_data_40c
    .packed-switch 0x0
        :pswitch_3a4
        :pswitch_399
        :pswitch_37b
        :pswitch_366
        :pswitch_361
        :pswitch_356
        :pswitch_351
        :pswitch_347
        :pswitch_342
        :pswitch_338
        :pswitch_32c
        :pswitch_327
        :pswitch_31d
        :pswitch_318
        :pswitch_30e
        :pswitch_309
        :pswitch_2ff
        :pswitch_2fa
        :pswitch_2f0
        :pswitch_2eb
        :pswitch_2e6
        :pswitch_2e1
    .end packed-switch
.end method
