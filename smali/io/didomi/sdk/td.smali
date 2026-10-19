###### Class io.didomi.drawable.td (io.didomi.sdk.td)
.class public final synthetic Lio/didomi/sdk/td;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/a9;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/a9;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/td;->a:Lio/didomi/sdk/a9;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/td;->a:Lio/didomi/sdk/a9;

    invoke-static {v0, p1}, Lio/didomi/sdk/a9;->f(Lio/didomi/sdk/a9;Landroid/view/View;)V

    return-void
.end method
