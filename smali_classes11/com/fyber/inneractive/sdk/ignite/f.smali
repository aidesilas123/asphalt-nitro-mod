###### Class com.fyber.inneractive.sdk.ignite.f (com.fyber.inneractive.sdk.ignite.f)
.class public Lcom/fyber/inneractive/sdk/ignite/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/network/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fyber/inneractive/sdk/network/w<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/ignite/c;Ljava/lang/String;)V
    .registers 3

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/ignite/f;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Exception;Z)V
    .registers 7

    check-cast p1, Ljava/lang/String;

    const/4 p3, 0x1

    new-array v0, p3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/ignite/f;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Hit Request: Hitting URL finished: %s"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_1b

    new-array p2, p3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "Hit Request: Hitting URL response code: %s"

    invoke-static {p1, p2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_24

    :cond_1b
    new-array p1, p3, [Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p2, "Hit Request: Hitting URL failed: %s"

    invoke-static {p2, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_24
    return-void
.end method
