###### Class com.fyber.inneractive.sdk.web.y (com.fyber.inneractive.sdk.web.y)
.class public Lcom/fyber/inneractive/sdk/web/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/web/z;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/z;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/y;->a:Lcom/fyber/inneractive/sdk/web/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/y;->a:Lcom/fyber/inneractive/sdk/web/z;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/z;->a:Lcom/fyber/inneractive/sdk/web/x;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_7

    :catchall_7
    return-void
.end method
