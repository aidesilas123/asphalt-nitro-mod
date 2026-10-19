###### Class com.gameloft.android2d.iap.IAPLib.g (com.gameloft.android2d.iap.IAPLib$g)
.class Lcom/gameloft/android2d/iap/IAPLib$g;
.super Lcom/gameloft/android2d/iap/utils/d;
.source "IAPLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->downloadManagedPurchedItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/utils/IABRequestHandler;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/utils/IABRequestHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$g;->a:Lcom/gameloft/android2d/iap/utils/IABRequestHandler;

    invoke-direct {p0}, Lcom/gameloft/android2d/iap/utils/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 12

    const-string v0, "a5"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9e

    const/4 v0, 0x0

    :try_start_c
    const-string v2, "a4"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "a7"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-gtz v4, :cond_24

    goto :goto_95

    :cond_24
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->getInstance()Lcom/gameloft/android2d/iap/utils/IABRequestHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->f()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f1203b2

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getJSONValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getIAPCRMKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, p1, v5}, Lcom/gameloft/android2d/iap/utils/CRMUtils;->CheckMD5Hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_3f} :catch_95

    if-eqz p1, :cond_95

    const/4 p1, 0x0

    :try_start_42
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->access$200(Lcom/gameloft/android2d/iap/IAPLib;)Lcom/gameloft/android2d/iap/utils/ServerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/h;->n()Ljava/util/Hashtable;

    move-result-object v2

    if-eqz v2, :cond_6e

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :cond_58
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_6e

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gameloft/android2d/iap/utils/g;

    if-eqz v5, :cond_58

    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object p1

    :cond_6e
    if-eqz p1, :cond_95

    const/4 v2, 0x0

    :goto_71
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_95

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "content_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "order_id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/billings/a;->c()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const/4 v9, 0x1

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lcom/gameloft/android2d/iap/billings/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_92} :catch_95

    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    :catch_95
    :cond_95
    :goto_95
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->GetListItemsRestoreCB()V

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    sput v0, Lcom/gameloft/android2d/iap/IAPLib;->k:I

    goto :goto_a9

    :cond_9e
    const-string v0, "a6"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/4 p1, -0x2

    sput p1, Lcom/gameloft/android2d/iap/IAPLib;->k:I

    :goto_a9
    return-void
.end method
