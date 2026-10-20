###### Class com.fyber.inneractive.sdk.web.c0.c (com.fyber.inneractive.sdk.web.c0$c)
.class public Lcom/fyber/inneractive/sdk/web/c0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/web/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/web/c0;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/c0;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/c0$c;->a:Lcom/fyber/inneractive/sdk/web/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/c0$c;->a:Lcom/fyber/inneractive/sdk/web/c0;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/web/c0;->H:Lcom/fyber/inneractive/sdk/measurement/a;

    if-eqz v1, :cond_d

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/c0;->I:Lcom/fyber/inneractive/sdk/measurement/a$a;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/measurement/a$a;->a()V

    :cond_d
    return-void
.end method
