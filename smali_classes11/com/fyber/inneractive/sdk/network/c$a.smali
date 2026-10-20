###### Class com.fyber.inneractive.sdk.network.c.a (com.fyber.inneractive.sdk.network.c$a)
.class public Lcom/fyber/inneractive/sdk/network/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/network/c;->a(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Lcom/fyber/inneractive/sdk/network/c;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/network/c;IJ)V
    .registers 5

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/network/c$a;->c:Lcom/fyber/inneractive/sdk/network/c;

    iput p2, p0, Lcom/fyber/inneractive/sdk/network/c$a;->a:I

    iput-wide p3, p0, Lcom/fyber/inneractive/sdk/network/c$a;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/c$a;->c:Lcom/fyber/inneractive/sdk/network/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/network/c;->d:Landroid/os/Handler;

    iget v1, p0, Lcom/fyber/inneractive/sdk/network/c$a;->a:I

    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/network/c$a;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
