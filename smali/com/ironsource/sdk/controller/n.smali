###### Class com.json.sdk.controller.n (com.ironsource.sdk.controller.n)
.class public Lcom/ironsource/sdk/controller/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/n$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "n"


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/ironsource/t9;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/sdk/controller/n;->b:Landroid/content/Context;

    new-instance p1, Lcom/ironsource/t9;

    invoke-direct {p1}, Lcom/ironsource/t9;-><init>()V

    iput-object p1, p0, Lcom/ironsource/sdk/controller/n;->c:Lcom/ironsource/t9;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/ironsource/sdk/controller/n$b;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/ironsource/sdk/controller/n$b;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/ironsource/sdk/controller/n$b;-><init>(Lcom/ironsource/sdk/controller/n$a;)V

    const-string v1, "omidFunction"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/n$b;->a:Ljava/lang/String;

    const-string v1, "omidParams"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/n$b;->b:Lorg/json/JSONObject;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/n$b;->c:Ljava/lang/String;

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ironsource/sdk/controller/n$b;->d:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method b(Ljava/lang/String;Lcom/ironsource/p8;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/n;->a(Ljava/lang/String;)Lcom/ironsource/sdk/controller/n$b;

    move-result-object p1

    new-instance v0, Lcom/ironsource/hb;

    invoke-direct {v0}, Lcom/ironsource/hb;-><init>()V

    iget-object v1, p1, Lcom/ironsource/sdk/controller/n$b;->b:Lorg/json/JSONObject;

    if-eqz v1, :cond_1e

    const-string v2, "adViewId"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/hb;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    const/4 v1, 0x0

    :try_start_1f
    iget-object v2, p1, Lcom/ironsource/sdk/controller/n$b;->a:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v4, :sswitch_data_dc

    goto :goto_5f

    :sswitch_2e
    const-string v4, "startSession"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const/4 v3, 0x1

    goto :goto_5f

    :sswitch_38
    const-string v4, "impressionOccurred"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const/4 v3, 0x3

    goto :goto_5f

    :sswitch_42
    const-string v4, "finishSession"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const/4 v3, 0x2

    goto :goto_5f

    :sswitch_4c
    const-string v4, "getOmidData"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const/4 v3, 0x4

    goto :goto_5f

    :sswitch_56
    const-string v4, "activate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const/4 v3, 0x0

    :cond_5f
    :goto_5f
    if-eqz v3, :cond_96

    if-eq v3, v8, :cond_8e

    if-eq v3, v7, :cond_86

    if-eq v3, v6, :cond_7e

    if-ne v3, v5, :cond_6c

    :goto_69
    iget-object v2, p0, Lcom/ironsource/sdk/controller/n;->c:Lcom/ironsource/t9;

    goto :goto_9e

    :cond_6c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "%s | unsupported OMID API"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/ironsource/sdk/controller/n$b;->a:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7e
    iget-object v2, p0, Lcom/ironsource/sdk/controller/n;->c:Lcom/ironsource/t9;

    iget-object v3, p1, Lcom/ironsource/sdk/controller/n$b;->b:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lcom/ironsource/t9;->c(Lorg/json/JSONObject;)V

    goto :goto_a2

    :cond_86
    iget-object v2, p0, Lcom/ironsource/sdk/controller/n;->c:Lcom/ironsource/t9;

    iget-object v3, p1, Lcom/ironsource/sdk/controller/n$b;->b:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lcom/ironsource/t9;->b(Lorg/json/JSONObject;)V

    goto :goto_a2

    :cond_8e
    iget-object v2, p0, Lcom/ironsource/sdk/controller/n;->c:Lcom/ironsource/t9;

    iget-object v3, p1, Lcom/ironsource/sdk/controller/n$b;->b:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lcom/ironsource/t9;->d(Lorg/json/JSONObject;)V

    goto :goto_a2

    :cond_96
    iget-object v2, p0, Lcom/ironsource/sdk/controller/n;->c:Lcom/ironsource/t9;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/n;->b:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/ironsource/t9;->a(Landroid/content/Context;)V

    goto :goto_69

    :goto_9e
    invoke-virtual {v2}, Lcom/ironsource/t9;->a()Lcom/ironsource/hb;

    move-result-object v0

    :goto_a2
    iget-object v2, p1, Lcom/ironsource/sdk/controller/n$b;->c:Ljava/lang/String;

    invoke-interface {p2, v8, v2, v0}, Lcom/ironsource/p8;->a(ZLjava/lang/String;Lcom/ironsource/hb;)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_a7} :catch_a8

    goto :goto_db

    :catch_a8
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "errMsg"

    invoke-virtual {v0, v4, v3}, Lcom/ironsource/hb;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/ironsource/sdk/controller/n;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OMIDJSAdapter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/ironsource/sdk/controller/n$b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/ironsource/sdk/controller/n$b;->d:Ljava/lang/String;

    invoke-interface {p2, v1, p1, v0}, Lcom/ironsource/p8;->a(ZLjava/lang/String;Lcom/ironsource/hb;)V

    :goto_db
    return-void

    :sswitch_data_dc
    .sparse-switch
        -0x62b42b0d -> :sswitch_56
        -0x3aada7c7 -> :sswitch_4c
        0x436d283 -> :sswitch_42
        0x48024a4e -> :sswitch_38
        0x6e4d03d4 -> :sswitch_2e
    .end sparse-switch
.end method
