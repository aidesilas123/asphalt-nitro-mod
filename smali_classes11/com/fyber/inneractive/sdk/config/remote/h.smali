###### Class com.fyber.inneractive.sdk.config.remote.h (com.fyber.inneractive.sdk.config.remote.h)
.class public Lcom/fyber/inneractive/sdk/config/remote/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/config/remote/d;
.implements Lcom/fyber/inneractive/sdk/config/remote/c;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/fyber/inneractive/sdk/config/remote/b;

.field public d:Lcom/fyber/inneractive/sdk/config/remote/f;

.field public e:Lcom/fyber/inneractive/sdk/config/remote/j;

.field public f:Lcom/fyber/inneractive/sdk/config/remote/k;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/fyber/inneractive/sdk/config/remote/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/config/remote/h;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lcom/fyber/inneractive/sdk/config/remote/j;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/config/remote/h;->e:Lcom/fyber/inneractive/sdk/config/remote/j;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/config/remote/h;->b:Ljava/lang/String;

    return-object v0
.end method
