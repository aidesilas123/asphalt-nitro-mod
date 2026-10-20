###### Class com.fyber.inneractive.sdk.config.m (com.fyber.inneractive.sdk.config.m)
.class public Lcom/fyber/inneractive/sdk/config/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/config/j$b;


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/config/IAConfigManager;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/config/IAConfigManager;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/config/m;->a:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalConfigChanged(Lcom/fyber/inneractive/sdk/config/j;Lcom/fyber/inneractive/sdk/config/i;)V
    .registers 8

    const-string p1, "dv_enabled_v2"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, v0}, Lcom/fyber/inneractive/sdk/config/i;->a(Ljava/lang/String;II)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_11

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/config/m;->a:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->F:Lcom/fyber/inneractive/sdk/dv/handler/a;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/dv/handler/a;->a()V

    :cond_11
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/config/m;->a:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->G:Lcom/fyber/inneractive/sdk/cache/i;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/cache/i;->a()V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/config/m;->a:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->H:Lcom/fyber/inneractive/sdk/network/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->u:Lcom/fyber/inneractive/sdk/config/j;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/config/j;->b:Lcom/fyber/inneractive/sdk/config/i;

    const/4 v2, -0x1

    const-string v3, "send_events_batch_interval"

    const/16 v4, 0x1e

    invoke-virtual {v1, v3, v4, v2}, Lcom/fyber/inneractive/sdk/config/i;->a(Ljava/lang/String;II)I

    move-result v1

    if-gez v1, :cond_31

    goto :goto_32

    :cond_31
    move v4, v1

    :goto_32
    const-string v1, "fyber.marketplace.use_batch_interval"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    goto :goto_42

    :cond_41
    const/4 p2, 0x0

    :cond_42
    :goto_42
    if-nez p2, :cond_45

    goto :goto_46

    :cond_45
    move v0, v4

    :goto_46
    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/network/c;->a(I)V

    return-void
.end method
