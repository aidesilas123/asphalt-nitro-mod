###### Class com.fyber.inneractive.sdk.util.s0.c (com.fyber.inneractive.sdk.util.s0$c)
.class public Lcom/fyber/inneractive/sdk/util/s0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/util/s0;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/util/s0;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/util/s0;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/util/s0$c;->a:Lcom/fyber/inneractive/sdk/util/s0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/util/s0$c;->a:Lcom/fyber/inneractive/sdk/util/s0;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/util/s0;->b:Landroid/content/Context;

    if-eqz v1, :cond_16

    const/4 v2, 0x0

    :try_start_7
    invoke-static {v1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_c

    goto :goto_d

    :catchall_c
    nop

    :goto_d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0, v2}, Lcom/fyber/inneractive/sdk/util/s0;->a(Ljava/lang/String;)V

    :cond_16
    return-void
.end method
