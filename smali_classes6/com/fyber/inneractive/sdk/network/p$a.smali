###### Class com.fyber.inneractive.sdk.network.p.a (com.fyber.inneractive.sdk.network.p$a)
.class public Lcom/fyber/inneractive/sdk/network/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/network/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/network/p;-><init>(Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Ljava/lang/String;Lcom/fyber/inneractive/sdk/config/global/s;Lcom/fyber/inneractive/sdk/network/k$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fyber/inneractive/sdk/network/w<",
        "Lcom/fyber/inneractive/sdk/response/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/network/p;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/network/p;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/network/p$a;->a:Lcom/fyber/inneractive/sdk/network/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Exception;Z)V
    .registers 7

    check-cast p1, Lcom/fyber/inneractive/sdk/response/e;

    if-nez p2, :cond_c

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/network/p$a;->a:Lcom/fyber/inneractive/sdk/network/p;

    iget-object p3, p2, Lcom/fyber/inneractive/sdk/network/p;->e:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    invoke-virtual {p2, p3, p1}, Lcom/fyber/inneractive/sdk/network/k;->a(Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/response/e;)V

    goto :goto_56

    :cond_c
    iget-object p3, p0, Lcom/fyber/inneractive/sdk/network/p$a;->a:Lcom/fyber/inneractive/sdk/network/p;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p3, p2, Lcom/fyber/inneractive/sdk/network/s0;

    if-eqz p3, :cond_24

    move-object p3, p2

    check-cast p3, Lcom/fyber/inneractive/sdk/network/s0;

    iget p3, p3, Lcom/fyber/inneractive/sdk/network/s0;->a:I

    const/16 v0, 0xcc

    if-ne p3, v0, :cond_21

    sget-object p3, Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;->NO_FILL:Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;

    goto :goto_34

    :cond_21
    sget-object p3, Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;->SERVER_INTERNAL_ERROR:Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;

    goto :goto_34

    :cond_24
    instance-of p3, p2, Ljava/io/FileNotFoundException;

    if-eqz p3, :cond_2b

    sget-object p3, Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;->CONNECTION_ERROR:Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;

    goto :goto_34

    :cond_2b
    instance-of p3, p2, Lcom/fyber/inneractive/sdk/network/a0;

    if-eqz p3, :cond_32

    sget-object p3, Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;->SERVER_INVALID_RESPONSE:Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;

    goto :goto_34

    :cond_32
    sget-object p3, Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;->CONNECTION_ERROR:Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;

    :goto_34
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/p$a;->a:Lcom/fyber/inneractive/sdk/network/p;

    new-instance v1, Lcom/fyber/inneractive/sdk/external/InneractiveInfrastructureError;

    sget-object v2, Lcom/fyber/inneractive/sdk/flow/g;->NETWORK_ERROR:Lcom/fyber/inneractive/sdk/flow/g;

    invoke-direct {v1, p3, v2, p2}, Lcom/fyber/inneractive/sdk/external/InneractiveInfrastructureError;-><init>(Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;Lcom/fyber/inneractive/sdk/flow/g;Ljava/lang/Throwable;)V

    iget-object p2, v0, Lcom/fyber/inneractive/sdk/network/p;->e:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    iget-object p3, v0, Lcom/fyber/inneractive/sdk/network/k;->a:Lcom/fyber/inneractive/sdk/network/k$a;

    if-nez p3, :cond_44

    goto :goto_56

    :cond_44
    iget-boolean p3, v0, Lcom/fyber/inneractive/sdk/network/k;->b:Z

    if-eqz p3, :cond_49

    goto :goto_56

    :cond_49
    iget-boolean p3, v0, Lcom/fyber/inneractive/sdk/network/k;->b:Z

    if-nez p3, :cond_56

    iget-object p3, v0, Lcom/fyber/inneractive/sdk/network/k;->a:Lcom/fyber/inneractive/sdk/network/k$a;

    if-eqz p3, :cond_56

    check-cast p3, Lcom/fyber/inneractive/sdk/flow/k;

    invoke-virtual {p3, p2, p1, v1}, Lcom/fyber/inneractive/sdk/flow/k;->b(Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/response/e;Lcom/fyber/inneractive/sdk/external/InneractiveInfrastructureError;)V

    :cond_56
    :goto_56
    return-void
.end method
