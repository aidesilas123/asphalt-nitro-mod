###### Class com.tapjoy.internal.t7 (com.tapjoy.internal.t7)
.class public final Lcom/tapjoy/internal/t7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Lcom/tapjoy/TJAwardCurrencyListener;

.field public final synthetic c:Lcom/tapjoy/p;


# direct methods
.method public constructor <init>(Lcom/tapjoy/p;Ljava/util/Map;Lcom/tapjoy/TJAwardCurrencyListener;)V
    .registers 4

    iput-object p1, p0, Lcom/tapjoy/internal/t7;->c:Lcom/tapjoy/p;

    iput-object p2, p0, Lcom/tapjoy/internal/t7;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/tapjoy/internal/t7;->b:Lcom/tapjoy/TJAwardCurrencyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    new-instance v0, Lcom/tapjoy/j0;

    invoke-direct {v0}, Lcom/tapjoy/j0;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "points/award?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/t7;->a:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/j0;->c(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/h0;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/t7;->c:Lcom/tapjoy/p;

    iget-object v2, p0, Lcom/tapjoy/internal/t7;->b:Lcom/tapjoy/TJAwardCurrencyListener;

    monitor-enter v1

    :try_start_25
    const-string v3, "Failed to award currency"

    iget-object v0, v0, Lcom/tapjoy/h0;->d:Ljava/lang/String;

    if-eqz v0, :cond_a2

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_b0

    const-string v4, "Success"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-static {v4}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_79

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    const-string v4, "TapPoints"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-static {v4}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CurrencyName"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_6a

    if-eqz v0, :cond_6a

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tapjoy/p;->e(I)V

    if-eqz v2, :cond_b5

    invoke-interface {v2, v0, v3}, Lcom/tapjoy/TJAwardCurrencyListener;->onAwardCurrencyResponse(Ljava/lang/String;I)V

    goto :goto_b5

    :cond_6a
    new-instance v0, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v4, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->c:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v5, "awardCurrency response is invalid -- missing tags."

    invoke-direct {v0, v4, v5}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string v4, "TJCurrency"

    invoke-static {v4, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    goto :goto_b0

    :cond_79
    if-eqz v4, :cond_93

    const-string v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_93

    const-string v3, "Message"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "TJCurrency"

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b0

    :cond_93
    new-instance v0, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v4, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->c:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v5, "awardCurrency response is invalid -- missing <Success> tag."

    invoke-direct {v0, v4, v5}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string v4, "TJCurrency"

    invoke-static {v4, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    goto :goto_b0

    :cond_a2
    new-instance v0, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v4, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->c:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v5, "awardCurrency response is NULL"

    invoke-direct {v0, v4, v5}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string v4, "TJCurrency"

    invoke-static {v4, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    :cond_b0
    :goto_b0
    if-eqz v2, :cond_b5

    invoke-interface {v2, v3}, Lcom/tapjoy/TJAwardCurrencyListener;->onAwardCurrencyResponseFailure(Ljava/lang/String;)V
    :try_end_b5
    .catchall {:try_start_25 .. :try_end_b5} :catchall_b7

    :cond_b5
    :goto_b5
    monitor-exit v1

    return-void

    :catchall_b7
    move-exception v0

    monitor-exit v1

    throw v0
.end method
