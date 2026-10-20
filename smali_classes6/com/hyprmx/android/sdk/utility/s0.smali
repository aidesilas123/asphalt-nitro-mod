###### Class com.hyprmx.android.sdk.utility.s0 (com.hyprmx.android.sdk.utility.s0)
.class public final Lcom/hyprmx/android/sdk/utility/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;)Lcom/hyprmx/android/sdk/utility/j0;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "decision"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "url"

    invoke-static {v1, v0}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_60

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x894c3ff

    if-eq v1, v2, :cond_54

    const v2, -0x45e0b7a

    if-eq v1, v2, :cond_43

    const v0, 0x5fbd65d

    if-eq v1, v0, :cond_3d

    const v0, 0x3b06b6a1

    if-eq v1, v0, :cond_31

    goto :goto_60

    :cond_31
    const-string v0, "NAVIGATION_BLOCKED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    goto :goto_60

    :cond_3a
    sget-object p0, Lcom/hyprmx/android/sdk/utility/j0$b;->b:Lcom/hyprmx/android/sdk/utility/j0$b;

    goto :goto_65

    :cond_3d
    const-string v0, "NAVIGATION_ALLOWED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_60

    :cond_43
    const-string v1, "NAVIGATION_REDIRECTED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4c

    goto :goto_60

    :cond_4c
    if-eqz v0, :cond_60

    new-instance p0, Lcom/hyprmx/android/sdk/utility/j0$d;

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/utility/j0$d;-><init>(Ljava/lang/String;)V

    goto :goto_65

    :cond_54
    const-string v0, "OPEN_OUTSIDE_APPLICATION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5d

    goto :goto_60

    :cond_5d
    sget-object p0, Lcom/hyprmx/android/sdk/utility/j0$c;->b:Lcom/hyprmx/android/sdk/utility/j0$c;

    goto :goto_65

    :cond_60
    :goto_60
    sget-object p0, Lcom/hyprmx/android/sdk/utility/j0$a;->b:Lcom/hyprmx/android/sdk/utility/j0$a;
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_62} :catch_63

    goto :goto_65

    :catch_63
    sget-object p0, Lcom/hyprmx/android/sdk/utility/j0$a;->b:Lcom/hyprmx/android/sdk/utility/j0$a;

    :goto_65
    return-object p0
.end method
