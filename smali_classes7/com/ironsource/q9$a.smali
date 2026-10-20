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
