###### Class io.didomi.drawable.x9 (io.didomi.sdk.x9)
.class public final synthetic Lio/didomi/sdk/x9;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/Z1;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/Z1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/x9;->a:Lio/didomi/sdk/Z1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/x9;->a:Lio/didomi/sdk/Z1;

    invoke-static {v0, p1}, Lio/didomi/sdk/D7;->c(Lio/didomi/sdk/Z1;Landroid/view/View;)V

    return-void
.end method
