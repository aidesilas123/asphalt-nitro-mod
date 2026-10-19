###### Class com.json.q9 (com.ironsource.q9)
.class public Lcom/ironsource/q9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/c5;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private final c:Lcom/ironsource/d5;

.field private d:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public constructor <init>(Lcom/ironsource/d5;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/ironsource/q9;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/q9;->a:Ljava/lang/String;

    const/16 v0, 0x17

    iput v0, p0, Lcom/ironsource/q9;->b:I

    iput-object p1, p0, Lcom/ironsource/q9;->c:Lcom/ironsource/d5;

    return-void
.end method

.method static synthetic a(Lcom/ironsource/q9;)Lcom/ironsource/d5;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/q9;->c:Lcom/ironsource/d5;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/q9;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lcom/ironsource/q9;->b:I

    if-lt v0, v1, :cond_23

    iget-object v0, p0, Lcom/ironsource/q9;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_23

    if-eqz p1, :cond_23

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_23

    :try_start_16
    iget-object v0, p0, Lcom/ironsource/q9;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_1c

    goto :goto_23

    :catch_1c
    iget-object p1, p0, Lcom/ironsource/q9;->a:Ljava/lang/String;

    const-string v0, "NetworkCallback for was not registered or already unregistered"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    :goto_23
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "MissingPermission"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lcom/ironsource/q9;->b:I

    if-lt v0, v1, :cond_4b

    invoke-virtual {p0, p1}, Lcom/ironsource/q9;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/ironsource/l2;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ironsource/q9;->c:Lcom/ironsource/d5;

    invoke-interface {v0}, Lcom/ironsource/d5;->a()V

    :cond_1a
    iget-object v0, p0, Lcom/ironsource/q9;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_25

    new-instance v0, Lcom/ironsource/q9$a;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/q9$a;-><init>(Lcom/ironsource/q9;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ironsource/q9;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_25
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    :try_start_34
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_4b

    iget-object v1, p0, Lcom/ironsource/q9;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_43} :catch_44

    goto :goto_4b

    :catch_44
    iget-object p1, p0, Lcom/ironsource/q9;->a:Ljava/lang/String;

    const-string v0, "NetworkCallback was not able to register"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    :goto_4b
    return-void
.end method

.method public c(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 3

    invoke-static {p1}, Lcom/ironsource/l2;->a(Landroid/content/Context;)Landroid/net/Network;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/l2;->a(Landroid/content/Context;Landroid/net/Network;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

###### Class com.ironsource.q9.a (com.ironsource.q9$a)
.class Lcom/ironsource/q9$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/q9;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/ironsource/q9;


# direct methods
.method constructor <init>(Lcom/ironsource/q9;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/q9$a;->b:Lcom/ironsource/q9;

    iput-object p2, p0, Lcom/ironsource/q9$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 5

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/ironsource/q9$a;->b:Lcom/ironsource/q9;

    invoke-static {v0}, Lcom/ironsource/q9;->a(Lcom/ironsource/q9;)Lcom/ironsource/d5;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/q9$a;->a:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/ironsource/l2;->a(Landroid/net/Network;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/q9$a;->a:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/ironsource/l2;->a(Landroid/content/Context;Landroid/net/Network;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/ironsource/d5;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_31

    :cond_18
    iget-object p1, p0, Lcom/ironsource/q9$a;->b:Lcom/ironsource/q9;

    invoke-static {p1}, Lcom/ironsource/q9;->a(Lcom/ironsource/q9;)Lcom/ironsource/d5;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/q9$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ironsource/l2;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/q9$a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ironsource/l2;->a(Landroid/content/Context;)Landroid/net/Network;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/l2;->a(Landroid/content/Context;Landroid/net/Network;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/ironsource/d5;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_31
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 5

    if-eqz p1, :cond_17

    iget-object p2, p0, Lcom/ironsource/q9$a;->b:Lcom/ironsource/q9;

    invoke-static {p2}, Lcom/ironsource/q9;->a(Lcom/ironsource/q9;)Lcom/ironsource/d5;

    move-result-object p2

    iget-object v0, p0, Lcom/ironsource/q9$a;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/ironsource/l2;->a(Landroid/net/Network;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/q9$a;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/ironsource/l2;->a(Landroid/content/Context;Landroid/net/Network;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/ironsource/d5;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_17
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 5

    if-eqz p1, :cond_17

    iget-object p2, p0, Lcom/ironsource/q9$a;->b:Lcom/ironsource/q9;

    invoke-static {p2}, Lcom/ironsource/q9;->a(Lcom/ironsource/q9;)Lcom/ironsource/d5;

    move-result-object p2

    iget-object v0, p0, Lcom/ironsource/q9$a;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/ironsource/l2;->a(Landroid/net/Network;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/q9$a;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/ironsource/l2;->a(Landroid/content/Context;Landroid/net/Network;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/ironsource/d5;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_17
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 3

    iget-object p1, p0, Lcom/ironsource/q9$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/ironsource/l2;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/ironsource/q9$a;->b:Lcom/ironsource/q9;

    invoke-static {p1}, Lcom/ironsource/q9;->a(Lcom/ironsource/q9;)Lcom/ironsource/d5;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/d5;->a()V

    :cond_17
    return-void
.end method
