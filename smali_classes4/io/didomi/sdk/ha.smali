###### Class io.didomi.drawable.ha (io.didomi.sdk.ha)
.class public final synthetic Lio/didomi/sdk/ha;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/E7;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/E7;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ha;->a:Lio/didomi/sdk/E7;

    return-void
.end method


# virtual methods
.method public final onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/ha;->a:Lio/didomi/sdk/E7;

    invoke-static {v0, p1, p2}, Lio/didomi/sdk/E7;->p(Lio/didomi/sdk/E7;Landroid/view/ViewStub;Landroid/view/View;)V

    return-void
.end method
