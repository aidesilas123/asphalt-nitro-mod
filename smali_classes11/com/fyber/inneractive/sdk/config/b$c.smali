###### Class com.fyber.inneractive.sdk.config.b.c (com.fyber.inneractive.sdk.config.b$c)
.class public Lcom/fyber/inneractive/sdk/config/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/util/u0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/config/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/config/b;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/config/b;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/config/b$c;->a:Lcom/fyber/inneractive/sdk/config/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/util/u0;)V
    .registers 5

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "onVisibleTimeReached: %s"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/config/b$c;->a:Lcom/fyber/inneractive/sdk/config/b;

    invoke-static {v0, p1}, Lcom/fyber/inneractive/sdk/config/b;->a(Lcom/fyber/inneractive/sdk/config/b;Z)Z

    return-void
.end method
