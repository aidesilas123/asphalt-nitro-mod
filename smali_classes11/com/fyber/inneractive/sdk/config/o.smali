###### Class com.fyber.inneractive.sdk.config.o (com.fyber.inneractive.sdk.config.o)
.class public Lcom/fyber/inneractive/sdk/config/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/network/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fyber/inneractive/sdk/network/w<",
        "Lcom/fyber/inneractive/sdk/config/IAConfigManager$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/config/IAConfigManager;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/config/IAConfigManager;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/config/o;->a:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Exception;Z)V
    .registers 8

    check-cast p1, Lcom/fyber/inneractive/sdk/config/IAConfigManager$c;

    const/4 v0, 0x0

    if-eqz p1, :cond_42

    if-eqz p3, :cond_1f

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/config/o;->a:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    sget-object v2, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, Lcom/fyber/inneractive/sdk/config/IAConfigManager$c;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/fyber/inneractive/sdk/config/IAConfigManager$c;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/fyber/inneractive/sdk/config/IAConfigManager$c;->d:Ljava/util/Map;

    iput-object v2, v1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->a:Ljava/util/Map;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/config/IAConfigManager$c;->e:Ljava/util/Map;

    iput-object p1, v1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->b:Ljava/util/Map;

    goto :goto_4c

    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->N:J

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/config/o;->a:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "Got new remote configuration from server:"

    invoke-static {v3, v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p1, Lcom/fyber/inneractive/sdk/config/IAConfigManager$c;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/fyber/inneractive/sdk/config/IAConfigManager$c;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/fyber/inneractive/sdk/config/IAConfigManager$c;->d:Ljava/util/Map;

    iput-object v2, v1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->a:Ljava/util/Map;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/config/IAConfigManager$c;->e:Ljava/util/Map;

    iput-object p1, v1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->b:Ljava/util/Map;

    goto :goto_4c

    :cond_42
    instance-of p1, p2, Lcom/fyber/inneractive/sdk/network/f;

    if-eqz p1, :cond_4c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->N:J

    :cond_4c
    :goto_4c
    if-nez p3, :cond_d5

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/config/o;->a:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    invoke-static {}, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->h()Z

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_5e

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->a(Ljava/lang/Exception;)V

    goto :goto_a1

    :cond_5e
    instance-of p3, p2, Lcom/fyber/inneractive/sdk/external/InvalidAppIdException;

    if-nez p3, :cond_85

    instance-of p3, p2, Ljava/io/FileNotFoundException;

    if-eqz p3, :cond_67

    goto :goto_85

    :cond_67
    instance-of p3, p2, Lcom/fyber/inneractive/sdk/network/s0;

    if-eqz p3, :cond_79

    move-object p3, p2

    check-cast p3, Lcom/fyber/inneractive/sdk/network/s0;

    iget p3, p3, Lcom/fyber/inneractive/sdk/network/s0;->a:I

    const/16 v1, 0x190

    if-lt p3, v1, :cond_86

    const/16 v1, 0x1f4

    if-ge p3, v1, :cond_86

    goto :goto_85

    :cond_79
    iget-object p3, p1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->c:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_86

    :cond_85
    :goto_85
    const/4 v0, 0x1

    :cond_86
    if-eqz v0, :cond_91

    new-instance p2, Lcom/fyber/inneractive/sdk/external/InvalidAppIdException;

    invoke-direct {p2}, Lcom/fyber/inneractive/sdk/external/InvalidAppIdException;-><init>()V

    invoke-virtual {p1, p2}, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->a(Ljava/lang/Exception;)V

    goto :goto_a1

    :cond_91
    instance-of p3, p2, Lcom/fyber/inneractive/sdk/network/b;

    if-eqz p3, :cond_99

    invoke-virtual {p1, p2}, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->a(Ljava/lang/Exception;)V

    goto :goto_a1

    :cond_99
    new-instance p2, Lcom/fyber/inneractive/sdk/config/IAConfigManager$d;

    invoke-direct {p2}, Lcom/fyber/inneractive/sdk/config/IAConfigManager$d;-><init>()V

    invoke-virtual {p1, p2}, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->a(Ljava/lang/Exception;)V

    :goto_a1
    invoke-static {}, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->h()Z

    move-result p1

    if-eqz p1, :cond_d5

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/config/o;->a:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object p2, p1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->C:Lcom/fyber/inneractive/sdk/network/c0;

    if-nez p2, :cond_c0

    new-instance p2, Lcom/fyber/inneractive/sdk/network/g0;

    new-instance p3, Lcom/fyber/inneractive/sdk/config/q;

    invoke-direct {p3, p1}, Lcom/fyber/inneractive/sdk/config/q;-><init>(Lcom/fyber/inneractive/sdk/config/IAConfigManager;)V

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->f:Landroid/content/Context;

    new-instance v1, Lcom/fyber/inneractive/sdk/config/global/m;

    invoke-direct {v1}, Lcom/fyber/inneractive/sdk/config/global/m;-><init>()V

    invoke-direct {p2, p3, v0, v1}, Lcom/fyber/inneractive/sdk/network/g0;-><init>(Lcom/fyber/inneractive/sdk/network/w;Landroid/content/Context;Lcom/fyber/inneractive/sdk/cache/a;)V

    iput-object p2, p1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->C:Lcom/fyber/inneractive/sdk/network/c0;

    :cond_c0
    iget-object p2, p1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->C:Lcom/fyber/inneractive/sdk/network/c0;

    invoke-interface {p2}, Lcom/fyber/inneractive/sdk/network/c0;->p()Lcom/fyber/inneractive/sdk/network/q0;

    move-result-object p2

    sget-object p3, Lcom/fyber/inneractive/sdk/network/q0;->RUNNING:Lcom/fyber/inneractive/sdk/network/q0;

    if-eq p2, p3, :cond_d5

    sget-object p3, Lcom/fyber/inneractive/sdk/network/q0;->QUEUED:Lcom/fyber/inneractive/sdk/network/q0;

    if-eq p2, p3, :cond_d5

    iget-object p2, p1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->s:Lcom/fyber/inneractive/sdk/network/y;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->C:Lcom/fyber/inneractive/sdk/network/c0;

    invoke-virtual {p2, p1}, Lcom/fyber/inneractive/sdk/network/y;->b(Lcom/fyber/inneractive/sdk/network/c0;)V

    :cond_d5
    return-void
.end method
