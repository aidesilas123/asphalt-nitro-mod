###### Class com.gameloft.android2d.iap.IAPLib.f (com.gameloft.android2d.iap.IAPLib$f)
.class Lcom/gameloft/android2d/iap/IAPLib$f;
.super Lcom/gameloft/android2d/iap/utils/d;
.source "IAPLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->GetLimitsValidation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/gameloft/android2d/iap/utils/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "a5"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3f

    :try_start_a
    const-string v0, "a4"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-gtz p1, :cond_1f

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_GetLimitsValidationCB(Z)V

    goto :goto_42

    :cond_1f
    const-string p1, "enabled"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3b

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_GetLimitsValidationCB(Z)V

    goto :goto_42

    :cond_3b
    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_GetLimitsValidationCB(Z)V
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_3e} :catch_42

    goto :goto_42

    :cond_3f
    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_GetLimitsValidationCB(Z)V

    :catch_42
    :goto_42
    return-void
.end method
