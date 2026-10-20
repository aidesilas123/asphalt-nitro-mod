###### Class com.json.sdk.controller.o (com.ironsource.sdk.controller.o)
.class public Lcom/ironsource/sdk/controller/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/o$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "o"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/sdk/controller/o;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/ironsource/sdk/controller/o$b;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/ironsource/sdk/controller/o$b;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/ironsource/sdk/controller/o$b;-><init>(Lcom/ironsource/sdk/controller/o$a;)V

    const-string v1, "functionName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/o$b;->a:Ljava/lang/String;

    const-string v1, "functionParams"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/o$b;->b:Lorg/json/JSONObject;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/o$b;->c:Ljava/lang/String;

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ironsource/sdk/controller/o$b;->d:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lcom/ironsource/sdk/controller/o$b;Lcom/ironsource/p8;)V
    .registers 8

    const-string v0, "permissions"

    new-instance v1, Lcom/ironsource/hb;

    invoke-direct {v1}, Lcom/ironsource/hb;-><init>()V

    :try_start_7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/o;->b:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/ironsource/k0;->a(Landroid/content/Context;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/ironsource/hb;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    iget-object v0, p2, Lcom/ironsource/sdk/controller/o$b;->c:Ljava/lang/String;

    invoke-interface {p3, p1, v0, v1}, Lcom/ironsource/p8;->a(ZLjava/lang/String;Lcom/ironsource/hb;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_1b

    goto :goto_48

    :catch_1b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Lcom/ironsource/sdk/controller/o;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PermissionsJSAdapter getPermissions JSON Exception when getting permissions parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "errMsg"

    invoke-virtual {v1, v0, p1}, Lcom/ironsource/hb;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/ironsource/sdk/controller/o$b;->d:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-interface {p3, p2, p1, v1}, Lcom/ironsource/p8;->a(ZLjava/lang/String;Lcom/ironsource/hb;)V

    :goto_48
    return-void
.end method

.method b(Ljava/lang/String;Lcom/ironsource/p8;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/o;->a(Ljava/lang/String;)Lcom/ironsource/sdk/controller/o$b;

    move-result-object v0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/o$b;->a:Ljava/lang/String;

    const-string v2, "getPermissions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object p1, v0, Lcom/ironsource/sdk/controller/o$b;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, p1, v0, p2}, Lcom/ironsource/sdk/controller/o;->a(Lorg/json/JSONObject;Lcom/ironsource/sdk/controller/o$b;Lcom/ironsource/p8;)V

    goto :goto_3a

    :cond_14
    iget-object v1, v0, Lcom/ironsource/sdk/controller/o$b;->a:Ljava/lang/String;

    const-string v2, "isPermissionGranted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object p1, v0, Lcom/ironsource/sdk/controller/o$b;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, p1, v0, p2}, Lcom/ironsource/sdk/controller/o;->b(Lorg/json/JSONObject;Lcom/ironsource/sdk/controller/o$b;Lcom/ironsource/p8;)V

    goto :goto_3a

    :cond_24
    sget-object p2, Lcom/ironsource/sdk/controller/o;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionsJSAdapter unhandled API request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3a
    return-void
.end method

.method public b(Lorg/json/JSONObject;Lcom/ironsource/sdk/controller/o$b;Lcom/ironsource/p8;)V
    .registers 8

    const-string v0, "permission"

    new-instance v1, Lcom/ironsource/hb;

    invoke-direct {v1}, Lcom/ironsource/hb;-><init>()V

    const/4 v2, 0x0

    :try_start_8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/ironsource/hb;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/sdk/controller/o;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/ironsource/k0;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_36

    const-string v3, "status"

    if-eqz v0, :cond_2a

    :try_start_19
    iget-object v0, p0, Lcom/ironsource/sdk/controller/o;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/ironsource/k0;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lcom/ironsource/hb;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iget-object v0, p2, Lcom/ironsource/sdk/controller/o$b;->c:Ljava/lang/String;

    goto :goto_32

    :cond_2a
    const-string p1, "unhandledPermission"

    invoke-virtual {v1, v3, p1}, Lcom/ironsource/hb;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/ironsource/sdk/controller/o$b;->d:Ljava/lang/String;

    const/4 p1, 0x0

    :goto_32
    invoke-interface {p3, p1, v0, v1}, Lcom/ironsource/p8;->a(ZLjava/lang/String;Lcom/ironsource/hb;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_35} :catch_36

    goto :goto_48

    :catch_36
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "errMsg"

    invoke-virtual {v1, v0, p1}, Lcom/ironsource/hb;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/ironsource/sdk/controller/o$b;->d:Ljava/lang/String;

    invoke-interface {p3, v2, p1, v1}, Lcom/ironsource/p8;->a(ZLjava/lang/String;Lcom/ironsource/hb;)V

    :goto_48
    return-void
.end method
