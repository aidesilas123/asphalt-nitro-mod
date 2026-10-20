###### Class io.didomi.drawable.od (io.didomi.sdk.od)
.class public final synthetic Lio/didomi/sdk/od;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/Z7;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/Z7;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/od;->a:Lio/didomi/sdk/Z7;

    return-void
.end method


# virtual methods
.method public final makeView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/od;->a:Lio/didomi/sdk/Z7;

    invoke-static {v0}, Lio/didomi/sdk/Z7;->h(Lio/didomi/sdk/Z7;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
