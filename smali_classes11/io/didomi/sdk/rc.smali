###### Class io.didomi.drawable.rc (io.didomi.sdk.rc)
.class public final synthetic Lio/didomi/sdk/rc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/Q;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/Q;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/rc;->a:Lio/didomi/sdk/Q;

    return-void
.end method


# virtual methods
.method public final onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/rc;->a:Lio/didomi/sdk/Q;

    invoke-static {v0, p1, p2}, Lio/didomi/sdk/Q;->v(Lio/didomi/sdk/Q;Landroid/view/ViewStub;Landroid/view/View;)V

    return-void
.end method
