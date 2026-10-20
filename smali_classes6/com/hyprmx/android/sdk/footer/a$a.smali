###### Class com.hyprmx.android.sdk.footer.a.C0285a (com.hyprmx.android.sdk.footer.a$a)
.class public final Lcom/hyprmx/android/sdk/footer/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/footer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lorg/json/JSONObject;)Lcom/hyprmx/android/sdk/footer/a;
    .registers 16

    if-eqz p0, :cond_a0

    const-string v0, "images"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_80

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const-string v3, "link"

    const-string v4, "width"

    const-string v5, "height"

    const-string v6, "imageJSON.getString(FIELD_PORTRAITURL)"

    const-string v7, "portrait_url"

    const-string v8, "image"

    const-string v9, "null cannot be cast to non-null type org.json.JSONObject"

    const/16 v10, 0xf

    if-lez v1, :cond_4e

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4e

    new-instance v11, Lcom/hyprmx/android/sdk/footer/e;

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v1, v4, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    invoke-static {v3, v1}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v12, v13, v14, v1}, Lcom/hyprmx/android/sdk/footer/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_4f

    :cond_4e
    move-object v11, v2

    :goto_4f
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v12, 0x1

    if-le v1, v12, :cond_7d

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_7d

    new-instance v2, Lcom/hyprmx/android/sdk/footer/e;

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v4, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v0}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v5, v4, v0}, Lcom/hyprmx/android/sdk/footer/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    :cond_7d
    move-object v8, v2

    move-object v7, v11

    goto :goto_82

    :cond_80
    move-object v7, v2

    move-object v8, v7

    :goto_82
    new-instance v0, Lcom/hyprmx/android/sdk/footer/a;

    const-string v1, "text"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "background_color"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v1, 0x33

    const-string v2, "min_height"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v9, 0x0

    const/16 v10, 0x20

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/hyprmx/android/sdk/footer/a;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/hyprmx/android/sdk/footer/e;Lcom/hyprmx/android/sdk/footer/e;ZI)V

    goto :goto_a2

    :cond_a0
    sget-object v0, Lcom/hyprmx/android/sdk/footer/a;->g:Lcom/hyprmx/android/sdk/footer/a;

    :goto_a2
    return-object v0
.end method
