###### Class io.didomi.drawable.fc (io.didomi.sdk.fc)
.class public final synthetic Lio/didomi/sdk/fc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/P4;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/P4;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/fc;->a:Lio/didomi/sdk/P4;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/fc;->a:Lio/didomi/sdk/P4;

    invoke-static {v0, p1}, Lio/didomi/sdk/P4;->d(Lio/didomi/sdk/P4;Landroid/view/View;)V

    return-void
.end method
