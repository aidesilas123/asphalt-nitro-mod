###### Class com.fyber.inneractive.sdk.cache.h (com.fyber.inneractive.sdk.cache.h)
.class public Lcom/fyber/inneractive/sdk/cache/h;
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
.field public final synthetic a:Lcom/fyber/inneractive/sdk/cache/i;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/cache/i;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/cache/h;->a:Lcom/fyber/inneractive/sdk/cache/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Exception;Z)V
    .registers 4

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_8

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/cache/h;->a:Lcom/fyber/inneractive/sdk/cache/i;

    iput-object p1, p2, Lcom/fyber/inneractive/sdk/cache/i;->d:Ljava/lang/String;

    :cond_8
    return-void
.end method
