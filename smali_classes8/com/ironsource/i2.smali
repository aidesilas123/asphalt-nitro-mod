###### Class com.json.i2 (com.ironsource.i2)
.class public abstract Lcom/ironsource/i2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/d5;


# instance fields
.field private a:Lcom/ironsource/c5;


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/ironsource/i2;->a(Lorg/json/JSONObject;Landroid/content/Context;)Lcom/ironsource/c5;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/i2;->a:Lcom/ironsource/c5;

    const-class p1, Lcom/ironsource/i2;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "created ConnectivityAdapter with strategy "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ironsource/i2;->a:Lcom/ironsource/c5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Landroid/content/Context;)Lcom/ironsource/c5;
    .registers 4

    const-string v0, "connectivityStrategy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    new-instance p1, Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;

    invoke-direct {p1, p0}, Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;-><init>(Lcom/ironsource/d5;)V

    return-object p1

    :cond_f
    const-string p1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p2, p1}, Lcom/ironsource/k0;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_24

    if-nez p1, :cond_1e

    goto :goto_24

    :cond_1e
    new-instance p1, Lcom/ironsource/q9;

    invoke-direct {p1, p0}, Lcom/ironsource/q9;-><init>(Lcom/ironsource/d5;)V

    return-object p1

    :cond_24
    :goto_24
    new-instance p1, Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;

    invoke-direct {p1, p0}, Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;-><init>(Lcom/ironsource/d5;)V

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/i2;->a:Lcom/ironsource/c5;

    invoke-interface {v0, p1}, Lcom/ironsource/c5;->c(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 1

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/i2;->a:Lcom/ironsource/c5;

    invoke-interface {v0}, Lcom/ironsource/c5;->a()V

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/i2;->a:Lcom/ironsource/c5;

    invoke-interface {v0, p1}, Lcom/ironsource/c5;->b(Landroid/content/Context;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/i2;->a:Lcom/ironsource/c5;

    invoke-interface {v0, p1}, Lcom/ironsource/c5;->a(Landroid/content/Context;)V

    return-void
.end method
