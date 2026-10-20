###### Class com.fyber.inneractive.sdk.flow.vast.a (com.fyber.inneractive.sdk.flow.vast.a)
.class public Lcom/fyber/inneractive/sdk/flow/vast/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/flow/vast/a$b;,
        Lcom/fyber/inneractive/sdk/flow/vast/a$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Landroid/view/View;

.field public c:Z

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Lcom/fyber/inneractive/sdk/flow/vast/a$a;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/flow/vast/a;->a:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/flow/vast/a;->b:Landroid/view/View;

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/flow/vast/a;->c:Z

    sget-object v0, Lcom/fyber/inneractive/sdk/flow/vast/a$a;->HIGH:Lcom/fyber/inneractive/sdk/flow/vast/a$a;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/flow/vast/a;->f:Lcom/fyber/inneractive/sdk/flow/vast/a$a;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/flow/vast/a;->b:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/flow/vast/a;->a:Z

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/flow/vast/a;->b:Landroid/view/View;

    return-void
.end method
