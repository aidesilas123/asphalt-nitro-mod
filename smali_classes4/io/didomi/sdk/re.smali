###### Class io.didomi.drawable.re (io.didomi.sdk.re)
.class public final synthetic Lio/didomi/sdk/re;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lio/didomi/sdk/a;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lio/didomi/sdk/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/re;->a:Landroid/view/View;

    iput-object p2, p0, Lio/didomi/sdk/re;->b:Lio/didomi/sdk/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/re;->a:Landroid/view/View;

    iget-object v1, p0, Lio/didomi/sdk/re;->b:Lio/didomi/sdk/a;

    invoke-static {v0, v1}, Lio/didomi/sdk/j9;->e(Landroid/view/View;Lio/didomi/sdk/a;)V

    return-void
.end method
