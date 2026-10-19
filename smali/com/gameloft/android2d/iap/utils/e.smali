###### Class com.gameloft.android2d.iap.utils.e (com.gameloft.android2d.iap.utils.e)
.class public Lcom/gameloft/android2d/iap/utils/e;
.super Ljava/lang/Object;
.source "IABJSONParser.java"


# instance fields
.field private final a:Ljava/lang/String;

.field public b:Lcom/gameloft/android2d/iap/utils/g;

.field public c:Lcom/gameloft/android2d/iap/billings/a;

.field private d:Lcom/gameloft/android2d/iap/utils/h;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IAP-IABJSONParser"

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/e;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/e;->d:Lcom/gameloft/android2d/iap/utils/h;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/e;->d:Lcom/gameloft/android2d/iap/utils/h;

    new-instance v0, Lcom/gameloft/android2d/iap/utils/h;

    invoke-direct {v0}, Lcom/gameloft/android2d/iap/utils/h;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/e;->d:Lcom/gameloft/android2d/iap/utils/h;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Hashtable;)[I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/gameloft/android2d/iap/utils/g;",
            ">;)[I"
        }
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_36

    if-nez p1, :cond_9

    return-object v0

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-ge v1, v2, :cond_35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/g;->E()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->parseIntNumber(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->B()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->parseIntNumber(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_35
    return-object v0

    :array_36
    .array-data 4
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
    .end array-data
.end method

.method public b()Lcom/gameloft/android2d/iap/utils/h;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/e;->d:Lcom/gameloft/android2d/iap/utils/h;

    return-object v0
.end method

.method public c(Lorg/json/JSONObject;)V
    .registers 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "billing_methods"

    const-string v3, "bundle"

    const-string v4, "category"

    if-eqz v1, :cond_751

    const/4 v5, 0x6

    :try_start_d
    new-array v6, v5, [I

    const/4 v7, 0x0

    aput v7, v6, v7

    const/4 v8, 0x1

    aput v7, v6, v8

    const/4 v9, 0x2

    aput v7, v6, v9

    const/4 v10, 0x3

    aput v7, v6, v10

    const/4 v11, 0x4

    aput v7, v6, v11

    const/4 v12, 0x5

    aput v7, v6, v12

    new-array v5, v5, [I

    aput v7, v5, v7

    aput v7, v5, v8

    aput v7, v5, v9

    aput v7, v5, v10

    aput v7, v5, v11

    aput v7, v5, v12

    const/4 v9, 0x0

    iput-object v9, v0, Lcom/gameloft/android2d/iap/utils/e;->d:Lcom/gameloft/android2d/iap/utils/h;

    new-instance v9, Lcom/gameloft/android2d/iap/utils/h;

    invoke-direct {v9}, Lcom/gameloft/android2d/iap/utils/h;-><init>()V

    iput-object v9, v0, Lcom/gameloft/android2d/iap/utils/e;->d:Lcom/gameloft/android2d/iap/utils/h;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getPlatformId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/gameloft/android2d/iap/utils/h;->Z(Ljava/lang/String;)V

    const-string v9, "prices"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_46} :catch_751

    const-string v10, ""

    move-object v13, v10

    move-object v14, v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_4c
    :try_start_4c
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v15
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_50} :catch_751

    const-string v7, ","

    const-string v8, "end_date"

    move-object/from16 v18, v5

    const-string v5, "promotion"

    if-ge v11, v15, :cond_69e

    :try_start_5a
    new-instance v15, Lcom/gameloft/android2d/iap/utils/g;

    invoke-direct {v15}, Lcom/gameloft/android2d/iap/utils/g;-><init>()V

    iput-object v15, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_69} :catch_751

    move-object/from16 v20, v6

    const-string v6, "quantity"

    move-object/from16 v21, v9

    const-string v9, "subscription"

    move-object/from16 v22, v13

    const-string v13, "true"

    move-object/from16 v23, v14

    const-string v14, "item"

    if-eqz v19, :cond_ba

    :try_start_7b
    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a4

    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move/from16 v24, v12

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a6

    const v12, 0x7f1202d0

    invoke-static {v12}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v12, 0x1

    invoke-virtual {v15, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_b8

    :cond_a4
    move/from16 v24, v12

    :cond_a6
    const v12, 0x7f1202cd

    invoke-static {v12}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v12, 0x1

    invoke-virtual {v15, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_b8
    const/4 v12, 0x1

    goto :goto_bd

    :cond_ba
    move/from16 v24, v12

    const/4 v12, 0x0

    :goto_bd
    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_d4

    move-object/from16 v29, v2

    move-object v9, v4

    move-object/from16 v34, v10

    move/from16 v25, v11

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move/from16 v12, v24

    const/16 v17, 0x1

    goto/16 :goto_68b

    :cond_d4
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_d8} :catch_751

    move/from16 v25, v11

    if-eqz v19, :cond_15f

    :try_start_dc
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_e0} :catch_15f

    move-object/from16 v26, v4

    :try_start_e2
    const-string v4, "["

    invoke-virtual {v11, v4, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v11, "]"

    invoke-virtual {v4, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    :goto_f3
    array-length v11, v4

    if-ge v7, v11, :cond_161

    aget-object v11, v4, v7
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_f8} :catch_161

    move-object/from16 v27, v6

    :try_start_fa
    const-string v6, "tag"

    invoke-virtual {v11, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_100} :catch_163

    const-string v11, ":"

    move-object/from16 v28, v9

    const/4 v9, -0x1

    if-eq v6, v9, :cond_119

    :try_start_107
    aget-object v6, v4, v7

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    const-string v11, "tag"

    const/16 v17, 0x1

    aget-object v6, v6, v17

    invoke-virtual {v9, v11, v6}, Lcom/gameloft/android2d/iap/utils/g;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_156

    :cond_119
    aget-object v6, v4, v7

    const-string v9, "position"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_139

    aget-object v6, v4, v7

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x1

    aget-object v6, v6, v9

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    const-string v11, "position"

    invoke-virtual {v9, v11, v6}, Lcom/gameloft/android2d/iap/utils/g;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_156

    :cond_139
    aget-object v6, v4, v7

    const-string v9, "da"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_156

    aget-object v6, v4, v7

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    const-string v11, "da"
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_14e} :catch_165

    const/16 v17, 0x1

    :try_start_150
    aget-object v6, v6, v17

    invoke-virtual {v9, v11, v6}, Lcom/gameloft/android2d/iap/utils/g;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_155} :catch_167

    goto :goto_158

    :cond_156
    :goto_156
    const/16 v17, 0x1

    :goto_158
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v6, v27

    move-object/from16 v9, v28

    goto :goto_f3

    :catch_15f
    :cond_15f
    move-object/from16 v26, v4

    :catch_161
    :cond_161
    move-object/from16 v27, v6

    :catch_163
    move-object/from16 v28, v9

    :catch_165
    const/16 v17, 0x1

    :catch_167
    :try_start_167
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_184

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_184

    iget-object v5, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v8, v4}, Lcom/gameloft/android2d/iap/utils/g;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_184
    invoke-virtual {v15}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v7, v22

    const/4 v6, 0x0

    :goto_193
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_61a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4e8

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const/4 v9, 0x0

    :goto_1b0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v9, v11, :cond_4d9

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v22

    move-object/from16 v29, v2

    const-string v2, "type"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const v30, 0x7f1202b1

    move-object/from16 v31, v4

    invoke-static/range {v30 .. v30}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e1

    const v2, 0x7f1202b0

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_249

    :cond_1e1
    const v4, 0x7f1202eb

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f6

    const v2, 0x7f1202ea

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_249

    :cond_1f6
    const v4, 0x7f1202b5

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20b

    const v2, 0x7f1202b4

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_249

    :cond_20b
    const v4, 0x7f12030e

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_220

    const v2, 0x7f12030d

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_249

    :cond_220
    const v4, 0x7f120310

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_235

    const v2, 0x7f12030f

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_249

    :cond_235
    const v4, 0x7f120297

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_249

    const v2, 0x7f120296

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    :cond_249
    :goto_249
    invoke-static {v2}, Lcom/gameloft/android2d/iap/billings/BillingFactory;->CreateBilling(Ljava/lang/String;)Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v4

    iput-object v4, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_256

    move-object v7, v2

    :cond_256
    const-string v4, "store_info"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_325

    const-string v4, "store_info"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v30

    move-object/from16 v32, v7

    move-object/from16 v7, v23

    :goto_26c
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_31e

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v33, v8

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v34, v10

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v1, -0x1

    if-ne v10, v1, :cond_29d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_29d
    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->isCCBilling(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b7

    const-string v1, "type"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v10, -0x1

    if-ne v1, v10, :cond_2b7

    :cond_2b4
    move-object/from16 v36, v2

    goto :goto_314

    :cond_2b7
    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    const-string v10, "carrier_name"

    invoke-virtual {v1, v10, v8}, Lcom/gameloft/android2d/iap/billings/a;->o(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    :goto_2c6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2b4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v35, v1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v36, v2

    const-string v2, "tnc"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f7

    iget-object v2, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-virtual {v2, v1}, Lcom/gameloft/android2d/iap/billings/a;->y0(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-virtual {v2, v10, v1}, Lcom/gameloft/android2d/iap/billings/a;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30a

    :cond_2f7
    const-string v2, "billing_url"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_305

    iget-object v2, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-virtual {v2, v1}, Lcom/gameloft/android2d/iap/billings/a;->C0(Ljava/lang/String;)V

    goto :goto_30a

    :cond_305
    iget-object v2, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-virtual {v2, v10, v1}, Lcom/gameloft/android2d/iap/billings/a;->o(Ljava/lang/String;Ljava/lang/String;)V

    :goto_30a
    iget-object v2, v0, Lcom/gameloft/android2d/iap/utils/e;->d:Lcom/gameloft/android2d/iap/utils/h;

    invoke-virtual {v2, v10, v1}, Lcom/gameloft/android2d/iap/utils/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    goto :goto_2c6

    :goto_314
    move-object/from16 v1, p1

    move-object/from16 v8, v33

    move-object/from16 v10, v34

    move-object/from16 v2, v36

    goto/16 :goto_26c

    :cond_31e
    move-object/from16 v33, v8

    move-object/from16 v34, v10

    move-object/from16 v23, v7

    goto :goto_32b

    :cond_325
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    move-object/from16 v34, v10

    :goto_32b
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4af

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "custom_info"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3fc

    const-string v1, "custom_info"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_357
    :goto_357
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "alias"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_380

    iget-object v4, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-virtual {v4, v7}, Lcom/gameloft/android2d/iap/billings/a;->c0(Ljava/lang/String;)V

    :goto_37e
    const/4 v10, -0x1

    goto :goto_357

    :cond_380
    const-string v8, "shortcode"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38e

    iget-object v4, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-virtual {v4, v7}, Lcom/gameloft/android2d/iap/billings/a;->v0(Ljava/lang/String;)V

    goto :goto_37e

    :cond_38e
    const-string v8, "flow_type"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3a9

    iget-object v4, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-static {v7}, Lcom/gameloft/android2d/iap/utils/SUtils;->parseIntNumber(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/gameloft/android2d/iap/billings/a;->l0(I)V

    iget-object v4, v0, Lcom/gameloft/android2d/iap/utils/e;->d:Lcom/gameloft/android2d/iap/utils/h;

    invoke-static {v7}, Lcom/gameloft/android2d/iap/utils/SUtils;->parseIntNumber(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/gameloft/android2d/iap/utils/h;->S(I)V

    goto :goto_37e

    :cond_3a9
    const-string v8, "billing_type"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b7

    iget-object v4, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-virtual {v4, v7}, Lcom/gameloft/android2d/iap/billings/a;->d0(Ljava/lang/String;)V

    goto :goto_37e

    :cond_3b7
    const-string v8, "purchase_confirm"

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_3cb

    iget-object v8, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-virtual {v8, v4, v7}, Lcom/gameloft/android2d/iap/billings/a;->o(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v0, Lcom/gameloft/android2d/iap/utils/e;->d:Lcom/gameloft/android2d/iap/utils/h;

    invoke-virtual {v8, v4, v7}, Lcom/gameloft/android2d/iap/utils/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37e

    :cond_3cb
    const-string v8, "build_price_postfix"

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_3da

    iget-object v8, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-virtual {v8, v4, v7}, Lcom/gameloft/android2d/iap/billings/a;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37e

    :cond_3da
    const-string v8, "later"

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_3e9

    iget-object v8, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-virtual {v8, v4, v7}, Lcom/gameloft/android2d/iap/billings/a;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37e

    :cond_3e9
    const-string v8, "ok"

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_357

    iget-object v8, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-virtual {v8, v4, v7}, Lcom/gameloft/android2d/iap/billings/a;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_357

    :cond_3f9
    const/4 v10, -0x1

    goto/16 :goto_32b

    :cond_3fc
    const/4 v10, -0x1

    const-string v4, "content_id"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_416

    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-virtual {v1, v2}, Lcom/gameloft/android2d/iap/billings/a;->B0(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-virtual {v1, v2}, Lcom/gameloft/android2d/iap/billings/a;->p0(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {v1, v2}, Lcom/gameloft/android2d/iap/utils/g;->Q(Ljava/lang/String;)V

    goto/16 :goto_32b

    :cond_416
    const-string v4, "currency"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_425

    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-virtual {v1, v2}, Lcom/gameloft/android2d/iap/billings/a;->h0(Ljava/lang/String;)V

    goto/16 :goto_32b

    :cond_425
    const-string v4, "display_price"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_434

    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-virtual {v1, v2}, Lcom/gameloft/android2d/iap/billings/a;->m0(Ljava/lang/String;)V

    goto/16 :goto_32b

    :cond_434
    const-string v4, "price"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_443

    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-virtual {v1, v2}, Lcom/gameloft/android2d/iap/billings/a;->q0(Ljava/lang/String;)V

    goto/16 :goto_32b

    :cond_443
    const-string v4, "price_id"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_452

    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-virtual {v1, v2}, Lcom/gameloft/android2d/iap/billings/a;->s0(Ljava/lang/String;)V

    goto/16 :goto_32b

    :cond_452
    const-string v4, "replaced_price"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46c

    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    const-string v4, "old_price"

    invoke-virtual {v1, v4, v2}, Lcom/gameloft/android2d/iap/utils/g;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    const-string v4, "old_price"

    invoke-virtual {v1, v4, v2}, Lcom/gameloft/android2d/iap/billings/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    :goto_468
    const/16 v24, 0x1

    goto/16 :goto_32b

    :cond_46c
    const-string v4, "replaced_display_price"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_483

    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    const-string v4, "old_formatted_price"

    invoke-virtual {v1, v4, v2}, Lcom/gameloft/android2d/iap/utils/g;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    const-string v4, "old_formatted_price"

    invoke-virtual {v1, v4, v2}, Lcom/gameloft/android2d/iap/billings/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_468

    :cond_483
    const-string v4, "multiplier"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_494

    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    const-string v4, "multiplier"

    invoke-virtual {v1, v4, v2}, Lcom/gameloft/android2d/iap/utils/g;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_32b

    :cond_494
    const-string v4, "replaced_content_id"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a8

    iget-object v4, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {v4, v1, v2}, Lcom/gameloft/android2d/iap/utils/g;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-virtual {v4, v1, v2}, Lcom/gameloft/android2d/iap/billings/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_32b

    :cond_4a8
    iget-object v4, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-virtual {v4, v1, v2}, Lcom/gameloft/android2d/iap/billings/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_32b

    :cond_4af
    const/4 v10, -0x1

    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    iget-object v2, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/g;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gameloft/android2d/iap/billings/a;->g0(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    const-string v2, "item_type"

    invoke-virtual {v1, v2, v5}, Lcom/gameloft/android2d/iap/billings/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    iget-object v2, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-virtual {v1, v2}, Lcom/gameloft/android2d/iap/utils/g;->h(Lcom/gameloft/android2d/iap/billings/a;)V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    move-object/from16 v4, v31

    move-object/from16 v7, v32

    move-object/from16 v8, v33

    move-object/from16 v10, v34

    goto/16 :goto_1b0

    :cond_4d9
    move-object/from16 v29, v2

    move-object/from16 v31, v4

    move-object/from16 v34, v10

    const/4 v10, -0x1

    :goto_4e0
    move-object/from16 v9, v26

    move-object/from16 v4, v27

    move-object/from16 v2, v28

    goto/16 :goto_60a

    :cond_4e8
    move-object/from16 v29, v2

    move-object/from16 v31, v4

    move-object/from16 v34, v10

    const/4 v10, -0x1

    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "entry_id"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_505

    iget-object v2, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {v2, v1}, Lcom/gameloft/android2d/iap/utils/g;->P(Ljava/lang/String;)V

    goto :goto_4e0

    :cond_505
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_509
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_509} :catch_751

    const-string v4, "managed"

    if-eqz v2, :cond_599

    :try_start_50d
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {v2, v1}, Lcom/gameloft/android2d/iap/utils/g;->R(Ljava/lang/String;)V

    if-eqz v12, :cond_54d

    if-nez v6, :cond_54a

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v5, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    const-string v8, "3"

    invoke-virtual {v5, v4, v8}, Lcom/gameloft/android2d/iap/utils/g;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_526
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v5, v8, :cond_54a

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "consumable"

    invoke-static {v8, v9}, Lcom/gameloft/android2d/iap/IAPLib;->GetParamIAPObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_547

    iget-object v8, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    const-string v9, "1"

    invoke-virtual {v8, v4, v9}, Lcom/gameloft/android2d/iap/utils/g;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_547
    add-int/lit8 v5, v5, 0x1

    goto :goto_526

    :cond_54a
    move-object/from16 v2, v28

    goto :goto_592

    :cond_54d
    const-string v2, "consumable"

    invoke-static {v1, v2}, Lcom/gameloft/android2d/iap/IAPLib;->GetParamIAPObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_575

    move-object/from16 v2, v28

    invoke-static {v1, v2}, Lcom/gameloft/android2d/iap/IAPLib;->GetParamIAPObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56d

    iget-object v5, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    const-string v8, "2"

    invoke-virtual {v5, v4, v8}, Lcom/gameloft/android2d/iap/utils/g;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_592

    :cond_56d
    iget-object v5, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    const-string v8, "1"

    invoke-virtual {v5, v4, v8}, Lcom/gameloft/android2d/iap/utils/g;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_592

    :cond_575
    move-object/from16 v2, v28

    const-string v5, "revolving"

    invoke-static {v1, v5}, Lcom/gameloft/android2d/iap/IAPLib;->GetParamIAPObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58b

    iget-object v5, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    const-string v8, "3"

    invoke-virtual {v5, v4, v8}, Lcom/gameloft/android2d/iap/utils/g;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_592

    :cond_58b
    iget-object v5, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    const-string v8, "0"

    invoke-virtual {v5, v4, v8}, Lcom/gameloft/android2d/iap/utils/g;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_592
    move-object v5, v1

    :cond_593
    move-object/from16 v9, v26

    move-object/from16 v4, v27

    goto/16 :goto_60a

    :cond_599
    move-object/from16 v2, v28

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5b4

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_593

    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    const-string v6, "2"

    invoke-virtual {v1, v4, v6}, Lcom/gameloft/android2d/iap/utils/g;->g(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v9, v26

    move-object/from16 v4, v27

    const/4 v6, 0x1

    goto :goto_60a

    :cond_5b4
    move-object/from16 v4, v27

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5c6

    iget-object v8, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    const-string v9, "amount"

    invoke-virtual {v8, v9, v1}, Lcom/gameloft/android2d/iap/utils/g;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5c3
    move-object/from16 v9, v26

    goto :goto_60a

    :cond_5c6
    const-string v9, "replaced_quantity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5da

    iget-object v8, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    const-string v9, "old_amount"

    invoke-virtual {v8, v9, v1}, Lcom/gameloft/android2d/iap/utils/g;->g(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v9, v26

    const/16 v24, 0x1

    goto :goto_60a

    :cond_5da
    const-string v9, "icon"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5f3

    iget-object v9, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {v9, v8, v1}, Lcom/gameloft/android2d/iap/utils/g;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gameloft/android2d/iap/Links;->IAP_GetImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v8, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    const-string v9, "image"

    invoke-virtual {v8, v9, v1}, Lcom/gameloft/android2d/iap/utils/g;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c3

    :cond_5f3
    const-string v9, "tier"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5fc

    goto :goto_5c3

    :cond_5fc
    move-object/from16 v9, v26

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_605

    goto :goto_60a

    :cond_605
    iget-object v11, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {v11, v8, v1}, Lcom/gameloft/android2d/iap/utils/g;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_60a
    move-object/from16 v1, p1

    move-object/from16 v28, v2

    move-object/from16 v27, v4

    move-object/from16 v26, v9

    move-object/from16 v2, v29

    move-object/from16 v4, v31

    move-object/from16 v10, v34

    goto/16 :goto_193

    :cond_61a
    move-object/from16 v29, v2

    move-object/from16 v34, v10

    move-object/from16 v9, v26

    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    const-string v2, "tracking_uid"

    iget-object v4, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-virtual {v4}, Lcom/gameloft/android2d/iap/billings/a;->U()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/gameloft/android2d/iap/utils/g;->g(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "locale"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getIAPRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@currency="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-virtual {v4}, Lcom/gameloft/android2d/iap/billings/a;->v()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    const-string v2, "item_json"

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/gameloft/android2d/iap/utils/g;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {v1, v7}, Lcom/gameloft/android2d/iap/utils/g;->S(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    if-nez v1, :cond_665

    goto :goto_686

    :cond_665
    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    const-string v2, "hidden"

    invoke-virtual {v1, v2}, Lcom/gameloft/android2d/iap/utils/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_67f

    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->d:Lcom/gameloft/android2d/iap/utils/h;

    iget-object v2, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {v1, v2}, Lcom/gameloft/android2d/iap/utils/h;->c(Lcom/gameloft/android2d/iap/utils/g;)V

    goto :goto_686

    :cond_67f
    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->d:Lcom/gameloft/android2d/iap/utils/h;

    iget-object v2, v0, Lcom/gameloft/android2d/iap/utils/e;->b:Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {v1, v2}, Lcom/gameloft/android2d/iap/utils/h;->d(Lcom/gameloft/android2d/iap/utils/g;)V

    :goto_686
    move-object v13, v7

    move-object/from16 v14, v23

    move/from16 v12, v24

    :goto_68b
    add-int/lit8 v11, v25, 0x1

    move-object/from16 v1, p1

    move-object v4, v9

    move-object/from16 v5, v18

    move-object/from16 v6, v20

    move-object/from16 v9, v21

    move-object/from16 v2, v29

    move-object/from16 v10, v34

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_4c

    :cond_69e
    move-object/from16 v20, v6

    move/from16 v24, v12

    const/16 v17, 0x1

    move-object/from16 v1, p1

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6fa

    if-eqz v24, :cond_6fa

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_6b6
    :goto_6b6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6ea

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "description"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6de

    iget-object v3, v0, Lcom/gameloft/android2d/iap/utils/e;->d:Lcom/gameloft/android2d/iap/utils/h;

    invoke-virtual {v3, v4}, Lcom/gameloft/android2d/iap/utils/h;->d0(Ljava/lang/String;)V

    goto :goto_6b6

    :cond_6de
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b6

    iget-object v3, v0, Lcom/gameloft/android2d/iap/utils/e;->d:Lcom/gameloft/android2d/iap/utils/h;

    invoke-virtual {v3, v4}, Lcom/gameloft/android2d/iap/utils/h;->f0(Ljava/lang/String;)V

    goto :goto_6b6

    :cond_6ea
    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetLastResponseTimestamp()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/gameloft/android2d/iap/utils/e;->d:Lcom/gameloft/android2d/iap/utils/h;

    invoke-virtual {v2, v1}, Lcom/gameloft/android2d/iap/utils/h;->g0(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->d:Lcom/gameloft/android2d/iap/utils/h;

    move/from16 v12, v24

    invoke-virtual {v1, v12}, Lcom/gameloft/android2d/iap/utils/h;->e0(Z)V

    :cond_6fa
    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->d:Lcom/gameloft/android2d/iap/utils/h;

    const-string v2, "googleplay"

    invoke-virtual {v1, v2}, Lcom/gameloft/android2d/iap/utils/h;->b(Ljava/lang/String;)V
    :try_end_701
    .catch Ljava/lang/Exception; {:try_start_50d .. :try_end_701} :catch_751

    :try_start_701
    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->d:Lcom/gameloft/android2d/iap/utils/h;

    const v2, 0x7f1202ce

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android2d/iap/utils/e;->a(Ljava/util/Hashtable;)[I

    move-result-object v5
    :try_end_716
    .catch Ljava/lang/Exception; {:try_start_701 .. :try_end_716} :catch_718

    const/4 v12, 0x1

    goto :goto_71b

    :catch_718
    move-object/from16 v5, v18

    const/4 v12, 0x0

    :goto_71b
    :try_start_71b
    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->d:Lcom/gameloft/android2d/iap/utils/h;

    const v2, 0x7f1202cf

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android2d/iap/utils/e;->a(Ljava/util/Hashtable;)[I

    move-result-object v6
    :try_end_730
    .catch Ljava/lang/Exception; {:try_start_71b .. :try_end_730} :catch_733

    const/16 v16, 0x1

    goto :goto_737

    :catch_733
    move-object/from16 v6, v20

    const/16 v16, 0x0

    :goto_737
    :try_start_737
    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->d:Lcom/gameloft/android2d/iap/utils/h;
    :try_end_739
    .catch Ljava/lang/Exception; {:try_start_737 .. :try_end_739} :catch_751

    const-string v2, "0,1,2,3,4,5,"

    if-eqz v12, :cond_742

    :try_start_73d
    invoke-static {v5, v7}, Lcom/gameloft/android2d/iap/utils/SUtils;->convertIntArrayToString([ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_743

    :cond_742
    move-object v3, v2

    :goto_743
    invoke-virtual {v1, v3}, Lcom/gameloft/android2d/iap/utils/h;->X(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/gameloft/android2d/iap/utils/e;->d:Lcom/gameloft/android2d/iap/utils/h;

    if-eqz v16, :cond_74e

    invoke-static {v6, v7}, Lcom/gameloft/android2d/iap/utils/SUtils;->convertIntArrayToString([ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_74e
    invoke-virtual {v1, v2}, Lcom/gameloft/android2d/iap/utils/h;->Y(Ljava/lang/String;)V
    :try_end_751
    .catch Ljava/lang/Exception; {:try_start_73d .. :try_end_751} :catch_751

    :catch_751
    :cond_751
    return-void
.end method
