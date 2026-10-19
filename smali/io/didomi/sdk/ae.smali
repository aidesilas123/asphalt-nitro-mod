###### Class io.didomi.drawable.ae (io.didomi.sdk.ae)
.class public final synthetic Lio/didomi/sdk/ae;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/h6;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/h6;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ae;->a:Lio/didomi/sdk/h6;

    return-void
.end method


# virtual methods
.method public final makeView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/ae;->a:Lio/didomi/sdk/h6;

    invoke-static {v0}, Lio/didomi/sdk/h6;->h(Lio/didomi/sdk/h6;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
