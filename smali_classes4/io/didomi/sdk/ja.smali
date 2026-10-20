###### Class io.didomi.drawable.ja (io.didomi.sdk.ja)
.class public final synthetic Lio/didomi/sdk/ja;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/H5;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/H5;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ja;->a:Lio/didomi/sdk/H5;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/ja;->a:Lio/didomi/sdk/H5;

    invoke-static {v0, p1}, Lio/didomi/sdk/H5;->f(Lio/didomi/sdk/H5;Landroid/view/View;)V

    return-void
.end method
