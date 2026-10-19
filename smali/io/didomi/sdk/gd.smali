###### Class io.didomi.drawable.gd (io.didomi.sdk.gd)
.class public final synthetic Lio/didomi/sdk/gd;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/V4;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/V4;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/gd;->a:Lio/didomi/sdk/V4;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/gd;->a:Lio/didomi/sdk/V4;

    invoke-static {v0, p1}, Lio/didomi/sdk/V4;->o(Lio/didomi/sdk/V4;Landroid/view/View;)V

    return-void
.end method
