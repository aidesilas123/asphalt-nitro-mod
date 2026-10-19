###### Class com.hyprmx.android.sdk.api.data.r (com.hyprmx.android.sdk.api.data.r)
.class public final Lcom/hyprmx/android/sdk/api/data/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyprmx/android/sdk/api/data/r$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/hyprmx/android/sdk/api/data/l;

.field public final b:Lcom/hyprmx/android/sdk/api/data/s;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/api/data/l;Lcom/hyprmx/android/sdk/api/data/s;)V
    .registers 4

    const-string v0, "noAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userInfoForm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/api/data/r;->a:Lcom/hyprmx/android/sdk/api/data/l;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/api/data/r;->b:Lcom/hyprmx/android/sdk/api/data/s;

    return-void
.end method

###### Class com.hyprmx.android.sdk.api.data.r.a (com.hyprmx.android.sdk.api.data.r$a)
.class public final Lcom/hyprmx/android/sdk/api/data/r$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/api/data/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)Lcom/hyprmx/android/sdk/api/data/r;
    .registers 18

    move-object/from16 v0, p0

    const-string v1, "no_ad"

    const-string v2, "user_info_form"

    const/16 v3, 0x10

    const-string v4, "FFFFFF"

    const-string v5, ""

    const/16 v6, 0x12

    const-string v7, "#282828"

    const-string v8, "This ad is not available based on your response. Tap close or the back key to continue."

    if-nez v0, :cond_26

    new-instance v0, Lcom/hyprmx/android/sdk/api/data/r;

    new-instance v1, Lcom/hyprmx/android/sdk/api/data/l;

    invoke-direct {v1, v8, v7, v6}, Lcom/hyprmx/android/sdk/api/data/l;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Lcom/hyprmx/android/sdk/api/data/s;

    sget-object v6, Lcom/hyprmx/android/sdk/footer/a;->g:Lcom/hyprmx/android/sdk/footer/a;

    invoke-direct {v2, v5, v4, v3, v6}, Lcom/hyprmx/android/sdk/api/data/s;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/hyprmx/android/sdk/footer/a;)V

    invoke-direct {v0, v1, v2}, Lcom/hyprmx/android/sdk/api/data/r;-><init>(Lcom/hyprmx/android/sdk/api/data/l;Lcom/hyprmx/android/sdk/api/data/s;)V

    return-object v0

    :cond_26
    :try_start_26
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_2f} :catch_bf

    const-string v10, "titleColor"

    const-string v11, "title_size"

    const-string v12, "title_color"

    const-string v13, "json"

    const-string v14, "title"

    if-eqz v0, :cond_75

    :try_start_3b
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "json.getJSONObject(FIELD_USER_INFO_FORM)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_47} :catch_bf

    :try_start_47
    invoke-virtual {v0, v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v12, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v11, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    sget-object v16, Lcom/hyprmx/android/sdk/footer/a;->g:Lcom/hyprmx/android/sdk/footer/a;

    const-string v3, "footer"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/footer/a$a;->a(Lorg/json/JSONObject;)Lcom/hyprmx/android/sdk/footer/a;

    move-result-object v0

    new-instance v3, Lcom/hyprmx/android/sdk/api/data/s;

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2, v15, v6, v0}, Lcom/hyprmx/android/sdk/api/data/s;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/hyprmx/android/sdk/footer/a;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_6a} :catch_6b

    goto :goto_7e

    :catch_6b
    :try_start_6b
    new-instance v3, Lcom/hyprmx/android/sdk/api/data/s;

    sget-object v0, Lcom/hyprmx/android/sdk/footer/a;->g:Lcom/hyprmx/android/sdk/footer/a;

    const/16 v2, 0x10

    invoke-direct {v3, v5, v4, v2, v0}, Lcom/hyprmx/android/sdk/api/data/s;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/hyprmx/android/sdk/footer/a;)V

    goto :goto_7e

    :cond_75
    new-instance v3, Lcom/hyprmx/android/sdk/api/data/s;

    sget-object v0, Lcom/hyprmx/android/sdk/footer/a;->g:Lcom/hyprmx/android/sdk/footer/a;

    const/16 v2, 0x10

    invoke-direct {v3, v5, v4, v2, v0}, Lcom/hyprmx/android/sdk/api/data/s;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/hyprmx/android/sdk/footer/a;)V

    :goto_7e
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "json.getJSONObject(FIELD_NO_AD)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_90
    .catch Lorg/json/JSONException; {:try_start_6b .. :try_end_90} :catch_bf

    :try_start_90
    invoke-virtual {v0, v14, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v12, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x12

    invoke-virtual {v0, v11, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v6, Lcom/hyprmx/android/sdk/api/data/l;

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v1, v2, v0}, Lcom/hyprmx/android/sdk/api/data/l;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_a9
    .catch Lorg/json/JSONException; {:try_start_90 .. :try_end_a9} :catch_aa

    goto :goto_b9

    :catch_aa
    :try_start_aa
    new-instance v6, Lcom/hyprmx/android/sdk/api/data/l;

    const/16 v0, 0x12

    invoke-direct {v6, v8, v7, v0}, Lcom/hyprmx/android/sdk/api/data/l;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_b9

    :cond_b2
    new-instance v6, Lcom/hyprmx/android/sdk/api/data/l;

    const/16 v0, 0x12

    invoke-direct {v6, v8, v7, v0}, Lcom/hyprmx/android/sdk/api/data/l;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_b9
    new-instance v0, Lcom/hyprmx/android/sdk/api/data/r;

    invoke-direct {v0, v6, v3}, Lcom/hyprmx/android/sdk/api/data/r;-><init>(Lcom/hyprmx/android/sdk/api/data/l;Lcom/hyprmx/android/sdk/api/data/s;)V
    :try_end_be
    .catch Lorg/json/JSONException; {:try_start_aa .. :try_end_be} :catch_bf

    return-object v0

    :catch_bf
    const-string v0, "Exception parsing UI Components"

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/hyprmx/android/sdk/api/data/r;

    new-instance v1, Lcom/hyprmx/android/sdk/api/data/l;

    const/16 v2, 0x12

    invoke-direct {v1, v8, v7, v2}, Lcom/hyprmx/android/sdk/api/data/l;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Lcom/hyprmx/android/sdk/api/data/s;

    sget-object v3, Lcom/hyprmx/android/sdk/footer/a;->g:Lcom/hyprmx/android/sdk/footer/a;

    const/16 v6, 0x10

    invoke-direct {v2, v5, v4, v6, v3}, Lcom/hyprmx/android/sdk/api/data/s;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/hyprmx/android/sdk/footer/a;)V

    invoke-direct {v0, v1, v2}, Lcom/hyprmx/android/sdk/api/data/r;-><init>(Lcom/hyprmx/android/sdk/api/data/l;Lcom/hyprmx/android/sdk/api/data/s;)V

    return-object v0
.end method
