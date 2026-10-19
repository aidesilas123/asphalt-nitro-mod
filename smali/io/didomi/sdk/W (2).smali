###### Class io.didomi.drawable.W (io.didomi.sdk.W)
.class public final Lio/didomi/sdk/W;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lio/didomi/sdk/W;",
        "",
        "<init>",
        "()V",
        "",
        "jsonString",
        "Lio/didomi/sdk/V8;",
        "vendorRepository",
        "Lio/didomi/sdk/consent/model/ConsentToken;",
        "a",
        "(Ljava/lang/String;Lio/didomi/sdk/V8;)Lio/didomi/sdk/consent/model/ConsentToken;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lio/didomi/sdk/W;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/didomi/sdk/W;

    invoke-direct {v0}, Lio/didomi/sdk/W;-><init>()V

    sput-object v0, Lio/didomi/sdk/W;->a:Lio/didomi/sdk/W;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lio/didomi/sdk/V8;)Lio/didomi/sdk/consent/model/ConsentToken;
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "vendorRepository"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_254

    invoke-static/range {p1 .. p1}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_254

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/v0;->a:Lio/didomi/sdk/v0;

    invoke-virtual {v0}, Lio/didomi/sdk/v0;->c()Ljava/text/SimpleDateFormat;

    move-result-object v0

    const-string v3, "created"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    const-string v4, "updated"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    const-string v5, "sync"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    move-object v11, v0

    goto :goto_43

    :cond_42
    const/4 v11, 0x0

    :goto_43
    const-string v0, "sync_user_id"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4d

    move-object v5, v2

    goto :goto_4e

    :cond_4d
    const/4 v5, 0x0

    :goto_4e
    if-eqz v5, :cond_56

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_57

    :cond_56
    const/4 v12, 0x0

    :goto_57
    const-string v0, "purposes"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "enabled"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    new-instance v15, Ljava/util/LinkedHashSet;

    invoke-direct {v15}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v10, 0x0

    :goto_6d
    if-ge v10, v8, :cond_84

    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "enabledPurposesIds.getString(i)"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Lio/didomi/sdk/V8;->c(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v13

    if-eqz v13, :cond_81

    invoke-interface {v15, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_81
    add-int/lit8 v10, v10, 0x1

    goto :goto_6d

    :cond_84
    const-string v6, "disabled"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v14, Ljava/util/LinkedHashSet;

    invoke-direct {v14}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v10, 0x0

    :goto_94
    if-ge v10, v8, :cond_ab

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v9, "disabledPurposesIds.getString(i)"

    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Lio/didomi/sdk/V8;->c(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v9

    if-eqz v9, :cond_a8

    invoke-interface {v14, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a8
    add-int/lit8 v10, v10, 0x1

    goto :goto_94

    :cond_ab
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v13, Ljava/util/LinkedHashSet;

    invoke-direct {v13}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v8, "purposes_li"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10d

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v10, 0x0

    :goto_ca
    if-ge v10, v7, :cond_e9

    move/from16 v18, v7

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v19, v9

    const-string v9, "enabledLegitimatePurposesIds.getString(i)"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lio/didomi/sdk/V8;->c(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v7

    if-eqz v7, :cond_e2

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_e2
    add-int/lit8 v10, v10, 0x1

    move/from16 v7, v18

    move-object/from16 v9, v19

    goto :goto_ca

    :cond_e9
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v9, 0x0

    :goto_f2
    if-ge v9, v8, :cond_114

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v18, v7

    const-string v7, "disabledLegitimatePurposesIds.getString(i)"

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Lio/didomi/sdk/V8;->c(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v7

    if-eqz v7, :cond_108

    invoke-interface {v13, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_108
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v18

    goto :goto_f2

    :cond_10d
    const-string v7, "Didomi - purposes_li array not found in JSON!"

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v7, v9, v8, v9}, Lio/didomi/sdk/Log;->i$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_114
    const-string v7, "vendors"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    new-instance v10, Ljava/util/LinkedHashSet;

    invoke-direct {v10}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    move-object/from16 v18, v13

    const/4 v13, 0x0

    :goto_12a
    if-ge v13, v9, :cond_149

    move/from16 v19, v9

    invoke-virtual {v8, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v20, v8

    const-string v8, "enabledVendorsIds.getString(i)"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Lio/didomi/sdk/V8;->g(Ljava/lang/String;)Lio/didomi/sdk/models/InternalVendor;

    move-result-object v8

    if-eqz v8, :cond_142

    invoke-interface {v10, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_142
    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v19

    move-object/from16 v8, v20

    goto :goto_12a

    :cond_149
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    new-instance v13, Ljava/util/LinkedHashSet;

    invoke-direct {v13}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v9, 0x0

    :goto_157
    if-ge v9, v8, :cond_176

    move/from16 v19, v8

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v20, v7

    const-string v7, "disabledVendorsIds.getString(i)"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lio/didomi/sdk/V8;->g(Ljava/lang/String;)Lio/didomi/sdk/models/InternalVendor;

    move-result-object v7

    if-eqz v7, :cond_16f

    invoke-interface {v13, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_16f
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v19

    move-object/from16 v7, v20

    goto :goto_157

    :cond_176
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v8, "vendors_li"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1da

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move-object/from16 v19, v10

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    move-object/from16 v20, v13

    const/4 v13, 0x0

    :goto_199
    if-ge v13, v10, :cond_1b8

    move/from16 v21, v10

    invoke-virtual {v5, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v22, v5

    const-string v5, "enabledLegIntVendorsIds.getString(i)"

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Lio/didomi/sdk/V8;->g(Ljava/lang/String;)Lio/didomi/sdk/models/InternalVendor;

    move-result-object v5

    if-eqz v5, :cond_1b1

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1b1
    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v21

    move-object/from16 v5, v22

    goto :goto_199

    :cond_1b8
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v8, 0x0

    :goto_1c1
    if-ge v8, v6, :cond_1d8

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v13, "disabledLegIntVendorsIds.getString(i)"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Lio/didomi/sdk/V8;->g(Ljava/lang/String;)Lio/didomi/sdk/models/InternalVendor;

    move-result-object v10

    if-eqz v10, :cond_1d5

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1d5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1c1

    :cond_1d8
    const/4 v5, 0x2

    goto :goto_1e5

    :cond_1da
    move-object/from16 v19, v10

    move-object/from16 v20, v13

    const-string v1, "Didomi - vendors_li array not found in JSON!"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v1, v6, v5, v6}, Lio/didomi/sdk/Log;->i$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_1e5
    const-string v1, "tcf_version"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_200

    :try_start_1ee
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1f2
    .catch Ljava/lang/Exception; {:try_start_1ee .. :try_end_1f2} :catch_1fa

    if-eq v1, v8, :cond_1f7

    if-eq v1, v5, :cond_1f7

    goto :goto_200

    :cond_1f7
    move/from16 v21, v1

    goto :goto_202

    :catch_1fa
    const-string v1, "Invalid tcf_version in token. Defaulting to 1."

    const/4 v2, 0x0

    invoke-static {v1, v2, v5, v2}, Lio/didomi/sdk/Log;->e$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_200
    :goto_200
    const/16 v21, 0x1

    :goto_202
    new-instance v1, Lio/didomi/sdk/consent/model/ConsentToken;

    if-nez v3, :cond_20c

    sget-object v2, Lio/didomi/sdk/v0;->a:Lio/didomi/sdk/v0;

    invoke-virtual {v2}, Lio/didomi/sdk/v0;->a()Ljava/util/Date;

    move-result-object v3

    :cond_20c
    if-nez v4, :cond_214

    sget-object v2, Lio/didomi/sdk/v0;->a:Lio/didomi/sdk/v0;

    invoke-virtual {v2}, Lio/didomi/sdk/v0;->a()Ljava/util/Date;

    move-result-object v4

    :cond_214
    move-object v10, v4

    const/4 v13, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v22, 0x0

    const/16 v23, 0xff0

    const/16 v24, 0x0

    move-object v8, v1

    move-object/from16 v25, v9

    move-object v9, v3

    move-object/from16 v3, v19

    move-object/from16 v26, v18

    move-object/from16 v27, v20

    move-object/from16 v28, v14

    move-object v14, v2

    move-object v2, v15

    move-object v15, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v22

    move/from16 v22, v23

    move-object/from16 v23, v24

    invoke-direct/range {v8 .. v23}, Lio/didomi/sdk/consent/model/ConsentToken;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;IILkotlin/jvm/internal/n;)V

    move-object v13, v1

    move-object v14, v2

    move-object/from16 v15, v28

    move-object/from16 v16, v0

    move-object/from16 v17, v26

    move-object/from16 v18, v3

    move-object/from16 v19, v27

    move-object/from16 v20, v7

    move-object/from16 v21, v25

    invoke-static/range {v13 .. v21}, Lio/didomi/sdk/Y;->a(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z

    return-object v1

    :cond_254
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Empty JSON string provided"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
