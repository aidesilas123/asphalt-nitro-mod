###### Class com.json.sdk.controller.s (com.ironsource.sdk.controller.s)
.class public Lcom/ironsource/sdk/controller/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/s$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "s"


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Lcom/ironsource/uc;

.field private d:Lcom/ironsource/r9;

.field private e:Landroid/content/Context;

.field private f:Lcom/ironsource/sc;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/uc;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "oneToken"

    iput-object v0, p0, Lcom/ironsource/sdk/controller/s;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/s;->c:Lcom/ironsource/uc;

    iput-object p1, p0, Lcom/ironsource/sdk/controller/s;->e:Landroid/content/Context;

    new-instance p1, Lcom/ironsource/r9;

    invoke-direct {p1}, Lcom/ironsource/r9;-><init>()V

    iput-object p1, p0, Lcom/ironsource/sdk/controller/s;->d:Lcom/ironsource/r9;

    new-instance p1, Lcom/ironsource/sc;

    invoke-direct {p1}, Lcom/ironsource/sc;-><init>()V

    iput-object p1, p0, Lcom/ironsource/sdk/controller/s;->f:Lcom/ironsource/sc;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/ironsource/sdk/controller/s$b;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/ironsource/sdk/controller/s$b;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/ironsource/sdk/controller/s$b;-><init>(Lcom/ironsource/sdk/controller/s$a;)V

    const-string v1, "functionName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/s$b;->a:Ljava/lang/String;

    const-string v1, "functionParams"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/s$b;->b:Lorg/json/JSONObject;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/s$b;->c:Ljava/lang/String;

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ironsource/sdk/controller/s$b;->d:Ljava/lang/String;

    return-object p1
.end method

.method private b()Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/sdk/controller/s;->f:Lcom/ironsource/sc;

    invoke-virtual {v0}, Lcom/ironsource/sc;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_a

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/ironsource/environment/StringUtils;->encodeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_a

    :cond_28
    return-object v0
.end method

.method private c(Lcom/ironsource/sdk/controller/s$b;Lcom/ironsource/p8;)V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerConfigAsJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "oneToken"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/ironsource/sdk/controller/s;->b()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_19

    :cond_11
    iget-object v0, p0, Lcom/ironsource/sdk/controller/s;->c:Lcom/ironsource/uc;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/s;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/ironsource/uc;->c(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_19
    const/4 v1, 0x1

    iget-object v2, p1, Lcom/ironsource/sdk/controller/s$b;->c:Ljava/lang/String;

    invoke-interface {p2, v1, v2, v0}, Lcom/ironsource/p8;->a(ZLjava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_2b

    :catch_20
    move-exception v0

    iget-object p1, p1, Lcom/ironsource/sdk/controller/s$b;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v1, p1, v0}, Lcom/ironsource/p8;->a(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_2b
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lcom/ironsource/sdk/controller/s$b;Lcom/ironsource/p8;)V
    .registers 8

    new-instance v0, Lcom/ironsource/hb;

    invoke-direct {v0}, Lcom/ironsource/hb;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/ironsource/sdk/controller/s;->d:Lcom/ironsource/r9;

    invoke-virtual {v1, p1}, Lcom/ironsource/r9;->a(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/ironsource/sdk/controller/s;->c:Lcom/ironsource/uc;

    invoke-virtual {v1, p1}, Lcom/ironsource/uc;->a(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    iget-object v1, p2, Lcom/ironsource/sdk/controller/s$b;->c:Ljava/lang/String;

    invoke-interface {p3, p1, v1, v0}, Lcom/ironsource/p8;->a(ZLjava/lang/String;Lcom/ironsource/hb;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_16

    goto :goto_3a

    :catch_16
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v1, Lcom/ironsource/sdk/controller/s;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateToken exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/ironsource/sdk/controller/s$b;->d:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-interface {p3, p2, p1, v0}, Lcom/ironsource/p8;->a(ZLjava/lang/String;Lcom/ironsource/hb;)V

    :goto_3a
    return-void
.end method

.method d(Ljava/lang/String;Lcom/ironsource/p8;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/s;->a(Ljava/lang/String;)Lcom/ironsource/sdk/controller/s$b;

    move-result-object v0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/s$b;->a:Ljava/lang/String;

    const-string v2, "updateToken"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object p1, v0, Lcom/ironsource/sdk/controller/s$b;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, p1, v0, p2}, Lcom/ironsource/sdk/controller/s;->a(Lorg/json/JSONObject;Lcom/ironsource/sdk/controller/s$b;Lcom/ironsource/p8;)V

    goto :goto_38

    :cond_14
    iget-object v1, v0, Lcom/ironsource/sdk/controller/s$b;->a:Ljava/lang/String;

    const-string v2, "getToken"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-direct {p0, v0, p2}, Lcom/ironsource/sdk/controller/s;->c(Lcom/ironsource/sdk/controller/s$b;Lcom/ironsource/p8;)V

    goto :goto_38

    :cond_22
    sget-object p2, Lcom/ironsource/sdk/controller/s;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unhandled API request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_38
    return-void
.end method

###### Class com.ironsource.sdk.controller.s.a (com.ironsource.sdk.controller.s$a)
.class synthetic Lcom/ironsource/sdk/controller/s$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.ironsource.sdk.controller.s.b (com.ironsource.sdk.controller.s$b)
.class Lcom/ironsource/sdk/controller/s$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lorg/json/JSONObject;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/sdk/controller/s$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/sdk/controller/s$b;-><init>()V

    return-void
.end method
