###### Class com.fyber.inneractive.sdk.click.l.a (com.fyber.inneractive.sdk.click.l$a)
.class public Lcom/fyber/inneractive/sdk/click/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/click/l;->a(Lcom/fyber/inneractive/sdk/click/b;)Lcom/fyber/inneractive/sdk/click/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/click/b;

.field public final synthetic b:Lcom/fyber/inneractive/sdk/click/l;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/click/l;Lcom/fyber/inneractive/sdk/click/b;)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/click/l$a;->b:Lcom/fyber/inneractive/sdk/click/l;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/click/l$a;->a:Lcom/fyber/inneractive/sdk/click/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/click/l$a;->b:Lcom/fyber/inneractive/sdk/click/l;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/click/l;->d:Lcom/fyber/inneractive/sdk/click/l$b;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/click/l$a;->a:Lcom/fyber/inneractive/sdk/click/b;

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/click/l$b;->a(Lcom/fyber/inneractive/sdk/click/b;)V

    :cond_b
    return-void
.end method
