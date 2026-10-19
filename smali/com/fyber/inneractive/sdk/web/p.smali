###### Class com.fyber.inneractive.sdk.web.p (com.fyber.inneractive.sdk.web.p)
.class public Lcom/fyber/inneractive/sdk/web/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/web/i$c;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/i$c;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/p;->a:Lcom/fyber/inneractive/sdk/web/i$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/p;->a:Lcom/fyber/inneractive/sdk/web/i$c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/i$c;->a:Lcom/fyber/inneractive/sdk/web/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    new-instance v2, Lcom/fyber/inneractive/sdk/web/o;

    const-string v3, "Image failed to download."

    invoke-direct {v2, v0, v3}, Lcom/fyber/inneractive/sdk/web/o;-><init>(Lcom/fyber/inneractive/sdk/web/i;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/p;->a:Lcom/fyber/inneractive/sdk/web/i$c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/i$c;->a:Lcom/fyber/inneractive/sdk/web/i;

    sget-object v1, Lcom/fyber/inneractive/sdk/mraid/g;->STORE_PICTURE:Lcom/fyber/inneractive/sdk/mraid/g;

    const-string v2, "Error downloading and saving image file."

    invoke-virtual {v0, v1, v2}, Lcom/fyber/inneractive/sdk/web/i;->a(Lcom/fyber/inneractive/sdk/mraid/g;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "failed to download and save the image file."

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
