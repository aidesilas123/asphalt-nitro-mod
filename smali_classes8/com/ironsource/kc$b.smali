###### Class com.ironsource.kc.b (com.ironsource.kc$b)
.class public final Lcom/ironsource/kc$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/a7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/kc;->d(Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;Lcom/ironsource/a7;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/ironsource/kc$b",
        "Lcom/ironsource/a7;",
        "",
        "onUIReady",
        "onClosed",
        "mediationsdk_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/kc;

.field final synthetic b:Lcom/ironsource/a7;


# direct methods
.method constructor <init>(Lcom/ironsource/kc;Lcom/ironsource/a7;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/kc$b;->a:Lcom/ironsource/kc;

    iput-object p2, p0, Lcom/ironsource/kc$b;->b:Lcom/ironsource/a7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Lcom/ironsource/kc$b;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/kc$b;->onUIReady()V

    return-void
.end method

.method public static synthetic b(Lcom/ironsource/kc$b;)V
    .registers 1

    invoke-static {p0}, Lcom/ironsource/kc$b;->a(Lcom/ironsource/kc$b;)V

    return-void
.end method


# virtual methods
.method public onClosed()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/kc$b;->b:Lcom/ironsource/a7;

    invoke-interface {v0}, Lcom/ironsource/a7;->onClosed()V

    return-void
.end method

.method public onUIReady()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/kc$b;->a:Lcom/ironsource/kc;

    invoke-static {v0}, Lcom/ironsource/kc;->d(Lcom/ironsource/kc;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/ironsource/kc$b;->b:Lcom/ironsource/a7;

    invoke-interface {v0}, Lcom/ironsource/a7;->onUIReady()V

    goto :goto_1e

    :cond_e
    iget-object v0, p0, Lcom/ironsource/kc$b;->a:Lcom/ironsource/kc;

    invoke-static {v0}, Lcom/ironsource/kc;->a(Lcom/ironsource/kc;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ironsource/e4;

    invoke-direct {v1, p0}, Lcom/ironsource/e4;-><init>(Lcom/ironsource/kc$b;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1e
    return-void
.end method
