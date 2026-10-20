###### Class io.didomi.drawable.ca (io.didomi.sdk.ca)
.class public final synthetic Lio/didomi/sdk/ca;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ca;->a:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/ca;->a:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;

    invoke-static {v0, p1}, Lio/didomi/sdk/E6;->j(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;Landroid/view/View;)V

    return-void
.end method
