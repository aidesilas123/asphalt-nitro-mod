###### Class com.applovin.impl.sdk.e.s.a (com.applovin.impl.sdk.e.s$a)
.class Lcom/applovin/impl/sdk/e/s$a;
.super Lcom/applovin/impl/adview/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/e/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic aUS:Lcom/applovin/impl/sdk/e/s;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/e/s;Lcom/applovin/impl/sdk/n;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/s$a;->aUS:Lcom/applovin/impl/sdk/e/s;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/adview/e;-><init>(Lcom/applovin/impl/adview/b;Lcom/applovin/impl/sdk/n;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/e/s;Lcom/applovin/impl/sdk/n;Lcom/applovin/impl/sdk/e/s$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/e/s$a;-><init>(Lcom/applovin/impl/sdk/e/s;Lcom/applovin/impl/sdk/n;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/applovin/impl/sdk/c/b;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/applovin/impl/sdk/c/b<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/s$a;->aUS:Lcom/applovin/impl/sdk/e/s;

    iget-object v0, v0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0, p2}, Lcom/applovin/impl/sdk/n;->b(Lcom/applovin/impl/sdk/c/b;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_20
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected e(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/s$a;->aUS:Lcom/applovin/impl/sdk/e/s;

    iget-object v0, v0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/s$a;->aUS:Lcom/applovin/impl/sdk/e/s;

    iget-object v1, v0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v0, v0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing click on ad URL \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/x;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    if-eqz p2, :cond_c9

    instance-of p1, p1, Lcom/applovin/impl/adview/d;

    if-eqz p1, :cond_c9

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->aMK:Lcom/applovin/impl/sdk/c/b;

    invoke-direct {p0, p2, v0}, Lcom/applovin/impl/sdk/e/s$a;->b(Ljava/lang/String;Lcom/applovin/impl/sdk/c/b;)Z

    move-result p2

    if-eqz p2, :cond_c9

    sget-object p2, Lcom/applovin/impl/sdk/c/b;->aML:Lcom/applovin/impl/sdk/c/b;

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/e/s$a;->b(Ljava/lang/String;Lcom/applovin/impl/sdk/c/b;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_7e

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/s$a;->aUS:Lcom/applovin/impl/sdk/e/s;

    iget-object p1, p1, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result p1

    if-eqz p1, :cond_61

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/s$a;->aUS:Lcom/applovin/impl/sdk/e/s;

    iget-object p2, p1, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object p1, p1, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v1, "Ad load succeeded"

    invoke-virtual {p2, p1, v1}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    iget-object p1, p0, Lcom/applovin/impl/sdk/e/s$a;->aUS:Lcom/applovin/impl/sdk/e/s;

    invoke-static {p1}, Lcom/applovin/impl/sdk/e/s;->a(Lcom/applovin/impl/sdk/e/s;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object p1

    if-eqz p1, :cond_c9

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/s$a;->aUS:Lcom/applovin/impl/sdk/e/s;

    invoke-static {p1}, Lcom/applovin/impl/sdk/e/s;->a(Lcom/applovin/impl/sdk/e/s;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/sdk/e/s$a;->aUS:Lcom/applovin/impl/sdk/e/s;

    invoke-static {p2}, Lcom/applovin/impl/sdk/e/s;->b(Lcom/applovin/impl/sdk/e/s;)Lcom/applovin/impl/sdk/ad/a;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/s$a;->aUS:Lcom/applovin/impl/sdk/e/s;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/e/s;->a(Lcom/applovin/impl/sdk/e/s;Lcom/applovin/sdk/AppLovinAdLoadListener;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    goto :goto_c9

    :cond_7e
    sget-object p2, Lcom/applovin/impl/sdk/c/b;->aMM:Lcom/applovin/impl/sdk/c/b;

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/e/s$a;->b(Ljava/lang/String;Lcom/applovin/impl/sdk/c/b;)Z

    move-result p1

    if-eqz p1, :cond_b4

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/s$a;->aUS:Lcom/applovin/impl/sdk/e/s;

    iget-object p1, p1, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result p1

    if-eqz p1, :cond_9b

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/s$a;->aUS:Lcom/applovin/impl/sdk/e/s;

    iget-object p2, p1, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object p1, p1, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v1, "Ad load failed"

    invoke-virtual {p2, p1, v1}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9b
    iget-object p1, p0, Lcom/applovin/impl/sdk/e/s$a;->aUS:Lcom/applovin/impl/sdk/e/s;

    invoke-static {p1}, Lcom/applovin/impl/sdk/e/s;->a(Lcom/applovin/impl/sdk/e/s;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object p1

    if-eqz p1, :cond_c9

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/s$a;->aUS:Lcom/applovin/impl/sdk/e/s;

    invoke-static {p1}, Lcom/applovin/impl/sdk/e/s;->a(Lcom/applovin/impl/sdk/e/s;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object p1

    const/16 p2, 0xcc

    invoke-interface {p1, p2}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/s$a;->aUS:Lcom/applovin/impl/sdk/e/s;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/e/s;->a(Lcom/applovin/impl/sdk/e/s;Lcom/applovin/sdk/AppLovinAdLoadListener;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    goto :goto_c9

    :cond_b4
    iget-object p1, p0, Lcom/applovin/impl/sdk/e/s$a;->aUS:Lcom/applovin/impl/sdk/e/s;

    iget-object p1, p1, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result p1

    if-eqz p1, :cond_c9

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/s$a;->aUS:Lcom/applovin/impl/sdk/e/s;

    iget-object p2, p1, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object p1, p1, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v0, "Unrecognized webview event"

    invoke-virtual {p2, p1, v0}, Lcom/applovin/impl/sdk/x;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c9
    :goto_c9
    const/4 p1, 0x1

    return p1
.end method
