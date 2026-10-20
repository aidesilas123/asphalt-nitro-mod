###### Class com.fyber.inneractive.sdk.bidder.c.a (com.fyber.inneractive.sdk.bidder.c$a)
.class public Lcom/fyber/inneractive/sdk/bidder/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/bidder/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/bidder/c;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/bidder/c;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/c$a;->a:Lcom/fyber/inneractive/sdk/bidder/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/c$a;->a:Lcom/fyber/inneractive/sdk/bidder/c;

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/l;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fyber/inneractive/sdk/bidder/c;->b:Ljava/lang/String;

    return-void
.end method
