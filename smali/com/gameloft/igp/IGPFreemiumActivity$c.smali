###### Class com.gameloft.igp.IGPFreemiumActivity.c (com.gameloft.igp.IGPFreemiumActivity$c)
.class Lcom/gameloft/igp/IGPFreemiumActivity$c;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/igp/IGPFreemiumActivity;->retrieveItems(ILjava/lang/String;Lcom/gameloft/igp/IGPFreemiumActivity$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/gameloft/igp/IGPFreemiumActivity$j;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/gameloft/igp/IGPFreemiumActivity$j;)V
    .registers 4

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$c;->a:Ljava/lang/String;

    iput p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$c;->b:I

    iput-object p3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$c;->c:Lcom/gameloft/igp/IGPFreemiumActivity$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    const/4 v0, -0x1

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://201205igp.gameloft.com/redir/rewards.php?action=retrieveItems&game_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&game_ver=1.8.0a&lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gameloft/igp/IGPFreemiumActivity;->b:[Ljava/lang/String;

    iget v3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$c;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getSerial()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&hdidfv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getHDIDFV()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ba

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4b} :catch_c2

    const-string v3, "message"

    if-nez v1, :cond_b0

    :try_start_4f
    const-string v4, "items"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    :goto_56
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_8c

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v7, "type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v7, "amount"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v7, "isInstall"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v7, "destGameCode"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v7, "creation"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v8, p0, Lcom/gameloft/igp/IGPFreemiumActivity$c;->c:Lcom/gameloft/igp/IGPFreemiumActivity$j;

    invoke-interface/range {v8 .. v14}, Lcom/gameloft/igp/IGPFreemiumActivity$j;->a(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    :cond_8c
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_a8

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$c;->c:Lcom/gameloft/igp/IGPFreemiumActivity$j;

    invoke-interface {v3, v2, v1}, Lcom/gameloft/igp/IGPFreemiumActivity$j;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_dd

    :cond_a8
    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$c;->c:Lcom/gameloft/igp/IGPFreemiumActivity$j;

    const-string v3, "No items retrieved."

    invoke-interface {v2, v1, v3}, Lcom/gameloft/igp/IGPFreemiumActivity$j;->b(ILjava/lang/String;)V

    goto :goto_dd

    :cond_b0
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$c;->c:Lcom/gameloft/igp/IGPFreemiumActivity$j;

    invoke-interface {v3, v1, v2}, Lcom/gameloft/igp/IGPFreemiumActivity$j;->b(ILjava/lang/String;)V

    goto :goto_dd

    :cond_ba
    iget-object v1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$c;->c:Lcom/gameloft/igp/IGPFreemiumActivity$j;

    const-string v2, "Response is null. Check your network connection."

    invoke-interface {v1, v0, v2}, Lcom/gameloft/igp/IGPFreemiumActivity$j;->b(ILjava/lang/String;)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_c1} :catch_c2

    goto :goto_dd

    :catch_c2
    move-exception v1

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$c;->c:Lcom/gameloft/igp/IGPFreemiumActivity$j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/gameloft/igp/IGPFreemiumActivity$j;->b(ILjava/lang/String;)V

    :goto_dd
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method
