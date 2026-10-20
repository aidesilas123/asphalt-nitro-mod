###### Class io.didomi.drawable.ye (io.didomi.sdk.ye)
.class public final synthetic Lio/didomi/sdk/ye;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ye;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/ye;->a:Landroid/view/View;

    invoke-static {v0}, Lio/didomi/sdk/l8;->d(Landroid/view/View;)V

    return-void
.end method
