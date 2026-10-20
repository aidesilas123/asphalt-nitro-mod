###### Class com.tapjoy.internal.y6 (com.tapjoy.internal.y6)
.class public final Lcom/tapjoy/internal/y6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Lcom/tapjoy/TJGetCurrencyBalanceListener;

.field public final synthetic c:Lcom/tapjoy/p;


# direct methods
.method public constructor <init>(Lcom/tapjoy/p;Ljava/util/Map;Lcom/tapjoy/TJGetCurrencyBalanceListener;)V
    .registers 4

    iput-object p1, p0, Lcom/tapjoy/internal/y6;->c:Lcom/tapjoy/p;

    iput-object p2, p0, Lcom/tapjoy/internal/y6;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/tapjoy/internal/y6;->b:Lcom/tapjoy/TJGetCurrencyBalanceListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    new-instance v0, Lcom/tapjoy/j0;

    invoke-direct {v0}, Lcom/tapjoy/j0;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "get_vg_store_items/user_account?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/y6;->a:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/j0;->c(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/h0;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/y6;->c:Lcom/tapjoy/p;

    iget-object v2, p0, Lcom/tapjoy/internal/y6;->b:Lcom/tapjoy/TJGetCurrencyBalanceListener;

    monitor-enter v1

    :try_start_25
    const-string v3, "earned: "

    iget-object v0, v0, Lcom/tapjoy/h0;->d:Ljava/lang/String;

    if-eqz v0, :cond_ce

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_dc

    const-string v4, "Success"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-static {v4}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_bf

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bf

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
    :try_end_59
    .catchall {:try_start_25 .. :try_end_59} :catchall_e5

    if-eqz v4, :cond_b0

    if-eqz v0, :cond_b0

    :try_start_5d
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1}, Lcom/tapjoy/p;->d()I

    move-result v5

    sget-object v6, Lcom/tapjoy/p;->a:Lcom/tapjoy/TJEarnedCurrencyListener;

    if-eqz v6, :cond_87

    const/16 v6, -0x270f

    if-eq v5, v6, :cond_87

    if-le v4, v5, :cond_87

    const-string v6, "TJCurrency"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v3, v4, v5

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/tapjoy/p;->a:Lcom/tapjoy/TJEarnedCurrencyListener;

    invoke-interface {v5, v0, v3}, Lcom/tapjoy/TJEarnedCurrencyListener;->onEarnedCurrency(Ljava/lang/String;I)V

    :cond_87
    invoke-virtual {v1, v4}, Lcom/tapjoy/p;->e(I)V

    if-eqz v2, :cond_e3

    invoke-interface {v2, v0, v4}, Lcom/tapjoy/TJGetCurrencyBalanceListener;->onGetCurrencyBalanceResponse(Ljava/lang/String;I)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_8f} :catch_90
    .catchall {:try_start_5d .. :try_end_8f} :catchall_e5

    goto :goto_e3

    :catch_90
    move-exception v0

    :try_start_91
    new-instance v3, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v4, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->c:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error parsing XML and calling listener: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string v0, "TJCurrency"

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    goto :goto_dc

    :cond_b0
    new-instance v0, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->c:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v4, "getCurrencyBalance response is invalid -- missing tags."

    invoke-direct {v0, v3, v4}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string v3, "TJCurrency"

    invoke-static {v3, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    goto :goto_dc

    :cond_bf
    new-instance v0, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->c:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v4, "getCurrencyBalance response is invalid -- missing <Success> tag."

    invoke-direct {v0, v3, v4}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string v3, "TJCurrency"

    invoke-static {v3, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    goto :goto_dc

    :cond_ce
    new-instance v0, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->c:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v4, "getCurrencyBalance response is NULL"

    invoke-direct {v0, v3, v4}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string v3, "TJCurrency"

    invoke-static {v3, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    :cond_dc
    :goto_dc
    if-eqz v2, :cond_e3

    const-string v0, "Failed to get currency balance"

    invoke-interface {v2, v0}, Lcom/tapjoy/TJGetCurrencyBalanceListener;->onGetCurrencyBalanceResponseFailure(Ljava/lang/String;)V
    :try_end_e3
    .catchall {:try_start_91 .. :try_end_e3} :catchall_e5

    :cond_e3
    :goto_e3
    monitor-exit v1

    return-void

    :catchall_e5
    move-exception v0

    monitor-exit v1

    throw v0
.end method
