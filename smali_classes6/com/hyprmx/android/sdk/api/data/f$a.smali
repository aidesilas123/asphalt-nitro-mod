###### Class com.hyprmx.android.sdk.api.data.f.a (com.hyprmx.android.sdk.api.data.f$a)
.class public final Lcom/hyprmx/android/sdk/api/data/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/api/data/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)Lcom/hyprmx/android/sdk/utility/m0;
    .registers 12

    const/4 v0, 0x0

    if-nez p0, :cond_c

    new-instance p0, Lcom/hyprmx/android/sdk/utility/m0$a;

    const/4 v1, 0x0

    const-string v2, "Calendar repeat rule JSON is null"

    invoke-direct {p0, v2, v0, v1}, Lcom/hyprmx/android/sdk/utility/m0$a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    return-object p0

    :cond_c
    :try_start_c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "frequency"

    invoke-static {p0, v1}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    const-string p0, "interval"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-int p0, v4

    int-to-short v4, p0

    const-string p0, "expires"

    invoke-static {p0, v1}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    const-string p0, "exceptionDates"

    invoke-static {p0, v1}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    const-string p0, "daysInWeek"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/hyprmx/android/sdk/api/data/f$a;->a(Lorg/json/JSONArray;)[S

    move-result-object v6

    const-string p0, "daysInMonth"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/hyprmx/android/sdk/api/data/f$a;->a(Lorg/json/JSONArray;)[S

    move-result-object v7

    const-string p0, "daysInYear"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/hyprmx/android/sdk/api/data/f$a;->a(Lorg/json/JSONArray;)[S

    move-result-object v8

    const-string p0, "weeksInMonth"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/hyprmx/android/sdk/api/data/f$a;->a(Lorg/json/JSONArray;)[S

    move-result-object v9

    const-string p0, "monthsInYear"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/hyprmx/android/sdk/api/data/f$a;->a(Lorg/json/JSONArray;)[S

    move-result-object v10

    new-instance p0, Lcom/hyprmx/android/sdk/utility/m0$b;

    new-instance v1, Lcom/hyprmx/android/sdk/api/data/f;

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/hyprmx/android/sdk/api/data/f;-><init>(Ljava/lang/String;SLjava/lang/String;[S[S[S[S[S)V

    invoke-direct {p0, v1}, Lcom/hyprmx/android/sdk/utility/m0$b;-><init>(Ljava/lang/Object;)V
    :try_end_67
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_67} :catch_68

    return-object p0

    :catch_68
    move-exception p0

    new-instance v1, Lcom/hyprmx/android/sdk/utility/m0$a;

    const-string v2, "Exception parsing calendar repeat rule."

    invoke-direct {v1, v2, v0, p0}, Lcom/hyprmx/android/sdk/utility/m0$a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    return-object v1
.end method

.method public static a(Lorg/json/JSONArray;)[S
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_6

    new-array p0, v0, [S

    return-object p0

    :cond_6
    :try_start_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v2, v1, [S

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v1, :cond_21

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-short v4, v4

    aput-short v4, v2, v3
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_17} :catch_1a

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :catch_1a
    const-string p0, "Exception parsing JSON array"

    invoke-static {p0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    new-array v2, v0, [S

    :cond_21
    return-object v2
.end method
