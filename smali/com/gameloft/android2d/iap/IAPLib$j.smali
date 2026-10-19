###### Class com.gameloft.android2d.iap.IAPLib.j (com.gameloft.android2d.iap.IAPLib$j)
.class Lcom/gameloft/android2d/iap/IAPLib$j;
.super Lcom/gameloft/android2d/iap/utils/d;
.source "IAPLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->CheckWPLimitation(Ljava/lang/String;Ljava/util/HashMap;)V
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
    .registers 8

    const-string v0, ""

    const-string v1, "a5"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x5

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v1, v4, :cond_54

    const-string v1, "a6"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v4, 0x193

    if-eq v1, v4, :cond_24

    const/16 v4, 0x1ad

    if-ne v1, v4, :cond_1c

    goto :goto_24

    :cond_1c
    invoke-static {v3}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    goto :goto_5a

    :cond_24
    :goto_24
    const-string v1, "a4"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_2a
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "message"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_35} :catch_3c

    :try_start_35
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3b} :catch_3d

    goto :goto_3e

    :catch_3c
    move-object v1, v0

    :catch_3d
    move-object v4, v0

    :goto_3e
    if-eqz v1, :cond_4d

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-static {v4}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_OnLimitRequestCallback(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->showIAPLimitationWarning(Ljava/lang/String;)V

    goto :goto_5a

    :cond_4d
    invoke-static {v3}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    goto :goto_5a

    :cond_54
    invoke-static {v3}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    :goto_5a
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    return-void
.end method
