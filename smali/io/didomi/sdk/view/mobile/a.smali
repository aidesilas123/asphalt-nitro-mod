###### Class io.didomi.drawable.view.mobile.a (io.didomi.sdk.view.mobile.a)
.class public final synthetic Lio/didomi/sdk/view/mobile/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/view/mobile/DidomiToggle;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/view/mobile/DidomiToggle;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/view/mobile/a;->a:Lio/didomi/sdk/view/mobile/DidomiToggle;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/view/mobile/a;->a:Lio/didomi/sdk/view/mobile/DidomiToggle;

    invoke-static {v0, p1}, Lio/didomi/sdk/view/mobile/DidomiToggle;->c(Lio/didomi/sdk/view/mobile/DidomiToggle;Landroid/view/View;)V

    return-void
.end method
