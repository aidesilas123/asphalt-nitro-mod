###### Class com.fyber.inneractive.sdk.network.x (com.fyber.inneractive.sdk.network.x)
.class public Lcom/fyber/inneractive/sdk/network/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/fyber/inneractive/sdk/network/x;


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/network/g;

.field public b:Lcom/fyber/inneractive/sdk/network/g;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fyber/inneractive/sdk/network/x;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/network/x;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/network/x;->c:Lcom/fyber/inneractive/sdk/network/x;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/fyber/inneractive/sdk/network/i;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/network/i;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/network/x;->a:Lcom/fyber/inneractive/sdk/network/g;

    return-void
.end method

.method public static a()Lcom/fyber/inneractive/sdk/network/x;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/network/x;->c:Lcom/fyber/inneractive/sdk/network/x;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/fyber/inneractive/sdk/network/g;
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/x;->b:Lcom/fyber/inneractive/sdk/network/g;

    if-nez v0, :cond_2e

    :try_start_4
    const-string v0, "fyber.marketplace.http_executor_stack_name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_b

    goto :goto_d

    :catchall_b
    const-string v0, "hurl"

    :goto_d
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    const-string v3, "okhttp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    :try_start_19
    const-string v0, "okhttp3.OkHttpClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_1e} :catch_20

    const/4 v0, 0x1

    goto :goto_21

    :catch_20
    const/4 v0, 0x0

    :goto_21
    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    if-eqz v1, :cond_2e

    new-instance v0, Lcom/fyber/inneractive/sdk/network/v0;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/network/v0;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/network/x;->b:Lcom/fyber/inneractive/sdk/network/g;

    :cond_2e
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/x;->b:Lcom/fyber/inneractive/sdk/network/g;

    if-eqz v0, :cond_33

    goto :goto_35

    :cond_33
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/x;->a:Lcom/fyber/inneractive/sdk/network/g;

    :goto_35
    return-object v0
.end method
